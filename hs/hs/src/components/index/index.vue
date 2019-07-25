<template>
    <div class="index">
        <div class="header">
            <div class="header-full"> 
                <div class="header-search margin">
                    <router-link to="/">
                        <span class="search-left">深圳市</span>
                        <i class="iconfont icon-xiangxia"></i>
                    </router-link> 
                    <p class="search">
                        <i class="iconfont icon-simui-search"></i>
                        <input type="text" placeholder="检索您要卖的品牌、机器型号">
                    </p>
                    <div class="search-rigth">
                        <i class="iconfont icon-cart-circle"></i>
                    </div>
                </div>
                <div>
                    <!-- <mt-navbar v-model="selected">
                        <mt-tab-item id="1"></mt-tab-item>
                        <mt-tab-item id="2"></mt-tab-item>
                        <mt-tab-item id="3">卖笔记</mt-tab-item>
                        <mt-tab-item id="4">卖平板</mt-tab-item>
                    </mt-navbar> -->
                    <div class="toLis  margin" id="header-nav">
                        <router-link v-for="(el,i) in indexdata.listType" :key="i" :to="el.tourl" class="links">
                        <p @click="selected(i)" :class="i==0?'active':''">{{el.ltitle}}</p>
                        </router-link>
                        <!-- <router-link @click.prevent="linkTo" to="/index/index/phone">卖手机</router-link>
                        <router-link @click.prevent="linkTo"  to="/index/index/notebook">卖笔记本</router-link>
                        <router-link @click.prevent="linkTo"  to="/index/index/ipad">卖平板</router-link> -->
                    </div>
                </div>
            </div>   
            <!-- <div id='content-top'>
                <mt-tab-container v-model="selected" >
                    <mt-tab-container-item id="1">
                        <recommend></recommend>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="2">
                        <phone></phone>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="3">
                        <notebook></notebook>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="4">
                        <ipad></ipad>
                    </mt-tab-container-item>
                </mt-tab-container>  
            </div>  --> 
            <div class="header-content">
                <transition name="fade" mode="out-in">
                   <router-view ></router-view>
<!--                    <recmmend v-show="isShow==1"></recmmend>
                    <phone v-show="isShow==2"></phone>
                    <notebook v-show="isShow==3"></notebook>
                    <ipad v-show="isShow==4"></ipad> -->
                </transition>
            </div>
        </div>
    </div>
</template>
<script>
// import recommend from "./index/recommend"
// import phone from "./index/phone"
// import notebook from "./index/notebook"
// import ipad from "./index/ipad"
export default {
    data(){
        return {
           listtype:[]
        }
    },
    props:{
        indexdata:{default:Object}
    },
    created(){
       
    },
    mounted() {      
        
    },
    // components:{
    //     'recommend':recommend,
    //     "phone":phone,
    //     "notebook":notebook,
    //     "ipad":ipad
    // },
    methods:{
        // linkTo(){   
        // var nav=document.getElementById("header-nav")
        // console.log(nav.children)
        //    for(var i=0;i<nav.children.length;i++){
        //        nav.children[i].className=""
        //    } 
        //     e.target.className="active"
        // },
        
        //头部导航栏的active
        selected(i){
            var links = document.getElementsByClassName("links")
            for(var j=0;j<links.length;j++){
                 links[j].children[0].className=""       
            }
            links[i].children[0].className="active"  

        }
    }
}
</script>
<style scoped>
.fade-leave,.fade-enter-to{
    opacity: 1;
}
.fade-leave-to,.fade-enter{
    opacity:0;
    /* transform: translate(100px,100px) scale(0.5); */
   
}
.fade-enter-active,.fade-leave-active{
    transition:.3s
}
.margin{
    margin:0 1rem
}
#content-top{
    padding-top:6.7rem;
    padding-bottom:4rem;
}
.header-full .mint-navbar .mint-tab-item.is-selected{
    border-bottom:3px solid #ff0;
    color:black;
    font-weight:700
}
.header .mint-navbar .mint-tab-item{
    padding:1rem;
}
.header-search{
    display:flex;
    /* margin-top:1rem; */
    justify-content: space-between;
    line-height:3rem;
    
    
}
.header-full{
    
    background:#fff;
    width:100%;
     position:fixed;
    top:0;
    left:0;
    z-index:99 

}
.search-left{
    margin-right:.3rem;
    font-weight:600px;
    
}
.header-search .icon-xiangxia{
    font-size:.5rem;
    
}
.search{
    position:relative;
    margin:0 .6rem;
}
.search input{
    padding-left:1.5rem;
    height:2rem;
    border-radius:1.5rem;
    border:1px solid transparent;
    box-shadow:0 0 60px 1px #eee;
    outline:0;
    font-size:14px;
    width:215px;
    color:#999;
    
}
.search i{
    position:absolute;
    top:0rem;
    left:.2rem;
    font-weight:800;
    font-size:1.3rem; 
}
.search-rigth .icon-cart-circle{
    font-size:1.3rem;
}
.toLis{
    display:flex;
}
.toLis a{
    width:25%;
    text-align:center;
    font-size:1rem;
    height:2.5rem;
    line-height:2.5rem;
    padding:0 .5rem;
}
.active{
    border-bottom:3px solid #ff0;
    font-weight:800;
}
.header-content{
    padding-top:94px;
    padding-bottom:32px;
}
</style>

