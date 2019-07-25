<template>
  <div>
    <div class="messagebox" id="top" v-show="windowinfo">
      <div class="messagetop">
         <p>与客服小姐姐的聊天</p>
         <span @touchstart="closeinfo()">x</span>
      </div>
      <div class="messagecontent"></div>
       <div class="messagefooter">
        <input type="text" v-model="values"><button @touchstart="msg()" >提交</button>
      </div>
    </div>
    <!-- 页头标题 -->
    <mt-header title="【换新到手价¥1469】荣耀8X">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <!-- 产品轮播图 -->
    <div class="carousel">
      <mt-swipe :auto="4000">
        <mt-swipe-item>
          <img class="img-size" src="http://127.0.0.1:3000/img/detail-1/01.jpg" />
        </mt-swipe-item>
        <mt-swipe-item>
          <img src="http://127.0.0.1:3000/img/detail-1/01-1.jpg" />
        </mt-swipe-item>
        <mt-swipe-item>
          <img src="http://127.0.0.1:3000/img/detail-1/01-2.jpg" />
        </mt-swipe-item>
        <mt-swipe-item>
          <img src="http://127.0.0.1:3000/img/detail-1/01-3.jpg" />
        </mt-swipe-item>
        <mt-swipe-item>
          <img src="http://127.0.0.1:3000/img/detail-1/01-4.jpg" />
        </mt-swipe-item>
        <mt-swipe-item>
          <img src="http://127.0.0.1:3000/img/detail-1/01-5.jpg" />
        </mt-swipe-item>
      </mt-swipe>
    </div>
    <div class="title">
      <img src="http://127.0.0.1:3000/img/detail-1/1-1.png" alt />
      <p>【换新到手价￥1469】荣耀8X</p>
      <span class="mytitle">千元旗舰 COF超窄下巴封装 GT加速</span>
    </div>
    <!-- 领券入口 -->
    <div class="conpan">
      <img class="conpan-img" src="http://127.0.0.1:3000/img/detail-1/small.png" alt />
      <span>领券最高减150元</span>
      <router-link to="#" class="conpan-a a-style">
        <span>登录领取</span>
      </router-link>
      <router-link to="#">
        <img class="img-detail" src="http://127.0.0.1:3000/img/detail-1/small01.png" alt />
      </router-link>
    </div>
    <!-- 新机机型介绍 -->
    <div class="new">
      <h5 class="new-goods font-style">新机机型</h5>
      <div class="new-detail">
        <div>
          <router-link class="a-style font-style" to="#">6GB 128GB幻夜黑全网通</router-link>
        </div>
        <div>
          <span class="font-style font-color">￥</span>
          <router-link class="a-style font-color" to="#">1699</router-link>
          <router-link class="a-style new-img" to="#">></router-link>
        </div>
      </div>
    </div>
    <!-- 旧机抵扣 -->
    <div class="old font-style">
      <h5 class="new-goods font-style">旧机抵扣</h5>
      <div class="new-detail">
        <img class="old-img" src="http://127.0.0.1:3000/img/detail-1/下载.png" alt />
        <router-link class="a-style line-center text-left" to="#">添加想卖的旧机，可抵扣新机款</router-link>
        <router-link class="a-style new-img line-center" to="#">></router-link>
      </div>
       <ul class="oldproducts">
          <li v-for="(item,i) in showold" :key="i">
            <div>
              <img :src="item.imgurl" alt="">
              <span>{{item.title}}</span>
            </div>
            <p>预估<span>-￥{{item.estimate}}</span><i class="iconfont icon-huishouzhan"       @click="deletedata($event)" :data-id="item.id"></i> </p>
          </li>
        </ul>
      <div class="old-a-style">
        <router-link class="a-style" to="/category?num=1">添加更多旧机</router-link>
      </div>
    </div>
    <!-- 优惠福利 -->
    <div class="old font-style">
      <h5 class="new-goods font-style">优惠福利</h5>
      <div class="new-detail">
        <div>
          <span class="old-h-w">以旧换新补贴</span>
        </div>
        <div>
          <span class="font-style font-color">-￥</span>
          <router-link class="a-style font-color" to="#">150</router-link>
        </div>
      </div>
      <div class="old-a-style new-detail">
        <router-link class="a-style" to="#">添加更多旧机</router-link>
        <router-link class="a-style new-img" to="#">></router-link>
      </div>
    </div>
    <img class="img-width" src="http://127.0.0.1:3000/img/detail-1/1-1.jpg" />
    <!-- 详情导航栏 -->
    <div class="pic-data font-style">
      <router-link to="#miao1">图文详情</router-link>
      <router-link class="pic-data-a" to="#miao2">基本参数</router-link>
      <router-link to="#miao3">包装售后</router-link>
    </div>
    <img id="miao1" class="img-width" src="http://127.0.0.1:3000/img/detail-1/02.jpg" alt />
    <img class="img-width" src="http://127.0.0.1:3000/img/detail-1/03.jpg" alt />
    <img class="img-width" src="http://127.0.0.1:3000/img/detail-1/04.jpg" alt />
    <img class="img-width" src="http://127.0.0.1:3000/img/detail-1/05.jpg" alt />
    <img class="img-width" src="http://127.0.0.1:3000/img/detail-1/06.jpg" alt />
    <div id="miao2" class="parameter">
      <h5 class="parameter-title">主体</h5>
      <span class="parameter-left">品牌</span>
      <span class="parameter-right">华为</span>
      <span class="parameter-left">型号</span>
      <span class="parameter-right">荣耀8X</span>
      <span class="parameter-left">入网型号</span>
      <span class="parameter-right parameter-right-h">JSN-AL00a</span>
      <span class="parameter-left">上市年份</span>
      <span class="parameter-right">2018年</span>
      <span class="parameter-left">上市月份</span>
      <span class="parameter-right">9月</span>
      <h5 class="parameter-title">基本信息</h5>
      <span class="parameter-left">机身颜色</span>
      <span class="parameter-right">幻夜黑</span>
      <span class="parameter-left">机身长度（mm）</span>
      <span class="parameter-right">160.4备注：实际尺寸依配置、制造工艺、测量方法的不同可能有所差异。</span>
      <span class="parameter-left">机身宽度（mm）</span>
      <span class="parameter-right">76.6备注：实际尺寸依配置、制造工艺、测量方法的不同可能有所差异。</span>
      <span class="parameter-left">机身厚度（mm）</span>
      <span class="parameter-right">7.8备注：实际尺寸依配置、制造工艺、测量方法的不同可能有所差异。</span>
      <span class="parameter-left">机身重量（g）</span>
      <span class="parameter-right">175备注：实际尺寸依配置、制造工艺、测量方法的不同可能有所差异。</span>
      <span class="parameter-left">输入方式</span>
      <span class="parameter-right">触控</span>
      <span class="parameter-left">运营商标志或内容</span>
      <span class="parameter-right parameter-h">其他</span>
      <span class="parameter-left">机身材质分类</span>
      <span class="parameter-right">金属边框；玻璃后盖</span>
      <span class="parameter-left parameter-h">机身材质工艺</span>
      <span class="parameter-right">卡托：金属+塑胶 后盖：玻璃 边框：铝合金</span>
    </div>
    <img id="miao3" class="img-width" src="http://127.0.0.1:3000/img/detail-1/07.jpg" alt />
    <div class="police">
      <p>上海悦易网络信息技术有限公司</p>
      <p>沪ICP备10043802号 - 2</p>
      <p>
        <img class="police-img" src="http://127.0.0.1:3000/img/detail-1/police.png" /> 沪ICP备10043802号 - 2
      </p>
    </div>
    <div class="font-style foot-f">
      <div class="foot" @touchstart="showmsg()">
        <img class="foot-img" src="http://127.0.0.1:3000/img/detail-1/phone.png" />
        <p class="foot-m">客服</p>
      </div>
      <div class="foot-s">
        <p class="foot-p" v-show="showold.length>0">{{showprice>0?"预计补差价"+showprice+"元":showprice==0?"[0元]购买":"[0元] 额外赚"+-showprice+"元"}}</p>
        <p class="foot-m" v-show="showold.length==0">添加旧机获取超值换新价</p>
      </div>
      <div class="foot-t">
        <router-link class="foot-size" to="#">
          <p class="foot-m" v-show="showold.length>0">提交</p>
          <p class="foot-m" v-show="showold==0">添加旧机</p>
        </router-link>
      </div>
    </div>
    <div class="go-top"><router-link to="#top">回顶部</router-link></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      price:6000,
      values:'',
      socket:{},
      id:"",
      data:[],
      showold:[],   //表示显示的旧机的列表
      flag:false ,   //如果点击了删除icon，将此属性值变为true，监听此属性，调用init
      showprice:0,   //showold列表中旧机的总价
      windowinfo:false  //客服聊天的显示状态true为显示列表,false为隐藏列表
    };
  },
  sockets:{
    connect:function(){
      this.id=this.$socket.id
    },
    message:function(val){
      var messagecon=document.getElementsByClassName("messagecontent")[0]
      var p=document.createElement("p")
          p.innerHTML=val
          messagecon.appendChild(p) 
    }
  },
  created(){
    this.init()
  },
  mounted(){
    this.$emit("connect","http://127.0.0.1:3000")
  },
  beforeRouteEnter(to, from, next){
    next(vm=>{
      console.log(vm);
      vm.init()
    })
  },
  watch:{
    flag(){
      this.init() //调用init 
      this.flag=false
    }
  },
  methods:{
    closeinfo(){
      this.windowinfo=false
    },
    msg(){
    //  this.socket=io("http://127.0.0.1:2900");
    //         this.socket.emit("chat message",this.values);
                this.$socket.emit("chat message",this.values)
                 var messagecon=document.getElementsByClassName("messagecontent")[0]
                  var p=document.createElement("p")
                      p.innerHTML=this.values
                      p.style.textAlign="right"
                      messagecon.appendChild(p) 
            // var id=this.socket;
            // console.log(this.socket.id);
            this.values="";
            
      //        this.$socket.on("message",function(msg){
      //           console.log(this.$socket)
      //             console.log(msg)
               
      //  })
    },
    showmsg(){
      //  var messagebox=document.getElementsByClassName("messagebox")[0]
      //      messagebox.style.display="block"
      this.windowinfo=true
    },
    init(){
       this.axios.get("user/oldproducts").then(res=>{
         if(res.data.status===403){//如果为状态403，代表证书出问题
           this.$messagebox(res.data.msg+",请重新登录")
           this.$router.push("/login")
         }else{
           if(res.data.code===403){
             this.showold=[]
           }else{
             this.showold=res.data.msg
             //初始化总价为0
             var tatol=0
             //算出列表的回收总价
             for(var item of this.showold){
               tatol+= +item.estimate  //item.estmate为字符串，将其转为为数字，前面加上+隐式转换
             }
             this.showprice=this.price-tatol //显示的价钱为当前商品的价钱减去回收的总价
           }
           
          //  res.data.msg
         }
        
      })
    },
    deletedata(e){
      var id=e.target.dataset.id
      this.$messagebox.confirm("确认删除么").then(action=>{
        this.axios.post("user/deleteoldprodcut/",{id:id}).then(res=>{
          if(res.data.code==1){
            this.flag=true   //当点击删除ICON时，将flag设置为true,进入监听对象，执行函数
          }     
        }).catch(err=>{
          console.log(err)
        })
      })
    }
  }
};
</script>
<style scoped>
/* 页脚样式 */
.go-top{
    position: fixed;
    padding:.5rem;
    border-radius:40% 40%;
    right: 30px;
    bottom:80px;
    background: rgba(0,0,0,.5);
    z-index: 10;
    border: 1px solid #ecd2a1;
}
.go-top a{color: #ecd2a1;
    font-size: 12px;text-decoration: none}
