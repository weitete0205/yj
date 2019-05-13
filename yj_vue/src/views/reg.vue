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
              <div>
                 <input type="text" placeholder="请输入手机号" v-model="phone1" @blur="phoneyz">
                 <p v-show="phone" class="iconfont">&#xe65e;请输入正确格式的邮箱/手机号</p>
                 <p v-show="name1" class="iconfont">&#xe65e;用户名已经被注册</p>
              </div>
              <div class="phone">
                <input type="text" placeholder="请输入验证码" v-model='yzm2' @blur='yzm3'>
                <p v-show="yzm"  class="iconfont">&#xe65e;请输入正确格式验证码</p>
              </div>
              <div class="phone">
                <input type="text" placeholder="请输入手机验证码" v-model='yzm4' @blur='yzm5'
                 ><span>获取手机验证码</span>
                  <p v-show="phoneyzm" class="iconfont">&#xe65e;请输入正确格式的手机验证码</p>
              </div>
              <div>
                <input type="text" placeholder="请输入登录密码" v-model="password3" @blur="password5">
                <p v-show="password1" class="iconfont">&#xe65e;请输入正确格式的密码</p>
              </div>
              <div>
                <input type="text" placeholder="请再次输入密码" v-model="password4" @blur="password6">
                <p v-show="password2" class="iconfont">&#xe65e;两次输入密码不一致</p>
              </div>
              <div>
                <input type="text" placeholder="请输入邮箱可做为账号登录" v-model="email1" @blur="email2">
                <p v-show="email" class="iconfont">&#xe65e;请输入正确格式的邮箱</p>
                <p v-show="uemail" class="iconfont"> &#xe65e;该邮箱已经被注册</p>
              </div>
            </div>
          </div>
          <div class="checked">
            <el-checkbox v-model="checked">注册即代表同意</el-checkbox>
            <router-link to="" >《遇见网服务协议》</router-link><router-link  to=""  >《隐私政策》</router-link>
            <p @click="zhuce">注册</p>
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
         checked: true,
         phone:false,
         yzm:false,
         phoneyzm:false,
         password1:false,
         password2:false,
         email:false,
         name1:false,
         uemail:false,
        //  存储用户输入的账号
        phone1:[],
        //存储用户输入的密码
        password3:[],
        //存储用户输入的密码
        password4:[],
        // 存储用户输入的邮箱
        email1:[],
        // 图形验证码
        yzm2:[],
        // 手机验证码
        yzm4:[],
        // 存储已经注册用户的名字
        name:[],
        // 存储已经注册的用户的邮箱
        email3:[]
      };
    },
    created(){
        this.chaxun()
    },
    methods: {
      // 当页面开始加载时将已经注册用户的name和邮箱响应过来
      chaxun(){
        var url=this.$store.state.url
        this.axios.get(url+"reg")
        .then(res=>{
          for(var i=0;i<res.data.length;i++){
            this.name.push(res.data[i].uname)
            this.email3.push(res.data[i].email)
          }
        })
      },
      phoneyz(){
        // 从共享数据vuex中获得账号验证的正则表达式
        var res1=this.$store.state.res1;
        var a=this.name.indexOf(this.phone1)
        if(!res1.test(this.phone1)){
          this.phone=true
        } else if(a!=-1){this.name1=true
        }else{this.name1=false,this.phone=false}
      },
      yzm3(){
        if(this.yzm2.length==0){
          this.yzm=true
        }else{
          this.yzm=false
        }
      },
      yzm5(){
        if(this.yzm4.length==0){
          this.phoneyzm=true
        }
      },
      password5(){
        //验证密码是否符合合适的正则
      var res4=this.$store.state.res4;
      if(!res4.test(this.password3)){
        this.password1=true
        }else{this.password1=false}
      },
      password6(){
      //验证密码是否符合合适的正则
      var res4=this.$store.state.res4;
      if(res4.test(this.password4)==true
      &&this.password3==this.password4){
        this.password2=false
        }else{this.password2=true}
      },
      // 当邮箱失去焦点时
      email2(){ 
        var res2=this.$store.state.res2;
        // 查询该邮箱是否已经被注册
        var a=this.email3.indexOf(this.email1);
        if(!res2.test(this.email1)){
          this.email=false
        } else if(a==-1){
          this.uemail=false
        }else{this.email=true,this.uemail=true}
      },
      // 当点击注册按钮后
      zhuce(){
        // 在点击注册按钮后先检查账号不是空，并且警告不显示的情况下
        if(this.phone1.length>1&&this.phone==false&&this.name1==false){
          // 才开始检查验证码
          if(this.yzm2.length>1&&this.yzm==false){
            // 才开始验证手机验证
            if(this.yzm4.length>1&&this.phoneyzm==false){
              // 才开始验证第一次输入密码
              if(this.password3.length>1&&this.password1==false){
                // 才开始验证第二次密码
                if(this.password4.length>1&&this.password2==false){
                  // 才开始验证邮箱
                  if(this.email1.length>1&&this.email==false&&this.uemail==false){
                    // 验证单选框是否为true
                    if(this.checked==true){
                      var url=this.$store.state.url
                      this.axios.get(url+"reg/denglu",{
                        params:{phone:this.phone1,password:this.password4,
                        email:this.email1}
                      }).then(res=>{
                        if(res.data.affectedRows==1){
                          alert('注册成功点击确认跳转至登录页面')
                          this.tiaozhuan();
                        }
                      })
                    }
                  }else{this.email=true}
                }else{this.password2=true}
              }else{this.password1=true}  
            }else{this.phoneyzm=true}
          }else{this.yzm=true}
        }else{this.phone=true} 
      },
      tiaozhuan(){
        this.$router.push({
          path:'login',
          components:'login'})
      }
    } ,
    watch:{
    },
       
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
    padding: 0 0 15px 0;
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
  .reginput>:nth-child(1)>div
  {display: flex;
  width:400px ;
  margin:0 auto;
  height:30px;
  }
  .reginput>:nth-child(1)>div>p{
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
    width: 370px;
    margin: 10px 0 30px 50px;
  }
  .checked>:nth-child(1){
    margin:0;
  }
  .checked>a{
    font-size: 12px;
    text-decoration: none;
  }
  .checked>p{
    display: block;
    width: 270px;
    text-align: center;
    line-height: 34px;
    background: #f60;
    border-radius: 5px;
    margin: 10px ;
  }
  .checked>p:hover{
    background: #ef965a
  }
</style>