<template>
    <div >
        <my-header></my-header>
        <div class="wrapper">
            <div class="navparent">        
                <div class="nav">
                    <router-link :to="`/home`">遇见</router-link>>
                    <router-link :to="`/goods/${rid}`">三亚短租</router-link>>
                    <a href="javascript:;">天涯短租房</a>
            <!-- 导航按钮 -->
                </div>
            <div class="column" v-if="pmn[0]">
                <p v-text="pmn[0].name"></p>
            <!-- 房间名称 -->
                <span class="iconfont ">&#xe601;<a href="javascript:;" v-text="pmn[0].details"></a> </span>
            </div>
            <div v-if="pmn[0]">
                <span>遇见</span>
                <span>/</span>
                <span>海南</span>
                <span>/</span>
                <span v-text="pmn[0].address"></span>
                <!-- 民宿地址 -->
                <span class="iconfont">&#xe94f;<a href="javascript:;">
               显示地图</a></span> 
            </div>
            <div class="column3">
                <span class="iconfont ">&#xe637;速订</span>
                <span class="iconfont">&#xe60e;一线海景</span>
                <span class="iconfont">&#xeba6;差旅首选</span>
                <span class="iconfont">&#xeb90;信用免押金</span>
                <span class="iconfont">&#xe94c;100%实拍</span>
            </div>
            <div v-if="pmn[0]">
                <span class="iconfont" @click="dianzan" :data-lid="pmn[0].lid"
                :data-like="like">&#xe621;{{like}}点赞</span>
                <span class="iconfont">&#xe65d;分享</span>
                <span v-text="`评分${pmn[0].eva}`"></span>
            </div>
         </div>        
        <div class="main">
                <div :style="floatnav" >
                 <!-- 浮动导航栏导航  -->
                     <div >
                        <div>
                            <img src="../img/logo50.png" alt="">
                        </div>
                        <div :style="floatnav1" >
                            <a >照片</a>     
                        </div>
                        <div :style="floatnav2">
                            <a>详细介绍</a>      
                        </div>
                        <div :style="floatnav3">
                            <a>地理位置</a>      
                        </div>
                        <div :style="floatnav4">
                            <a>入住须知</a>      
                        </div>
                        <div :style="floatnav5">
                            <a>猜你喜欢</a>      
                        </div>
                    </div>
                </div>
            <!-- 主题内容大div -->
            <div  class="left" >
                <!-- 左侧大图 -->
                <img v-for="i in img" :key="i.id" v-bind="lg_img"  >
            </div>
            <div class="middle" >
                <!-- 中间部分小图 -->
                <div :style="img_top">
                    <div >
                        <img v-for="i in img" v-lazy="i.sm_img" :data-id="i.lg_img"  :key="i.id" @mouseenter="sm_img"
                         @mouseleave="border1">
                    </div>
                    <div >
                        <img v-for="i in img" v-lazy="i.sm_img" :data-id="i.lg_img"  :key="i.id" @mouseenter="sm_img"
                        @mouseleave="border1">
                    </div>
                </div>
                <div class="topprev">
                    <!-- 上箭头按钮  -->
                    <div class="top"></div>
                </div>
                <div class="bottomprev">
                    <!-- 下箭头按钮 -->
                    <div class="bottom"></div>
                </div>
            </div>
            <div class="reservation">
                <div  :style="price">
                <!-- 预定房间 右侧的div -->
                <div class="price" v-if="pmn[0]">
                    <p v-text="`¥${pmn[0].price}/天`"></p>
                    <!-- 单价 -->
                    <p>满7天9.8折，满15天9.5折，满30天9.0折</p>
                    <!-- 活动 -->
                </div>
                <div class="date">
                    <!-- 确认时间和提交按钮 -->
                    <div class="getdate">
                        <p class="demonstration" style="text-align:center;margin-bottom:5px">请选择日期</p>
                        <div class="block">
                            <el-date-picker style="width:318px;overflow:hidden;"
                             v-model="value6"
                            type="daterange"
                            range-separator="至"
                            start-placeholder="开始日期"
                             end-placeholder="结束日期">
                        </el-date-picker>
                    </div>
                    </div>
                    <div class="total">
                        <!-- 总价显示区域 -->
                        <span @click="date1">总价:￥1996.00元</span>
                         <a href="">下载APP有千元红包</a>  
                    </div>
                    <div class="button">
                        <!-- 提交按钮 -->
                        <a href="javascript:;">立即预定</a>
                    </div>
                </div>
                <div class="calendar">
                    <!-- 房间日历用来显示近几日房间是否空闲 -->
                        <div >
                        <ul style="background:white">
                            <span>今天</span>
                            <li v-if="pmn[1]" v-text="`${pmn[1].num=='1'?'以出租':'可出租'}`"><br></li>
                        </ul>
                        <ul>
                            <span>10号</span>
                            <li v-if="pmn[2]" v-text="`${pmn[2].num=='1'?'以出租':'可出租'}`"><br></li>
                        </ul>
                        <ul>
                            <span>12号</span>
                            <li v-if="pmn[3]" v-text="`${pmn[3].num=='1'?'以出租':'可出租'}`"><br></li>
                        </ul>
                        <ul>
                            <span>12号</span>
                            <li v-if="pmn[4]" v-text="`${pmn[4].num=='1'?'以出租':'可出租'}`"><br></li>
                        </ul>
                        <ul>
                            <span>13号</span>
                            <li v-if="pmn[5]" v-text="`${pmn[5].num=='1'?'以出租':'可出租'}`"><br></li>
                        </ul>
                        <ul>
                            <span>14号</span>
                            <li v-if="pmn[6]"  v-text="`${pmn[6].num=='1'?'以出租':'可出租'}`"><br></li>
                        </ul>
                    </div>
                    <div>
                        <!-- 房间详细信息日历 -->
                        <a href="javasvript:;">详细房态日历</a>
                    </div>
                </div>
                <div class="intro">
                        <!-- /* 商家窗口的大div */ -->
                    <div class="portrait">
                        <!-- 商家头像 -->
                        <img v-if="pmn[0]" v-lazy="img[0].avater">
                    </div>
                    <div>
                        <!-- 联系商家按钮 -->
                        <div  class="iconfont">&#xe61d;<a href="JavaScript:;">在线聊天</a></div>  
                        <div class="iconfont">&#xe61c;<a href="JavaScript:;" >拨打电话</a></div>
                    </div>
                    <div >
                        <!-- 商家信誉显示 -->
                        <span v-if="pmn[0]" v-text="pmn[0].cred"></span>
                            <i class="iconfont">&#xe636;&#xe636;&#xe636;&#xe636;</i><br>
                        <span class="iconfont">芝麻信用分750以上
                            &#xe6d2;</span>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <div class="introduce" id='a1' v-if="pmn[0]">
            <div>
            <i class="iconfont">&#xe6d1;</i>
            <span>可整套出租</span>
            <p v-text="pmn[0].area"><br>
            房屋户型：2室2厅1卫1厨2阳台</p>
            </div>  
            <div>
            <i class="iconfont">&#xe601;</i>
            <span>宜居4到5人</span>
            <p v-text="pmn[0].bed"></p>
            </div>
            <div>
            <i class="iconfont">&#xe614;</i>
            <span>两张床</span>
            <p v-text="pmn[0].number"></p>
            </div>
        </div>
        <div class="housedesc">
            <!-- 房屋介绍 -->
            <table></table>
            <div>
                <i class="iconfont">&#xe620;</i>
                <span>个性描述</span>                      
            </div>
            <div>
                居半山而尊天下，拥半岛而藏海天
                筑爱濡沫相伴于三生，吟情诗文刻勒于山海，
                惜缘珍重不负于日月，一室清凉无愧于繁华。
                是因为家是意念的寄托，追求灵魂的充实，
                不堕入贪欲的泥淖，有家幸福就会永远在身边伴随。
                纵然你面朝大海背朝山，在云深水沓之间，
                欢乐和舒畅也会携挽着您的情挚，做你人生旅途中不离不弃的家。
            </div>
        </div>
        <div class="housedesc">
            <!-- 房屋内部情况 -->
            <table></table>
            <div>
            <i class="iconfont">&#xeb94;</i>
            <span>内部情况</span>
            </div>
            <div>
                    房间整体欧式清新风格的装修，一睁开眼就可以直视大海舒适大床，
                    体验一下清晨被海风和阳关叫醒的惬意感受，相信您一定会舒舒服服的睡个好觉！
                    记得晚上要盖被子！除此之外卧室还有空调、洗衣机、衣柜、挂墙液晶电视、
                    免费百兆wifi、以及独立的卫生间哦，还有一个不错的泡池，
                    让你一边看着海景和鹿回头的山景，吹着海风听着海浪，喝着椰子，美美的泡个澡
                    （24小时热水是妥妥的）！如果您想做饭，厨具齐备，在海景露台来享受美食美景吧
            </div>
        </div>
        <div class="housedesc">
                <!-- 房屋介绍 -->
            <table></table>
            <div>
                <i class="iconfont">&#xe600;</i>
                <span>交通情况</span>
            </div>
            <div>
                地理位置及公交线路：
                美丽新海岸小区位于三亚湾三亚湾路中段，是兰海花园五期推出的超大高档度假居住区。
                小区出行很方便，小区门口9条公交线路覆盖三亚全市。“美丽新海岸”即是6路、8路、25路、26路、27路等公交站点。
                小区距离市区约7公里，步行至美丽新海岸小区站，乘坐8路可至三亚市各处。
                小区距离凤凰机场约8公里，步行至美丽新海岸小区站乘27路车即可到达。
                小区距离三亚汽车总站约7公里，步行至美丽新海岸小区站，乘坐8路车至水利大厦，步行400米左右即可到达。
                小区距离三亚火车站约8公里，步行至美丽新海岸小区站，乘30路即可到达。
                公交站点即是旅游线路车站点，可乘坐各路公交以及旅游线路车去往附近的天涯海角、西岛、南山寺以及三亚各风景区。
            </div>
        </div>
        <div class="housedesc">
                <!-- 房屋介绍 -->
            <table></table>
            <div>
                <i class="iconfont">&#xe600;</i>
                <span>周边设施</span>
            </div>
            <div>
                学校： 人大附中 (2公里）
                购物： 海棠湾免税购物中心 (7公里)百花谷购物中心 (11.2公里)
                医院： 301医院 (2公里)林旺中心卫生院 (1.4公里)海南农垦南田医院 (12.7公里)
                生活： 新天地超市 (1.3公里)方兴超市 (1.3公里)微微便利店 (1.3公里)鸿运超市 (1.4公里)海旺特产超市 (1.2公里)王记药店 (1.4公里)正和大药房 (1.4公里)中国邮政储蓄银行 (1.2公里)中国工商银行 (1.5公里)
                娱乐： 好乐迪 (1.3公里)鑫来乐量贩式ktv (1.2公里)亚龙湾热带天堂森林 (8.8公里)蜈支洲岛 (5.3公里)
                餐饮： 泰丰轩(林旺店) ( (1.2公里)鸿亚餐厅 (1.3公里)柴火鱼(林旺分店) (1.3公里)捞友记猪肚煲鸡火锅 (1.3公里)
            </div>
        </div>
          
          <div class="housedesc2">
                <!-- 房屋介绍 -->
            <table></table>
            <div>
                <i class="iconfont">&#xe7ec;</i>
                <span>房屋设施</span>
            </div>
            <div>
                <div>
                    <ul>
                        <li class="iconfont">&#xe960;热水淋浴</li>
                        <li class="iconfont">&#xe962;提供饮品</li>
                        <li class="iconfont">&#xe617;空调</li>
                        <li class="iconfont">&#xe690;电视</li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li class="iconfont">&#xe954;免费WiFi</li>
                        <li class="iconfont">&#xe652;有冰箱</li>
                        <li class="iconfont">&#xe613;电梯</li>
                        <li class="iconfont">&#xe75a;停车位</li>
                    </ul>
                </div>
                <div> 
                    <ul>
                        <li class="iconfont">&#xe699;可以做饭</li>
                        <li class="iconfont">&#xe615;洗漱用品</li>
                        <li class="iconfont">&#xe610;拖鞋</li>
                        <li class="iconfont">&#xe75d;适合老人</li>
                    </ul>
                </div> 
            </div> 
        </div>
        <div class="housedesc2">
                <!-- 房屋介绍 -->
            <table></table>
            <div>
                <i class="iconfont">&#xe693;</i>
                <span>入住须知</span>
            </div>
            <div>
                <div>
                    <ul>
                        <li >证件:身份证或其他有效证件</li>
                        <li >最少入住人数:1人</li>
                        <li >最多入住人数:4人</li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li >最少入住天数:1天</li>
                        <li >最多入住天数:无限制</li>
                        <li >可接待外籍人士</li>
                    </ul>
                </div>
            </div> 
        </div>
        <div class="map" v-if="img[0]">
            <router >
            <img v-lazy="img[0].map">
            </router>
        </div>
        <div class="deposit">
            <p class="iconfont">&#xe68f;押金及其他费用</p>
            <p>押金:芝麻信用700分以上免押</p>
            <p>加客：￥0/人，最多加客1人，加客费用线下收取。</p>
            <p>其他额外费用：开火做饭需另外收费！连住5晚起免费</p>
        </div>
        <div class="deposit">
            <p class="iconfont">&#xeba5;预定方式</p>
            <p>下单即可入住，无需房东确认。</p>
            <p>订单确认后，在线支付总房款的100%。</p>
            <p>额外的服务费用和押金不包含在总房租内，由房东线下收取。。</p>
        </div>
        <div class="deposit">
            <p class="iconfont">&#xe8fe;退订须知</p>
            <img v-if="img[0]" v-lazy="img[0].prompt" alt="">
            <p>根据房东设置的交易规则未早于入住日14：00 1天退订视为有责取消 
                ，应扣除取消订单时间点后 1天订金作为违约金，剩余钱款将被原路退还</p>
        </div>
        <div class="maylove">
            <div>猜你喜欢</div>
            <div>
                <span class="iconfont">&#xe619;</span>
            </div>
            <div>
                <span class="iconfont">&#xe61b;</span>
            </div>
            <div>
                <div>
                <p>¥:298</p>
                <img v-if="img[0]" v-lazy="img[0].bottom_img" alt="">
                </div>
                <div>
                <p>¥:258</p>
                <img v-if="img[0]" v-lazy="img[1].bottom_img" alt="">
                </div>
                <div>
                <p>¥:198</p>
                <img v-if="img[0]" v-lazy="img[2].bottom_img" alt="">
                </div>
                <div>             
                <p>¥:338</p>    
                <img v-if="img[0]" v-lazy="img[3].bottom_img" alt="">
                </div>
            </div>
        </div>
        </div>
        <my-tail></my-tail>
    </div>
</template>
<script>
import myTail from "@/components/tail.vue"
import myHeader from "@/components/header.vue"
import { constants } from 'fs';
export default {
    props:["lid"],
   data() {   
      return {
          //存储后台获取来的房间信息的数组
        pmn:[],
        img:[],
        //存储点赞数量
        like:[],
        //储存当前地区的id
        rid:[],
        //存储时间变量用的
        value6: '',
        num:0,//用来存储是否有预定
        //用来存储居住的天数
        date:'',
        scrollTop:'',
        //存储价格所在的div样式
        price:{
            position:'',
            top:'0',
        },
        //存储浮动导航栏的显示与隐藏
        floatnav:{
            // display:'',
            position:'',
            top:'0',
            left:'',
            bottom:'300',
            zIndex:'',
            display:'none'  
        },
        //控制浮动导航栏小div的样式
        floatnav1:{
        background:'' 
        },
        floatnav2:{
        background:'' 
        },
        floatnav3:{
        background:'' 
        },
        floatnav4:{
        background:'' 
        },
        floatnav5:{
        background:'' 
        },
        img_top:{
            marginTop:''+"",
            transition:'',
            transitionTimingFunction:''
        },
        moved:'1',
        lg_img:{
            src:''
        },
        //  pickerOptions2: {
        //   shortcuts: [{
        //     text: '最近一周',
        //     onClick(picker) {
        //       const end = new Date();
        //       const start = new Date();
        //       start.setTime(start.getTime() - 3600 * 1000 * 24 * 7);
        //       picker.$emit('pick', [start, end]);
        //     }
        //   }, {
        //     text: '最近一个月',
        //     onClick(picker) {
        //       const end = new Date();
        //       const start = new Date();
        //       start.setTime(start.getTime() - 3600 * 1000 * 24 * 30);
        //       picker.$emit('pick', [start, end]);
        //     }
        //   }, {
        //     text: '最近三个月',
        //     onClick(picker) {
        //       const end = new Date();
        //       const start = new Date();
        //       start.setTime(start.getTime() - 3600 * 1000 * 24 * 90);
        //       picker.$emit('pick', [start, end]);
        //     }
        //   }]
        // },
      };
    },
    created(){
           //从共享数据vuex中获取url
         var url=this.$store.state.url
        this.axios.get(url+"Details",{
            params:{ lid:this.lid },
        }).then(res=>{
            //将获取到的商品数据放到pmn
            this.pmn=res.data;
            //将点赞数量提取出来放在单独的数组里
            this.like=res.data[0].a_like;
            console.log(this.like)
            //将获取到的数据的rid放到rid中
            this.rid=this.pmn[0].rid;
            //将获取到的商品的img
            this.img=this.pmn.slice(8,25)
            //将当前的第一张大照片放入lg_img
            this.lg_img.src=this.img[0].lg_img
        })
        this.lbt(); 
    },
    watch:{
        value6(){       
        }
    },
    mounted () {
        //给window添加一个滚动滚动监听事件并自动执行下面方法
        window.addEventListener('scroll', this.handleScroll)  
    },
    methods:{
        handleScroll () {
            //获取到鼠标向下滚动的距离
        this.scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
            if(this.scrollTop>=150&&this.scrollTop<550){
            //判断当距离大于150ox时价格显示框处于固定定位
            this.price.position='fixed'
            //当满足条件后浮动导航栏显示，并让他处于固定定位
            this.floatnav.display='block'
            this.floatnav.position='fixed'
            this.floatnav.zIndex="99"
            //并修改导航当前元素背景
            this.floatnav1.background='#d2d9e2'
            //防止向上滚动的时候上一个背景图不变化
            this.floatnav2.background=''
        }else if(this.scrollTop>=550&&1800>this.scrollTop){
            //当满足条件后修改当前元素的背景并将前后背景清除
            this.floatnav1.background=''
            this.floatnav2.background='#d2d9e2'
            this.floatnav3.background=''
            }else if(this.scrollTop>=1800&&2250>this.scrollTop){
            //当满足条件后修改当前元素的背景并将前后背景清除    
            this.floatnav2.background=''
            this.floatnav3.background='#d2d9e2'
            this.floatnav4.background=''
        }else if(this.scrollTop>=2250&&2800>this.scrollTop){
            //当满足条件后修改当前元素的背景并将前后背景清除
            this.floatnav3.background=''
            this.floatnav4.background='#d2d9e2'
            this.floatnav5.background=''
        }else if(this.scrollTop>=2800){
            //当满足条件后修改当前元素的背景并将前后背景清除
            this.floatnav4.background=''
            this.floatnav5.background='#d2d9e2'
        //判断当距离大于150ox时浮动导航栏显示
        }else{
            //否则就景style样式清除
            this.price.position=""
            this.floatnav.display='none'
            this.price.left=''
            this.floatnav.zIndex=""
            this.price.position=''
        }
        },
        //获取日历时间
        date1(){
        var s=this.value6[0]
        var a=[]
            a=a.concat(s)
        var q=a.slice(4,6)    
        console.log(q)
            console.log(this.value6)
        },
        //中间部分轮播图
        lbt(){
            setInterval(()=>{
                this.total()
            },2000)
            },        
        total(){
            var a=-80*this.moved
            this.img_top.marginTop=a+"px"
            this.moved++;
            if(this.moved==17){
                this.moved=0;
            }
        },
        sm_img(e){
            var a=e.target.dataset.id
            this.lg_img.src=a;
            e.path[0].style.transform='scale(1.05,1.05)'
        },
        border1(e){
            e.path[0].style.transform=""
        },
        dianzan(e){
            var a=e.target.dataset.like;
            var lid=e.target.dataset.lid;
               //从共享数据vuex中获取url
         var url=this.$store.state.url
            this.axios.get(url+"Details/dianzan",
            {params:{lid:lid,like:a}
            }).then(res=>{
                var code=res.data.code;
                if(code==-1){
                    this.$router.push({
                        path:"/login",
                        comments:'login'
                    })
                }else{
                    this.like=res.data[0].a_like;
                }
            })
        }
    },
    components:{
        myTail,myHeader
    }          
}
</script>
<style scoped>
  .transition-box {
    margin-bottom: 10px;
    width: 200px;
    height: 100px;
    border-radius: 4px;
    background-color: #409EFF;
    text-align: center;
    color: #fff;
    padding: 40px 20px;
    box-sizing: border-box;
    margin-right: 20px;
  }
</style>
