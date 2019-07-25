<template>
  <div class="container">
    <mt-header title="回收爱">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
     
    <div class="video-js">
        <!--1:视频-->
        <video src="http://127.0.0.1:3000/img/index/huishouai/movie1.mp4" id="v3" controls></video> 
        <!--2:广告图片-->
        <img src="http://127.0.0.1:3000/img/index/huishouai/movie-new.png" id="p3" />
        <!--3:按钮-->
        <a href="#" id="ctrl" @touchstart.prevent="p">
            <img src="http://127.0.0.1:3000/img/index/huishouai/play.png" />
        </a>
    </div>
    <img src="http://127.0.0.1:3000/img/index/huishouai/plan-new.png" alt="">
    <div class="activity-scene">
        <div class="swiper-wrapper">
            <img src="http://127.0.0.1:3000/img/index/huishouai/1.png" alt="">
            <img src="http://127.0.0.1:3000/img/index/huishouai/2.png" alt="">
        </div>
    </div>
    <img class="record" src="http://127.0.0.1:3000/img/index/huishouai/title.png" alt="">
    <div class="video-js2">
        <!--1:视频-->
        <video src="http://127.0.0.1:3000/img/index/huishouai/movie2.mp4" id="v4" controls></video>
        <!--2:广告图片-->
        <img src="http://127.0.0.1:3000/img/index/huishouai/movie-img.png" id="p4" />
        <!--3:按钮-->
        <a href="#" id="ctrl2" @touchstart.prevent="p2">
            <img src="http://127.0.0.1:3000/img/index/huishouai/play.png" />
        </a>
        
    </div>
    <div class="text">爱回收携手一扇窗计划 开启“回收爱·绘本计划”</div>
    <div>
        <router-link class="activity-list" to="">
            <img src="http://127.0.0.1:3000/img/index/huishouai/one.png" alt="">
            <p>中国国家地理助力爱回收“科技夏令营”<br>用“拼图“接力爱心</p>
        </router-link>
        <router-link class="activity-list" to="">
            <img src="http://127.0.0.1:3000/img/index/huishouai/two.png" alt="">
            <p>吴莫愁化身“教师兼编导” 山顶小学唱<br>响校园演唱会</p>
        </router-link>
        <router-link class="activity-list" to="">
            <img src="http://127.0.0.1:3000/img/index/huishouai/three.png" alt="">
            <p>携手动感101爱心支教行赴四川<br>同吴莫愁建爱心合唱团</p>
        </router-link>
        <router-link class="activity-list" to="">
            <img src="http://127.0.0.1:3000/img/index/huishouai/four.png" alt="">
            <p>用行动代替口号<br>爱回收正式启动回收爱助学计划</p>
        </router-link>
        <img style="margin-bottom:40px;" src="http://127.0.0.1:3000/img/index/huishouai/partner.png" alt="">
        <div class="btn">
            <router-link class="btn-left" to="">
                <i class="iconfont icon-shengyin"></i>查看公告
            </router-link>
            <span></span>
            <router-link class="btn-right" to="">
                <i class="iconfont icon-love-donate"></i>我要捐款
            </router-link>
        </div>
    </div>
  </div>
</template>
<script>
    export default {
    data() {
        return {
            
        }
    },
    methods:{
        p(e){
            var v3=document.getElementById("v3");
            var p3=document.getElementById("p3");
            var img=document.querySelector("#ctrl img");
            console.log(p3);
            //  img.style.display = "none";
            e.preventDefault();
            if (v3.paused) {
                p3.style.display = "none";
                img.style.display="none"
                v3.play();
            }
        },
         p2(e){
            var v4=document.getElementById("v4");
            var p4=document.getElementById("p4");
            var img=document.querySelector("#ctrl2 img");
            console.log(p4);
            //  img.style.display = "none";
            e.preventDefault();
            if (v4.paused) {
                p4.style.display = "none";
                img.style.display="none"
                v4.play();
            }
        }
    },
    };
</script>
<style scoped>

    .mint-header{
        font-size:17px;
        background-color: #fff;
        color:#000;
    }
    .video-js{
        position: relative;
        width:100%;
    }
    #v3{
        width:100%;height:100%;
        top:0;left:0;
    }
    #p3{
        position: absolute;
            width: 100%;
            height: 100%;
            left: 0%;
            top: 0%;
    }
    #ctrl{
        position:absolute;
        top:50%;left:50%;
        margin-top:-30px;
        margin-left:-30px;
    }
    #ctrl img{
        width:60px;height: 60px;
        /* display:none */
    }
    .video-js2{
        position: relative;
        width:100%;
    }
    #v4{
        width:100%;height:100%;
        top:0;left:0;
    }
    #p4{
        position: absolute;
            width: 100%;
            height: 100%;
            left: 0%;
            top: 0%;
    }
    #ctrl2{
        position:absolute;
        top:50%;left:50%;
        margin-top:-30px;
        margin-left:-30px;
    }
    #ctrl2 img{
        width:60px;height: 60px;
        /* display:none */
    }
    img{
        width:100%;
    }
    .activity-scene{
        width:100;
        height:217px;
        background-image: url("http://127.0.0.1:3000/img/index/huishouai/activity.png");
        background-size:100%;
    }
    .swiper-wrapper{
        z-index: 1;
        width:375px;height:114px;
    }
    .swiper-wrapper img{
        width:50%;
        padding-top:79px;
        padding-left:5px;
        padding-right:5px;
    }
    .record{
        width:106px;height: 31px;
        margin-top:20px;
    }
    .text{
        margin:10px;
        font-size:0.8rem;
        float: left;
        color: #717171;
    }
    .activity-list{
        float: left;
        margin-bottom: 5px;
    }
    .activity-list img{
        width:125px;height: 75px;   
        float: left;
    }
    .activity-list p{
        float:right;
        text-align: left;
        padding-top:12px;
        padding-left:8px;
        font-size:0.7rem;
        color: #717171;
    }
    .btn{
        display: flex;
        position: fixed;
        z-index: 1000;
        text-align: center;
        width:100%;
        line-height:44px;
        background-color: #fdce0f;
        bottom:0;left:0;
        color:#786000;
    }
    .btn-left{
        width: 50%;
        color:#786000;
        font-size:0.8rem;

    }
    .btn-right{
        width:50%;
        color:#786000;
        font-size:0.8rem;
    }
    .btn span{
        border-right:1px solid #959800;
    }
    .iconfont{
        font-size:0.8rem;;
       
    }
    .btn i{
        margin-right:10px;
    }
</style>


