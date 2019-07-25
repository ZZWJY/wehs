set names utf8;
drop database if exists hs;
create database hs charset=utf8;
use hs;
create table hs_indexRefer_specialList (
id int primary key auto_increment, #编号
title VARCHAR(16),  #手机型号
img_url varchar(128),  #手机图片路径
price decimal(10,2),  #手机价格
discounts varchar(32) #最高优惠
);
#添加数据
insert into hs_indexRefer_specialList values
(1,"荣耀 8X","http://127.0.0.1:3000/img/8x.jpg",1699,"最高省150"),
(null,"红米 Note7","http://127.0.0.1:3000/img/note7.jpg",1699,"最高省150"),
(null,"荣耀 20i","http://127.0.0.1:3000/img/20i.jpg",1199,"最高省100");

#用户表
create table hs_user(
    uid int primary key auto_increment, #编号
    uname VARCHAR(32),       #用户名
    upwd  VARCHAR(32),       #密码
    phone VARCHAR(11)        #电话
);
insert into hs_user values
(1,"陈雪婷","123456",null),
(null,"赵志伟","123456",null),
(null,"刘林峰","123456",null),
(null,"吕美美","123456",null);
create table hs_indexRefer_msg(
    id int primary key auto_increment,
    uname varchar(12),
    price decimal(10,2),  #手机价格
    title VARCHAR(16)  #手机型号
);
insert into hs_indexRefer_msg values
(null,"张先生",1699,"荣耀8X 8G+128G"),
(null,"刘先生",1699,"荣耀8X 8G+128G"),
(null,"王先生",1699,"荣耀8X 8G+128G"),
(null,"林先生",1699,"荣耀8X 8G+128G"),
(null,"赵先生",1699,"荣耀8X 8G+128G");
#创建首页导航表
CREATE TABLE hs_indexRefer_listType(
  lid INT PRIMARY KEY AUTO_INCREMENT, #编号
  ltitle VARCHAR(32),                  #标题
  tourl  VARCHAR(100)
);
INSERT INTO hs_indexRefer_listType VALUES(1,'推荐',"/index/index/recommend");
INSERT INTO hs_indexRefer_listType VALUES(null,'卖手机',"/index/index/phone");
INSERT INTO hs_indexRefer_listType VALUES(null,'卖笔记本',"/index/index/notebook");
INSERT INTO hs_indexRefer_listType VALUES(null,'卖平板',"/index/index/ipad");
#创建类型分类表
create table hs_indexRefer_listTypeALL(
	id int primary key auto_increment,
	uname varchar(12),
	img_list varchar(128)
);
#拆入类型分类表数据
insert into hs_indexRefer_listTypeALL values
(NULL, '卖手机','iconfont icon-shoujihao'),
(NULL, '买笔记本','iconfont icon-laptop'),
(NULL, '卖平板','iconfont icon-st-browse'),
(NULL, '摄影摄像','iconfont icon-Camera-'),
(NULL, '智能数码','iconfont icon-piao');
#以旧换新数据表
create table hs_indexRefer_old_new(
	title varchar(30),
	img_url varchar(128),
	model  varchar(30),
	price varchar(30)
);
#拆入旧换新数据表
insert into hs_indexRefer_old_new values
('旧机估价','http://127.0.0.1:3000/img/index/refer/old_new_left.jfif','苹果 iPhone X',5673),
('新机原价','http://127.0.0.1:3000/img/index/refer/old_new_right.jfif','苹果 iPhone XR',7599);
/**脚部导航栏**/
CREATE TABLE hs_indexRefer_navDown(
    id SMALLINT PRIMARY KEY,
    title VARCHAR(15), 
    iconurl VARCHAR(100),
    linkurl VARCHAR(100)
);
/**了解list**/
CREATE TABLE hs_indexRefer_know(
    id SMALLINT PRIMARY KEY,
    title VARCHAR(8)
    
);
/**导航栏数据的插入**/
INSERT INTO hs_indexRefer_navDown VALUES
(1,"首页","iconfont icon-Xtubiao-shouye","/index/index/recommend"),
(2,"换新机","iconfont icon-shoujihao","/index/newPhone"),
(3,"服务站","iconfont icon-shouye","/index/serve"),
(4,"我的","iconfont icon-wode","/index/me");
/**了解list的数据插入**/
/*创建轮播图表(hs_indexRefer_carousel)*/
create table hs_indexRefer_carousel(
    id int primary key auto_increment,
    img_url varchar(128)
);


