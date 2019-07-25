<template>
  <div>

    <mt-header title="登录" class="header">


      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <!-- <mt-button icon="more" slot="right"></mt-button> -->
    </mt-header>

    <img style="width:100%" src="http://127.0.0.1:3000/img/login/login_banner.png" alt />

    <div>
        <div class="tab">
            <mt-button @click="setclick" v-for="(elem,i) of list" :key="i" :data-ids="i">{{elem}}</mt-button>
        </div>
    </div>
    <div>
        <mt-tab-container v-model="active">

            <mt-tab-container-item id="tb2">
                <mt-field class="input-box" label="手机号" placeholder="请输入手机号" :attr="{maxlength:11}" v-model="uphone">          
                    <div class="smscode">获取验证码</div>
                </mt-field>
                
                <mt-field label="验证码" placeholder="请输入验证码" :attr="{maxlength:4}" v-model="uverify"></mt-field>
            </mt-tab-container-item>
             <mt-tab-container-item id="tb1">
                <mt-field label="账号" placeholder="爱回收账号" :attr="{maxlength:11,id:'name'}" v-model="uname" ></mt-field>
                <mt-field label="密码" placeholder="密码" type="password" :attr="{maxlength:20}" v-model="upwd"></mt-field>     
            </mt-tab-container-item>
        </mt-tab-container>
    </div>
    <div class="app_tip">
        <input type="checkbox" id="agree" v-model="checked"> 我已详细阅读并同意
        <router-link to="#">用户协议</router-link>和
        <router-link to="#">隐私政策</router-link>
    </div>
    <mt-button class="login-tab" size=large type="default" @click.native="login()" disabled>登录</mt-button>
    <div class="tips">未注册过的手机号将自动创建爱回收账户</div>
  </div>
</template>
<script>
    export default {
    data() {
        return {

            list:["账号密码登录","手机号快捷登录"],
            active:"tb1",
            uname:"赵志伟",
            upwd:"123456",
            uphone:"",
            uverify:"",
            checked:false
            
        };
    }, mounted(){
        this.init()
    },
    watch:{
        checked(){
            var disab=document.getElementsByClassName("login-tab")[0]
            if(this.checked==true){
               disab.disabled=false 
               disab.style.opacity='1'
            }else{
                disab.disabled=true
                disab.style.opacity='0.5'
            }
        }
    },
    methods: {
        setclick(e){
            var ids=parseInt(e.target.dataset.ids);
            // console.log(ids);

            this.active="tb"+(ids+1);  
        },
        init(){
            var name=document.getElementsByClassName("mint-field-core")[2]
            name.focus()
            var logactive=document.getElementsByClassName("mint-button--normal")
            logactive[1].style.background="rgba(255, 255, 0, 0.699)"
            for(var i=1;i<logactive.length;i++){
                logactive[i].onclick=function(){
                    for(var item of logactive){
                        item.style.background="";
                    }
                    this.style.background="rgba(255, 255, 0, 0.699)"
                }
            }
        },
        login(){
            if(this.active=="tb1"){
                var uname=this.uname.trim()
                var upwd=this.upwd.trim()
                var namereg=/^[a-z1-9\u4e00-\u9fa5]{3,12}$/i;
                var pwdreg=/^[a-z1-9][a-z1-9`~!@#$%^&*()_\-+=<>?:"{}|,.\/;'\\[\]·~！@#￥%……&*（）——\-+={}|《》？：“”【】、；‘’，。、]{5,12}/i;
                if(!namereg.test(uname)||!pwdreg.test(upwd)){
                    this.$toast("用户名或者密码错误")
                    return;
                }
                this.axios.post("login/",{
                       uname,upwd
                    }).then(res=>{
                        if(res.data.code==1){
                            sessionStorage.setItem("token",res.data.token)
                            sessionStorage.setItem("name",res.data.uname)
                            this.$store.commit("setUname",res.data.uname)
                            this.$store.commit("setlogin",true)
                            this.$toast("登录成功")
                            this.$router.push("/")
                        }else{
                            this.$toast("用户名或者密码错误")
                        }
                    })

            }

        }
    },
    };
</script>
<style scoped>
    .mint-header{
        background-color:#fff;
        height:44px;
        color:#333;
        font-size:1.2rem;
    }

    .header .mint-button--normal{
        width:15px;
    }

    .app_tip{
        font-size:0.8rem;
        color:#797979;
        padding:15px 0;
    }
    a{
        text-decoration: none;

    } 
    .tab .mint-button--normal{
        border-radius: 2rem;
        width:140px;height:28px;
        font-size:0.9rem;
        height:30px;
        line-height:30px;
    }
    .tab{
        
        height:34px;
        border-radius: 2rem;
        display:flex;
        justify-content: center;
        margin:.3rem 0;
        
    }
  
    .mint-cell-wrapper{
        border-top:none;
    }

    .input-box{
        position:relative;
    }
    .smscode{
        position: absolute;
        width:72px;height:30px;
        background: #e6e6e6;
        right:0;
        font-size:0.6rem;
        /* text-align: center; */
        line-height: 28px;
        color:#999;
        border:1px solid #e6e6e6;
        margin-top:-16px;
        border-radius: 5px;
    }
    .tips{
        font-size:0.6rem;
        color:#666;
        margin:10px 0;
    }

    .login-tab{
        background:linear-gradient(to right,rgba(255, 255, 0, 0.699),rgba(185, 185, 3, 0.712));
        color:#444
    }
    .mint-button--large{
        margin:0 auto;
        width:90%;
        border-radius:.4rem
    }

</style>