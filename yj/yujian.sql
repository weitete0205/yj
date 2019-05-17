/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : yujian

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-05-12 20:28:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yi_home_renqi
-- ----------------------------
DROP TABLE IF EXISTS `yi_home_renqi`;
CREATE TABLE `yi_home_renqi` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lid` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yi_home_renqi
-- ----------------------------
INSERT INTO `yi_home_renqi` VALUES ('1', 'http://106.13.120.8:3000/img/home/renqi1.jpg', '499', '小院里', '4');
INSERT INTO `yi_home_renqi` VALUES ('2', 'http://106.13.120.8:3000/img/home/renqi3.jpg', '465', '精品客栈', '5');
INSERT INTO `yi_home_renqi` VALUES ('3', 'http://106.13.120.8:3000/img/home/renqi6.jpg', '668', '海曼别馆', '6');
INSERT INTO `yi_home_renqi` VALUES ('4', 'http://106.13.120.8:3000/img/home/renqi4.jpg', '499', '幸福民居', '7');
INSERT INTO `yi_home_renqi` VALUES ('5', 'http://106.13.120.8:3000/img/home/renqi5.jpg', '599', '海纳捷精品客栈', '8');
INSERT INTO `yi_home_renqi` VALUES ('6', 'http://106.13.120.8:3000/img/home/renqi2.jpg', '599', '欢乐汇旅家客栈', '9');

-- ----------------------------
-- Table structure for yj_home
-- ----------------------------
DROP TABLE IF EXISTS `yj_home`;
CREATE TABLE `yj_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '省份id',
  `city` varchar(11) NOT NULL,
  `area` varchar(255) NOT NULL,
  `prov` varchar(255) NOT NULL,
  `jingdian` varchar(255) NOT NULL,
  `rid` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yj_home
-- ----------------------------
INSERT INTO `yj_home` VALUES ('1', '三亚', '崖州湾', '海南省', '三十三观音堂', '1', '');
INSERT INTO `yj_home` VALUES ('2', '三亚', '海棠湾', '海南省', '南天门热带植物园', '1', '');
INSERT INTO `yj_home` VALUES ('3', '三亚', '蜈洲支岛', '海南省', '海棠广场', '1', '');
INSERT INTO `yj_home` VALUES ('4', '三亚', '大东海', '海南省', '神州第一泉', '1', '');
INSERT INTO `yj_home` VALUES ('5', '三亚', '七仙山', '海南省', '长寿谷', '1', '');
INSERT INTO `yj_home` VALUES ('6', '三亚', '南天海泉', '海南省', '三亚游艇租赁出海俱乐部', '1', '');
INSERT INTO `yj_home` VALUES ('8', '西安', '钟楼', '陕西省', '钟楼古建筑', '2', 'http://106.13.120.8:3000/img/home/xian.jpg');
INSERT INTO `yj_home` VALUES ('9', '杭州千岛湖', '千岛湖', '浙江省', '千岛湖景区', '3', 'http://106.13.120.8:3000/img/home/qiandaohu.jpg');
INSERT INTO `yj_home` VALUES ('10', '苏州', '', '江苏省', '苏州园林景区', '4', 'http://106.13.120.8:3000/img/home/suzhou.jpg');
INSERT INTO `yj_home` VALUES ('11', '成都', '', '四川省', '', '5', 'http://106.13.120.8:3000/img/home/chengdou.jpg');
INSERT INTO `yj_home` VALUES ('12', '桂林', '', '广西省', '', '6', 'http://106.13.120.8:3000/img/home/guilin.jpg');
INSERT INTO `yj_home` VALUES ('13', '哈尔滨', '', '黑龙江', '', '7', 'http://106.13.120.8:3000/img/home/haerbin.jpg');
INSERT INTO `yj_home` VALUES ('14', '巴塞罗那', '', '欧洲', '', '8', 'http://106.13.120.8:3000/img/home/basailouna.jpg');
INSERT INTO `yj_home` VALUES ('15', '伦敦', '', '欧洲', '', '9', 'http://106.13.120.8:3000/img/home/lundun.jpg');
INSERT INTO `yj_home` VALUES ('16', '巴黎', '', '欧洲', '', '10', 'http://106.13.120.8:3000/img/home/bali.jpg');
INSERT INTO `yj_home` VALUES ('17', '米兰', '', '欧洲', '', '11', 'http://106.13.120.8:3000/img/home/milan.jpg');
INSERT INTO `yj_home` VALUES ('18', '希腊', '', '欧洲', '', '12', 'http://106.13.120.8:3000/img/home/xila.jpg');
INSERT INTO `yj_home` VALUES ('19', '巴厘岛', '', '海滩', '', '13', 'http://106.13.120.8:3000/img/home/balidao.jpg');
INSERT INTO `yj_home` VALUES ('20', '三亚', '香水湾', '海南省', '', '1', 'http://106.13.120.8:3000/img/home/sanya.jpg');
INSERT INTO `yj_home` VALUES ('21', '马尔代夫', '', '海滩', '', '15', 'http://106.13.120.8:3000/img/home/maerdaifu.jpg');
INSERT INTO `yj_home` VALUES ('22', '苏梅岛', '', '海滩', '', '16', 'http://106.13.120.8:3000/img/home/sumeidao.jpg');
INSERT INTO `yj_home` VALUES ('23', '普吉岛', '', '海滩', '', '14', 'http://106.13.120.8:3000/img/home/pujidao.jpg');
INSERT INTO `yj_home` VALUES ('31', '', '', '', '', '0', '');
INSERT INTO `yj_home` VALUES ('32', '', '', '', '', '0', '');
INSERT INTO `yj_home` VALUES ('33', '', '', '', '', '0', '');
INSERT INTO `yj_home` VALUES ('34', '', '', '', '', '0', '');
INSERT INTO `yj_home` VALUES ('35', '', '', '', '', '0', '');

