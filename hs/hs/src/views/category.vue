<template>
    <div>
        <div  class="header">
            <div class=" margin">
                <div class="back" @touchstart="back()">
                    <i class="iconfont icon-fanhui"></i>
                </div>
                <div>
                    <ul class='nav-top'>                                   
                        <li v-for="(item,i) in type" :key="i" :class="i==0?'active':''" @touchstart="show1($event)" :data-id="item.id">{{item.uname}}</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="content-left" >
                <ul>
                    <li data-id=0 class="sele" @touchstart="showsele($event)">推荐</li> 
                    <li v-for="(el,i) in showleft" :key="i" :data-id="i+1" @touchstart="showsele($event)">{{el.title}}</li>
                    
                </ul>
            </div>
            <div class="content-right">
                <ul>
                    <li v-for="(el,i) in showright" :key="i" @touchstart="toOrSele($event)" :data-id="el.aid">
                        {{el.title}}
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
        canmera:[],   //摄影摄像数据
		digital:[],  //智能数码数据
		all:[],      //所有的商品信息
        labtop:[],   //平板电脑数据
		labbook:[],  //笔记本电脑
        phone:[],     //卖手机数据数据
        type:[],        //类型表
        showleft:[], //左侧正在显示的列表
        showright:[],    //右侧正在显示的列表
        zid:0 ,         //当前显示的top的Id
        }
    },
     created(){
            this.init()
    },
    methods:{
        toOrSele(e){
            
            //类型，如果num=1name就认为是新机中添加旧机的跳转
            var type=this.$route.query.num
            var id=e.target.dataset.id
            var info={}
            if(type==1){
                // for(var i=0;i<this.all.length;i++){
                //     if(this.all[i].aid=id){
                //        info.imgurl=this.all[i].m_img_url
                //        info.title=this.all[i].title
                //        info.estimate=this.all[i].price
                //         break
                //     }
                // }
            this.axios.post("user/oldproduct",{aid:id}).then(res=>{
                console.log(res)
                if(res.data.code==200){
                    window.location.href="http://127.0.0.1:8080/#/detail"
                }
            })
            
            }
        },
        back(){
            history.go(-1)
        },
        showsele(e){
            var parents=e.target.parentNode.children 
            for(var el of parents){
                el.classList.remove("sele")
            }
            e.target.classList.add("sele")
            var id=e.target.dataset.id
                
            if(id==0){
                this.showright=this.all.filter(item=>{
                    return item.zid==this.zid
                })
            }else{
                this.showright=this.all.filter(item=>{
                    return item.zid==this.zid&&item.nid==id
                    
                })
            }
        },
        show1(e){
            var parents=e.target.parentNode.children 
            for(var el of parents){
                el.classList.remove("active")
            }
            e.target.classList.add("active")
            var typeid=e.target.dataset.id
            
            if(typeid==this.canmera[0].zid){
                this.showleft=this.canmera
            }else if(typeid==this.digital[0].zid){
                this.showleft=this.digital
            }else if(typeid==this.phone[0].zid){
                this.showleft=this.phone
            }else if(typeid==this. labtop[0].zid){
                this.showleft=this.labtop
            }else if(typeid==this.labbook[0].zid){
                this.showleft=this.labbook
            }else{
                this.showleft=this.phone
            }
            this.zid=typeid
            this.showright=this.all.filter(item=>{
                return item.zid==this.zid&&item.nid==this.showleft[0].id
            })
        },init(){
            this.axios.get("index/category",{
            }).then(res=>{
                this.canmera=res.data.camera
                this.digital=res.data.digital
                this.all=res.data.all
                this.labtop=res.data.labtop
                this.phone=res.data.phone
                this.type=res.data.type
                this.labbook=res.data.labbook
                this.showleft=res.data.phone 
                this.zid=1
                console.log(this.showleft)
                this.showright=res.data.all.filter(function(item){
                    return item.zid==1&&item.nid==1
                })    
                
            })
        },
    }
}
</script>
<style scoped>
.back {
    height:44px;
    text-align:left;
    line-height: 44px;
}
.back i{
    font-size:1.5rem;
}
.header{
    position:fixed;
    background:#fff;
    width:100%;
    z-index:15
}
.header ul{
    display:flex;
    justify-content: space-between;
    height:2.5rem;
    line-height:2.5rem;
    width:100%;
    border-top:4px solid #f9faff
}
.header ul li{
    color:#666;
    font-size:14px;
    /* border-top:4px solid #f9faff */
    
}
.header ul li.active{
    font-size:15px;
    color:#222;
    font-weight:700;
    border-bottom:6px solid #ffd33f;
    border-radius:0.7rem;  
}
.content{
    padding-top:5rem;
    display:flex;
    flex-direction: row-reverse;
    
}
.content-right::-webkit-scrollbar{
    display:none
}
.content-left{
    position:fixed;
    width:20%;
    top:0px;
    left:0px;
    padding-top:77px;
}
.content-left ul{
    width:100%;
    margin-top:.5rem;
}
.content-left ul li{
    height:3.5rem;
    line-height: 3.5rem;
    border-left:6px solid transparent;
    font-size:0.7rem;
    color:#111;
}
.content-left ul li.sele{
    background:#f9faff;
    border-left:6px solid rgba(224, 228, 5, 0.199)
}
.content-right{
    width:82%;
    background:#f9faff;
   
}
.content-right ul{
     padding:0 1rem;

}
.content-right ul li {
    line-height:44px;
    font-size:0.7rem;
    text-align:left
}
</style>