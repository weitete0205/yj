<template>
  <div id="app-reg">
    <div class="bg">
      <div class="reg">
        <router-link :to="`/home`">&lt;返回首页</router-link>
          <div class="logo">
            <img src="../img/logo100.png" alt="">
          </div>
          <div class="text">
            <p>在遇见最好的旅途</p>
          </div>
          <p>用户注册</p>
          <div class="reginput">
            <div>
              <input type="text" placeholder="请输入手机号">
              <div class="phone">
                <input type="text" placeholder="请输入验证码">
              </div>
              <div class="phone">
                <input type="text" placeholder="请输入手机验证码"><span>获取手机验证码</span>
              </div>
              <input type="text" placeholder="请输入登录密码">
              <input type="text" placeholder="请输入邮箱可作为账号登录">
            </div>
            <div>
              <p class="iconfont">&#xe65e;请输入正确格式的邮箱/手机号</p>
              <p class="iconfont">&#xe65e;请输入正确格式验证码</p>
              <p class="iconfont">&#xe65e;请输入正确格式的手机验证码</p>
              <p class="iconfont">&#xe65e;请输入正确格式的密码</p>
              <p class="iconfont">&#xe65e;请输入正确格式的邮箱</p>
            </div>
          </div>
          <div class="checked">
            <el-checkbox v-model="checked">注册即代表同意</el-checkbox>
            <router-link to="" >《遇见网服务协议》</router-link><router-link  to=""  >《隐私政策》</router-link>
            <p>注册</p>
          </div>
      </div>
    </div>
  </div>
</template>
<script>
// import 
export default {

    data() {
      return {
         checked: true
      };
    },
    watch:{},
    methods: {
  }    
}
</script>
<style scoped>
  .bg{
    background:url("../img/loginbg/body04.jpg");
    width:100%;
    height:900px;
    overflow: hidden;
  }
  .reg{
    margin: 0 auto;
    width: 500px;
    position:relative;
    background:rgba(0,0,0,0.5) 
  }
  .reg>:nth-child(4){
    font-size: 20px;
    display: block;
    width: 90px;
    margin:15px  auto 15px;
    color: white;
  }
  .logo{
    margin:  0 auto;
    width: 110px;
  }
  .text{
     text-align: center;
     font-size: 30px;
     color: #fff;
     font-family: 方正舒体;
     margin:0 0 15px 0;
  } 
  .reginput{display: flex;margin: 10px 0px 0px 41px;}
  .reginput>:nth-child(2)>p{
    font-size: 11px;
    display: inline-block;
    margin:5px 10px 34px 10px;
    color: #ff5756;
  }
  .reginput>:nth-child(1){
    height: 250px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
  .phone{display: flex;}
  .phone>input{height: 30px;width: 120px;}
  .phone>span{
    display: inline-block;
    font-size: 12px;
    margin:0 0 0 20px;
    line-height: 2.7;
    color:white;
    padding: 0 5px 0 5px;
    border: 1px solid #3b83cb;
    border-radius: 5px;
  }
  .phone>span:hover{background:#3b83cb }
  .reginput>:nth-child(1)>input{
    height: 30px;
    width: 250px;
    display: inline-block;
  }
  .checked{
    width: 250px;
    margin: 0px 0 30px 41px;
  }
  .checked>:nth-child(1){
    margin:0;
  }
  .checked>a{
    font-size: 12px;
    text-decoration: none;
  }
</style>