<template>
  <div class="newPhoneContent">
    <!-- 页头 -->
    <div class="newphone_header">
      <h4 style="margin:0">爱回收 0元换新机</h4>
    </div>
    <!-- 轮播图 -->
    <div class="carousel">
      <mt-swipe :auto="4000">
        <mt-swipe-item v-for="(item,i) of data" :key="i">
          <img :src="item.img_url" alt />
        </mt-swipe-item>
      </mt-swipe>
    </div>
    <!-- 本周热销 -->
    <div class="sell">
      <div class="sell_header">
        <img src="http://127.0.0.1:3000/img/index/newphone/sell.jpg" alt />
      </div>
      <!-- 1 -->
      <router-link to="/detail">
        <div class="sell_product">
          <div class="img_left">
            <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
            <div class="tip">
              <p>换新再省</p>
              <p>
                <span>￥</span>
                <span>300</span>
              </p>
            </div>
          </div>
          <div class="text_right">
            <p class="texts">
              <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
              <span>荣耀官方合作 同步首销</span>
            </p>
            <p class="price">
              官方指导价
              <span>￥</span>
              <span>2999</span>
            </p>
            <router-link to="/detail" class="btns">
              <p>立即换新</p>
            </router-link>
          </div>
        </div>
      </router-link>
      <!-- 2 -->
      <router-link to="/detail">
        <div class="sell_product">
          <div class="img_left">
            <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
            <div class="tip">
              <p>换新再省</p>
              <p>
                <span>￥</span>
                <span>300</span>
              </p>
            </div>
          </div>
          <div class="text_right">
            <p class="texts">
              <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
              <span>荣耀官方合作 同步首销</span>
            </p>
            <p class="price">
              官方指导价
              <span>￥</span>
              <span>2999</span>
            </p>
            <router-link to="/detail" class="btns">
              <p>立即换新</p>
            </router-link>
          </div>
        </div>
      </router-link>
      <!-- 3 -->
      <router-link to="/detail">
        <div class="sell_product">
          <div class="img_left">
            <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
            <div class="tip">
              <p>换新再省</p>
              <p>
                <span>￥</span>
                <span>300</span>
              </p>
            </div>
          </div>
          <div class="text_right">
            <p class="texts">
              <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
              <span>荣耀官方合作 同步首销</span>
            </p>
            <p class="price">
              官方指导价
              <span>￥</span>
              <span>2999</span>
            </p>
            <router-link to="/detail" class="btns">
              <p>立即换新</p>
            </router-link>
          </div>
        </div>
      </router-link>
      <!-- 4 -->
      <router-link to="/detail">
        <div class="sell_product">
          <div class="img_left">
            <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
            <div class="tip">
              <p>换新再省</p>
              <p>
                <span>￥</span>
                <span>300</span>
              </p>
            </div>
          </div>
          <div class="text_right">
            <p class="texts">
              <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
              <span>荣耀官方合作 同步首销</span>
            </p>
            <p class="price">
              官方指导价
              <span>￥</span>
              <span>2999</span>
            </p>
            <router-link to="/detail" class="btns">
              <p>立即换新</p>
            </router-link>
          </div>
        </div>
      </router-link>
      <!-- 5 -->
      <router-link to="/detail">
        <div class="sell_product">
          <div class="img_left">
            <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
            <div class="tip">
              <p>换新再省</p>
              <p>
                <span>￥</span>
                <span>300</span>
              </p>
            </div>
          </div>
          <div class="text_right">
            <p class="texts">
              <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
              <span>荣耀官方合作 同步首销</span>
            </p>
            <p class="price">
              官方指导价
              <span>￥</span>
              <span>2999</span>
            </p>
            <router-link to="/detail" class="btns">
              <p>立即换新</p>
            </router-link>
          </div>
        </div>
      </router-link>
      <!-- 6 -->
      <router-link to="/detail">
        <div class="sell_product">
          <div class="img_left">
            <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
            <div class="tip">
              <p>换新再省</p>
              <p>
                <span>￥</span>
                <span>300</span>
              </p>
            </div>
          </div>
          <div class="text_right">
            <p class="texts">
              <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
              <span>荣耀官方合作 同步首销</span>
            </p>
            <p class="price">
              官方指导价
              <span>￥</span>
              <span>2999</span>
            </p>
            <router-link to="/detail" class="btns">
              <p>立即换新</p>
            </router-link>
          </div>
        </div>
      </router-link>
    </div>
    <!--小米专区  -->
    <div class="sell_header">
      <img src="http://127.0.0.1:3000/img/index/newphone/sell.jpg" alt />
    </div>
    <!--小米专区商品  -->
    <div class="miui">
      <div>
        <!-- left1 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  <span></span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- right1 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  官方指导价：￥
                  <span>2999</span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- left2 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  <span></span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- right2 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  官方指导价：￥
                  <span>2999</span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
      </div>
    </div>
    <!-- 华为荣耀专区 -->
    <div class="sell_header">
      <img src="http://127.0.0.1:3000/img/index/newphone/sell.jpg" alt />
    </div>
    <!-- 华为荣耀专区商品 -->
    <div class="miui">
      <div>
        <!-- left1 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  <span></span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- right1 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  官方指导价：￥
                  <span>2999</span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- left2 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  <span></span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- right2 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  官方指导价：￥
                  <span>2999</span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- left3 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  <span></span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- right3 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  官方指导价：￥
                  <span>2999</span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- left4 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  <span></span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- right4 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  官方指导价：￥
                  <span>2999</span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- left5 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  <span></span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- right5 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  官方指导价：￥
                  <span>2999</span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- left6 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  <span></span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
        <!-- right6 -->
        <router-link to="/detail">
          <div class="product">
            <div class="img_left">
              <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
              <div class="tip">
                <p>换新再省</p>
                <p>
                  <span>￥</span>
                  <span>300</span>
                </p>
              </div>
            </div>
            <div class="text_right">
              <p class="texts">
                <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
                <span>荣耀官方合作 同步首销</span>
              </p>
              <p class="price">
                官方指导价
                <span>￥</span>
                <span>2999</span>
                <del>
                  官方指导价：￥
                  <span>2999</span>
                </del>
              </p>
              <router-link to="/detail" class="btns">
                <p>立即换新</p>
              </router-link>
            </div>
          </div>
        </router-link>
      </div>
    </div>
    <!-- 苹果专区 -->
    <div class="sell_header">
      <img src="http://127.0.0.1:3000/img/index/newphone/sell.jpg" alt />
    </div>
    <!-- 苹果专区商品 -->
    <div class="miui">
      <div>
        <!-- left1 -->
        <router-link to="/detail">
        <div class="product">
          <div class="img_left">
            <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
            <div class="tip">
              <p>换新再省</p>
              <p>
                <span>￥</span>
                <span>300</span>
              </p>
            </div>
          </div>
          <div class="text_right">
            <p class="texts">
              <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
              <span>荣耀官方合作 同步首销</span>
            </p>
            <p class="price">
              官方指导价
              <span>￥</span>
              <span>2999</span>
              <del>
                <span></span>
              </del>
            </p>
            <router-link to="/detail" class="btns">
              <p>立即换新</p>
            </router-link>
          </div>
        </div>
        </router-link>
        <!-- right1 -->
        <router-link to="/detail">
        <div class="product">
          <div class="img_left">
            <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
            <div class="tip">
              <p>换新再省</p>
              <p>
                <span>￥</span>
                <span>300</span>
              </p>
            </div>
          </div>
          <div class="text_right">
            <p class="texts">
              <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
              <span>荣耀官方合作 同步首销</span>
            </p>
            <p class="price">
              官方指导价
              <span>￥</span>
              <span>2999</span>
              <del>
                官方指导价：￥
                <span>2999</span>
              </del>
            </p>
            <router-link to="/detail" class="btns">
              <p>立即换新</p>
            </router-link>
          </div>
        </div>
        </router-link>
      </div>
    </div>
    <!-- 底部 -->
    <div class="footer">
      <img src="http://127.0.0.1:3000/img/index/newphone/footer1.png" alt />
      <img src="http://127.0.0.1:3000/img/index/newphone/footer2.png" alt />
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      data: {}
    };
  },
  components: {},
  created() {
    this.axios.get("index/newphone").then(result => {
      this.data = result.data.data;
    });
  }
};
</script>
<style scope>
.newPhoneContent{
padding-bottom:3.2rem;
}

