<template>
    <div class="index">
        <!-- <mt-tab-container v-model="value" swipeable>
            <mt-tab-container-item id="tab1">
                <index-index></index-index>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab2">
                <index-newphone></index-newphone> 
            </mt-tab-container-item>
            <mt-tab-container-item id="tab3">
               <index-serve></index-serve>  
            </mt-tab-container-item>
            <mt-tab-container-item id="tab4">
                <index-me></index-me>   
            </mt-tab-container-item>
        </mt-tab-container> -->
        <router-view :indexdata="to()"></router-view>
        <!-- <mt-tabbar v-model="selected" fixed>
            <mt-tab-item v-for="(el,i) in nav" :key="i" :id="el.id" :data-index="el.id">
                <router-link :to="el.linkurl">
                    <i :class="el.iconurl+' nav-font'"></i>      
                    <p class="nav-title">{{el.title}}</p>  
                </router-link> 
            </mt-tab-item>
        </mt-tabbar> -->
        <ul class="nav-footer">
            <li v-for="(el,i) in nav" :key="i">
                <router-link :to="el.linkurl" class="navs">
                    <div @click="actived(i)" :class="i==0?'active':''">
                        <i :class="el.iconurl+' nav-font'"></i>      
                        <p class="nav-title">{{el.title}}</p>
                    </div>
                </router-link> 
            </li>
        </ul>
    </div>
</template>

<script>
import indexIndex from "../components/index/index"
import indexMe from "../components/index/Me"
import indexNewPhone from "../components/index/NewPhone"
import indexserve from "../components/index/Serve"
export default {
    data(){
        return  {
            selected:1,
            value:"tab1",
            nav:[],
            indexobj:{
                
            }
        }
    },
    watch:{
        selected(){
           this.value=`tab${this.selected}`
        },
    },
    methods:{
        loadMore:function (){
            var url="index",
            obj={}
            this.axios.get(url,{
                params:obj
            }).then(res=>{
                this.nav=res.data.nav
                this.indexobj=res.data.rem
            })
        },
        to(){
              if(this.$route.path.indexOf('/index/index')!=-1){
                       return this.indexobj 
              }          
        },
        actived(i){
            var navs = document.getElementsByClassName("navs")
            for(var j=0;j<navs.length;j++){
                 navs[j].children[0].className=""
            }
            navs[i].children[0].className="active"
        },
    },
    mounted(){
       
    },
    created(){
       this.loadMore()
        this.to()
    },
    components:{
        // "index-index":indexIndex,
        // "index-me":indexMe,
        // "index-serve":indexserve,
        // "index-newphone":indexNewPhone,
    }
    


}
</script>
<style scoped>
/* .index{
    max-width: 750px;
    min-width: 320px;
    margin: 0 auto;
    background: #fff;

} */
/*
.mint-tabbar.is-fixed{
    max-width: 750px;
    min-width: 320px;
    margin:0 auto
}
.nav-font{
    font-size:25px;
    padding:3px;
}
.nav-title{
    margin-top:5px;
} */
.nav-footer{
    display:flex;
    position:fixed;
    bottom:0px;
    left:0;
    width:100%;
    background:#fff;
    
}
.nav-footer p{
    font-size:0.8rem;
}
.nav-footer li{
    width:25%
}
.nav-footer i{
    font-size:1.5rem;
}
.nav-footer .active .nav-title{
    /* background:rgba(247, 231, 14, 0.486) center;
    border-radius:3rem; */
    color:#222;
    font-weight:700;

    
    /* box-shadow:0px 0px 22px 0px #ff0 inset */
}
.nav-footer .active .nav-font{
    /* background:#fff03b; */
    color:#222;
    border-radius:2rem;
    background:rgba(6,6,6,.4)    
}
</style>

