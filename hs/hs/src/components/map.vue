<template>
    <div>
        <div class="map-top">
            <router-link to="/index/serve"><i class="iconfont icon-fanhui"></i></router-link>
            <p>门店地图</p>
        </div>
        <div id="map-map"></div> 
    </div>

</template>

<script>
export default {
    data() {
        return {
           info:[],
           infos:[],
           showinfo:[],
           showlist:[]
        }
    },
    created(){
        this.init()
        console.log(1)
    },
    mounted(){
        console.log(2)
        // console.log(this.infos.mp);
      this.map()
        // this.map()
    },
    methods:{
        init(){
            var id=this.$route.params.id
            this.axios.get("/index/serve").then(res=>{
                this.info=res.data.info
                // console.log(this.info)
                for(var j=0;j<this.info.length;j++){
                    if(this.info[j].id==id){                              
                        this.infos.mp=this.info[j].map
                        this.showlist=this.info[j]
                        break;
                    }
                }
            })
        },
        map(){
            setTimeout(()=>{
                for(var j=0;j<this.info.length;j++){
                    this.info[j].map=this.info[j].map.split(",")
                }
                var infosnum=this.infos.mp.split(",")
                var map = new BMap.Map("map-map");
            var point=new BMap.Point(infosnum[0],infosnum[1]) // 创建地图实例       
            map.centerAndZoom(point,12);
            map.enableScrollWheelZoom(true) 
            map.disableDragging() 
            var marker = new BMap.Marker(point);        // 创建标注    
            map.addOverlay(marker);
            setTimeout(function(){
                map.enableDragging();   //两秒后开启拖拽
                //map.enableInertialDragging();   //两秒后开启惯性拖拽
                }, 2000)
            //创建多个点坐标实例
            var i=0
           // 创建点坐标函数
           var _this=this
            function markerFun (points,info){
                let markers = new BMap.Marker(points);
                map.addOverlay(markers);
                markers.addEventListener("click",()=>{
                    map.closeInfoWindow(infoWindow); 
                    _this.showlist=info
                    var html=`
                        <p style="text-align:center;color:#666;font-zise:16px;font-weight:600;border-bottom:1px solid #CCC">${_this.showlist.title}<p>
                    `
                    var html1=`<div style="">
                        <p style="color:#666;font-size:12px">地址：${_this.showlist.iaddress}</p>
                        <p style="color:#f00;font-size:12px">电话：${_this.showlist.sphone}</p>
                    </div>`
                    var opts = {    
                        width : 60,     // 信息窗口宽度    
                        height: 100,     // 信息窗口高度    
                        title : html, // 信息窗口标题 
                    }    
                    var infoWindow1 = new BMap.InfoWindow(html1, opts);
                    map.openInfoWindow(infoWindow1,points);
                })
            }
            for (;i<this.info.length;i++) {
                var points = new BMap.Point(this.info[i].map[0],this.info[i].map[1]);//创建坐标点
                markerFun(points,this.info[i]);
            }
            var opts = {offset: new BMap.Size(10, 150)}
            var html=`
                <p style="text-align:center;color:#666;font-zise:16px;font-weight:600;border-bottom:1px solid #CCC">${this.showlist.title}<p>
            `
            var html1=`<div style="">
                <p style="color:#666;font-size:12px">地址：${this.showlist.iaddress}</p>
                <p style="color:#f00;font-size:12px">电话：${this.showlist.sphone}</p>
            </div>`
            var opts = {    
                width : 60,     // 信息窗口宽度    
                height: 100,     // 信息窗口高度    
                title : html, // 信息窗口标题 
                style : 'background:#cccccc50'
            }    
            var infoWindow = new BMap.InfoWindow(html1, opts);  // 创建信息 
            map.openInfoWindow(infoWindow, map.getCenter());      // 打开信息窗口
            map.addControl(new BMap.NavigationControl(opts));    
            marker.addEventListener("click",function(e){  
                map.openInfoWindow(infoWindow,point); 
            });
            },200)
            //  console.log(this.infos.mp);
            // var showinfoarr=this.showinfo.mp.split(",")
        },      
    }
}
</script>
<style scoped>
.map-top{
    display:flex;
    padding:1rem 1rem;
    position:fixed;
    width:100%;
    z-index:99;
    background:#ffffff75
}
.map-top i{
    font-size:2rem;
    font-weight:700;
    color:#666
}
.map-top p{
    flex:1;
    text-align:center;
    font-size:1.5rem;
    line-height: 2rem;
    font-weight:700;
    color:#666;
}
#map-map{
    min-height:100vh;
    width:100%;
}
</style>