-- ----------------------------
-- Table structure for yj_home_img
-- ----------------------------
DROP TABLE IF EXISTS `yj_home_img`;
CREATE TABLE `yj_home_img` (
  `iid` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图id',
  `img` varchar(255) NOT NULL,
  `lid` int(11) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yj_home_img
-- ----------------------------
INSERT INTO `yj_home_img` VALUES ('1', 'http://106.13.120.8:3000/img/home/lunbo/lunbo1.jpg', '1');
INSERT INTO `yj_home_img` VALUES ('2', 'http://106.13.120.8:3000/img/home/lunbo/lunbo2.jpg', '2');
INSERT INTO `yj_home_img` VALUES ('3', 'http://106.13.120.8:3000/img/home/lunbo/lunbo3.jpg', '3');
INSERT INTO `yj_home_img` VALUES ('4', 'http://106.13.120.8:3000/img/home/lunbo/lunbo4.jpg', '4');
INSERT INTO `yj_home_img` VALUES ('5', 'http://106.13.120.8:3000/img/home/lunbo/lunbo5.jpg', '5');

-- ----------------------------
-- Table structure for yj_index_details_img
-- ----------------------------
DROP TABLE IF EXISTS `yj_index_details_img`;
CREATE TABLE `yj_index_details_img` (
  `pid` int(32) NOT NULL AUTO_INCREMENT COMMENT '商品照片',
  `lg` varchar(64) NOT NULL COMMENT '大照片',
  `md` varchar(64) NOT NULL COMMENT '中照片',
  `sm` varchar(64) NOT NULL COMMENT '小照片',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of yj_index_details_img
-- ----------------------------
INSERT INTO `yj_index_details_img` VALUES ('1', '', '', 'img/details/sm/1-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('2', 'img/details/lg/2.jpg', '', 'img/details/sm/2-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('3', 'img/details/lg/3.jpg', '', 'img/details/sm/3-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('4', 'img/details/lg/4.jpg', '', 'img/details/sm/4-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('5', 'img/details/lg/5.jpg', '', 'img/details/sm/5-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('6', 'img/details/lg/6.jpg', '', 'img/details/sm/6-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('7', 'img/details/lg/7.jpg', '', 'img/details/sm/7-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('8', 'img/details/lg/8.jpg', '', 'img/details/sm/8-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('9', 'img/details/lg/9.jpg', '', 'img/details/sm/9-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('10', 'img/details/lg/10.jpg', '', 'img/details/sm/10-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('11', 'img/details/lg/11.jpg', '', 'img/details/sm/11-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('12', 'img/details/lg/12.jpg', '', 'img/details/sm/12-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('13', 'img/details/lg/13.jpg', '', 'img/details/sm/13-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('14', 'img/details/lg/14.jpg', '', 'img/details/sm/14-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('15', 'img/details/lg/15.jpg', '', 'img/details/sm/15-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('16', 'img/details/lg/16.jpg', '', 'img/details/sm/16-1.jpg');
INSERT INTO `yj_index_details_img` VALUES ('17', 'img/details/lg/17.jpg', '', 'img/details/sm/17-1.jpg');

-- ----------------------------
-- Table structure for yj_laptop
-- ----------------------------
DROP TABLE IF EXISTS `yj_laptop`;
CREATE TABLE `yj_laptop` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `family_id` int(11) NOT NULL COMMENT '房间地区编号',
  `rid` int(11) NOT NULL COMMENT '商品id',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '标题',
  `subtitle` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '副标题',
  `price` decimal(10,0) NOT NULL COMMENT '价格',
  `spec` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '风格',
  `name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品名称',
  `address` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品地址',
  `details` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品详情介绍',
  `cred` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '商家信誉',
  `eva` int(11) NOT NULL COMMENT '顾客打分',
  `is_onsale` int(11) NOT NULL COMMENT '是否招租',
  `area` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '房屋大小',
  `bed` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '床数量',
  `md_img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `number` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '推荐人数',
  `chaxun` varchar(255) CHARACTER SET utf8 NOT NULL,
  `address_img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `a_like` int(255) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of yj_laptop
-- ----------------------------
INSERT INTO `yj_laptop` VALUES ('1', '1', '1', '崖州湾', '三亚大东海灰姑娘海景客栈仅接待中国大陆客人入住，配有可享迷人海景的阳台和带免费WiFi的客房。\r\n\r\n三亚大东海灰姑娘海景客栈距离南山寺39公里，距离鹿回头公园6公里，距离三亚凤凰国际机场17公里。\r\n\r\n三亚大东海灰姑娘海景客栈的每间精致装修的客房都配有色彩多样的寝具和平板电视。私人浴室提供拖鞋。\r\n\r\n根据我们网站上的真实住客点评，这里是三亚的人气地区之一。', '369', '经济型', '三亚三生有幸海景度假公寓', '三亚三亚吉阳区海花路瑞海豪庭小区', '家庭入住', '四星商家', '66', '1', '房屋面积：55平米\r\n房屋户型：1室0厅1卫1厨1阳台', '房客独享整套房间', 'http://106.13.120.8:3000/img/md/1.jpg', '双人床：1.5m宽 × 2m长 ×1张', '一室 经济 客栈', 'http://106.13.120.8:3000/img/md/address.png', '0');
INSERT INTO `yj_laptop` VALUES ('2', '1', '1', '海棠湾', '三亚大东海酒店位于三亚，距离南山寺48公里，提供空调客房，位于大东海海滩区，拥有健身中心和餐厅。每间客房均配有平板有线电视。\r\n\r\n客房配有水壶。三亚大东海酒店的客房拥有带淋浴和免费洗浴用品的私人浴室和免费WiFi；部分客房享有海景。客房还配有书桌。\r\n\r\n酒店每天早晨供应早餐。\r\n\r\n酒店有室外游泳池。\r\n\r\n前台可为客人提供观光建议。', '998', '豪华型', '三亚大东海酒店', '三亚大东海旅游度假区幸福路1号', '双人入住', '五星商家', '8', '0', '房屋面积：55平米\r\n1室0厅1卫1厨1阳台', '房客独享整套房间', 'http://106.13.120.8:3000/img/md/18.jpg', '双人床：1.5m宽 × 2m长 ×3张', '一室 精品 渔家乐', 'http://106.13.120.8:3000/img/md/address.png', '0');
INSERT INTO `yj_laptop` VALUES ('3', '1', '1', '蜈洲支岛', '好久不见青年旅舍位于海南地区的三亚，提供带免费WiFi的住宿。\r\n\r\n部分住宿单位设有露台和/或阳台。\r\n\r\n好久不见青年旅舍距离南山寺有32公里，距离鹿回头公园有5公里，距离最近的机场 - 三亚凤凰国际机场有10公里。', '98', '超经济型', '好久不见青年旅舍', ' 三亚金鸡岭街69号，宁海苑小区C栋1601', '单人入住', '五星商家', '8', '1', '房屋面积：55平米\r\n1室0厅1卫1厨1阳台', '房客独享整套房间', 'http://106.13.120.8:3000/img/md/19.jpg', '双人床：1.5m宽 × 2m长 ×2张', '一室 舒适  客栈', 'http://106.13.120.8:3000/img/md/address.png', '111111129');
INSERT INTO `yj_laptop` VALUES ('4', '1', '1', '大东海', '三亚蓝白小镇精品客栈位于三亚，设有一个全年开放的室外游泳池、免费WiFi以及可携带宠物入住的宿舍间和客房。\r\n\r\n三亚蓝白小镇精品客栈距离免税店有1.5公里，而距离南山寺则有35公里，距离三亚凤凰国际机场有15公里。\r\n\r\n每间客房均提供平板电视、水壶和浴室。为了让客人感到舒适，旅馆还提供拖鞋，免费洗浴用品和吹风机。\r\n\r\n客人可以在游泳池里嬉水，也可以沿着沙滩散步，还可以在旅馆安排攀岩、海滨露营和野外探险等各种户外活动。\r\n\r\n根据我们网站上的真实住客点评，这里是三亚的人气地区之一', '499', '农家味道', '小院里', '三亚大东海鹿岭路渔村4巷', '家庭入住', '五星商家', '8', '0', '房屋面积：138平米\r\n3室2厅2卫1厨1阳台', '房客独享整套房间', 'http://106.13.120.8:3000/img/md/20.jpg', '双人床：1.5m宽 × 2m长 ×1张', '三室 豪华 ', 'http://106.13.120.8:3000/img/md/address.png', '0');
INSERT INTO `yj_laptop` VALUES ('5', '1', '1', '七仙山', '三亚亚龙湾远方精品客栈 - 在田边位于亚龙湾国家旅游区，距离玫瑰谷有5分钟步行路程，享有田园风格的设计，提供迷人的花园、前往亚龙湾中心广场的免费班车服务以及免费无线网络连接，距离亚龙湾海滩有10分钟车程。\r\n\r\n三亚亚龙湾远方精品客栈 - 在田边距离亚龙湾森林公园有10分钟车程，距离亚龙湾火车站有25分钟车程。\r\n\r\n每间客房均铺有榻榻米地板，设有有线电视、办公桌、电热水壶以及带淋浴和免费洗浴用品的连接浴室。', '465', '舒适性', '精品客栈', '三亚亚龙湾旅游度假区博后路27号', '情侣间', '五星商家', '8', '0', '房屋面积：138平米\r\n3室2厅2卫1厨1阳台', '房客独享整套房间', 'http://106.13.120.8:3000/img/md/21.jpg', '双人床：1.5m宽 × 2m长 ×2张', '三室  豪华  别墅', 'http://106.13.120.8:3000/img/md/address.png', '13');
INSERT INTO `yj_laptop` VALUES ('6', '1', '1', '南天海泉', '三亚海曼别馆位于三亚，拥有花园和露台，距离三亚湾有3分钟步行路程，提供覆盖各处的免费WiFi。\r\n\r\n旅馆距离三亚凤凰国际机场以及天涯海角风景区有15分钟的车程，距离三亚火车站有20分钟的车程，距离三亚免税店有45分钟的车程。\r\n\r\n客房配有空调、平板电视和水壶。每间客房都设有私人浴室。为了客人的舒适，客房还提供拖鞋、免费洗浴用品和吹风机。\r\n\r\n三亚海曼别馆设有24小时前台，提供免费的行李寄存服务。客人可以享受日光浴。旅馆提供免费停车场。', '668', '轻奢型', '三亚海曼别馆', ' 三亚三亚湾路193号金牛别墅E栋', '多种套房', '五星商家', '8', '0', '整套出租/2室1厅/4张床/宜住6人', '房客独享整套房间', 'http://106.13.120.8:3000/img/md/22.jpg', '双人床：1.5m宽 × 2m长 ×3张', '二室 精品 公寓', 'http://106.13.120.8:3000/img/md/address.png', '0');
INSERT INTO `yj_laptop` VALUES ('7', '1', '1', ' 香水湾', '幸运民宿位于三亚的大东海海滩区，距离南山寺47公里，提供免费WiFi。\r\n\r\n民宿提供露台。\r\n\r\n这家民宿配有花园。客人可以在附近骑自行车。\r\n\r\n幸运民宿距离鹿回头公园5公里，距离天涯海角旅游区26公里，距离最近的机场——三亚凤凰国际机场19公里。\r\n\r\n根据我们网站上的真实住客点评，这里是三亚的人气地区之一。', '499', '舒适性', '幸运民居', '三亚瑞海豪庭b座三a房', '家庭套间', '五星商家', '8', '0', '整套出租/2室1厅/2张床/宜住4人', '房客独享整套房间', 'http://106.13.120.8:3000/img/md/36.jpg', '双人床：1.5m宽 × 2m长 ×2张', '二室 精品 公寓', 'http://106.13.120.8:3000/img/md/address.png', '0');
INSERT INTO `yj_laptop` VALUES ('8', '1', '1', '南天海泉', '三亚海纳捷精品客栈（亚龙湾店）位于三亚，距离国际玫瑰谷和热带天堂森林公园仅有几步之遥，提供舒适的客房以及覆盖整栋建筑所有区域的免费WiFi。\r\n\r\n酒店距离亚龙湾有6分钟车程，距离三亚市中心有30分钟车程，距离三亚火车站有35分钟车程，距离凤凰机场有50分钟车程。\r\n\r\n每间客房均配有阳台、空调、平板卫星电视和私人浴室。\r\n\r\n早餐区供应亚洲风味早餐。\r\n\r\n前台可提供当地的观光建议，帮客人计划一天的活动。', '599', '轻奢型', ' 三亚海纳捷精品客栈', '三亚三亚亚龙湾度假区博后北路58号', '情侣套间', '四星商家', '8', '0', '整套出租/3室1厅/3张床/宜住8人', '房客独享整套房间', 'http://106.13.120.8:3000/img/md/37.jpg', '双人床：1.5m宽 × 2m长 ×2张', '二室 精品 公寓', 'http://106.13.120.8:3000/img/md/address.png', '0');
INSERT INTO `yj_laptop` VALUES ('9', '1', '1', '七仙山', '三亚海棠湾欢乐汇旅家客栈位于三亚，距离鹿回头公园43公里，拥有花园和露台。这家客栈位于海棠湾区，地理位置优越，距离三亚免税店有19公里，提供免费WiFi，距离三亚大学30公里。\r\n\r\n所有客房均配有水壶，也均配有空调和平板电视，部分客房还享有海景。\r\n\r\n三亚海棠湾欢乐汇旅家客栈的客人可以在附近骑自行车和徒步旅行。\r\n\r\n前台可提供当地攻略。\r\n\r\n三亚海棠湾欢乐汇旅家客栈距离三亚松城度假村有33公里，距离三亚凤凰国际机场有48公里', '599', '轻奢型', '三亚海棠湾欢乐汇旅家客栈', '三亚后海渔村蜈支洲岛景区大门南侧路口向南50米即到', '沙滩海景房', '四星商家', '8', '0', '1室0厅1卫1厨1阳台', '房客独享整套房间', 'http://106.13.120.8:3000/img/md/38.jpg', '双人床：1.5m宽 × 2m长 ×1张', '一室 精品 公寓', 'http://106.13.120.8:3000/img/md/address.png', '0');
INSERT INTO `yj_laptop` VALUES ('10', '1', '1', '崖州湾', '间艺墅位于三亚，距离鹿回头公园21公里，距离天涯海角旅游区39公里，提供免费WiFi。\r\n\r\n民宿距离三亚大学18公里，距离三亚免税店19公里，距离三亚凤凰国际机场33公里。', '399', '舒适性', '客栈', ' 三亚吉阳区亚龙博后村玫瑰谷3队4号', '沙滩海景房', '四星商家', '8', '0', '3室2厅2卫1厨1阳台', '房客独享整套房间', 'http://106.13.120.8:3000/img/md/39.jpg', '', '三室 豪华 ', 'http://106.13.120.8:3000/img/md/address.png', '0');

-- ----------------------------
-- Table structure for yj_laptop_img
-- ----------------------------
DROP TABLE IF EXISTS `yj_laptop_img`;
CREATE TABLE `yj_laptop_img` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '详情页照片id',
  `rid` int(11) NOT NULL COMMENT '房屋所在地区',
  `lid` int(11) NOT NULL COMMENT '商品id',
  `sm_img` varchar(255) NOT NULL COMMENT '小照片',
  `md_img` varchar(255) NOT NULL COMMENT '中照片',
  `lg_img` varchar(255) NOT NULL COMMENT '大照片',
  `bottom_img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avater` varchar(255) CHARACTER SET utf8 NOT NULL,
  `map` varchar(255) CHARACTER SET utf8 NOT NULL,
  `prompt` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '温馨提示',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of yj_laptop_img
-- ----------------------------
INSERT INTO `yj_laptop_img` VALUES ('1', '1', '1', 'http://106.13.120.8:3000/img/sm/1-1.jpg', 
'http://106.13.120.8:3000/img/md/1.jpg', 
'http://106.13.120.8:3000/img/lg/1.jpg', 
'http://106.13.120.8:3000/img/sm/18.jpg', 
'http://106.13.120.8:3000/img/sm/2fa6b5b6e1cc7ba06d01448f5ea87c6b.jpg', 
'http://106.13.120.8:3000/img/lg/F_OM5RCCWE3]YDI[ZA$SSLB.png', 
'http://106.13.120.8:3000/img/lg/`(F3]52CUR63BUWKO_M_X}Y.png');
INSERT INTO `yj_laptop_img` VALUES ('2', '1', '1', 'http://106.13.120.8:3000/img/sm/2-1.jpg', 
'http://106.13.120.8:3000/img/md/2.jpg', 
'http://106.13.120.8:3000/img/lg/2.jpg', 
'http://106.13.120.8:3000/img/sm/23.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('3', '1', '1', 'http://106.13.120.8:3000/img/sm/3-1.jpg',
 'http://106.13.120.8:3000/img/md/3.jpg', 
 'http://106.13.120.8:3000/img/lg/3.jpg', 
 'http://106.13.120.8:3000/img/sm/47176350.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('4', '1', '1', 'http://106.13.120.8:3000/img/sm/4-1.jpg', 
'http://106.13.120.8:3000/img/md/4.jpg',
'http://106.13.120.8:3000/img/lg/4.jpg', 
'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('5', '1', '1', 'http://106.13.120.8:3000/img/sm/5-1.jpg', 
'http://106.13.120.8:3000/img/md/5.jpg', 
'http://106.13.120.8:3000/img/lg/5.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('6', '1', '1', 
'http://106.13.120.8:3000/img/sm/6-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/6.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('7', '1', '1', 
'http://106.13.120.8:3000/img/sm/7-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/7.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('8', '1', '1', 
'http://106.13.120.8:3000/img/sm/8-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/8.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('9', '1', '1', 
'http://106.13.120.8:3000/img/sm/73-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/9.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('10', '1', '1', 
'http://106.13.120.8:3000/img/sm/10-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/10.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('11', '1', '1', 
'http://106.13.120.8:3000/img/sm/11-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/11.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('12', '1', '1', 
'http://106.13.120.8:3000/img/sm/12-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/12.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('13', '1', '1', 
'http://106.13.120.8:3000/img/sm/13-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/13.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('14', '1', '1', 
'http://106.13.120.8:3000/img/sm/14-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/14.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('15', '1', '1', 
'http://106.13.120.8:3000/img/sm/15-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/15.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('16', '1', '1', 
'http://106.13.120.8:3000/img/sm/16-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/16.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('17', '1', '1', 
'http://106.13.120.8:3000/img/sm/17-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/17.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('18', '1', '2', 
'http://106.13.120.8:3000/img/sm/18-1.jpg', 
'http://106.13.120.8:3000/img/md/18.jpg', 
'http://106.13.120.8:3000/img/lg/18.jpg', 
'http://106.13.120.8:3000/img/sm/25.jpg', 
'http://106.13.120.8:3000/img/sm/a0a32dc25f3368a66e74db86b071119c.png', 
'http://106.13.120.8:3000/img/lg/F_OM5RCCWE3]YDI[ZA$SSLB.png', 
'http://106.13.120.8:3000/img/lg/`(F3]52CUR63BUWKO_M_X}Y.png');
INSERT INTO `yj_laptop_img` VALUES ('19', '1', '2', 
'http://106.13.120.8:3000/img/sm/19-1.jpg', 
'http://106.13.120.8:3000/img/md/19.jpg', 
'http://106.13.120.8:3000/img/lg/19.jpg', 
'http://106.13.120.8:3000/img/sm/75876022.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('20', '1', '2', 
'http://106.13.120.8:3000/img/sm/20-1.jpg', 
'http://106.13.120.8:3000/img/md/20.jpg', 
'http://106.13.120.8:3000/img/lg/20.jpg', 
'http://106.13.120.8:3000/img/sm/23.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('21', '1', '2', 
'http://106.13.120.8:3000/img/sm/21-1.jpg', 
'http://106.13.120.8:3000/img/md/21.jpg', 
'http://106.13.120.8:3000/img/lg/21.jpg', 
'http://106.13.120.8:3000/img/sm/47176350.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('22', '1', '2', 
'http://106.13.120.8:3000/img/sm/22-1.jpg', 
'http://106.13.120.8:3000/img/md/22.jpg', 
'http://106.13.120.8:3000/img/lg/22.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('23', '1', '2', 
'http://106.13.120.8:3000/img/sm/23-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/23.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('24', '1', '2', 
'http://106.13.120.8:3000/img/sm/24-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/24.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('26', '1', '2', 
'http://106.13.120.8:3000/img/sm/25-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/25.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('27', '1', '2', 
'http://106.13.120.8:3000/img/sm/26-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/26.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('28', '1', '2', 
'http://106.13.120.8:3000/img/sm/27-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/27.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('29', '1', '2', 
'http://106.13.120.8:3000/img/sm/28-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/28.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('30', '1', '2', 
'http://106.13.120.8:3000/img/sm/29-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/29.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('31', '1', '2', 
'http://106.13.120.8:3000/img/sm/30-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/30.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('32', '1', '2', 
'http://106.13.120.8:3000/img/sm/31-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/31.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('34', '1', '2', 
'http://106.13.120.8:3000/img/sm/32-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/32.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('35', '1', '2', 
'http://106.13.120.8:3000/img/sm/33-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/33.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('36', '1', '3', 
'http://106.13.120.8:3000/img/sm/34-1.jpg', 
'http://106.13.120.8:3000/img/md/22.jpg', 
'http://106.13.120.8:3000/img/lg/34.jpg', 
'http://106.13.120.8:3000/img/sm/47176350.jpg', 
'http://106.13.120.8:3000/img/sm/d7d790853d8bf73617deb14474c31b8f.jpeg', 
'http://106.13.120.8:3000/img/lg/F_OM5RCCWE3]YDI[ZA$SSLB.png', 
'http://106.13.120.8:3000/img/lg/`(F3]52CUR63BUWKO_M_X}Y.png');
INSERT INTO `yj_laptop_img` VALUES ('37', '1', '3', 
'http://106.13.120.8:3000/img/sm/35-1.jpg', 
'http://106.13.120.8:3000/img/md/36.jpg', 
'http://106.13.120.8:3000/img/lg/35.jpg', 
'http://106.13.120.8:3000/img/sm/75876022.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('38', '1', '3', 
'http://106.13.120.8:3000/img/sm/36-1.jpg', 
'http://106.13.120.8:3000/img/md/37.jpg', 
'http://106.13.120.8:3000/img/lg/36.jpg', 
'http://106.13.120.8:3000/img/sm/23.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('43', '1', '3', 
'http://106.13.120.8:3000/img/sm/37-1.jpg', 
'http://106.13.120.8:3000/img/md/38.jpg', 
'http://106.13.120.8:3000/img/lg/37.jpg', 
'http://106.13.120.8:3000/img/sm/51666899.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('44', '1', '3', 'http://106.13.120.8:3000/img/sm/38-1.jpg', 'http://106.13.120.8:3000/img/md/39.jpg', 'http://106.13.120.8:3000/img/lg/38.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('45', '1', '3', 
'http://106.13.120.8:3000/img/sm/39-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/39.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('46', '1', '3', 
'http://106.13.120.8:3000/img/sm/40-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/40.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('48', '1', '3', 
'http://106.13.120.8:3000/img/sm/41-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/41.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('51', '1', '3', 
'http://106.13.120.8:3000/img/sm/42-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/42.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('53', '1', '3', 
'http://106.13.120.8:3000/img/sm/43-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/43.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('54', '1', '3', 
'http://106.13.120.8:3000/img/sm/44-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/44.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('55', '1', '3', 
'http://106.13.120.8:3000/img/sm/45-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/45.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('59', '1', '3', 
'http://106.13.120.8:3000/img/sm/46-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/46.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('62', '1', '3', 'http://106.13.120.8:3000/img/sm/47-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/47.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('63', '1', '3', 'http://106.13.120.8:3000/img/sm/48-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/48.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('64', '1', '3', 'http://106.13.120.8:3000/img/sm/49-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/49.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('65', '1', '3', 'http://106.13.120.8:3000/img/sm/50-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/50.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('66', '1', '4', 
'http://106.13.120.8:3000/img/sm/51-1.jpg', 
'http://106.13.120.8:3000/img/md/51.jpg', 
'http://106.13.120.8:3000/img/lg/51.jpg', 
'http://106.13.120.8:3000/img/sm/51666899.jpg', 
'http://106.13.120.8:3000/img/sm/e89d85a9f8c89bb039980f1f6b747933.jpeg', 
'http://106.13.120.8:3000/img/lg/F_OM5RCCWE3]YDI[ZA$SSLB.png', 
'http://106.13.120.8:3000/img/lg/`(F3]52CUR63BUWKO_M_X}Y.png');
INSERT INTO `yj_laptop_img` VALUES ('67', '1', '4', 
'http://106.13.120.8:3000/img/sm/52-1.jpg', 
'http://106.13.120.8:3000/img/md/52.jpg', 
'http://106.13.120.8:3000/img/lg/52.jpg', 
'http://106.13.120.8:3000/img/sm/75876022.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('69', '1', '4', 
'http://106.13.120.8:3000/img/sm/53-1.jpg', 
'http://106.13.120.8:3000/img/md/53.jpg', 
'http://106.13.120.8:3000/img/lg/53.jpg', 
'http://106.13.120.8:3000/img/sm/23.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('70', '1', '4', 
'http://106.13.120.8:3000/img/sm/54-1.jpg', 
'http://106.13.120.8:3000/img/md/54.jpg', 
'http://106.13.120.8:3000/img/lg/54.jpg', 
'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('71', '1', '4', 
'http://106.13.120.8:3000/img/sm/55-1.jpg', 
'http://106.13.120.8:3000/img/md/55.jpg', 
'http://106.13.120.8:3000/img/lg/55.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('72', '1', '4', '
http://106.13.120.8:3000/img/sm/56-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/56.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('73', '1', '4', 
'http://106.13.120.8:3000/img/sm/57-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/57.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('74', '1', '4', 
'http://106.13.120.8:3000/img/sm/58-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/58.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('75', '1', '4', 
'http://106.13.120.8:3000/img/sm/59-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/59.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('76', '1', '4', 
'http://106.13.120.8:3000/img/sm/60-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/60.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('77', '1', '4', 
'http://106.13.120.8:3000/img/sm/61-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/61.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('78', '1', '4', 
'http://106.13.120.8:3000/img/sm/62-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/62.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('79', '1', '4', 
'http://106.13.120.8:3000/img/sm/63-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/63.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('80', '1', '4', 
'http://106.13.120.8:3000/img/sm/64-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('81', '1', '4', 
'http://106.13.120.8:3000/img/sm/65-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/65.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('82', '1', '4', 
'http://106.13.120.8:3000/img/sm/66-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/66.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('83', '1', '4', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/67.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('84', '1', '5', 
'http://106.13.120.8:3000/img/sm/68-1.jpg', 
'http://106.13.120.8:3000/img/md/69.jpg', 
'http://106.13.120.8:3000/img/lg/68.jpg', 
'http://106.13.120.8:3000/img/sm/25.jpg', 
'http://106.13.120.8:3000/img/sm/timg(2).jpg', 
'http://106.13.120.8:3000/img/lg/F_OM5RCCWE3]YDI[ZA$SSLB.png', 
'http://106.13.120.8:3000/img/lg/`(F3]52CUR63BUWKO_M_X}Y.png');
INSERT INTO `yj_laptop_img` VALUES ('85', '1', '5', 
'http://106.13.120.8:3000/img/sm/69-1.jpg', 
'http://106.13.120.8:3000/img/md/70.jpg', 
'http://106.13.120.8:3000/img/lg/69.jpg', 
'http://106.13.120.8:3000/img/sm/1-1.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('86', '1', '5', 
'http://106.13.120.8:3000/img/sm/70-1.jpg', 
'http://106.13.120.8:3000/img/md/71.jpg', 
'http://106.13.120.8:3000/img/lg/70.jpg', 
'http://106.13.120.8:3000/img/sm/75876022.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('87', '1', '5', 
'http://106.13.120.8:3000/img/sm/73-1.jpg', 
'http://106.13.120.8:3000/img/md/72.jpg', 
'http://106.13.120.8:3000/img/lg/73.jpg', 
'http://106.13.120.8:3000/img/sm/18.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('88', '1', '5', 
'http://106.13.120.8:3000/img/sm/55-1.jpg', 
'http://106.13.120.8:3000/img/md/68.jpg', 
'http://106.13.120.8:3000/img/lg/55.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('89', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('90', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('91', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('92', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('93', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('94', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('95', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('96', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('97', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '',
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('98', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('99', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('100', '1', '5', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('101', '1', '6', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', 
'http://106.13.120.8:3000/img/md/41.jpg', 
'http://106.13.120.8:3000/img/lg/64.jpg', 
'http://106.13.120.8:3000/img/sm/25.jpg', 
'http://106.13.120.8:3000/img/sm/timg(2).jpg', 
'http://106.13.120.8:3000/img/lg/F_OM5RCCWE3]YDI[ZA$SSLB.png', 
'http://106.13.120.8:3000/img/lg/`(F3]52CUR63BUWKO_M_X}Y.png');
INSERT INTO `yj_laptop_img` VALUES ('102', '1', '6', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', 
'http://106.13.120.8:3000/img/md/42.jpg', 
'http://106.13.120.8:3000/img/lg/64.jpg',
'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('103', '1', '6', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', 
'http://106.13.120.8:3000/img/md/43.jpg', 
'http://106.13.120.8:3000/img/lg/64.jpg', 
'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('104', '1', '6', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', 
'http://106.13.120.8:3000/img/md/44.jpg', 
'http://106.13.120.8:3000/img/lg/64.jpg', 
'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('105', '1', '6', 
'http://106.13.120.8:3000/img/sm/67-1.jpg', 
'http://106.13.120.8:3000/img/md/45.jpg', 
'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('106', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('107', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('108', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('109', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('110', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('111', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('112', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('113', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('114', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('115', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('116', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('117', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('118', '1', '6', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('119', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/46.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', 'http://106.13.120.8:3000/img/sm/timg(2).jpg', 'http://106.13.120.8:3000/img/lg/F_OM5RCCWE3]YDI[ZA$SSLB.png', 'http://106.13.120.8:3000/img/lg/`(F3]52CUR63BUWKO_M_X}Y.png');
INSERT INTO `yj_laptop_img` VALUES ('120', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/47.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('121', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/48.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('122', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/49.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('123', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/50.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('124', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('125', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('126', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('127', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('128', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('129', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('130', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('131', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('132', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('133', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('134', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('135', '1', '7', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('136', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/57.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', 'http://106.13.120.8:3000/img/sm/timg(2).jpg', 'http://106.13.120.8:3000/img/lg/F_OM5RCCWE3]YDI[ZA$SSLB.png', 'http://106.13.120.8:3000/img/lg/`(F3]52CUR63BUWKO_M_X}Y.png');
INSERT INTO `yj_laptop_img` VALUES ('137', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/58.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('138', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/59.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('139', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/60.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('140', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/61.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('141', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('142', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('143', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('144', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('145', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('146', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('147', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('148', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('149', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('150', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('151', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('152', '1', '8', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('153', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/23.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', 'http://106.13.120.8:3000/img/sm/timg(2).jpg', 'http://106.13.120.8:3000/img/lg/F_OM5RCCWE3]YDI[ZA$SSLB.png', 'http://106.13.120.8:3000/img/lg/`(F3]52CUR63BUWKO_M_X}Y.png');
INSERT INTO `yj_laptop_img` VALUES ('154', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/24.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('155', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/25.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('156', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/26.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('157', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/27.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('158', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('159', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('160', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('161', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('162', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('163', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('164', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('165', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('166', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('167', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('168', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('169', '1', '9', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('170', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/28.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', 'http://106.13.120.8:3000/img/sm/timg(2).jpg', 'http://106.13.120.8:3000/img/lg/F_OM5RCCWE3]YDI[ZA$SSLB.png', 'http://106.13.120.8:3000/img/lg/`(F3]52CUR63BUWKO_M_X}Y.png');
INSERT INTO `yj_laptop_img` VALUES ('171', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/29.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('172', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/30.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('173', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/31.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', 'http://106.13.120.8:3000/img/sm/25.jpg', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('174', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', 'http://106.13.120.8:3000/img/md/32.jpg', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('175', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('176', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('177', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('178', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('179', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('180', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('181', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('182', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('183', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('184', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('185', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('186', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('187', '1', '10', 'http://106.13.120.8:3000/img/sm/67-1.jpg', '', 'http://106.13.120.8:3000/img/lg/64.jpg', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('188', '0', '0', '', '', '', '', '', '', '');
INSERT INTO `yj_laptop_img` VALUES ('189', '0', '0', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for yj_laptop_num
-- ----------------------------
DROP TABLE IF EXISTS `yj_laptop_num`;
CREATE TABLE `yj_laptop_num` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `num` varchar(255) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yj_laptop_num
-- ----------------------------
INSERT INTO `yj_laptop_num` VALUES ('1', '1', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('2', '1', '0');
INSERT INTO `yj_laptop_num` VALUES ('3', '1', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('4', '1', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('5', '1', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('6', '1', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('7', '1', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('8', '2', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('9', '2', '0');
INSERT INTO `yj_laptop_num` VALUES ('10', '2', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('11', '2', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('12', '2', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('13', '2', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('14', '2', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('15', '3', '1');
INSERT INTO `yj_laptop_num` VALUES ('16', '3', '1');
INSERT INTO `yj_laptop_num` VALUES ('17', '3', '1');
INSERT INTO `yj_laptop_num` VALUES ('18', '3', '1');
INSERT INTO `yj_laptop_num` VALUES ('19', '3', '1');
INSERT INTO `yj_laptop_num` VALUES ('20', '3', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('21', '3', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('22', '4', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('23', '4', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('24', '4', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('25', '4', '0');
INSERT INTO `yj_laptop_num` VALUES ('26', '4', '0');
INSERT INTO `yj_laptop_num` VALUES ('27', '4', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('28', '4', '已出租');
INSERT INTO `yj_laptop_num` VALUES ('29', '5', '0');
INSERT INTO `yj_laptop_num` VALUES ('30', '5', '1');
INSERT INTO `yj_laptop_num` VALUES ('31', '5', '1');
INSERT INTO `yj_laptop_num` VALUES ('32', '5', '0');
INSERT INTO `yj_laptop_num` VALUES ('33', '5', '0');
INSERT INTO `yj_laptop_num` VALUES ('34', '5', '1');
INSERT INTO `yj_laptop_num` VALUES ('35', '5', '1');

-- ----------------------------
-- Table structure for yj_login
-- ----------------------------
DROP TABLE IF EXISTS `yj_login`;
CREATE TABLE `yj_login` (
  `iid` int(11) NOT NULL,
  `bg` varchar(255) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yj_login
-- ----------------------------
INSERT INTO `yj_login` VALUES ('0', 'http://106.13.120.8:3000/img/loginbg/body04.jpg');

-- ----------------------------
-- Table structure for yj_user
-- ----------------------------
DROP TABLE IF EXISTS `yj_user`;
CREATE TABLE `yj_user` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `uname` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '用户名称',
  `upwd` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `email` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '用户邮箱',
  `phone` varchar(16) CHARACTER SET latin2 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of yj_user
-- ----------------------------
INSERT INTO `yj_user` VALUES ('2', '然然', '123456', '12345678@qq.com', '15596702627');
INSERT INTO `yj_user` VALUES ('3', '15596702627', '123456789', '12345678@qq.com', '2661612315');
INSERT INTO `yj_user` VALUES ('20', '13992072403', '123456789', '123456789', '');
INSERT INTO `yj_user` VALUES ('21', '15596702628', '123456789', '25355245@qq.com', '');
INSERT INTO `yj_user` VALUES ('22', '15586262627', '123456789', '2156461@qq.com', '');
INSERT INTO `yj_user` VALUES ('23', '15596722627', '123456789', '2626@qq.com', '');
INSERT INTO `yj_user` VALUES ('24', '15596722627', '123456789', '2626@qq.com', '');
INSERT INTO `yj_user` VALUES ('25', '15596802627', '147258369', '369@qq.com', '');
INSERT INTO `yj_user` VALUES ('26', '15569720132', '123475869', '123456789@qq.com', '');
INSERT INTO `yj_user` VALUES ('27', '15596702621', '123456789', '32471556@qq.com', '');
INSERT INTO `yj_user` VALUES ('28', '14725836910', '147258369', '12347@qq.com', '');
INSERT INTO `yj_user` VALUES ('29', '13369741322', '123456789', '147258@.com', '');
INSERT INTO `yj_user` VALUES ('30', '13369741322', '123456789', '147258@.com', '');
INSERT INTO `yj_user` VALUES ('31', '13369741322', '123456789', '147258@.com', '');
INSERT INTO `yj_user` VALUES ('32', '13369741322', '123456789', '147258@.com', '');
INSERT INTO `yj_user` VALUES ('33', '13369741322', '123456789', '147258@.com', '');
INSERT INTO `yj_user` VALUES ('34', '13369741322', '123456789', '147258@.com', '');
INSERT INTO `yj_user` VALUES ('35', '15596702625', '125874963', '336@qq.com', '');
INSERT INTO `yj_user` VALUES ('36', '15596702625', '125874963', '336@qq.com', '');
INSERT INTO `yj_user` VALUES ('37', '15596702625', '125874963', '336@qq.com', '');
INSERT INTO `yj_user` VALUES ('38', '15596702625', '125874963', '336@qq.com', '');
INSERT INTO `yj_user` VALUES ('39', '15596702625', '125874963', '336@qq.com', '');
INSERT INTO `yj_user` VALUES ('40', '15596702625', '125874963', '336@qq.com', '');
INSERT INTO `yj_user` VALUES ('41', '15596702658', '147258369', 'nklnk@qq.com', '');
INSERT INTO `yj_user` VALUES ('42', '15596702658', '147258369', 'nklnk@qq.com', '');
INSERT INTO `yj_user` VALUES ('43', '15151515151', '1231456879', '21651@qq.com', '');
INSERT INTO `yj_user` VALUES ('44', '15151515151', '1231456879', '21651@qq.com', '');
INSERT INTO `yj_user` VALUES ('45', '15597602232', '147258369', '12345364@qq.com', '');
INSERT INTO `yj_user` VALUES ('46', '13992072405', '123456789', '12369744@qq.com', '');