#插入数据
insert into hs_indexRefer_carousel values
(null,"http://127.0.0.1:3000/img/index/newphone/8x.jpg"),
(null,"http://127.0.0.1:3000/img/index/newphone/20.jpg"),
(null,"http://127.0.0.1:3000/img/index/newphone/note7.png"),
(null,"http://127.0.0.1:3000/img/index/newphone/p30.jpg"),
(null,"http://127.0.0.1:3000/img/index/newphone/xr.jpg");
/*创建首页内热门活动表(hs_indexRefer_hot)*/
create table hs_indexRefer_hot(
    id int primary key auto_increment,
    img_url varchar(128),
    title varchar(64)
);


#插入数据
insert into hs_indexRefer_hot values
(null,"http://127.0.0.1:3000/img/index/hot/hot1.png","邀好友，赚现金"),
(null,"http://127.0.0.1:3000/img/index/hot/hot2.png","新人专享799元加价卷"),
(null,"http://127.0.0.1:3000/img/index/hot/hot3.png","华为商城以旧换新,享加价5%"),
(null,"http://127.0.0.1:3000/img/index/hot/hot4.jpg","换购运动相机，低至500元！"),
(null,"http://127.0.0.1:3000/img/index/hot/hot5.png","3个G流量任意送 ！新人专属福利"),
(null,"http://127.0.0.1:3000/img/index/hot/hot6.jpg","限时特惠，50元加油券疯抢中！"),
(null,"http://127.0.0.1:3000/img/index/hot/hot7.png","还有大额现金红包派送中!"),
(null,"http://127.0.0.1:3000/img/index/hot/hot8.jpg","悦动圈新用户专享76元大礼包"),
(null,"http://127.0.0.1:3000/img/index/hot/hot9.png","免费听雅思课，拿干货"),
(null,"http://127.0.0.1:3000/img/index/hot/hot10.png","和包支付送您10元话费"),
(null,"http://127.0.0.1:3000/img/index/hot/hot11.jpg","20元信用卡还款红包");
/**服务站地址区域列表**/
create table hs_serve_navtype(
    id int primary key auto_increment,
    sname  varchar(32)
);
#插入服务站地区数据
insert into hs_serve_navtype values
(1,"附近"),
(null,"罗湖区"),
(null,"福田区"),
(null,"南山区"),
(null,"宝安区"),
(null,"龙岗区"),
(null,"龙华区");
/**服务站详细地址列表**/
create table hs_serve_adinfo(
    id int primary key auto_increment,
    title varchar(32),
    iaddress varchar(60),
    phone varchar(11),
    nid  int,
    img varchar(125),
	sphone varchar(32),  #门店详情客服电话
    map  varchar(50)
);
insert into hs_serve_adinfo values
(1,"深圳益田假日店","深圳市南山区世界之窗地铁站C3出口益田假日广场B2层(麦当劳楼梯下方)","13625413648",4,"http://127.0.0.1:3000/img/serve/yitian.jpg","02180111030 转分机号 1025","113.98002,22.543534"),
(null,"深圳缤果空间店","深圳市龙华新区深圳北站缤果空间L1层服务台右侧扶手电梯口（七匹狼工厂店旁）","12365412571",7,"http://127.0.0.1:3000/img/serve/binguo.jpg","02180111030 转分机号 1032","114.038122,22.617475"),
(null,"深圳乐淘里店","深圳市福田区华强北地铁站A出口乐淘里商业街F05号（台北涮涮锅对面）","15421368541",3,"http://127.0.0.1:3000/img/serve/letaoli.jpg","02180111030 转分机号 1040","114.092923,22.549675"),
(null,"深圳京基凤凰印象店","深圳市罗湖区京基凤凰印象商业城1层正门","12365458714",2,"http://127.0.0.1:3000/img/serve/jingji.jpg","02180111030 转分机号 1041","114.126311,22.553546"),
(null,"深圳喜荟城店","深圳市罗湖区喜荟城购物中心L1层Z-112铺（博士眼镜旁）","12365485412",2,"http://127.0.0.1:3000/img/serve/xihui.jpg","02180111030 转分机号 1080","114.090082,22.548354"),
(null,"深圳天利名城店","深圳市南山区天利名城购物中心2层东南门（贡茶对面）","12365487412",4,"http://127.0.0.1:3000/img/serve/tianli.jpg","02180111030 转分机号 1106","113.941921,22.524369"),
(null,"深圳金港城店","深圳市宝安区宝安大道4009-1号首层金港城沃尔玛正门进去左手边","13658421425",5,"http://127.0.0.1:3000/img/serve/jingang.jpg","02180111030 转分机号 1110","113.868828,22.587858"),
(null,"深圳龙岗万科店","深圳市龙岗区万科广场负一楼停车场入口","12541236984",6,"http://127.0.0.1:3000/img/serve/wangke.jpg","02180111030 转分机号 1117","114.250135,22.720678"),
(null,"深圳KK mall店","深圳市罗湖区大剧院地铁站B出口京基KK mall B1层（Blt超市门口）","12368541254",2,"http://127.0.0.1:3000/img/serve/kk.jpg","02180111030 转分机号 1121","114.114739,22.547976"),
(null,"深圳ICO购物中心店","深圳市龙华新区ICO时尚购物中心L1层西门扶手电梯旁","15123658412",7,"http://127.0.0.1:3000/img/serve/co.jpg","02180111030 转分机号 1133","114.043923,22.662656"),
(null,"深圳龙华九方店","深圳市龙华新区人民路九方购物中心B1层（华为斜对面）","18547562541",7,"http://127.0.0.1:3000/img/serve/jiufang.jpg","02180111030 转分机号 1158","114.088557,22.549287"),
(null,"深圳西乡汇一城店","深圳市宝安区西乡地铁站A出口天虹汇一城1层（面包新语旁）","18523654741",5,"http://127.0.0.1:3000/img/serve/huiyi.jpg","02180111030 转分机号 1225","113.870523,22.58145"),
(null,"深圳中洲π店","深圳市宝安区创业二路89号中洲·π mall购物中心正大门奈雪的茶旁边垂直电梯下B1层或扶手梯下负一层爱回收（良品铺子旁）","12536484125",5,"http://127.0.0.1:3000/img/serve/zhongzhou.jpg","02180111030 转分机号 1226","113.912986,22.577949"),
(null,"深圳坪山益田假日店","深圳市龙岗区坪山益田假日世界L1-H-11（天梭手表旁）","13698745624",6,"http://127.0.0.1:3000/img/serve/pingshan.jpg","02180111030 转分机号 1259","114.344731,22.698554"),
(null,"深圳新沙天虹店","深圳市宝安区沙井街道新沙天虹购物中心L1层（客服中心旁）","16954821365",5,"http://127.0.0.1:3000/img/serve/xinsha.jpg","02180111030 转分机号 1266","113.806653,22.735703");
/**商品手机类型列表**/
create table hs_category_phone(
    id int primary key auto_increment,
    title varchar(32),   
    zid int,
    imgurl varchar(100)
);
insert into hs_category_phone values
(1,"苹果",1,"http://127.0.0.1:3000/img/index/iPad/iPhone.png"),
(null,"华为",1,"http://127.0.0.1:3000/img/index/iPad/HUAWEI.png"),
(null,"vivo",1,"http://127.0.0.1:3000/img/index/phone/vivo.png"),
(null,"OPPO",1,"http://127.0.0.1:3000/img/index/phone/OPPO.png"),
(null,"小米",1,"http://127.0.0.1:3000/img/index/phone/mi.png"),
(null,"三星",1,"http://127.0.0.1:3000/img/index/phone/SAMSUNG.png"),
(null,"荣耀",1,"http://127.0.0.1:3000/img/index/phone/honor.png"),
(null,"更多",1,"http://127.0.0.1:3000/img/index/phone/something.png");
create table hs_category_labbook(
    id  int primary key auto_increment,
    title varchar(32)  ,
    zid int,
    imgurl varchar(100) 
);
insert into hs_category_labbook values
(1,"苹果",2,"http://127.0.0.1:3000/img/index/notebook/iPhone.png"),
(null,"ThinkPad",2,"http://127.0.0.1:3000/img/index/notebook/ThinkPad.png"),
(null,"华硕",2,"http://127.0.0.1:3000/img/index/notebook/ASUS.png"),
(null,"联想",2,"http://127.0.0.1:3000/img/index/notebook/Lenovo.png"),
(null,"戴尔",2,"http://127.0.0.1:3000/img/index/notebook/DELL.png"),
(null,"惠普",2,"http://127.0.0.1:3000/img/index/notebook/hp.png"),
(null,"小米",2,"http://127.0.0.1:3000/img/index/notebook/MI.png"),
(null,"更多",2,"http://127.0.0.1:3000/img/index/notebook/something.png");
create table hs_category_labtop(
    id int primary key auto_increment,
    title varchar(32),
    zid int,
    imgurl varchar(100)   
);
insert into hs_category_labtop values
(1,"苹果",3,"http://127.0.0.1:3000/img/index/iPad/iPhone.png"),
(null,"三星",3,"http://127.0.0.1:3000/img/index/iPad/SAMSUNG.png"),
(null,"小米",3,"http://127.0.0.1:3000/img/index/iPad/MI.png"),
(null,"华为",3,"http://127.0.0.1:3000/img/index/iPad/HUAWEI.png"),
(null,"荣耀",3,"http://127.0.0.1:3000/img/index/iPad/honor.png"),
(null,"诺基亚",3,"http://127.0.0.1:3000/img/index/iPad/Nokia.png"),
(null,"联想",3,"http://127.0.0.1:3000/img/index/iPad/Lenovo.png"),
(null,"更多",3,"http://127.0.0.1:3000/img/index/iPad/more.png");
create table hs_category_camera(
    id int primary key auto_increment,
    title varchar(32)  ,
    zid int
);
insert into hs_category_camera values
(1,"单反相机",4),
(null,"微单相机",4),
(null,"镜头",4),
(null,"数码相机",4),
(null,"摄像机",4),
(null,"闪光灯",4);
create table hs_category_digital(
    id int primary key auto_increment,
    title varchar(32),
    zid int 
);
insert into hs_category_digital values
(1,"智能手表",5),
(null,"新·奇·特",5),
(null,"耳机",5),
(null,"电子书",5),
(null,"投影仪",5),
(null,"游戏机",5),
(null,"运动相机",5),
(null,"智能手写笔",5),
(null,"智能手环",5);

