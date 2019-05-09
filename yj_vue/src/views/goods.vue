<template>
    <div class="app_goods">
        <my-header></my-header>
        <div class="nav">
                <!-- 导航 -->
                <router-link :to="`/home`">遇见</router-link>>
                <router-link to="">三亚</router-link>
        </div>
        <div>
            <!-- 商品页最外层大div -->
            <div class="search">
                <!-- 导航下面搜索框 -->
                <form action="" >
                    <span class="iconfont">&#xeb9e;
                        <input type="text" placeholder="目的地/景点/关键词" @focus="search" 
                    v-model="tuijian"  
                    ></span>       
                    <span class="iconfont">
                    <datalist  id="d3">
                        <option >单人</option>
                        <option >双人</option>
                        <option >三人</option>
                        <option >四人</option>
                        <option >五人</option>
                    </datalist>
                    &#xe6da; 
                    <input type="text" list="d3" placeholder="请选择人数">
                    </span>
                    <el-button type="primary">搜索</el-button>
                </form>
            </div>
            <div class="tuijian" :v-show="tuijianstyle" id="a" @click="search2" v-if="tuijianstyle" >
                    <div>
                    <div :style="tuijianstyle2" @mouseenter="tuijian1">
                        <router-link to='' >推荐</router-link>
                    </div>
                    <div @mouseenter="guonei" :style="guoneistyle">
                        <router-link to=''>国内</router-link>
                    </div>
                    <div @mouseenter="guowai" :style="guowaistyle">
                        <router-link to=''>境外·港澳台</router-link>
                    </div>
                </div>
                <div :style="tuijianstyle3" v-if="list" >
                    <p>热门商圈</p>
                    <div>
                        <!-- <span  v-text="i.area" @click="jingdian"  v-for="i of list" :key="i.id"></span>  -->
                         <span to='' >海棠湾</span>
                        <span to='' >蜈洲支岛</span>
                        <span to=''>大东海</span>
                        <span to='' >七仙山</span>
                        <span  to='' >南天海泉</span>
                        <span to='' >香水湾</span> 
                    </div>
                    <p>热门景点</p>
                    <div>
                        <!-- <span @click="jingdian" v-text="i.jingdian" v-for="i of list" :key="i.id" ></span> -->
                        <router-link to='' >南天门热带植物园 </router-link>
                        <router-link to='' >海棠广场 </router-link>
                        <router-link to=''>神州第一泉</router-link>
                        <router-link to='' > 长寿谷</router-link>
                        <router-link to='' > 三亚游艇租赁出海俱乐部</router-link>
                    </div>
                </div>
                <div class="guonei" :style="guoneistyle2">
                    <div>
                    <span>热门</span>
                    <input type="text" placeholder="您想去那" v-model="guoneiinput"
                     > 
                    <el-button size="mini">确认</el-button>
                    </div>
                    <div >
                        <ul>
                            <li @click="jingdian">北京</li>
                            <li @click="jingdian">上海</li>
                            <li @click="jingdian">深圳</li>
                            <li @click="jingdian">广州</li>
                        </ul>
                        <ul>
                            <li @click="jingdian">三亚</li>
                            <li @click="jingdian">西安</li>
                            <li @click="jingdian">苏州</li>
                            <li @click="jingdian">杭州</li>
                        </ul>
                        <ul>
                            <li @click="jingdian">秦皇岛</li>
                            <li @click="jingdian">成都</li>
                            <li @click="jingdian">南京</li>
                            <li @click="jingdian">青岛</li>
                        </ul>
                        <ul>
                            <li @click="jingdian">武汉</li>
                            <li @click="jingdian">重庆</li>
                            <li @click="jingdian">丽江</li>
                            <li @click="jingdian">厦门</li>
                        </ul>
                        <ul>
                            <li @click="jingdian">长沙</li>
                            <li @click="jingdian">张家界</li>
                            <li @click="jingdian">华山</li>
                            <li @click="jingdian">九寨沟</li>
                        </ul>
                    </div>
                </div>
                <div class="guowai" :style="guowaistyle2">
                    <div>
                    <span>热门</span>
                    <input type="text" placeholder="您想去那" v-model="guowaiinput"> 
                    <el-button size="mini">确认</el-button>
                    </div>
                    <div>
                        <ul>
                            <li @click="jingdian">清迈</li>
                            <li @click="jingdian">曼谷</li>
                            <li @click="jingdian">香港</li>
                            <li @click="jingdian">台湾</li>
                        </ul>
                        <ul>
                            <li @click="jingdian">马德里</li>
                            <li @click="jingdian">柏林</li>
                            <li @click="jingdian">巴黎</li>
                            <li @click="jingdian">巴塞罗那</li>
                        </ul>
                        <ul>
                            <li @click="jingdian">里约热内卢</li>
                            <li @click="jingdian">伦敦</li>
                            <li @click="jingdian">米兰</li>
                            <li @click="jingdian">巴厘岛</li>
                        </ul>
                        <ul>
                            <li @click="jingdian">马尔代夫</li>
                            <li @click="jingdian">芝加哥</li>
                            <li @click="jingdian">洛杉矶</li>
                            <li @click="jingdian">纽约</li>
                        </ul>
                        <ul>
                            <li @click="jingdian">莫斯科</li>
                            <li @click="jingdian">圣彼得堡</li>
                            <li @click="jingdian">京都</li>
                            <li @click="jingdian">东京</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="choose">
                <div>
                    <span>房屋级别</span>
                    <span>
                        <el-checkbox-group v-model="checkList">
                            <el-checkbox label="豪华"></el-checkbox>
                            <el-checkbox label="精品"></el-checkbox>
                            <el-checkbox label="舒适"></el-checkbox>
                        </el-checkbox-group>
                    </span>
                </div>
                <div>
                    <span>价格</span>
                    <span>
                    <el-checkbox-group v-model="checkList3">
                            <el-checkbox label="¥100-300"></el-checkbox>
                            <el-checkbox label="¥300-500"></el-checkbox>
                            <el-checkbox label="¥500-700"></el-checkbox>
                            <el-checkbox label="¥700-900"></el-checkbox>
                        </el-checkbox-group> 
                        <span class="zdy">自定义
                        <input type="text" v-model="checkList5">
                        <span class="iconfont">&#xe623;</span>
                        <input type="text" v-model="checkList6">
                        <button style="margin-left:10px;" @click="queren">确认</button>
                        </span>
                    </span>
                </div>
                <!-- <div>
                    <span>房屋类型</span>
                    <span>
                        <el-checkbox-group v-model="checkList">
                            <el-checkbox label="一居"></el-checkbox>
                            <el-checkbox label="二居"></el-checkbox>
                            <el-checkbox label="三居"></el-checkbox>
                            <el-checkbox label="青年旅社"></el-checkbox>
                            <el-checkbox label="客栈"></el-checkbox>
                            <el-checkbox label="渔家乐"></el-checkbox>
                            <el-checkbox label="木屋"></el-checkbox>
                            <el-checkbox label="别墅"></el-checkbox>
                            <el-checkbox label="公寓"></el-checkbox>
                        </el-checkbox-group>
                    </span>
                </div> -->
                <div  class="xianshi" :style="xuanzhong">
                    <p>已选中</p>
                    <span  v-for='i of checkList' :key="i" @click="shanchu">{{i}}<span>x</span></span>
                    <span v-for="item1 of checkList3" :key="item1" @click="shanchu3" >{{item1}}</span>
                    <span @click="shanchu1" :style="shanchu2">{{`¥`}}{{checkList4[0]}}-{{checkList4[1]}}<span>x</span></span>
                    <span @click="qshanchu" :style="qshanchu1" style="width:60px;height:22.5px">全部取消</span>
                </div>
            </div>
        </div>
        <div :style="kong" style="text-align: center;">
            <h3 >该地区暂时没有数据</h3>
        </div>
        <div class="xiangqing"  v-if="list" :style="xaingqing1">
            <div class="goods"  v-for="i of list" :key="i.id">
                <div @mouseenter="border" @mouseleave="border1">
                    <router-link :to="`/details/${i.lid}`"><img :src="i.md_img"></router-link>
                </div>
                <div >
                     <router-link :to="`/details/${i.lid}`">{{i.name}}</router-link>
                    <router-link :to="`/details/${i.lid}`">{{`¥`}}{{i.price}}</router-link>
                    <p @click="address1">{{i.address}}</p>
                    <p>{{i.area}}</p>
                </div> 
                <div  :style="address">
                    <img :src="i.address_img" alt="">
                </div>
            </div>
        </div>
        <div class="endnav" :style="anniu">
            <span @click="header" :style="shouye">首页</span> 
            <span @click="top" :style="shangyiye">上一页</span>
            <!-- <span></span> -->
            <span >{{pages}}</span>
            <span @click="bottom" :style="xiayiye">下一页</span>
            <span @click="tail" :style="weiye">尾页</span>
        </div>
        <div>
            <my-tail></my-tail>
        </div>
    </div>
