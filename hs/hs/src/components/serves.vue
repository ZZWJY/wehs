<template>
  <div>
    <mt-header title="门店详情">
      <router-link to="/index/serve" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div class="detail">
        <div class="title">
            <img class="shop-img" :src="data.img" alt="">
            <h3 class="title-text">{{data.title}}</h3>
        </div>
        <div class="address">
            <span class="address-text">
                {{data.iaddress}}
            </span>
            <router-link :to="'/map/'+data.id">查看地图</router-link>
        </div>
        <div class="contact">
            <router-link to="#">{{data.sphone}}</router-link>
        </div>
        <div class="hours-itme">
                工作日 10:00到22:00 节假日 10:00到22:00
        </div>
    </div>
    <div class="service">
        <h3 class="service-title">本站服务</h3>
        <div class="service-item">
            <h4 class="item-title">旧机回收</h4>
            <div class="item-desc">手机 笔记本 平板 摄影摄像 智能数码</div>
            <router-link class="item-btn" to="#">去回收</router-link>
            <span class="iconfont icon-icon-"></span>
        </div>
        <div class="service-item">
            <h4 class="item-title">以旧换新</h4>
            <div class="item-desc">旧机抵扣 购买新机平均6折起</div>
            <router-link class="item-btn" to="#">去换新</router-link>
            <span class="iconfont icon-genghuanshouji"></span>
        </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
        data:{}
    }
  },
  created(){
      this.init()
      console.log(this.data)
  },
  methods:{
      init(){
          //要从serve跳向这里才有值，vuex里面的数据在上个页面形成
          var info=this.$store.state.serveinfo
          var id=this.$route.params.id
          try{
          this.data=info.filter(item=>{
              return item.id==id
          })
          }catch(err){
              
          }
          this.data=this.data[0]
      }
  }
};
</script>
<style scoped>
    .iconfont{
        position: absolute;
        left:0;
        bottom:22px;
        font-size:20px;
        background-color: #ff0;
        border-radius: 50%;
    }
    .mint-header{
        font-size:17px;
        background-color: #fff;
        color:#000;
    }
    .detail{
        padding:0 1rem;
        height:273px;
    }
    .title{
        position: relative;
        padding:1rem 0;
        height:112px;
        padding-left:88px;
    }
    .shop-img{
        width:80px;height:80px;
        position: absolute;
        left:0;
    }
    .title-text{
       font-size:0.9rem; 
       text-align: left;
    }
    .address{
        position: relative;
        left:0;
        padding:12px 70px 14px 0;
        border-top:1px solid #e9e9e9;
        line-height: 6px;   
        height:70px;
    }
    .address-text{
        text-align: left;
        float: left;
        font-size:0.9rem;
        color:#333;
        line-height: 1.4rem;
    }
    .address>a{
        position: absolute;
        right:0;
        top:18px;
        font-size:0.9rem;
        color:#418be1;
    }
    .contact{
        border-top:1px solid #e9e9e9;
        /* height: 18px; */
    }
    .contact>a{
        float:left;
        font-size:0.9rem;
        color: #418be1;
         padding:14px 0;
    }
    .hours-itme{
        float:left;
        text-align: left;
        padding:14px 0;
        border-top:1px solid #e9e9e9;
        width:100%;
        font-size:0.9rem;
    }
    .service{
        height:165px;
    }
    .service-title{
        font-size:0.9rem;
        color:#666;
        padding:0 14px;
        text-align: left;
        font-weight: 400;
        border:3px solid #f9faff;
        background: #f9faff;
        line-height:28px;
        height:32px;
    }
    .service-item{
        position: relative;
        padding:12px 60px 12px 24px;
        margin:0 14px;

    }
    .item-title{
        font-size:0.95rem;
        font-weight: 400;
        text-align: left;
    }
    .item-desc{
        font-size:0.9rem;
        color:#999;
    }
    .item-btn{
        font-size:0.8rem;
        position: absolute;
        right:0;
        top:35%;
        padding:4px 8px;
        border:1px solid #ff4a49;
        color:#ff4a49;
        border-radius:4px;
    }
</style>
