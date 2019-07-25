<template>
    <div class="recom" id="top">
        <div class="bg-zz">
            <span>拼命数据加载中…………</span>
        </div>
        <div class="right-nav">
            <ul class="right-nav-list">
                <li v-for="(item,i) of nav" :key="i"  :class="i==0?'selected':''">
                    {{item}}</li>
                <!-- <li>2</li>
                <li>3</li>
                <li>4</li> -->
            </ul>
        </div>
        <div class="banner">
            <img src="http://127.0.0.1:3000/img/index/refer/referbanner.jpg" alt="">
        </div>
        <div class="bg-z">
            <div class="coupon-container margin">
                <div class="left">
                    <div class="gjia">
                        <img src="http://127.0.0.1:3000/img/index/refer/xianshi.png" alt="">
                    </div>
                    <div style="margin-top:2rem" class="coupon-content"> 
                        <sup>￥</sup>
                       <span style="font-size:24px;">60</span> 
                    </div>                     
                </div>
                <div class="right">
                    <p style="color:#68acfe">选择机型查看优惠</p>
                    <p>最高加价：<sup style="color:#fc6232">￥</sup><span>60</span></p>
                </div>
            </div>
        </div>
        <div class="count-down margin">
            <div style="margin:5px">
                <span>{{day}}</span>
                <span>天</span>
                <span>{{hours}}</span>
                <span>时</span>
                <span>{{minutes}}</span>
                <span>分</span>
                <span>{{seconds}}</span>
                <span>秒</span>
            </div>
            <div class="down-rigth">
                <router-link to="/category">
                     立即回收
                </router-link>
            </div>
        </div>
        <div class="single-img">
            <router-link to="/">
                <img src="http://127.0.0.1:3000/img/index/refer/router.png"><img>
            </router-link>
        </div>
        <div class="navgator margin">
            <div v-for="(item,i) in listtypeall" :key="i">
                <router-link to="/category">
                    <i :class='item.img_list'></i>
                    <p>{{item.uname}}</p>
                </router-link>
            </div>
            <!-- <div>
                <i class="iconfont icon-laptop "></i>
                <p>卖笔记本</p>
            </div>
            <div>
                <i class="iconfont icon-st-browse "></i>
                <p>卖平板</p>
            </div>
            <div>
                <i class="iconfont icon-Camera-"></i>
                <p>摄影摄像</p>
            </div>
            <div>
                <i class="iconfont icon-piao "></i>
                <p>智能数码</p>
            </div> -->
        </div>
        <div class="free margin">
            <button>免费估价</button>
        </div>
        <div class="navold">
            <img src="http://127.0.0.1:3000/img/index/refer/oldnew.png" alt="">
        </div>
        <div class="eval margin">
            <div class="eval-left">
                <div class="evalImgs" v-for="(item,i) in oldNew" :key="i">
                    <p><span>{{item.title}}</span></p>
                    <img :src="item.img_url" alt="">
                    <p>{{item.model}}</p>
                    <p>
                        最高回收价
                        <span>{{item.price}}</span>
                    </p>
                </div>
                <!-- <div class="evalImgs">
                    <p><span>旧机估价</span></p>
                    <img src="http://127.0.0.1:3000/img/index/refer/old_new_right.jfif" alt="">
                    <p>苹果 iPhone X</p>
                    <p>
                        最高回收价
                        <span>￥5673</span>起
                    </p>
                </div> -->
            </div>
            <div class="eval-bt margin">
                <p> <i class="iconfont icon-Coins- "></i>
                    <span>预计到手价</span>
                <em style="color:#fc6232">￥</em>
                    <span>1726</span>
                </p>
                <button class="button">去看看</button>
            </div>
        </div>
        <div class="many margin">
            <div class="new-phone">更多火爆新机</div>
            <div class="many-content">
                <div class="many-content-item">
                    <img src="http://127.0.0.1:3000/img/index/refer/tx_rongyao8X.jpg" alt="">
                    <p>荣耀 8X</p>
                    <p><span>￥1699</span>起</p>
                </div>
                <div class="many-content-item">
                     <img src="http://127.0.0.1:3000/img/index/refer/tx_rongyao8X.jpg" alt="">
                    <p>荣耀 8X</p>
                    <p><span>￥1699</span>起</p>
                </div>
                <div class="many-content-item">
                     <img src="http://127.0.0.1:3000/img/index/refer/tx_rongyao8X.jpg" alt="">
                    <p>荣耀 8X</p>
                    <p><span>￥1699</span>起</p>
                </div>
            </div>
            <div class="many-list">
                <span>• 全国联保</span>
                <span>• 省钱省心</span>
                <span>• 不限旧机</span>
                <span>• 闪电到货</span>
            </div>
        </div>
        <div class="use-list margin">
            <i class="iconfont icon-bell"></i>
            <div class="use-bar" id="banbar">
                <p v-for="(el,i) in carousel" :key="i">{{el}}</p>  
            </div>
        </div>
        <div class="activity">
            <div>
                <img src="http://127.0.0.1:3000/img/index/refer/activity.png" alt="">
            </div>
            <div>
                <img src="http://127.0.0.1:3000/img/index/refer/rmhd1.png" alt="">
                <img src="http://127.0.0.1:3000/img/index/refer/rmhd2.png" alt="">
            </div>
        </div>
        <div class="benefit">
            <router-link to="/fon">
                <img src="http://127.0.0.1:3000/img/index/refer/benefit.png" alt="">
            </router-link>
            <router-link to="/love">
                <img src="http://127.0.0.1:3000/img/index/refer/lsgy.png" alt="">
            </router-link>
        </div>
        <div class="understand">
            <router-link to="/factor">
                <img src="http://127.0.0.1:3000/img/index/refer/lsgy2.png" alt="">
            </router-link>
            <router-link to="/clear">
                <img src="http://127.0.0.1:3000/img/index/refer/lsgy3.png" alt="">
            </router-link>
        </div>
        <div class="partner">
            <img src="http://127.0.0.1:3000/img/index/refer/hzhb.jpg" alt="">
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            data:new Date('2019/8/18 18:00:00'),
            listtypeall:[],
            oldNew:[],
            day:"00",
            hours:"00",
            seconds:"00",
            minutes:"00",
            carousel:["广州市李先生 以￥2599 喜提红米 K20 Pro 6GB 128GB 碳纤黑 全网通fsdfrdsfs","深圳市廖女士 以￥1099 喜提红米 Note7 4GB+64GB 梦幻蓝",
            "北京市杨女士 以￥4188 喜提华为 P30 8GB 128GB 天空之境","天津市王先生 以￥1099 喜提红米 Note 7 4GB 64GB 暮光金 全网通","广州市李先生 以￥2599 喜提红米 K20 Pro 6GB 128GB 碳纤黑 全网通fsdfrdsfs"],
            nav:["头部","换新","新机","公益"],
            scrolled:0
       }
    },
    props:{
     
    },
    mounted(){
        this.carsou()
        this.init() 
       
   
    },
    watch:{
        scrolled(){
        this.go()
        }
    },
    
    created(){
        this.time()
        setInterval(()=>{
            this.scrolled=document.body.scrollTop+document.documentElement.scrollTop 
        },100)
        
    },
    methods:{
        init(){
            var url="index/recommend"
            var bgzz=document.getElementsByClassName("bg-zz")[0]
                bgzz.style.display="block"
                var X=10
                var timer=setInterval(function(){
                    X-=1                   
                    var span=bgzz.children[0]                   
                    span.style.transform=`translate(${X}px)`
                    if(-X==span.clientWidth){
                        X=document.body.clientWidth
                    }  
                },10)
            this.axios.get(url).then(res=>{
               this.listtypeall=res.data.listtypeall
               this.oldNew=res.data.oldNew
               if(this.oldNew){
                    bgzz.style.display="none"
                    clearInterval(timer)
               }
            })
        },
        go(e){
            var navold=document.getElementsByClassName("navold")[0]
            var navs=document.querySelectorAll(".right-nav-list li")
            var newphone=document.getElementsByClassName("new-phone")[0]
            var benefit=document.getElementsByClassName("benefit")[0]
            var bentop=benefit.offsetTop
            var newtop=newphone.offsetTop
            var ntop=navold.offsetTop 
            var scrolltop=document.body.scrollTop+document.documentElement.scrollTop
            for(var item of navs){
                item.classList.remove("selected")              
            }
            if((ntop-scrolltop)>90){
                navs[0].classList.add("selected")
            }else{
                if((ntop-scrolltop)<90&&newtop>scrolltop+90){
                navs[1].classList.add("selected")
                }else if(newtop<scrolltop+90&&bentop>scrolltop+90){
                    navs[2].classList.add("selected")
                }else{
                    navs[3].classList.add("selected")
                }
            }
        },
        time(){
            setInterval(()=>{
            var now=new Date();//获取当前时间
            var starttime=now.getTime()//转化为毫秒数
            var endtime=this.data.getTime()
            var residue=endtime-starttime//剩余毫秒数
            var residueD=parseInt(residue/(60*60*24*1000)),//转换为天
            D=parseInt(residue)-parseInt(residueD*60*60*24*1000),//除去天的毫秒数
            residueH=parseInt(D/(60*60*1000)),//除去天的毫秒数转换成小时
            H=D-residueH*60*60*1000,//除去天、小时的毫秒数
            residueM=parseInt(H/(60*1000)),//除去天的毫秒数转换成分钟
            M=H-residueM*60*1000;//除去天、小时、分的毫秒数
            var S=parseInt((residue-residueD*60*60*24*1000-residueH*60*60*1000-residueM*60*1000)/1000)//除去天、小时、分的毫秒数转化为秒
            this.day=residueD.toString().length>1?residueD:("0"+residueD)
            this.hours=residueH.toString().length>1?residueH:("0"+residueH)
            this.seconds=S.toString().length>1?S:("0"+S)
            this.minutes=residueM.toString().length>1?residueM:("0"+residueM)
        },1000)
       },
       carsou(){
        var listps=document.getElementById("banbar")
        var  i=0
        setInterval(()=>{
            if(i==0){
               listps.style.transition="1s"  
            }
            i+=1
            listps.style.transform=`translate(0,${-i*40}px)`
            if(i==this.carousel.length-1){
                setTimeout(function(){
                    listps.style.transition="",
                    i=0;
                    listps.style.transform=`translate(0,${-i*40}px)`
                },1900)
            }
        },2000)
       }

    }
    
}