</template>
<script>
import myTail from "@/components/tail.vue"
import myHeader from "@/components/header.vue"
import { constants } from 'fs';
export default { 
    props:["rid"],   
    data(){
        return{
            //list用于存储服务器响应回来的数据
            list:[],
            //先将相应回来的数据放入
            list1:[],
            //用来存贮ajax响应回来的数据
            list_img:[],
            //绑定国内输入框
            guoneiinput:[],
            //绑定国外输入框
            guowaiinput:[],
            //用来存储模糊查询的选中的项
            checkList: [],
            //存储全部取消的显示或隐藏
            qshanchu1:{
                display:''
            },
            xuanzhong:{
                display:'none'
            },
            // //存储模糊查询自定义输入的价格
            checkList4: [],
            //用来删除自定义价格的样式
            shanchu2:{
                display:'none'
            },
            // //模糊查询价格的存储数组
            checkList3:[],
            checkList5:[],
            // //用来存储用户手动输入的最高价格
             checkList6:[],
            //绑定搜索框的内容
            tuijian:'',
            //整个大搜索推荐框是否显示
            tuijianstyle:false,
            //推荐按钮的样式
            tuijianstyle2:{
                background:'',
                zIndex:'',
            },
            //推荐内容的样式
            tuijianstyle3:{
                zIndex:'',
                background:''
            },
            //国内按钮的样式
            guoneistyle:{
                background:'',
                background:''
            },
            //国内内容的样式
            guoneistyle2:{
                zIndex:'',
                background:''
            },
            //国外按钮的样式
            guowaistyle:{
                background:"",
                background:''
            },
            //国外内容的样式
            guowaistyle2:{
                zIndex:'',
                background:''      
            },
            //控制地图的显示与否
            address:{
                display:"",
                zIndex:''
            },
            //商品详情div
            xaingqing1:{
                marginbTop:'',
                display:''
            },
            //上一页按钮样式
            shouye:{
                display:''
            },
            //首页按钮样式
            shangyiye:{
                display:''
            },
            //下一页按钮的样式
            xiayiye:{
                display:''
            },
            //尾页按钮的样式
            weiye:{
                display:''
            },
            //储存模糊查询出来的商品
            pmn:[],
            max:[],
            min:[],
            //储存分页查询的页数
            pno:0,
            //存储下一页点击的次数
            a:0,
            //存储点击的页数
            pages:1,
            //存储页码按钮的样式
            anniu:{
                display:''
            },
            //存储当该地区暂时没有数据的时候样式
            kong:{
                display:"none",
            }
        }
    },
    created(){
        this.chaxun2();
    },
    methods:{
        //当搜索框获得焦点时候
        search(){
            //控制推荐部分为显示推荐按钮修改背景色
            this.tuijianstyle=true
            this.tuijianstyle2.background="#fff"
            //并将其他两个按钮背景修改
            this.guoneistyle.background="#e9f0fa"
            this.guowaistyle.background='#e9f0fa'
        },
        chaxun2(){
            //当页面开始加载时执行ajax请求
        this.axios.get("http://localhost:3000/goods",{
            params:{ rid:this.rid,pno:this.pno, },
        }).then(res=>{
            this.list1=res.data[1];
            //先将第一个页面显示的数据赋值给list
            this.list=this.list1.slice(0,9)
            if(this.list.length==0){
                this.kong.display="block"
                this.xaingqing1.display="none"
                this.anniu.display='none'
            }
        })
        },
        search2(event){
            var sp=document.getElementById("a")
            if(sp){
                if(sp.contains(event.target)==false){
                    console.log('在内')
                this.tuijianstyle=true
                }
            }
        },
        tuijian1(){
            //当点击推荐按钮时修改背景并将其他按钮修改为正常
            this.tuijianstyle2.background="#fff"
            this.guoneistyle.background="#e9f0fa"
            this.guowaistyle.background='#e9f0fa'
            //并显示推荐的内容，并把其他内容隐藏
            this.tuijianstyle3.zIndex='5'
            this.guoneistyle2.zIndex='0'
            this.guowaistyle2.zIndex='0'
        },
        guonei(){
            //当点击国内按钮时修改背景并将其他按钮修改为正常
            this.guoneistyle.background='#fff'
            this.tuijianstyle2.background="#e9f0fa"
            this.guowaistyle.background='#e9f0fa'
            //并显示国内的内容，并把其他内容隐藏
            this.guoneistyle2.zIndex='5'
            this.tuijianstyle3.zIndex='0'
            this.guowaistyle2.zIndex='0'
        },
        guowai(){
            //当点击国外按钮时修改背景并将其他按钮修改为正常
            this.guowaistyle.background='#fff'
            this.guoneistyle.background='#e9f0fa'
            this.tuijianstyle2.background='#e9f0fa'
            //并显示国外的内容，并把其他内容隐藏
            this.guowaistyle2.zIndex='5'
            this.guoneistyle2.zIndex='0'
            this.tuijianstyle3.zIndex='0'
        },
        //当推荐执行点击事件时将点击的内容赋值给input
        jingdian(e){
            //e获取到当前点击对象的内容
            var a=e.toElement.innerText
            this.tuijian=a
        },
        input(){
            //当国内input框有内容写入时就将内容赋值给搜索框
            this.tuijian=this.guoneiinput
        },
        input1(){
            //当国外input框有内容写入时就将内容赋值给搜索框
            this.tuijian=this.guowaiinput
        },
        //给用户看自己选中了什么条件
        shanchu(e){
            //当点击删除按钮时先执行默认的ajax
            this.chaxun2();
            //e.toElement.innerText 是当前点击元素的内容
            var e=e.toElement.innerText 
            //a1是截取当前点击的内容截取文字内容删除x号
            var a1=e.slice(0,e.length-1);
            //通过index方法查找数组中当前元素的下标  利用splice将当前点击的元素删除
            var a=this.checkList.indexOf(a1)
            this.checkList.splice(a,1)
            if(this.checkList==[] && this.checkList4==[] && this.checkList3==[]){
                this.xuanzhong.display="none";
            }
            
        },
        //选中框的全部取消按钮
        //将存价格的数组和存其他选项的按钮全部清空，并将显示框有显示改为隐藏
        qshanchu(){
            //当点击删除按钮时先执行默认的ajax
            this.chaxun2();
            this.xuanzhong.display='none'
            this.checkList=[];
            this.checkList2=[];
            this.checkList3=[]; 
            
        },
        shanchu1(){
            //当在显示框点击删除自定义价格
            //当点击删除按钮时先执行默认的ajax
            this.chaxun2();
            if(this.checkList==[] && this.checkList4==[] && this.checkList3==[]){
                this.xuanzhong.display="none";
            }
            this.checkList2=[];
            this.shanchu2.display="none" 
            
        },
        //自定义价格输入的确认按钮
        queren(){
            //如果点击确认按钮就将价格选项栏清空
            this.checkList3=[];
            this.checkList4.push(this.checkList5)
            this.checkList4.push(this.checkList6)
            this.min=[];
            //如果点击确认按钮就将开始数字和结束数字拼接到一个新数组里
            // this.min.push(this.checkList5)
            // this.min.push(this.checkList6)
            this.xianshi1();
            // this.axios.get("http://127.0.0.1:3000/goods/chaxun",{
            //     params:{min:this.min}
            // }).then(res=>{
            // })
            //并控制自定义价格框为显示
            this.shanchu2.display="inline-block"
        },
        //当显示框执行清除价格的按钮时执行的函数
        shanchu3(e){
            //当点击删除按钮时先执行默认的ajax
            this.chaxun2();
            //e.toElement.innerText 是当前点击元素的内容
            var e=e.toElement.innerText 
            //a1是截取当前点击的内容截取文字内容删除x号
            var a1=e.slice(0,e.length-1);
            //通过index方法查找数组中当前元素的下标  利用splice将当前点击的元素删除
            var a=this.checkList.indexOf(a1)
            this.checkList3.splice(a,1)
            if(this.checkList==[] && this.checkList4==[] && this.checkList3==[]){
                this.xuanzhong.display="none";
            }
        },
        //控制模糊查询的内容是否显示
        xianshi1(){
            //当除过价格以外的按钮被选中时将显示框显示
            if(this.checkList.length>=1 ) {
                this.xuanzhong.display='block'
            //当自定义价格按钮被选中时将显示框显示    
            }else if(this.checkList4.length>=1){
                this.xuanzhong.display='block'}
            //当价格按钮被选中时将显示框显示
            else if(this.checkList3.length>=1) {
                this.xuanzhong.display='block'
            }else{
                this.xuanzhong.display=''
            }
            //当选中项大于两个时全部删除显示
            if(this.checkList.length>=2 &&this.checkList3.length>=2){
                this.qshanchu1.display="inline-block"
            }
        },
        chaxun(){
            this.max=[]
            this.min=[]
            //判断如果是选项价格选中就讲选中的价格添加进min中
            if(this.checkList3.length>0){
                //将价格字符串后面的两位添加到min数组里
            for( var a=0;a<this.checkList3.length;a++){
                this.min.push(this.checkList3[a].slice(1,4))
               this.min.push(this.checkList3[a].slice(5,9))
            } 
            //如果是自定义价格选中就将自定义价格存储框添加min中
            }else if(this.checkList6.length>0){
            for( var a=0;a<this.checkList4.length;a++){
                this.min.push(this.checkList4[a])
            } 
            }else{
                //如果都不是min数组为空
                this.min=['0','1']
            }
            //将房间类型查询放到max里面
            if(this.checkList.length>0){
                 for(var s=0;s<this.checkList.length;s++){
                this.max.push(this.checkList[s])
            }   
            }else{
                this.max=['*','*']
            } 
            //将选项框选定的价格放到min
             this.axios.get("http://localhost:3000/goods/chaxun",
                {params:{min:this.min,max:this.max}
            }).then(res=>{
                this.list=[];
                this.list=res.data.slice(0,res.data.length-1)
                if(this.list.length<=9){
                    this.anniu.display='none'
                }
            })
        },
        //当鼠标进入地址字样时
        address1(){
            this.address.display="block"
            this.zIndex="5"
        },
        //当点击下一页时
        bottom(){
            //执行点击时先将list清空
             this.list=[];
            // 先执行this.a++;
             this.a++;
            //判断相应回来的数组的数组的长度/9并向下取整
            var length=Math.floor(this.list.length/9)   
            //给点击的次数乘9 就是要开始截取的下标
            var a=this.a*9;
            // 因为length的是list1是向下取整，所以当length==this.a-1的
            // 时候
            if(length==this.a-1){
            //继续将相应回来的数组截取然后添加进list
            this.list=this.list1.slice(a,a+9);
            //并将页码数++
            this.pages++;
            //将将下一页的按钮和尾页按钮隐藏
            this.xiayiye.display="none";
            this.weiye.display="none";
            //继续将上一页和首页按钮显示
            this.shouye.display="block";
            this.shangyiye.display="block";
            }else{
            //否则就还是截取数组放入list
            this.list=this.list1.slice(a,this.a+9);
            //并将首页和上一页显示     
            this.shouye.display="block";
            this.shangyiye.display="block";
            //并将页码数++
            this.pages++;
            }   
        },
        //当点击尾页时候
        tail(){
            //先将当前list清空
            this.list=[];
            //判断相应回来的数组的数组的长度/9并向下取整
            var length=Math.floor(this.list.length/9)
            // 先给页面的数字加++
            this.pages=++length;
            //将当前length的长度等于赋值给this.a
            this.a=length;
            // a=点击次数*9;
            var a=length*9;
            //继续将相应回来的数组截取然后添加进list
            this.list=this.list1.slice(a,a+9)
            // 将下一页 尾页的样式修改为隐藏
            this.weiye.display="none";
            this.xiayiye.display="none";
            // 上一页和首页的样式修改为显示
            this.shouye.display="block";
            this.shangyiye.display="block";
        },
        //当点击上一页的时候
        top(){
            //判断相应回来的数组的数组的长度/9并向下取整 
            var length=Math.floor(this.list.length/9);
            // 先将this.a--;
            this.a--;
            //给点击的次数乘9 就是要开始截取的下标
            var a=this.a*9;
            // 如果this.a等于0s   
            if(this.a==0){
            this.list=[];
            this.list=this.list1.slice(a,a+9)
            //将页面的页码--
            this.pages--;
            //将上一页和首页隐藏
            this.shangyiye.display="none";
            this.shouye.display="none";
            //将下一页和尾页的显示
            this.xiayiye.display="block";
            this.weiye.display="block";
            }else{
                // 否则将list清空
            this.list=[];
            this.list=this.list1.slice(a,a+9);
            //将页面的页码减--
            this.pages--;
            //下一页和尾页显示 
            this.xiayiye.display="block";
            this.weiye.display="block";
            }
        },
        // 当点击头页的时候
        header(){
            this.list=[];
            //判断相应回来的数组的数组的长度/9并向下取整
            var length=Math.floor(this.list.length/9)
            // 将页码改为1;
            this.pages=1;
            // 将this.a改为0;
            this.a=0;
            // 将前九个收据赋值给list
            this.list=this.list1.slice(this.a,this.a+9)
            //将首页和上一页隐藏
            this.shouye.display="none";
            this.shangyiye.display="none";
            // 将下一页和尾页显示
            this.xiayiye.display="block";
            this.weiye.display="block";
        },
        border(e){
            e.path[0].style.transform='scale(1.05,1.05)'
        },
        border1(e){
            e.path[0].style.transform=""
        }
    },
    watch:{
        //监控国内input框如果有输入内容改变搜索框的内容
        guoneiinput(){
            this.input()    
        },
        //监控国外input框如果有输入内容改变搜索框的内容
        guowaiinput(){
            this.input1()
        },
        //监听除价格显示栏目外所有按钮的选中状况
        checkList(){
            this.xianshi1();
            this.max=[];
             this.chaxun();
             if(this.checkList.length==0){
                 this.chaxun2();
             }
        },
        //监听除价格被选中时候的状态
        checkList3(){
            this.xianshi1();
            //如果价格点击按钮操作就将自定义价格栏清空
            this.min=[];
            //如果checkList3长度等于0  就执行最原始的ajax
             if(this.checkList3.length==0){
                 this.chaxun2();
             } 
            //执行模糊查询按钮
             this.chaxun();
             
        },
        checkList4(){
            //如果checkList4长度等于0  就执行最原始的ajax
            if(this.checkList4.length==0){
                this.chaxun2();
            }
        }
    },
      components:{
    myTail,myHeader
  }
}
</script>
<style scoped>
*{margin:0;padding:0}
.app_goods{
    width:100%;
    /* margin:0 auto; */

}
/* 商品页外层最大的div */
.app_goods>:nth-child(3){
   width: 1200px;
   margin:0 auto;
}
.nav{
     width: 1200px;
    margin:30px auto 30px;
    text-decoration:none;
    padding:10px 0px 0px 0px;
}
.nav a{
    margin:0px 5px 0px 5px;
}
/* 导航页 */
.search{
    margin:15px  20px 0 20px;
    padding-bottom:15px;
    border-bottom: 1px solid #ddd;
}
.search span{
    font-size:20px;
    display:inline-block;
    padding:0px 10px 0px 10px;
}
.search>form>:nth-child(1){
    border-right:2px solid #ddd;
}
.search>form>span>input{
    
    width:300px;
    height:37px;
    border:0;
}
.search button{
    width:200px;
    height:37px;
    font-size:16px;
}
/* 搜索推荐 */
.tuijian {
    width:399.999px;
    /* display: none; */
    position: relative;
}
.tuijian>:first-child>div{
    width:133.333px;
    height:40px;
    text-align: center;
    padding-top:7px;
}
.tuijian>:first-child{ 
    display:flex;
    justify-content:space-around;
    background:#e9f0fa;
    height:40px;
}
.tuijian span{
    display:inline-block;
    margin:10px 10px 0px 0px;
    /* width:100%; */
}
.tuijian>:nth-child(2){
    font-size:14px;
    width:400px;
    margin:10px 10px 10px 0px;
    position: absolute;
    background: #fff;
    z-index: 1;
    }
