const express=require('express');
const router=express.Router();
const Pool=require('../pool.js')
const jwt=require("../jwt")
router.post("/oldproduct",function(req,res){
    var aid=req.body.aid;
    var uid=req.user.uid  
    var obj={}; 
    Pool.query('select aid from hs_user_oldProduct where aid=? and uid=?',[aid,uid],function(err,result){
        if(err) throw err
        if(result.length>0){        
            res.send({code:200,msg:"已存在"})
        }else{
            Pool.query('select aid,title,price,m_img_url from hs_category_all where aid=?',[aid],(err,result2)=>{
                if(err) throw err            
                if(result2.length>0){
                  obj.aid=result2[0].aid
                  obj.title=result2[0].title
                  obj.imgurl=result2[0].m_img_url
                  obj.uid=uid
                  obj.estimate=result2[0].price
                  obj.id=null
                Pool.query("insert into hs_user_oldProduct set ?",[obj],function(err,result3){
                    if(err) throw err
                    if(result3.affectedRows>0){
                        res.send({code:200,msg:"添加成功"})
                    }
                })
                }
            })
        }
    })

    // Pool.query("insert into hs_user_oldProduct set ?",[obj],function(err,result){
    //     if(err) throw err
    //     if(res.affectedRows>0){
    //         res.send({code:200,msg:"成功"})
    //     }
    // })
})
router.get("/oldproducts",function(req,res){
    let uid=req.user.uid
    Pool.query('select id,imgurl,title,estimate from hs_user_oldProduct where uid=?',[uid],function(err,result){
        if(err) throw err;
        if(result.length>0){
            res.send({code:200,msg:result})
        }else{
            res.send({code:403,msg:"获取失败"})
        }
    })
})
router.post("/deleteoldprodcut",function(req,res){
    var id=req.body.id
    console.log(id)
    Pool.query("delete from hs_user_oldProduct where id=?",[id],(err,result)=>{
        if(result.affectedRows>0){
            res.send({code:1,msg:"删除成功"})
        }else{
            res.send({code:-1,msg:"数据不存在"})
            
        }
    })
})
module.exports=router;