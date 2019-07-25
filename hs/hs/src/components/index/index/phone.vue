<template>
    <div class="index-phone">
        <router-link to="#">
        <div class="navgator">
            <div class="navgator-four" v-for="(item,i) in product" :key="i">
                <router-link to="/category">
                    <img :src="item.imgurl" alt="">
                    <span>{{item.title}}</span>
                </router-link>
            </div>
            <!-- <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/phone/mi.png" alt="">
                <span>小米</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/phone/HUAWEI.png" alt="">
                <span>华为</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/phone/honor.png" alt="">
                <span>荣耀</span>
            </div>
        </div>
        <div class="navgator"> -->
            <!-- <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/phone/OPPO.png" alt="">
                <span>OPPO</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/phone/vivo.png" alt="">
                <span>vivo</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/phone/SAMSUNG.png" alt="">
                <span>三星</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/phone/something.png" alt="">
                <span>更多</span>
            </div> --> 
        </div>
        </router-link>
        <!-- 免费评估 -->
        <router-link to="#" class="assess">
            <img src="http://127.0.0.1:3000/img/index/phone/mianfeigujia.png" alt="">
        </router-link>
        <router-link to="/comeback" class="assess">
            <img src="http://127.0.0.1:3000/img/index/phone/toutiao.png" alt="">
        </router-link>
        <router-link to="/comeback1" class="assess">
            <img src="http://127.0.0.1:3000/img/index/phone/2999.jpg" alt="">
        </router-link>
        <router-link to="/comeback1" class="assess">
            <img src="http://127.0.0.1:3000/img/index/phone/toutiao1.jpg" alt="">
        </router-link>
        <router-link to="/comeback1" class="assess">
            <img src="http://127.0.0.1:3000/img/index/phone/toutiao2.jpg" alt="">
        </router-link>
    </div>
</template>
<script>
    export default {
        data(){
            return{
               product:[] 
            }
        },
        created(){
            this.init()
        },
        methods:{
            init(){
                this.axios.get("index/type",{
                    params:{num:2}
                }).then(res=>{
                    this.product=res.data.data
                })
            }
        }
    }
</script>
<style scoped>
    .index-phone{
        width:100%;
    }
    .navgator{
        display:flex;
        flex-wrap: wrap;
        margin:0 14px 10px;
        
    }
    .navgator-four{
        display:flex;
        flex-direction: column;
        align-items: center;
        width:25%;

    }
    .navgator-four img{
        width:100%;
    }
    .navgator-four span{
        color:#666;
        font-size:0.8rem;

    }
    a{
        text-decoration: none;
    }
    .assess img{
        width:100%;
    }
</style>


