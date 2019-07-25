const express=require('express');
const router=express.Router();
const Pool=require('../pool.js')
const jwt=require("../jwt")

router.post("/",(req,res)=>{
  //1:参数
  var uname = req.body.uname;
  var upwd = req.body.upwd;
  //1.1:正则表达式验证用户名或密码
  //2:sql
var sql = "SELECT uid,uname FROM ";
sql +=" hs_user WHERE uname = ?";
sql +=" AND upwd = ?";
  //3:json
  Pool.query(sql,[uname,upwd],(err,result)=>{
      if(err)throw err;
      if(result.length==0){
         res.send({code:-1,msg:"用户名或密码有误"});
      }else{
		    req.session.uid=result[0].uid
        res.send({code:1,msg:"登录成功",uname:result[0].uname,token:jwt.generateToken(result[0])});
		
      }
  })
})

module.exports=router;