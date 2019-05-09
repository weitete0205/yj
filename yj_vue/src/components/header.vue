<template>
  <div id="header">
    <div>
      <div class="zuo">
        <img src="../img/logo100.png" alt="">
        <span>遇见舒适旅途</span>
      </div>
      <div class="you">
        <router-link :to="`/login`">登录</router-link>
        <router-link to="">注册</router-link>
        <p>租房指南</p>
        <p @mouseenter="erweima1" @mouseleave="erweima2">手机APP</p>
      </div>
      <div class="erweima" :style="erweima3">
        <img src="../img/erweima.jpg" alt="">
        <p>手机下载了解更多</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{
      erweima3:{
        display: "",
        zIndex:""
      }
    }
  },
  methods:{
    erweima1(){
      this.erweima3.display="block"
      this.erweima3.zIndex="10"
    },
    erweima2(){
      this.erweima3.display=""
      this.erweima3.zIndex=""
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#header{
  /* position: absolute; */
   z-index: 10;
   width: 100%;
}
#header>div{
  height: 100px;
  display: flex;
  justify-content: space-between;
  /* background:rgba(26, 25, 25, 0.5) ; */
  background: #fff;
 margin: 0 auto;
}
.zuo {
  display: flex;
  margin:0 0 0 50px;
}
.zuo  span{
  display:block;
  font-size: 50px;
  margin:15px 0 15px 10px;
  font-family: 方正舒体;
  color: #504f4f;
}
.you{
  display: flex;
  justify-content: space-around;
  width: 300px;
  margin: 50px 50px 0 0;
  cursor: pointer;
}
.you a,.you p{
  color: #504f4f;
}
.you a:hover,.you p:hover{
  color: #ff5d51;
}
.erweima{
  position: absolute;
  top:80px;
  right: 23px;
  height: 170px;
  width: 140px;
  background:rgba(26, 25, 25, 0.5) ;
  display: none;
  
}
.erweima img{
  margin: 10px 0 0 10px;
  width: 120px;
  height: 120px;
}
.erweima p{
  color: #fff;
  margin:5px 0 0 5px;
}
</style>
