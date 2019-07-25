<template>
    <div class="Mycontainer">
        <!-- 头部 -->
        
           <mt-header fixed title="我的">
                 <mt-button slot="right">
                     <i class="iconfont icon-gouwuche1"></i>
                </mt-button>  
           </mt-header>
           <!-- 头部下的登录 -->
       <div class="top">
           <div class="top_ImgText">
               <div class="ImgText" >
               <img class="topImg" src="http://127.0.0.1:3000/img/login/下载.png" alt="">
               <div class="topText" v-if="!loginname">
                    <router-link to="/login">
                        <p>立即登录</p>
                    </router-link>
                   <div class="myImg">
                   <img src="http://127.0.0.1:3000/img/login/new_user.png" alt="">
                   </div>
               </div>
               <div v-else-if="loginname" class="loginname">
                    <div> {{uname}}</div>
                    <router-link to="/login">
                        <p @click.prevent="loginout">退出</p> 
                    </router-link>
               </div>
              </div>
           </div>
           <div class="set iconfont">
             &#xe633;设置 &gt;
            </div>
       </div>
       <!-- 支付选项 -->
       <div class="payType">
           <div class="pay">
           <i class="iconfont">&#xeb1a;</i>
           <span class="span1">我的钱包</span>
           <span class="span2">0.00</span>
           </div>
           <div class="pay">
           <i class="iconfont">&#xe65d;</i>
           <span class="span1">券包</span>
           <span class="span2">0张可用</span>
           </div>
           <div class="pay">
           <i class="iconfont">&#xe654;</i>
           <span class="span1">银行卡</span>
           <span class="span2">未绑定</span>
           </div>
       </div>
       <!-- 我的预约和订单 -->
       <div class="my_ReservationOrder">
           <p>我的预约</p>
           <span>查看更多 &gt;</span>
       </div>
       <div class="my_ReservationOrder">
           <p>我的订单</p>
           <span>查看更多 &gt;</span>
       </div>
       <!-- 图片 -->
        <router-link to="" class="Img">
        <img src="http://127.0.0.1:3000/img/login/799.png" alt="">
        </router-link>
        <router-link to="" class="Img"  >
        <img src="http://127.0.0.1:3000/img/login/fw.png" alt="">
        </router-link>
        <!-- 其他服务 -->
        <div class="Services">
            <div class="Services_top">
                <img src="http://127.0.0.1:3000/img/login/zhinan.png" alt="">
                <span>回收指南</span>
            </div>
            <div class="Services_top">
                <img src="http://127.0.0.1:3000/img/login/tequan.png" alt="">
                <span>特权专区</span>
            </div>
            <div class="Services_top">
                <img src="http://127.0.0.1:3000/img/login/fuli.png" alt="">
                <span>新人福利</span>
            </div>
        </div>
        <router-link to="" class="Img">
        <img src="http://127.0.0.1:3000/img/login/3.png" alt="">
        </router-link>
        <div class="Services">
            <div class="Services_top">
                <img src="http://127.0.0.1:3000/img/login/duihuan.png" alt="">
                <span>兑换中心</span>
            </div>    
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            loginname:false,
            uname:""

        }
    },
    mounted(){
        this.init()
        
    },
    methods:{
        init(){
        var topText=document.getElementsByClassName("topText")[0]
            if(sessionStorage.getItem("name")){
            this.loginname=true
            this.uname=sessionStorage.getItem("name")+" 欢迎回来 "
            }
        },
        loginout(){
            this.$messagebox.confirm("确定退出么").then(action=>{
                this.loginname=false
                sessionStorage.removeItem("name")
                sessionStorage.removeItem("token")
            }).catch(err=>{
               
            })
            // this.loginname=false
            // sessionStorage.removeItem("name")
        }
    }
}
</script>
<style scoped>
.Mycontainer{
    background-color:#fff;
    /* margin-top:8px; */
    padding-bottom:3rem;
}
.Mycontainer .icon-gouwuche1{
    font-size:1.8rem;
}

/* 头部样式 */
.mint-header{
    
    height:44px;
    background-color:#fff;
    color:black;
    font-size:20px;
}
.mint-header .mint-button{
    font-size:30px;
}
.mint-header .iconfont{
    height:44px;
    line-height: 44px;
    margin-right: 10px;
} 


.Mycontainer .top{
    display:flex;
    justify-content:space-between;
    width:100%;
    height:83px;
    margin-top:40px;
    padding:15px 0 20px 14px;
    /* background-color:#fff; */
}
.top_ImgText{
    width:304px;
    
}
.ImgText{
    display: flex;
    
}
.topImg{
    width:48px;
    height:48px;
    
}
.topText{
    width:265px;
    height:100%;
    padding-left:20px;
}
.topText p{
    margin: 0;padding: 0;
    font-weight: bolder;
    font-size:18px;
    margin-bottom:4px; 
}
.myImg{
    width:247px;
    height:16px;
}
.myImg img{
    width:50%;
    height:100%;
}
.top .set{
    width:75px;
    height:24px;
    line-height: 24px;
    border:1px solid #ddd;
    border-radius:12px 0 0 12px;
    background-color: #ff0;
    font-size:12px;
    margin-top: 12px;
    
}
/* 支付类型 */
.payType{
    display:flex;
    justify-content:space-around;
    width:100%;
    height:88px;
    font-size: 14px;
    background-color: #fefefe;

}
.payType .pay{
    display:flex;
    flex-direction: column;
    align-items: center;
}
.pay .iconfont{
    margin:0;
    /* width:24px;
    height:24px; */
    font-size:35px;

}
.pay span{
    padding-bottom: 5px;
}
.span1{
    font-size:14px;
    color:#111;
}
.span2{
    font-size:12px;
    color:#999;
}
/* 预约和订单样式 */
.Mycontainer .my_ReservationOrder{
    width:100%;
    height:4rem;
    display:flex;
    justify-content:space-between;
    margin-right:1rem;
    margin-left:1rem;
    line-height:4rem;
}
.my_ReservationOrder p{
    margin:0;
    padding: 0;
    font-size:16px;
    font-weight: bolder;
}
.my_ReservationOrder span{
    font-size:12px;
    color: #333;
     margin-right: 2.5rem;

}
/* 图片 */
.Mycontainer .Img>img{
    width:100%;
}
/* 服务 */
.Mycontainer .Services{
    width:100%;
    display: flex;
    margin:0 14px 10px;

}
.Services .Services_top{
    width:25%;
    display: flex;
    flex-direction: column;
    align-items: center;
}
.Services_top img{
    width:87px;
    height: 54px;
}
.loginname{
    display:flex;
    justify-content: space-between;
    line-height:3rem;
    text-align:center;
    font-size:1.2rem;
    width:245px;
    font-weight:600;
    color:#111;
}
.loginname p{
    width:48px;
    line-height:48px;
    
}
</style>