</script>
<style scoped>
    .margin{
        margin:0 1rem
    }
  .recom  .banner>img{
      width:100%;
      
  }
  .banner{
      margin:0;
      padding:0;
  }
  .bg-z{
      width:100%;
      height:4rem;
      background:rgb(141, 75, 211);
      margin-top:-4px;
  }
  .coupon-container{
      height:5.5rem;
      background:#fff;
      box-shadow:0 0 10px 0px #eee;
      display:flex;
      border-bottom:1px solid #e6e6e6;
  }
  .coupon-container .left{
      background:url("http://127.0.0.1:3000/img/index/refer/jiajia.png")  no-repeat;
      background-position:58% 80%;
      background-size:5rem 4rem;
      width:235px;
      height:100%;
      color:#f00;
      position:relative
  }
  .coupon-content{
      position:absolute;
      top:-8px;
      left:55px;
      
  }
  .gjia{
      position:absolute;
      top:0px;
      left:0px;
  }
  .gjia img{
      width:60px;
  }
  .count-down{
      margin-top:2.5rem;
      padding-bottom:.5rem;
      display:flex;
      justify-content:space-between;
      border-bottom:1px solid #e6e6e6;  
  }
  .coupon-container .right{
      margin-top:1rem;
      width:100%;
      text-align:left;
  }
  .coupon-container .right span{
      font-size:24px;
      color:#fc6232;
      font-style:italic
  }
  .count-down span{
      margin-left:.5rem;
      width:1.5rem;
      height:1.7;
      line-height: 1.7rem;
      
  }
  .count-down span:nth-child(2n-1){
      background:#000;
      display:inline-block;
      color:#fff;
      
  }
  .count-down .down-rigth{
      padding:.5rem;
      background-image:linear-gradient(-90deg,#ffd629,#fff03b);
      color:#333;
      font-weight:700;
      border-radius:.5rem;
  }
  .single-img img,.navold img{
      width:100%;
  }
  .navgator{
      display:flex;
      justify-content: space-between;
  }
  .navgator div i{
      font-size:32px;
      background:#e9c00867;
      border-radius:1rem;
}
.free button{
    width:100%;
    background:#ffd629;
    color:#333;
    font-weight:800;
    text-align:center;
    height:2rem;
    line-height:2rem;
    border:0;
    margin-top:1rem;
    border-radius:.4rem;
}
.eval{
    box-shadow:0 0 10px 0px #eee;
    margin-top:-4px  ;
    background:url("http://127.0.0.1:3000/img/index/refer/right.png") no-repeat;
    background-size:2rem 1.5rem;
    background-position:49% 40%;
}
.eval-left{
    display:flex;
    justify-content:center;
}
.img-right{
    width:3rem;
    height:1.5rem;
    background:url("http://127.0.0.1:3000/img/index/refer/right.png") no-repeat;
    background-size:100%;
    background-position:10px 20px;
}
.evalImgs p:nth-child(3),.evalImgs p:nth-child(4) span{
    color:#111;
    font-weight:700;
    font-size:1rem;
}
.evalImgs p:nth-child(4){
    font-size:14px;
    color:#999;
}
.evalImgs img{
    width:8rem;
}
.evalImgs{
    padding:1rem;
    border-bottom:2px solid #eee;
}
.evalImgs p{
    margin-bottom:.8rem;
}
.evalImgs p:first-child span{
    border-bottom:.3rem solid #ddd
}
.eval-bt{
    display:flex;
    justify-content:space-between;
    padding:.5rem;
    line-height:2.2rem;
}
.eval-bt p i{
    color:rgba(228, 29, 29, 0.849);
    font-size:1.5rem;
    margin-right:.3rem;
}
.eval-bt span:last-child{
    color:#fc6232;
    font-size:1.5rem;
    font-weight:700;
}
.eval-bt .button{
    background: linear-gradient(90deg,#fff03b,#ffd629);
    padding:0 1.5rem 0 1.5rem;
    border:0;
    border-radius:.5rem;
    color:#333;
}
.many{
   box-shadow:0 0 10px 0px #eee;
   margin-top:1rem; 
}
.many>div:nth-child(1){
    padding:1rem 0;
    text-align:center;
    color:#333;
    font-weight:600;
}
.many-content{
    display:flex;
    justify-content: center;
}
.many-content img{
    width:60px;
}
.many-content-item{
    text-align:center;
    width:30%;
    border-bottom:1px solid #eee;
}
.many-content-item p{
    color:#333;
    font-size:12px;
    margin-bottom:.3rem;
}
.many-content-item p>span{
    font-weight:700;
    color:#666
}
.many-list span{
    text-align:center;
    width:25%;
    line-height:50px;
    display:inline-block;
    color:#999;
    font-size:.7rem;
}
.use-list{
    display:flex;
    justify-content:space-between;
    margin-top:1rem;
    box-shadow:0 0 10px 0px #eee;
    height:2.5rem;
    line-height:2.5rem;
    overflow: hidden;
}
.use-list i{
    font-size:1.3rem;
    color:#ffd629
}
.use-bar p{
    font-size:.7rem;
    width:18rem;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow:hidden;
    margin-left:.5rem;
    height:2.5rem;
    line-height:2.5rem;
    color:#6e6e6e;
}
.activity div:first-child img,.benefit img,.partner img{
    width:100%;
}
.activity div:last-child img,.understand img{
    width:50%
}
.right-nav{
    position:fixed;
    right:6%;
    top:40%;
     width:10%
}
.right-nav ul li{
    background:rgba(182, 202, 7, 0.219);
    width:100%;
    height:2rem;
    line-height:2rem;
    border-radius:1rem;
    margin-top:2rem;
    font-size:12px;
}
.selected{
    background:#e25a0a7e !important;
    color:#fff
}
.bg-zz{
    background:#22222240;
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
    z-index:900;
    overflow: hidden;
   
}
.bg-zz span{
    position:fixed;
    top:50%;
    left:0%;
    color:#fff;
    z-index:991;
    font-size:2rem;
}
</style>