.foot-f {
  display: flex;
  position: fixed;
  z-index: 998;
  bottom:0;left:0;
  width:100%;
  background: #fff;
}
.foot {
  width: 15%;
  height: 39px;
  bottom:0;
}
.foot-s {
  width: 50%;
  line-height: 39px;
  border-left: 1px solid #dbdbdb;
}
.foot-t {
  width: 35%;
  line-height: 39px;
  background: #33271f;
}
.foot-size {
  color: #ecd2a1;
  text-decoration: none;
}
.foot-m {
  margin: 0;
}
.foot-p{
  color:#fc6232
}
.foot-img {
  width: 14px;
  height: 17px;
}
.police {
  font-size: 12px;
  color: #999;
  background: #fafafa;
  margin-bottom:79px;
}
.police p {
  margin: 0;
}
.police-img {
  width: 13px;
  height: 13px;
  line-height: 16px;
}
/* 参数样式 */
.parameter {
  text-align: left;
  color: #999;
}
.parameter span {
  font-size: 14px;
  padding: 8px 0;
  border-bottom: 1px solid #e7e7e7;
  box-sizing: border-box;
  padding-left: 20px;
}
.parameter-title {
  margin: 0;
  padding: 10px 20px;
  border-bottom: 1px solid #e7e7e7;
}
.parameter-left {
  float: left;
  width: 30%;
  border-right: 1px solid #e7e7e7;
}
.parameter-right {
  float: left;
  width: 70%;
}
.parameter-right-h {
  height: 36px;
}
.parameter-h {
  height: 55px;
}
/*  */
.mint-header {
  background-color: #ffffff !important;
  color: black !important;
  font-size: 16px !important;
  position: fixed !important;
  left:0px ;top:0px ;
  z-index: 999;
  width:100%
}
.carousel {
  width: 100%;
  height: 280px;
  padding-top:40px;
}
.carousel img {
  height: 280px;
}
.title {
  padding: 0 10px;
}
.title:after {
  content: "";
  display: block;
  clear: both;
}
.title img {
  width: 28px;
  height: 28px;
  float: left;
}
.title p {
  float: left;
  line-height: 28px;
  margin: 0;
  font-weight: bold;
}
.mytitle {
  float: left;
  font-size: 14px;
  margin-top: 5px;
}
.conpan {
  width: 100%;
  float: left;
  font-size: 12px;
  padding: 10px 10px;
  background-color: #fff8ec;
}
.conpan > span {
  float: left;
  padding: 0px 10px;
}
.a-style {
  text-decoration: none;
  color: #2c3e50;
}
.conpan-img {
  width: 15px;
  height: 9px;
  padding: 5px 0px;
  float: left;
}
.conpan-a {
  margin-left: 120px;
}
.img-detail {
  width: 6px;
  height: 10px;
  margin-left: 5px;
}
.new {
  background: #fafafa;
  border: 1px solid #eee;
  padding: 5px 13px;
  margin-top: 50px;
}
.new-goods {
  text-align: left;
  margin: 0px;
  padding: 10px 0px;
  border-bottom: 1px solid #eee;
}
.font-style {
  font-size: 14px;
}
.new-detail {
  display: flex;
  justify-content: space-between;
  padding: 10px 0px;
}
.font-color {
  color: #fc6232;
}
.new-img {
  margin-left: 20px;
  color: #000;
  font-weight: 550;
}
.old {
  background: #fafafa;
  border: 1px solid #eee;
  padding: 5px 13px;
  margin-top: 10px;
}
.old-img {
  height: 28px;
}
.line-center {
  line-height: 28px;
}
.old-a-style {
  padding: 10px 0px;
  border-top: 1px solid #eee;
}
.text-left {
  margin-left: -80px;
}
.img-width {
  width: 100%;
}
.pic-data {
  display: flex;
  margin: 13px 0px;
}
.pic-data a {
  color: #999;
  text-decoration: none;
  width: 33.33%;
}
.pic-data-a {
  border-left: 1px solid #999;
  border-right: 1px solid #999;
}
.messagebox{
  position:fixed;
  top:15%;
  left:10%;
  background:#22222270;
  width:300px;
  height:400px;
  z-index:10;
  overflow-y:scroll;
}
.messagetop{
  width:100%;
  height:2rem;
  line-height:2rem;
  background:#e6e6e650;
  color:#fff;
  position:fixed;
  width:80%;
  display:flex;
}
.messagetop p{
  width:90%
}
.messagetop span{
  flex:1
}
.messagefooter{
  position:fixed;
  height:29px;
  background:#c6c6c680;
  width:80%;
  bottom:165px;
  text-align:left;
}
.messagefooter input{
  width:88%;
 height:29px;
 border:0px;
}
.messagefooter button{
  background:#2c3e5060
}
.messagecontent{
  overflow:hidden;
  padding-top:35px;
  padding-bottom:25px;
  color:#fff;
  z-index:999;
  text-align:left
}
.oldproducts li{
  display:flex;
  justify-content: space-between
}
.oldproducts img{
  width:41px;
  height:41px;
  vertical-align:middle
}
.oldproducts div,.oldproducts p{
  line-height:41px;
  height:41px;
  font-size:12px;
}
.oldproducts div span{
  font-size:12px;
}
.oldproducts p span{
  color:#3eb052;
  margin-right:.5rem;
}
.oldproducts i{
  font-size:1.2rem;
}
.messagebox{
  background:#444;
  width:300px;
  height:400px;
}
</style>