create table hs_category_all(
    aid int primary key auto_increment,
    title varchar(32),
    nid  int ,       #表示lid条件下的类型表,如卖手机下面的苹果
    zid int,         #表示当前数据属于什么类型,如卖手机
    price  int,      #表示当前类型的回收价
    m_img_url  varchar(100)        #小图片的地址
);
insert into hs_category_all values
(1,"苹果 iPhone X Plus",1,1,3325,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 7 Plus",1,1,3300,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 6",1,1,2800,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 8 Plus",1,1,2700,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 6 Plus",1,1,2560,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 6s Plus",1,1,2000,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 7",1,1,2400,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 8",1,1,2500,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone XS Max",1,1,2400,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 6",1,1,2450,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 8 Plus",1,1,1600,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 6 Plus",1,1,2400,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 6s Plus",1,1,1800,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 7",1,1,2410,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone 8",1,1,2800,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 iPhone XS Max",1,1,3500,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 P20  Pro",2,1,2910,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 Mate9",2,1,2810,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 P9",2,1,540,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 Mate8",2,1,360,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 P20",2,1,480,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 Mate10 Pro",2,1,840,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 Mate10",2,1,100,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 P10",2,1,680,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 P10 Plus",2,1,581,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 麦芒5",2,1,365,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 mate7",2,1,581,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 P20",2,1,390,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 Mate10 Pro",2,1,690,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 Mate10",2,1,570,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 P10",2,1,380,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 P10 Plus",2,1,680,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 麦芒5",2,1,490,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"华为 mate7",2,1,680,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 15年 13寸 MacBook Air",1,2,590,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 15年 13寸 MacBook Pro",1,2,690,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 17年 13寸 MacBook Air",1,2,780,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 17年 13寸 MacBook Pro",1,2,960,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 15年 15寸 MacBook Pro",1,2,1500,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 14年 13寸 MacBook Air",1,2,2500,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 15年 11寸 MacBook Air",1,2,630,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 17年 15寸 MacBook Pro",1,2,960,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 13年 13寸 MacBook Pro",1,2,750,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 15年 12寸 MacBook",1,2,1500,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 16年 13寸 MacBook Pro",1,2,960,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 13年 13寸 MacBook Air",1,2,850,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 14年 13寸 MacBook Pro",1,2,690,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"苹果 11年 13寸 MacBook Pro",1,2,781,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad X1 Carbon 系列",2,2,890,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad New S2(非触控版) 系列",2,2,960,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想 ThinkPad E450",2,2,900,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad E470 系列",2,2,880,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想 Thinkpad E450c",2,2,964,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad E470c 系列",2,2,681,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad E420",2,2,940,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad X270 系列",2,2,693,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad X240",2,2,581,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad E431",2,2,940,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad X250",2,2,548,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad E430",2,2,720,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad X280 系列",2,2,960,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad E430c",2,2,840,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad 翼480(E480) 系列",2,2,586,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"联想ThinkPad E40",2,2,960,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad Mini2",1,3,360,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad mini4",1,3,860,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad Air2",1,3,940,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad Air",1,3,480,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad 5代 2017款",1,3,960,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad Mini",1,3,863,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad Pro 10.5寸 2017款",1,3,692,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad Pro 12.9寸 1代 2015款",1,3,840,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad 6代 2018款",1,3,631,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad 2代",1,3,850,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad 4代 (Retina屏)",1,3,540,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad 3代（New iPad）",1,3,630,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad Mini3",1,3,148,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad Pro 12.9寸 2代 2017款",1,3,569,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"iPad Pro 12.9寸 3代 2018款",1,3,510,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab S 8.4(T700/T705/T707)",2,3,580,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Note 10.1 2014 Edition(P600/P601)",2,3,960,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab S 10.5(T800/T805/T807)",2,3,850,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab2 7.0(P3100/P3110/P3113/P3108)",2,3,581,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Note 10.1(N8000/N8010/N8020)",2,3,860,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab2 10.1(P5100/P5110)",2,3,840,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab 3 8.0(T310/T311/T315)",2,3,961,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab 3 7.0(T210/T211/T215/T217)",2,3,158,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab S2 8.0(T710/T713/T715/T719)",2,3,584,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab 10.1(P7500/P7510)",2,3,364,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab S3(T820/T825)",2,3,250,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab 3 10.1(P5200/P5210/P5220)",2,3,230,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab 4 8.0(T330/T331/T335/T337)",2,3,251,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Note 8.0(N5100/N5110/N5120)",2,3,360,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png"),
(null,"三星Galaxy Tab 8.9(P7300/P7310)",2,3,520,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png");
create table hs_user_oldProduct(
    id  int primary key auto_increment,
    imgurl varchar(100),
    title varchar(32),
    estimate  varchar(12),
    uid  int,     #用户id
    aid  int     #商品id，关联hs_category_all表aid
);
insert into hs_user_oldProduct values
(1,"http://127.0.0.1:3000/img/use/iphone_m,w_100,h_100.png","苹果 iPhone XS Max",680,2,9)