.newphone_header {
  width: 100%;
  height: 40px;
  line-height: 40px;
  /* position: fixed; */
  z-index: 999;
  background-color: #fff;
  top:0px;
}
/* .mint-swipe{
  margin-top: 40px;
} */
.mint-swipe,
.mint-swipe-item img {
  width: 100%;
  height: 210px !important;
  box-sizing: border-box;
}
.sell_product {
  width: 100%;
  display: flex;
  background-color: #fff;
  padding: 1rem 0;
  margin: 0.625rem 0;
  position: relative;
}
.sell_header img {
  width: 100%;
  box-sizing: border-box;
}
.sell_product .img_left {
  text-align: center;
  width: 120px;
}
.img_left img {
  width: 100%;
  margin-left: 1.5rem;
}
.tip {
  background: linear-gradient(90deg, #ff4949, #ff6830);
  border-radius: 0 1rem;
  padding: 0.313rem;
  position: absolute;
  top: 1.45rem;
  left: 0.813rem;
}
.sell .tip {
  top: 1rem;
}
.tip p {
  margin: 0;
  font: 0.5rem 黑体;
  color: #fff;
  text-align: center;
}
.tip p span {
  font-size: 0.875rem;
  font-weight: bold;
}
.text_right {
  width: 12.813rem;
  text-align: left;
  margin-left: 2rem;
  padding-top: 0.5rem;
}
.text_right > .texts span {
  display: block;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-weight: bold;
}
.text_right > .texts span:last-child {
  font-size: 0.875rem;
}
.text_right > .price {
  font-size: 0.75rem;
  margin: 0.5rem 0;
}
.text_right > .price > :last-child,
.text_right > .price > :nth-child(2) {
  font-weight: bold;
  font-size: 1rem;
}
.text_right > .btns {
  display: inline-block;
  width: 6.25rem;
  border-radius: 2rem;
  background-color: #0f0;
  text-align: center;
  font-size: 0.875rem;
  padding: 0.313rem 0;
  margin-top: 0.75rem;
  color: #000;
}
.miui > div {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  box-sizing: border-box;
}
.miui > div {
  width: 100%;
  display: flex;
  justify-content: space-between;
  box-sizing: border-box;
}
.miui .product {
  width: 182px;
  position: relative;
  text-align: center;
  background-color: #fff;
  padding: 1.45rem 0;
  margin-bottom: 10px;
}
.miui .img_left {
  width: 182px;
}
.miui .product .text_right {
  width: 95%;
  margin-left: 1rem;
}
.miui .product > .img_left {
  width: 100%;
  text-align: center;
}
.miui .product > .img_left img {
  width: 120px;
  margin: 0;
}
.miui .price {
  color: #ff2400;
}
.miui .price del {
  display: block;
  color: #999;
  height: 1rem;
  font-size: 0.625rem !important;
}
.miui .texts {
  width: 154px;
  font-size: 0.875rem;
}
.miui .texts > span:last-child {
  font-size: 0.75rem;
}
.footer > img {
  width: 100%;
  height: 300px;
}
.footer > img:last-child {
  height: 105px;
}
.miui .btns {
  margin-left: 25px;
}
</style>