.tuijian>:nth-child(2) p{
    display:block;
    margin:10px 10px 10px 0px;
}
.tuijian>:nth-child(2) div{
    display:flex;
    flex-flow:row wrap
}
.tuijian>:nth-child(2) a{
    display:inline-block;
    margin:5px 10px 0px 10px;
    cursor:pointer;
    color: #333;
}
.tuijian .guonei{
    position: absolute;
    background: #fff;
    z-index:0;
    width:400px;
}
.tuijian .guonei>:first-child,
.tuijian .guonei>:nth-child(2)
{
    margin:20px 0px 10px 0px;
    display:flex;
    justify-content:space-around;

}
.tuijian .guonei>:nth-child(2) ul,
.tuijian .guowai>:nth-child(2) ul
{
    list-style:none;
    font-size:14px;
}
.tuijian .guonei>:nth-child(2) li,
.tuijian .guowai>:nth-child(2) li
{
    margin:10px 0px 10px 0px;
    cursor:pointer;
}
.tuijian .guowai{
    position: absolute;
    z-index:0;
    background: #fff;
}
.tuijian .guowai>:first-child,
.tuijian .guowai>:nth-child(2){
    margin:20px 0px 10px 0px;
    display:flex;
    justify-content:space-around;
    width:400px;
}
.choose{
    margin:0px 20px 30px 20px;
    width:1160px;   
}
.choose>div{
    border-bottom:1px solid #ddd;
}
.choose>div>:first-child{
    display:inline-block;
    margin:10px 30px 10px 0;
    width:80px;
    font-family:方正舒体
}
.choose>div span{
    display: inline-block;
    position: relative;
}
.choose>div label{
    width:70px;   
}
.choose>div .zdy{
    position: absolute;
    width:200px;
    top:0px;
    left:405px;
    font-size:15px;
}
.choose>div .zdy>input{
    width:35px;
}
.choose .xianshi{
    display:none;
    transition:0.5s;
}
.choose .xianshi>span{
    display:inline-block;
    margin:10px 30px 10px 0;
    font-size:14px;
    border:1px solid #ddd;
    cursor:default;
    padding-left:3px;
    padding-top:2px;
}
.choose .xianshi>span>span{
    padding:0 5px 0 5px;
    display:inline-block;
    margin:0px;
    height:20.5px;
    top:-1px;
}
.choose .xianshi>span:hover{
    border:1px solid #409EFF;
}
.choose .xianshi>span>input{
    padding:0;
    width:15px;
    height:15px;
}
.xiangqing{
    margin-top: 30px;
    width:1200px;
    margin: 0 auto;
    display: flex;
    flex-wrap:wrap;
    justify-content:space-between;
    overflow: hidden;
}
.goods{
    width: 370px;
    position: relative;
    display: flex;
    flex-wrap:wrap;
    margin-bottom:150px;
    margin-left: 15px;
    margin-right: 15px;
}
.goods>:first-child{
    width: 370px;
    height: 250px;
    overflow: hidden;
    margin-bottom:15px;
}
.goods>:nth-child(2)>a{
    color: #333;
    font-size: 20px;
    text-decoration: none;
}
.goods>:nth-child(2)>a:hover{
    text-decoration: underline;
}
/*详情区显示价格的span标签*/
.goods>:nth-child(2)>:nth-child(2){
    color: #ff5d51;
    font-weight: bold;
    position: absolute;
    right: 5px;
    top:265px;
}
/*商品旁边的地图照片*/
.goods>:nth-child(3){
    position: absolute;
    left: 150px;
    top: 180px;
    display:none;
    transition: 0.5s;
}
.goods>:nth-child(2)>p{
    margin-top: 5px;
}
.endnav{
    display: flex;
    justify-content: flex-end;
    margin-right:50px;
    margin-top: 100px;
}
.endnav>span{
    height: 25px;
    margin-left: 5px;
    background: #efe8e8;
    border-radius: 5px;
    padding-left: 5px;
    padding-right: 5px;
    line-height: 1.6;
}
.endnav>span:hover{
    background: #d8d3d3
}
.endnav>:nth-child(1),.endnav>:nth-child(2){
    display: none;
}
.endnav>:nth-child(3){
    width: 25px;
    text-align: center;
    line-height: 1.6;
}
</style>
