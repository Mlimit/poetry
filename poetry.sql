/*
 Navicat MySQL Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 39.97.127.37:3306
 Source Schema         : poetry

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 13/10/2020 19:16:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id即作者id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `cid` int(11) NULL DEFAULT NULL COMMENT '文章种类id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `favor_number` int(11) NULL DEFAULT 0 COMMENT '文章点赞数',
  `comment_number` int(11) NULL DEFAULT 0 COMMENT '文章评论数',
  `collect_number` int(11) NULL DEFAULT 0 COMMENT '文章收藏数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 1, '茅盾故居攻略', 1, '茅盾故居，位于后圆恩寺胡同13号院，现已成为博物馆，免费参观。游人寥寥无几，除了文学历史价值以外，这座四四方方的标准四合院仅从建筑上就值得一看。院内影壁上书“茅盾故居”四个金色大字是邓颖超同志生前所题。但见院子中央矗立着茅盾先生的汉白玉塑像。院中央的一方葡萄架或是葫芦藤依旧茁壮，遥想当年，若是在这清爽的秋色中，先生料来也常在架下徘徊吧。故居前院有北房、东西厢房各三间，倒座房六间。西厢房原是先生的会客室和藏书室。东厢房为饭厅，其余为家属和服务人员住房。后院有北房六间和西厢房两间，北房原是先生的工作室兼卧室，现改为陈列室，展示实物、手稿、信件等老物。后院西墙根有台即为破旧的冰箱，是夫人当年从旧货市场买来的，使用多年，如今依旧在院中值守，透过层层锈迹，依稀可以看到“GENERAL', '2020-09-06 14:45:16', 356, 422, 324);
INSERT INTO `article` VALUES (2, 2, '乌镇攻略', 1, '走过大小古镇二十余个，唯有乌镇是我最心仪，认为最美的地方，没有那么浓重的商业气息，是一古镇景观为主，人文为辅的好地方，在这里可以静静的发呆，拍照，眼睛都来不及美不胜收，景区很大，光西栅都可以兜兜转转拍美照一天，摄影爱好者的福音', '2020-10-13 11:22:12', 658, 353, 783);
INSERT INTO `article` VALUES (3, 3, '西塘的蓬廊', 2, '西塘的蓬廊令人称奇，长达几百米的蓬廊，既遮风挡雨，又减日晒。棚廊可以成为一个社会交往的公共场所，大爷大妈，小伙子，大姑娘，小娃娃都可以在廊子一边闲聊玩耍，每当晴天傍晚，斜阳夕照，走廊里会摆上靠椅茶桌，温润的阳光，斜刺里洒下来，给地上留下一道道光影，令人舒心的时刻', '2020-10-13 11:22:16', 872, 794, 432);
INSERT INTO `article` VALUES (4, 4, '红色嘉兴、红色南湖', 3, '红色嘉兴、红色南湖。想当年，中共一大，从上海转移到这里。这是，党的摇篮。', '2020-10-13 11:22:17', 367, 543, 346);
INSERT INTO `article` VALUES (5, 5, '南北湖攻略', 2, '去之前是做好了心理准备，因为刚开不久，点评也不多，担心会很无聊，而且门票也并不便宜。去了之后才发现圆子还是很大的，从售票门口走到景区有些路的。景区里面绿化很好，留下来的一些老的东西和仿古建筑结合，还蛮和谐的。而且就算五一人也不多，就和杭州平时公园差不多人。具体人文设计就不介绍了，大家可以直接上官网看，前面也有很多朋友说了。吃饭：能坐下来吃的地方不是很多，大多数都是些小吃。我们5个人就去了凤桥小炒，湖边可以坐，都是套餐。点了160', '2020-10-13 11:22:19', 954, 452, 347);
INSERT INTO `article` VALUES (6, 6, '乌镇终极攻略', 1, '3年前去的乌镇，拍下了一张至今都喜欢的照片。河边用餐的游人，在橙黄色的灯光及络绎不绝的游船来往的衬托下，是那么的悠然自得，这不就是忙碌的都市人所向往的生活吗？', '2020-10-13 11:22:22', 452, 342, 234);
INSERT INTO `article` VALUES (7, 7, '嘉兴湘家荡', 2, '嘉兴湘家荡。这个是新开发出来的一片，周末游玩、烧烤、钓鱼的好去处。。。。还有人造的沙滩，门票可以团购25元，吃喝都有，最主要是可以自己去烧烤，带上小朋友去，一家人度周末是非常好的选择。', '2020-10-13 11:22:24', 346, 652, 854);
INSERT INTO `article` VALUES (8, 8, '观潮阁攻略', 5, '环境很好，看潮时人多，不看潮时逛逛园子散散步也是个好地方', '2020-10-13 11:22:25', 684, 346, 342);
INSERT INTO `article` VALUES (9, 9, '梅花洲攻略', 7, '每月农历初一至初五，十五到二十，均为大潮日，其中又以八月十八的潮水最大。和老妈突发奇想想去看潮，想着八月十八那会儿人肯定很多，于是赶着八月初四初五跑去看潮。如果特意去看潮建议事先做好攻略，比如当天潮水在几点啊等等。总共可以看三个潮，交叉潮、一线潮、回头潮。靠近景点附近会有三轮车说可以带你看三个潮，感觉应该也不错。我们就去看了个一线潮，没有想象中这么壮观，等了一个多小时，结果五分多钟一个潮就过去了，结束时人群中还有人说“什么？没有啦？这就好啦？”。看来失望的不止我一个，哈哈哈。但是远远看着一条浪线慢慢推进，心里面也颇为感慨，很神奇的画面。看完潮趁着时间还早，我们便去盐官古镇逛了逛。城门看起来还不错，进去后就感觉很萧条。很多景点都在施工，到处冷冷清清的，附近个宰相风情街也在施工，没啥看头。', '2020-10-13 11:22:27', 752, 652, 437);
INSERT INTO `article` VALUES (10, 10, '白云阁攻略', 6, '白云阁里就在涌月台的旁边。是一座二层的楼阁，里面的陈设没有什么特别之处，不过站在白云阁上远观黄鹤楼，却是最佳所在。黄昏时分，白云阁前面林木掩映，黄鹤楼正对着渐渐西沉的落日，有些落寞沧桑，“夕阳无限好，只是近黄昏”，但黄昏依然有黄昏的气韵，成熟，沉稳，处变不乱，宠辱不惊，有些像黄鹤楼的写照，屡建屡毁，屡毁屡建，依然生机勃勃。', '2020-10-13 11:22:28', 533, 425, 542);
INSERT INTO `article` VALUES (11, 11, '白鹭洲攻略', 8, '北湖蝴蝶岛，竹篱木屋，野趣天成。登上蝴蝶岛山海阁，白鹭洲尽收眼底。', '2020-10-13 11:22:31', 234, 743, 547);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '初秋乌镇三日游');
INSERT INTO `category` VALUES (2, '嘉兴风景胜地');
INSERT INTO `category` VALUES (3, '嘉兴地域文化');
INSERT INTO `category` VALUES (4, '咱们一起去旅行');
INSERT INTO `category` VALUES (5, '吃喝地图');
INSERT INTO `category` VALUES (6, '嘉兴购物狂');
INSERT INTO `category` VALUES (7, '嘉兴咖啡圈');
INSERT INTO `category` VALUES (8, '静谧的江南水乡');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `aid` int(11) NULL DEFAULT NULL COMMENT '文章id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评论内容',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, 1, '梦里几度去江南，梦醒身外即水乡。西塘的早晨，宁静丶安祥，男人们开始一天的生意，女人们洗衣做饭。小桥流水自然地融入这幅生活画卷之中。当夜幕降临，西塘一片灯光辉煌，她被打扮得像一个待嫁新娘，被人流簇拥着，尽情展示着她的美丽与娇媚', '2020-09-06 14:47:34');
INSERT INTO `comment` VALUES (2, 2, 2, '一直很向往江南水乡，终于来到了梦里的西塘，的确很美，路过烟雨长廊上的一家名叫半朵悠莲的店，环境优雅小资，逛累了，在这坐坐，看看书，喝喝咖啡', '2020-09-06 14:50:10');
INSERT INTO `comment` VALUES (3, 3, 3, '江南的古镇，各有特色。西塘号称活着的千年古镇，景区内最奇特的当属烟雨长廊，沿着河边近1000米，可以遮阳', '2020-10-13 10:52:28');
INSERT INTO `comment` VALUES (4, 4, 3, '就西园和倪宅可看度高', '2020-10-13 10:52:31');
INSERT INTO `comment` VALUES (5, 5, 4, '诗意的江南，梦中的水乡，乌镇位于嘉兴桐乡，从周边城市上海', '2020-10-13 10:52:34');
INSERT INTO `comment` VALUES (6, 6, 3, '江南六大古镇之一，名不虚传。落日余晖。没呆很久，第一次去的时候也没弄得状况。客栈订的是景区外的，让客栈的叔叔帮忙买的票。', '2020-10-13 10:52:36');
INSERT INTO `comment` VALUES (7, 7, 5, '迎满城风雨，附西塘之约；喜欢小桥流水的西塘，去过不下五次，一个江南一场梦。。。。偶尔还是会幻想那个不切实际的环游梦想，旁人只说我过得太潇洒，我总是对自己说“生活的态度是可以自己选择的，为实现它而努力。', '2020-10-13 10:52:39');
INSERT INTO `comment` VALUES (8, 8, 2, '不得不说西塘很符合我心中的江南水乡，小桥流水人家的意境在西塘得到了充分的体现。去的时候是暑假，因为天气的原因，当天的人不是特别多', '2020-10-13 10:52:41');
INSERT INTO `comment` VALUES (9, 9, 7, '首先交通确实不便利，不过也没有多堵。另外西塘的入口并不是单一的。有很多小的入口也设有人员检票的。里面小吃、玩乐犹如古代的街道一样。有的很窄。西塘的酒吧街不错，来西塘的人都可以去看看。坐船不贵，而且游玩的时间不短。上次去因为没人，三人坐船就出发了。环游了小半圈，景色宜人。', '2020-10-13 10:52:42');
INSERT INTO `comment` VALUES (10, 10, 8, '我最喜欢的江南水乡古镇。这里的景色，非常的江南。这里还保存着古镇原有的韵味。虽然商业气氛也已日浓，但是这里还是坚守着自己的文化和氛围。这里的廊棚，沿河的灯笼都很有水乡的味道。', '2020-10-13 10:52:44');
INSERT INTO `comment` VALUES (11, 11, 10, '乌镇的美如梦似幻，白日中笼罩薄雾，划一叶扁舟在古镇的河道上，穿过一座座石拱桥，看路边一间间木楼。夜晚漫步在湿漉的石板街，错身而过的是白墙青瓦，灯火阑珊处谁在痴痴等待归人。乌镇的美分不清到底什么是真什么是幻。', '2020-10-13 10:52:47');
INSERT INTO `comment` VALUES (12, 12, 1, '乌镇是一座有着一千三百多年的古镇，也是江南水乡六大古镇之一。分为东栅、西栅、南栅和北栅。东栅西栅是景区，南栅北栅是居民所在地。', '2020-10-13 10:52:49');

-- ----------------------------
-- Table structure for favor
-- ----------------------------
DROP TABLE IF EXISTS `favor`;
CREATE TABLE `favor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `aid` int(11) NULL DEFAULT NULL COMMENT '文章id',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `status` bit(1) NULL DEFAULT NULL COMMENT '点赞状态；1:点赞；0:取消点赞',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '点赞or取消点赞时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of favor
-- ----------------------------
INSERT INTO `favor` VALUES (1, 1, 1, b'1', '2020-09-06 14:49:47');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `pname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `status` bit(1) NULL DEFAULT NULL COMMENT '商品状态1:上架；0:下架',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '上架时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '2020-10-13/434AD1B0C13B44F5A1AA9AAFDCB20DEE.jpg', '五芳斋真空包装粽子280克真空栗子板栗鲜肉粽5包', 29.90, b'1', '2020-10-05 17:40:47');
INSERT INTO `goods` VALUES (2, '2020-10-13/AFEF054FB7D64755BA10DE9743AD9B06.jpg', '五芳斋新鲜粽新鲜红烧排骨粽子160克嘉兴特产粽子', 19.90, b'1', '2020-10-10 05:41:40');
INSERT INTO `goods` VALUES (3, '2020-10-13/D7FF214656A94CFAB914E31B045D236B.jpg', '三珍斋200克东坡肉浙江嘉兴特产美味红狒肉猪肉类食品', 24.90, b'1', '2020-10-12 20:44:39');
INSERT INTO `goods` VALUES (4, '2020-10-13/7192C76F9A6643DBB4D1CB3A9F94F06E.jpg', '五芳斋粽子蛋黄鲜肉粽豆沙粽10只装新鲜散装大肉粽端午嘉兴', 19.90, b'1', '2020-10-12 20:44:44');
INSERT INTO `goods` VALUES (5, '2020-10-13/84A1F69358B04BFB8477108B9DBC9D49.jpg', '真真老老嘉兴粽子老字号500g豆沙粽×2袋嘉兴特产小吃', 9.90, b'1', '2020-10-12 20:44:46');
INSERT INTO `goods` VALUES (6, '2020-10-13/DFC91458691E4C5BB41A12019E8126E0.jpg', '五芳斋 速冻粽子 猪肉口味 500g 5只装 嘉兴特产 精选糯米 早餐食材', 29.90, b'1', '2020-10-12 20:44:48');
INSERT INTO `goods` VALUES (7, '2020-10-13/5F929A8C190341F984F38BF0E8F28B44.jpg', '五芳斋中华老字号 嘉兴特产粽子袋装100克*10只 端午节团购量贩装早餐蛋黄棕', 49.90, b'1', '2020-10-12 20:44:50');
INSERT INTO `goods` VALUES (8, '2020-10-13/3BD73CC944EA4DD9869A7B7B5F01375D.jpg', '五芳斋 速冻粽子 糯玉米什锦粽100克*5 中华老字号 嘉兴特产 早餐食品', 25.90, b'1', '2020-10-12 20:44:52');
INSERT INTO `goods` VALUES (9, '2020-10-13/C0C9DE2909FA4A8689DEE5531C6FB664.jpg', '久知味 嘉兴粽子1350克135克*10只大肉粽端午礼品棕子', 59.80, b'1', '2020-10-12 20:44:54');
INSERT INTO `goods` VALUES (10, '2020-10-13/61DE739F91974D50B0085C4D0DE2129E.jpg', '五芳斋 中华老字号 真空蛋黄肉粽嘉兴特产端午节新鲜大粽子140g*10只棕子量贩装', 89.90, b'1', '2020-10-12 20:44:56');
INSERT INTO `goods` VALUES (11, '2020-10-13/FD381CBE6DAB4372B77BD582F18C7D77.jpg', '真真老老 粽子 浙江老字号 嘉兴特产粽子袋装 端午节早餐蛋黄棕豆沙蜜枣', 39.90, b'1', '2020-10-12 21:19:46');

-- ----------------------------
-- Table structure for loginfo
-- ----------------------------
DROP TABLE IF EXISTS `loginfo`;
CREATE TABLE `loginfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loginname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录名称',
  `loginip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  `logintime` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 333 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of loginfo
-- ----------------------------
INSERT INTO `loginfo` VALUES (331, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-13 04:39:25');
INSERT INTO `loginfo` VALUES (332, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-13 06:14:13');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告内容',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `opername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (10, '关于系统V1.2更新公告', '12312312<img src=\"/resources/layui/images/face/42.gif\" alt=\"[抓狂]\">', '2020-10-13 00:00:00', '超级管理员');
INSERT INTO `notice` VALUES (11, '关于系统V1.1更新公告', '21321321321<img src=\"/resources/layui/images/face/18.gif\" alt=\"[右哼哼]\">', '2020-10-13 03:00:00', '超级管理员');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,表名不能用order',
  `oid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'orderid 订单编号',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `postage` decimal(10, 2) NULL DEFAULT NULL COMMENT '配送费',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态;0：取消订单,1:等待买家付款,2:买家已付款,3:等待商家送货,4:商家已送达，5：确定收货，6：订单完成',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '1200622015823693', 1, 0.00, 29.90, 1, '2020-10-05 20:32:21');
INSERT INTO `orders` VALUES (2, '1200622763933700', 2, 0.00, 49.90, 3, '2020-10-05 21:25:16');
INSERT INTO `orders` VALUES (3, '1200622764703701', 3, 0.00, 25.90, 1, '2020-10-13 10:41:14');
INSERT INTO `orders` VALUES (4, '1200622767803702', 4, 0.00, 35.90, 2, '2020-10-13 10:41:16');
INSERT INTO `orders` VALUES (5, '1200622768673703', 5, 0.00, 19.90, 3, '2020-10-13 10:41:18');
INSERT INTO `orders` VALUES (6, '1200622847643704', 6, 0.00, 24.90, 1, '2020-10-13 10:41:20');
INSERT INTO `orders` VALUES (7, '1200622849283705', 7, 0.00, 85.90, 2, '2020-10-13 10:41:23');
INSERT INTO `orders` VALUES (8, '1200622850203706', 8, 0.00, 39.80, 1, '2020-10-13 10:41:25');
INSERT INTO `orders` VALUES (9, '1200622854003707', 9, 0.00, 34.80, 3, '2020-10-13 10:41:28');
INSERT INTO `orders` VALUES (10, '1200623041033709', 10, 0.00, 21.90, 3, '2020-10-13 10:41:30');
INSERT INTO `orders` VALUES (11, '1200623041033708', 11, 0.00, 89.90, 2, '2020-10-13 10:41:32');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限类型[menu/permission]',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `percode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限编码[只有type= permission才有  user:view]',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open` int(11) NULL DEFAULT NULL,
  `ordernum` int(11) NULL DEFAULT NULL,
  `available` int(11) NULL DEFAULT NULL COMMENT '状态【0不可用1可用】',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 0, 'menu', '诗画嘉兴后台管理系统', NULL, '&#xe68e;', 'toDeskManager', '', 1, 1, 1);
INSERT INTO `permission` VALUES (2, 1, 'menu', '用户管理', NULL, '&#xe66f;', '', '', 0, 2, 1);
INSERT INTO `permission` VALUES (3, 1, 'menu', '游记管理', NULL, '&#xe705;', '', '', 0, 3, 1);
INSERT INTO `permission` VALUES (4, 1, 'menu', '商城管理', NULL, '&#xe657;', '', '', 0, 5, 1);
INSERT INTO `permission` VALUES (5, 1, 'menu', '系统管理', NULL, '&#xe614;', '', '', 0, 4, 1);
INSERT INTO `permission` VALUES (6, 1, 'menu', '其它管理', NULL, '&#xe628;', '', '', 0, 6, 1);
INSERT INTO `permission` VALUES (7, 2, 'menu', '用户管理', NULL, '&#xe66f;', '/toUserManager', '', 0, 21, 1);
INSERT INTO `permission` VALUES (8, 3, 'menu', '景点管理', NULL, '&#xe62e;', '/toTripManager', '', 0, 31, 1);
INSERT INTO `permission` VALUES (10, 3, 'menu', '文章管理', NULL, '&#xe663;', '/toArticleManager', '', 0, 32, 1);
INSERT INTO `permission` VALUES (11, 3, 'menu', '分类管理', NULL, '&#xe656;', '/toCategoryManager', '', 0, 33, 1);
INSERT INTO `permission` VALUES (15, 5, 'menu', '菜单管理', NULL, '&#xe857;', '/toMenuManager', '', 0, 41, 1);
INSERT INTO `permission` VALUES (16, 5, 'menu', '权限管理', '', '&#xe857;', '/toPermissionManager', '', 0, 42, 1);
INSERT INTO `permission` VALUES (21, 6, 'menu', '登陆日志', NULL, '&#xe60a;', '/toLoginfoManager', '', 0, 51, 1);
INSERT INTO `permission` VALUES (22, 6, 'menu', '系统公告', NULL, '&#xe667;', '/toNoticeManager', '', 0, 52, 1);
INSERT INTO `permission` VALUES (23, 6, 'menu', '图标管理', NULL, '&#xe670;', '../resources/page/icon.html', '', 0, 53, 1);
INSERT INTO `permission` VALUES (34, 15, 'permission', '添加菜单', 'menu:create', '', '', '', 0, 29, 1);
INSERT INTO `permission` VALUES (35, 15, 'permission', '修改菜单', 'menu:update', '', NULL, NULL, 0, 30, 1);
INSERT INTO `permission` VALUES (36, 15, 'permission', '删除菜单', 'menu:delete', '', NULL, NULL, 0, 31, 1);
INSERT INTO `permission` VALUES (38, 16, 'permission', '添加权限', 'permission:create', '', NULL, NULL, 0, 33, 1);
INSERT INTO `permission` VALUES (39, 16, 'permission', '修改权限', 'permission:update', '', NULL, NULL, 0, 34, 1);
INSERT INTO `permission` VALUES (40, 16, 'permission', '删除权限', 'permission:delete', '', NULL, NULL, 0, 35, 1);
INSERT INTO `permission` VALUES (54, 15, 'permission', '菜单查询', 'menu:view', NULL, NULL, NULL, 0, 49, 1);
INSERT INTO `permission` VALUES (55, 16, 'permission', '权限查询', 'permission:view', NULL, NULL, NULL, 0, 50, 1);
INSERT INTO `permission` VALUES (73, 21, 'permission', '日志查询', 'info:view', NULL, NULL, NULL, NULL, 65, 1);
INSERT INTO `permission` VALUES (74, 21, 'permission', '日志删除', 'info:delete', NULL, NULL, NULL, NULL, 66, 1);
INSERT INTO `permission` VALUES (75, 21, 'permission', '日志批量删除', 'info:batchdelete', NULL, NULL, NULL, NULL, 67, 1);
INSERT INTO `permission` VALUES (76, 22, 'permission', '公告查询', 'notice:view', NULL, NULL, NULL, NULL, 68, 1);
INSERT INTO `permission` VALUES (77, 22, 'permission', '公告添加', 'notice:create', NULL, NULL, NULL, NULL, 69, 1);
INSERT INTO `permission` VALUES (78, 22, 'permission', '公告修改', 'notice:update', NULL, NULL, NULL, NULL, 70, 1);
INSERT INTO `permission` VALUES (79, 22, 'permission', '公告删除', 'notice:delete', NULL, NULL, NULL, NULL, 71, 1);
INSERT INTO `permission` VALUES (86, 22, 'permission', '公告查看', 'notice:viewnotice', NULL, NULL, NULL, NULL, 78, 1);
INSERT INTO `permission` VALUES (93, 3, 'menu', '评论管理', NULL, '&#xe611;', '/toCommentManager', '', 1, 34, 1);
INSERT INTO `permission` VALUES (95, 4, 'menu', '商品管理', NULL, '&#xe857;', '/toGoodsManager', '', 1, 51, 1);
INSERT INTO `permission` VALUES (96, 4, 'menu', '订单管理', NULL, '&#xe857;', '/toOrderManager', '', 1, 52, 1);
INSERT INTO `permission` VALUES (97, 3, 'menu', '问答管理', NULL, '&#xe607;', '/toQuestionManager', '', 1, 35, 1);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `topic` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '问题标题',
  `optiona` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '选项A',
  `optionb` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '选项B',
  `optionc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '选项C',
  `optiond` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '选项D',
  `answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '答案',
  `cid` int(11) NULL DEFAULT NULL COMMENT '问题类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '哪里是党的发源地？', '嘉兴', '温州', '杭州', '宁波', 'A', 3);
INSERT INTO `question` VALUES (2, '嘉兴别称是以下哪个选项？', '荷城', '禾城', '瓯', '临安', 'B', 2);
INSERT INTO `question` VALUES (3, '嘉兴地处哪里？', '中国东南沿海北部', '长江三角洲地区', '浙江省北部', '中国大陆环太平洋岸线中段', 'B', 3);
INSERT INTO `question` VALUES (4, '水运资源最为丰富、最具优势的城市是？', '杭州', '湖州', '嘉兴', '温州', 'C', 3);
INSERT INTO `question` VALUES (5, '以下哪个选项是嘉兴的景点？', '万里长城', '西湖', '白鹭洲', '黄山', 'C', 2);
INSERT INTO `question` VALUES (6, '嘉兴的地域优势有哪些？', '是“一带一路”建设、长江经济带发展、长三角一体化三大国家战略的黄金交汇点和融合叠加区', '是浙江省接轨上海的门户', '是全国内河航运最发达的地区', '以上全是', 'D', 3);
INSERT INTO `question` VALUES (7, '世界互联网大会在中国哪个地方举办？', '绮园', '乌镇', '西湖', '梅花洲', 'B', 3);
INSERT INTO `question` VALUES (8, '以下哪个选项是全国内河航运最发达的地区？', '上海', '温州', '杭州', '嘉兴', 'D', 3);
INSERT INTO `question` VALUES (9, '1921年夏,在上海召开的中国共产党第一次全国代表大会因遭到法租界巡捕袭扰，被迫转移到？', '浙江嘉兴南湖的一条小船上', '浙江杭州西湖的一条小船上', '浙江温州瓯海的一条小船上', '以上没有正确答案', 'A', 3);
INSERT INTO `question` VALUES (10, '嘉兴有哪些景点？', '西塘古镇', '乌镇', '南湖', '以上全是', 'D', 3);
INSERT INTO `question` VALUES (11, '以下哪个是嘉兴的下辖区？', '南湖区', '鹿城区', '西湖区', '江干区', 'A', 3);

-- ----------------------------
-- Table structure for scenic
-- ----------------------------
DROP TABLE IF EXISTS `scenic`;
CREATE TABLE `scenic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `scenicname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点名',
  `coordinate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经纬度',
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点图片路径',
  `pinyin` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点英文名',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '景点介绍',
  `like_number` int(11) NULL DEFAULT NULL COMMENT '喜欢数',
  `comment_number` int(11) NULL DEFAULT NULL COMMENT '评论数',
  `share_number` int(11) NULL DEFAULT NULL COMMENT '分享数',
  `hot_number` int(11) NULL DEFAULT NULL COMMENT '热度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scenic
-- ----------------------------
INSERT INTO `scenic` VALUES (1, '西塘古镇', '120.898997,30.950466', '浙江省嘉兴市嘉善县南苑路258号', '2020-10-12/27E3858FD34044EB9CC7F2B9734DAF3A.jpg', 'XiTang', '古镇西塘位于浙江省嘉兴市嘉善县，距嘉善县城11公里，是江南六大古镇之一。从上海乘火车到嘉善下车后，乘中巴到西塘3.5元。西塘是一座已有千年历史文化的古镇。早在春秋战国时期就是吴越两国的相交之地，故有“吴根越角”和“越角人家”之称。到元代初步形成市集。西塘与其它水乡古镇最大的不同在于古镇中临河的街道都有廊棚，总长近千米，就像颐和园的长廊一样。在西塘旅游，雨天不淋雨，晴天太阳也晒不到。', 908, 150, 203, 406);
INSERT INTO `scenic` VALUES (2, '乌镇', '120.498263,30.754202', '浙江省嘉兴市桐乡市石佛南路18号', '2020-10-13/DCB665133106494A9C95691041727F7B.jpg', 'WenZhen', '乌镇全称为嘉兴市桐乡乌镇古镇旅游区。作为中国人心中NO.1避暑胜地，乌镇的秀美风景，自不在话下。任贤齐的《外婆桥》在乌镇拍MV，李少红的《红楼梦》在乌镇取景，还有黄磊的《年华似水》，以及后来的刘若英也在这里做了广告，那种幽静和落寞深深的吸引着每位游客。小桥流水，江南水乡，一切都是那么的美好和祥和。处处无敌江南水乡美景，还真是未老莫还乡，还乡需断肠！乌镇是江南六大古镇之一，是个具有六千余年悠久历史的古镇,曾名乌墩和青墩。乌镇是典型的江南水乡古镇,素有“鱼米之乡,丝绸之府”之称。1991年,乌镇被评为省级历史文化名城,1999年开始古镇保护和旅游开发工程,乌镇已被评为国家AAAAA级景区,是全国20个黄金周预报景点之一。乌镇虽历经2000多年沧桑,仍完整地保存着原有的水乡古镇的风貌和格局,梁、柱、门、窗上的木雕和石雕工艺精湛。当地的居民至今仍住在这些老房子里。全镇以河成街,桥街相连,依河筑屋,深宅大 院,重脊高檐,河埠廊坊,过街骑楼,穿竹石栏,临河水阁,古色古香,水镇一体,呈现一派古朴、明洁的幽静,是江南典型的“小桥、流水、人家”石板小路,古旧木屋,还有清清湖水的气息,仿佛都在提示着一种情致,一种氛围。乌镇是个水乡古镇,镇上有修真观、昭明太子读书处、唐代古银杏、转船湾、双桥等景点,西栅老街是我国保存最完好的明清建筑群之一。乌镇又是我国现代文学巨匠茅盾故里。镇上的茅盾故居是茅盾的出生地,现为国家级重点文物保护单位。东侧的立志书院是茅盾少年读书处,现辟为茅盾纪念馆。下面，就让我们一起走进这个“小桥、流水、人家”的风韵江南中。', 1065, 77, 305, 456);
INSERT INTO `scenic` VALUES (3, '南湖', '120.76508,30.757469', '浙江省嘉兴市南湖区南溪西路1号', '2020-10-13/E8BAB12B9B984DC7B5E7E6F7E4A390A1.jpg', 'NanHu', '它是新中国的摇篮，因它孕育了中国共产党。然而，它并不仅仅是红色旅游的革命圣地，它同样也是以“轻烟拂渚，微风欲来”而著称于世的人间胜景。它—浙江省嘉兴市南湖。南湖与杭州西湖、绍兴东湖一起并称为浙江三大名湖，坐落于嘉兴以南，有东西两湖，相连似鸳鸯交颈，故有“鸳鸯湖”之雅称。整个南湖风景区总面积200.67公顷，其中水域面积90.83公顷，水深2-5米。是个生态环境良好，景观特色鲜明，游憩景点丰富，服务设施完备的旅游风景名胜区。于2011年被正式评为国家5A级旅游景区，现有国家、省和市级重点文物保护单位共七处。其中，中共“一大”会址纪念船为全国重点文物保护单位，烟雨楼和沈钧儒纪念馆为浙江省重点文物保护单位，揽秀园、文星桥、仓胜祠及舞跤石为嘉兴市重点文物保护单位。南湖原来是个被海水淹没的地方，随着长江和钱塘江携带而来的大量泥沙的不断沉积，导致陆地不断延伸，海水逐渐退出，变成洼地，后来由于运河各渠流水不断注入而形成湖泊。自古就以风景秀美而闻名遐迩，它虽不及杭州西湖的浓艳纤丽，也没有太湖“包孕吴越”的壮阔气势，却也天然本色、秀资天成，自有一番得天独厚的动人气韵。风光旖旎的南湖，四季宜人。春有湖畔柔柳如烟，夏有映日荷花满塘，秋有绿菱四海飘香，冬有飞雪素裹楼廊。四时不同的美景，为历代许多文人雅士所称赞。清代学者、一代词人朱彝尊就曾先后写下一百首南湖棹歌。乾隆皇帝更是在六次南巡之际，八次驻跸于南湖，沉醉于南湖的无限风光。南湖不仅以秀丽的风光享有盛誉，而且还因中国共产党第一次全国代表大会在这里胜利闭幕而备受世人瞩目，成为我国近代史上重要的革命纪念地。1921年7月23日，中国共产党第一次全国代表大会在上海秘密召开。会议临近结束时，遭法租界巡捕的袭扰而被迫停会。根据上海代表李达的夫人王会悟的建议，8月1日会议转移到嘉兴南湖的一条游船上继续举行。在这条红船上，会议通过了中国共产党的第一个《纲领》和第一个《决议》，并选举了党的中央局领导机构，宣告了中国共产党的诞生，中国革命的航船从此扬帆起航。', 806, 120, 203, 460);
INSERT INTO `scenic` VALUES (4, '南北湖', '120.865261,30.388783', '浙江省嘉兴市海盐县澉浦镇', '2020-10-13/1FE677BBAF754B399362259BAA4DFC81.jpg', 'NanBeihu', '山不在高，有仙则名，水不在深，有龙则灵。南北湖这一大自然的瑰宝，集山水之精华，聚人文之荟萃，已成为钱塘江畔一颗璀璨的明珠。 南北湖风景区是我国唯一融山、海、湖为一体的风景名胜区，位于浙江省嘉兴市海盐县境内，是浙江省第一批省级风景名胜区，国家首批AAA级旅游区，地处杭沪苏甬等大中城市的中心地段，距上海120公里，杭州80公里，苏州110公里，地域位置十分理想，交通便捷。总面积30平方公里，分湖塘、三湾、鹰窠顶、谈仙岭、滨海五大景区，有世界最小石城“谈仙石城”；夜普陀之称的千年古刹“云岫庵”；天文奇观“日月并升”；举世闻名钱江潮的起源处--钱江潮源；见证中韩友谊的金九避难处等30处景观。景区不仅风光秀丽，而且人文景观丰富。由金九避难处、西涧草堂、黄源藏书楼、载青别墅、陈从周艺术馆、吴越王公园组成的名人文化区，透着浓浓的文化气息，使南北湖风景区更富风情和魅力。南北湖是一泻湖，面积1800亩，三面环山，一面临海，湖形曲折，有鲍堤横贯东西，将湖分为南北两半，故名南北湖。湖中有白鹭洲，蝴蝶岛，这湖边山，湖中堤，湖内岛，自然别致，相得益彰。著名园林专家陈从周教授称赞南北湖：“山有层次，水有曲折，海有奇景，比瘦西湖逸秀，比西子湖玲珑，能兼两者之长”。南北湖风景区以其闲雅和野趣保留了江南的一片真山水，是您休闲、旅游、观光、度假、会务的好去处。', 806, 120, 112, 203);
INSERT INTO `scenic` VALUES (5, '梅花洲', '120.857835,30.674648', '浙江省嘉兴市南湖区凤桥镇三星路10号', '2020-10-13/3EE8217974FE41B38B5D4322FBE9DB68.jpg', 'MeiHuazhou', '浙江嘉兴梅花洲，位于马家浜文化、崧泽文化、良渚文化的发源地——浙江嘉兴市南湖区凤桥镇。南朝定宋永初三年时间石佛寺建于此，因形成五瓣状，其间草木葱郁、曲径通幽、大小河流穿梭潆洄犹如梅花，故名梅花洲。至今已有1500多年历史。经历了15个世纪的风雨沧桑，梅花洲地块河道肌理依旧保存完好，堪称奇迹。重建后的梅花洲景区规划面积达12000亩，原有的金刚桧、菩提树、一鉴泉、四佛石、梅花洲、青莲池、香花桥、白云邱这“梅花洲八景”将原貌重现。马家浜文化、崧泽文化、良渚文化遗址将集中展示，和1500年历史的石佛寺，1300多年树龄的千年古银杏，1250多年历史的三步两爿桥还有记录300多年历史的明清老宅等灿烂文明印记的辉煌再现，给凤桥镇留下了独特的江南人文景观。地块首创大区域景区禅修中心。以四季农业观光、长廊临河闻茶、书院知晓春秋等悠然情趣，更多体会了梅花洲最江南的一面。梅花洲与上海、杭州、苏州、宁波只有百里距离，得天独厚的区域位置，在工作和生活节奏不断加快的今天，闲适已成为奢侈品，隐居也成长很多都市人的梦想。景区以“灵动水乡，写意江南”为核心思想，通过观光、休闲、禅修、会议、住宿和生态等项目植入，真正成为集合禅意体验、心灵度假与隐逸栖居的区块，构筑一副精致的江南风情画卷，打造一个江南文化的一站式体验区。使得这里真正成为有地方可去，有东西可玩，有活动可参与的精品旅游区。', 1143, 434, 632, 584);
INSERT INTO `scenic` VALUES (6, '茅盾故居', '120.50057,30.747643', '浙江省嘉兴市桐乡市乌镇观前街17号', '2020-10-13/1ED0CC9B99124809A89AEDABDD79CF1A.jpg', 'MaoDun', '在桐乡市乌镇观前街和新华路交界转角处。是一代文豪茅盾诞生和度过童年、少年时代的地方，1988年列为全国重点文物保护单位。故居面积有600平方米，坐北朝南，分前后两幢，前幢是3间平屋，是茅盾的卧室、书房、会客室等，有一别致的小庭园。后园有1934年茅盾亲自设计翻修的书斋和手植的天竹、棕榈。据称这所房屋是用《子夜》稿酬所建，式样仿日本住宅。后幢是二层小楼。整个建筑采用我国传统的木构民居形式，简朴无华。为全国重点文物保护单位。东邻有茅盾母校立志书院，现为纪念馆，收藏和陈列着包括茅盾小学时代作文本在内的大批文物与图片，连同修真观戏台、唐代银杏、昭明书室及典型的水乡古镇风情，融汇成一部生动的茅盾研究活辞典。茅盾（1896―1981），原名沈德鸿，字雁冰，桐乡乌镇人。是我国现代进步文化的先驱者，伟大的革命文学家，中国共产党最早的党员之一。早年曾参加“五四”运动，组织文学研究会，后接办《小说月报》，成为倡导现实主义文学的阵地。1930年与鲁迅等组织左翼作家联盟。建国后当选为文联副主席，并任第一任文化部长，也是历届人大代表和政协委员。其代表作有《子夜》、《林家铺子》等。', 638, 236, 463, 235);
INSERT INTO `scenic` VALUES (7, '盐官观潮景区', '120.550738,30.409393', '浙江省嘉兴市海宁市盐官镇春熙路131号', '2020-10-13/F6230CAA612540B4A98F7D6D7D28593F.jpeg', 'HaiYan', '盐官是一座千年古城,位于浙江省杭州湾北岸杭嘉湖平原。古城悠久的历史、灿烂的文化、动人的传说和壮观的涌潮,可谓一日游千年,满城尽奇观。景区集自然奇观与人文盛景于一身,以海宁潮胜景和盐官古镇风情取胜。海宁潮胜景：盐官的不同凡响,就在于它是世界著名的观潮胜地。自古以来,天下奇观海宁潮以其独特的壮美雄姿而令人神往。地处钱塘江强潮地段的观潮胜地公园,是天下奇观海宁潮的最佳观赏地。古镇风情：宰相府第风情街再现央视版《鹿鼎记》中扬州古城风貌,内隐藏“乾隆身世”的陈阁老宅及孕育“国学第一人”的王国维故居、安国寺经幢等。海神庙是盐官最具“皇家风范”的古建筑,它是一座建筑布局酷似故宫太和殿的宫殿式庙宇,故有“江南紫禁城”之美称。相关知识：盐官始建于西汉,吴王刘濞煮海为盐,在此设司盐之官而得名。自唐朝至抗日战争前,一直为海宁州、县治的所在地。在唐朝,盐官就以其发达的经济和繁盛的宗教而名扬海内外；北宋大文豪苏轼就曾在诗中称之为“古邑”；至明清时期,更有海宁陈家“一门三阁老、六部五尚书”之荣耀而声名远播；乾隆六下江南四驻海宁的史实和乾隆身世之迷的民间传说,使这座地位显赫而又讳莫如深的陈阁老宅充满了传奇色彩。', 246, 854, 231, 263);
INSERT INTO `scenic` VALUES (8, '绮园', '120.954547,30.523713', '浙江省嘉兴市海盐县武原镇海滨东路37号', '2020-10-13/2CE818F7A13E4A82A591953386B9C517.jpg', 'YiYuan', '绮园为中国十大名园之一,位于武原镇绮园弄,占地14.8亩。该园原为明代废园,后冯氏在此建园,人称冯家花园。绮园园主充缵斋系清代诗人、剧作家黄燮清之次婿,黄家先后拥有拙宜园和砚园。清咸丰年间（1851-1861）,两园均遭兵火毁坏,同治六年,冯缵斋集两园山石精粹,并添置一些太湖石,修筑此园,同治十年初具规模。后又续建了亭台楼阁等,增设景点,并将其命名为绮园。解放后冯氏将园林献给了国家,1960年10日至1961年10月辟为嘉兴专署工人疗养院。1967年重修,更名为海盐人民公园。1980年被列为县级重点文物保护单位,1985年6月复名绮园,1990年列为省重点文保单位。 　　绮园前为宅院,现存三乐堂等建筑。三乐堂为九开间二层楼,前后皆天井,在砖雕门斗上饰飞椽斗拱、隐堂匾额“竹苞松茂”等。所谓“三乐”,为“仰无愧于天,俯无愧于人,一乐也；父母兄弟俱在,二乐也；聚天下英才而教育之,此三乐也。”陈从周教授为三乐堂题额。宅后为园林,占地10000平方米,水面约2000平方米,树木遮盖约7000平方米。园内以树木山池为主,古木参天,山、水、竹、木、厅、亭、阁、桥、隧道、飞梁等布局精美,错落有致。水随山转,山因水活,各得其宜。', 804, 466, 341, 233);
INSERT INTO `scenic` VALUES (9, '蝴蝶岛', '120.866776,30.378237', '嘉兴市海盐县澉浦镇长青路18号南北湖景区蝴蝶岛内', '2020-10-13/E4C4DFD447424B1F978C461F495F1A96.jpg', 'HuDieDao', '位于南北湖西南角的蝴蝶岛,系1988年疏浚南湖时人工堆积而成,为纪念上海三十年代的影后胡蝶来南北湖拍一部以海盐盐民生活状况为题材的《盐潮》。岛的面积约12亩左右,小岛状似蝴蝶,是休闲品茗的佳处。岛上主要建筑为山海阁,共三层,层层敞开,面面洞然,三面皆山,一面向海。登临阁上,可纵目远眺,心旷神怡,北面是中湖塘,水面上二桥一堤,垂柳依依；西面是鹰窠顶,高山峻岭障目,上有古庵红墙；东面是杨山脚,宾舍鳞次栉比；南面一堤之外是钱塘江万顷波涛。阁虽小,却包容了湖山海景。 在山海阁之南,岛的东南边缘上,是双飞馆和听泉茶食。在南西两面临湖处,室外还建有廊,游人在此凭栏观景,有如站在水中。在双飞馆和听泉茶食之间,有一条10多米长的九曲游廊相连,游廊后,有一小池,两旁建筑犹如亭亭玉立在水中央一般,是喝茶品茗的好地方。此外,岛上还有连理亭、两宜亭、蝴蝶院等建筑小品。岛上海有一大特色鹅卵石,无论墙体、护岸、望柱、小径,都用鹅卵石砌成,并有数吨重的巨石散置其间,使游人一登岛上,就领略到浑厚、质朴的气息,产生回归自然之感。', 875, 542, 894, 326);
INSERT INTO `scenic` VALUES (10, '平湖澳多奇农庄', '120.985084,30.638454', '浙江省嘉兴市平湖市曹桥镇马厩村', '2020-10-13/679F3958374C4A48A5892F78A8FE0CC8.jpg', 'PinHuAoDuoQi', '平湖市曹桥乡澳多奇农庄位于平湖市西郊。地理位置处于海盐县和平湖市的交界地区,距平湖市10公里,距海盐县城12公里,距九龙山旅游度假区12公里,距离上海和省城杭州分别为80公里和120公里。路况良好,交通方便,气候温和、湿润,四季分明。随着杭州湾大桥的建设,规划所在的区域将成为浙东南通往上海的重要通道,旅游发展的经济地位将会更加有利和明显。', 627, 255, 424, 323);
INSERT INTO `scenic` VALUES (11, '平湖东湖', '121.034855,30.702276', '浙江省嘉兴市平湖市区东侧', '2020-10-13/F776B59BAFA6453E9AC8E40E97CAA528.jpg', 'DonHu', '东湖,位于平湖市区城东。古时原是陆地,在东汉顺帝永建二年(127),由于地壳变动,地表塌陷成湖,名为当湖；晋隆安五年（401）改东武湖,又称东湖,雅名鹦鹉湖、鹉湖。古时东湖“弄珠楼”是文化名士吟诗作画、品茗赏月的雅集地,在清代张云锦《东湖弄珠楼志》中收集有明代董其昌、清代高士奇、浙西词派领袖朱彝尊等著名学者诗人无数赞美东湖美景的诗篇；在明代大学士李东阳的《平湖十咏》、冯敏效《当湖十二咏》等诗中也都有“东湖十景”的赞美的佳句；可以说东湖景区历史上就是文人士大夫和游客休闲游览的胜地。自明宣德五年(1430)平湖建县后的明清五百年间,建园之风极为盛兴,东湖历经数百年,积淀了深厚的历史文化底蕴。    时至今日,当我们再次诵读北宋科学家沈括游东湖留下的“柳色青天雨乍晴,鸭头细草绕提生。林间野日依依见,水底春光寸寸明,犹喜乱花时入眼,可能万事顿忘情。无端景物相料理,屡欲颠狂兴不成”（见《永乐大典卷2262》）诗句时,依然可以读出作者对东湖的赞美,依然会被诗中描绘的诗情画意所吸引。    1999年,市委、市政府作出了《关于开发东湖区的决定》,并提出了“把东湖打造成精品旅游景区”的发展目标,在原东湖十景的基础上规划开发建设新东湖八景,即：“南村书堆”、“含珠凝晖”、“鹉湖春色”、“九龙戏珠”、“西浦鱼罾”、“北原牧唱”、“案山晓翠”、“塔影垂虹”。建成的东湖景区是集休闲、度假、运动、文化、观光于一体的江南水乡旅游胜地。调整规划后东湖景区建设总面积1.6平方公里（含水域面积1000亩）,分两期建设。一期开发范围为环东湖核心部分,面积1500多亩(含水域面积728亩),即由“东湖八景”及周边的体育馆、图书馆、金王朝大酒店、东湖大酒店、胜地咖啡、半岛国际酒店等已建成旅游设施组成。二期开发范围为“东湖渔村”和正在建设中的“龙湫公园”。截至2004年,东湖景区一期工程完成,累计投入建设资金8亿元。', 746, 241, 562, 666);
INSERT INTO `scenic` VALUES (12, '白云阁', '120.853937,30.373602', '嘉兴市海盐县大田东街12对面', '2020-10-13/F396AAA75AFE4902B6B8D3D5665E75F6.jpg', 'BaiYunGe', '今年是孔子诞辰2550周年,将于9月28日孔子诞生之日在园中举行孔子像揭幕典礼,同时在白云阁举行“孔子生平事迹展览”、“辉煌的遗产－孔庙、孔府、孔林”和“孔子《论语》碑刻拓片陈列”。这批珍贵的资料,由山东省曲阜市文管会、曲阜《论语碑苑》提供。     白云阁建于1997年,位于鹰窠顶山云岫庵西侧,海拔165米,阁前有公路经谈仙石城至南北湖,交通便利。阁为钢筋混凝土结构,正方形,长宽各13米,高三层,通高18.3米,建筑面积493平方米。阁为黄色琉璃屋顶,四角起翘,每层角上悬以风铃,清风来时,叮当作响。阁内布有孔子事迹陈列和海盐县历代状元进士名录。白云阁底层四周有廊环境,置美人靠可供休息； 二层有平台,墙上壁画一圈,登临阁上,前可望海,后可观潮,左右为鹰窠顶和南木山,是游人品茗观景的好去处。阁西有庭园,占地十二亩,有花墙相隔,通过月洞门即可进入园内。在花木掩映中有新塑孔子像一尊,高8米,系山东雕塑世家葛会君参照明代孔子行教像塑成,有传说中的种种孔子标记,令人肃然起敬。像前有孔子弟子颜回、曾参、子思、孟轲“四配”像,组成一组完整的儒家雕塑群。群像下有长17米、宽9.5米的平坦广场,游人可在此瞻仰和摄影留念。', 742, 576, 312, 358);
INSERT INTO `scenic` VALUES (13, '海宁潮', '120.543886,30.405111', '浙江省嘉兴市海宁市X331(翁金线)', '2020-10-13/A0BC61ED3F3F47E09E4F59C7274E910E.jpg', 'HaiNingChao', '一潮三看赏四景,令人荡气回肠。表现为八堡“碰头潮”双龙相扑,天崩地裂；盐官“一线潮”白练横江,涛山喷雪；老盐仓“回头潮”蛟龙脱锁,怒吼回首。而观赏半夜潮更是月影银涛,十万奇军。由于杭州湾至钱塘江口外宽内窄,呈喇叭口状,它的出海口宽度达100公里,而溯江而上到达海宁的盐官已不足3公里,可这时江潮却以每秒10米的流速向前推进。涌潮受到两岸急剧收缩的影响,水体涌积,夺路叠进,潮波不断增高,潮头便形如立墙,势若冲天,举世闻名的海宁潮便由此形成。每当江潮来临,数米高的潮水涌入喇叭型的杭州湾,澎湃汹涌,势不可挡,形成一线横江的奇观；潮头过处,惊涛拍岸,令人惊心动魄,叹为观止。唐白居易词：“早潮才落晚潮来,一月周流六十回”,观海宁潮不限于农历八月十八,海宁潮一天二次,白天称潮,夜间称汐,昼夜间隔12小时。由于受月球和太阳引力的影响,潮之强弱呈现规律性变化,每月的农历初一至初五、十六至二十、均为大潮日,一年有120多个观潮佳日,故海宁“天天可观潮,月月有大潮”。不过由于日月对地球的引力,在月圆以后的三天涌潮为最大。春分和秋分两个节气前后,涌潮更为壮观。每年的农历八月十八,是流传千年的传统观潮节。每年此日,海内外数十万宾客云集观潮胜地海宁观潮。', 234, 452, 434, 643);
INSERT INTO `scenic` VALUES (14, '潮音阁', '120.965885,30.51844', '浙江省嘉兴市海盐县翁金线潮音阁(上城·艺墅南200米)', '2020-10-13/5557BB5AC6AB40B78BE41C6A29B370B0.jpeg', 'ChaoYinGe', '潮音阁耸立在武原镇东首海滨,北靠繁华市区,面对涛涛杭州湾。是近年新建楼阁,为海盐市民与外地游客提供了一处游览休闲地。于1989年8月开工,1992年春节落成。楼阁为仿古三层建筑,造型古朴,金黄屋面,四角玲珑。总占地1723平方米,总建筑面积703平方米,高三层,地下一层,通高19米,面阔和进深各12米。每层四面栏杆。登临其上,翘首远眺,四周景色,尽收眼底。东望大海,点点远帆,山峦起伏,海鸟飞翔,汹涌澎湃的潮音,尽在耳边,南望我国国第一座核电站——秦山核电站,西眺市区,夜晚很清晰地看到闪闪的万家灯火。北望乍浦港,晴朗天气,历历在目。潮音阁上听潮音：海盐县的潮水,由于地理关系,不及海宁的一线潮,但因在涨潮时,波浪起伏,缓缓推进,其悦耳的潮音,令人难以形容,好像战国时的敲打音乐编钟,又好似古琴在奏高山流水之曲,越听越感有味,此乃真真是自然界的声音,此正所谓潮音阁上听潮音。', 354, 234, 436, 474);
INSERT INTO `scenic` VALUES (15, '观潮胜地公园', '120.552415,30.405538', '嘉兴市海宁市盐官镇环城南路', '2020-10-13/B5C93236A5A04508B3A8BE06FEFE6D31.jpg', 'ShengDiGonYuan', '观潮胜地公园位于海宁西南部盐官观潮景区,南临钱塘江,北靠杭金公路。公园为东西向狭长地形,全长1360米,总占地16.24公顷。抗战前,海塘一带已有海滨公园,1994年起,重建海滨“观潮胜地公园”。公园内鱼鳞石塘、2座观潮楼、6个观潮台是天下奇观海宁潮的最佳观赏点；拥有明代占鳌塔、小普陀寺、孙中山观潮亭－天风海涛亭、毛泽东观潮诗碑纪念亭、乾隆手植古朴、史量才纪念碑、镇海铁牛等景点；白石坛广场集大型节庆活动、游览观赏、文艺表演、休闲娱乐于一体,是观潮胜地公园的标志性景观,也是一年一度的国际钱江（海宁）观潮节的举办地；树木摇曳,石椅长廊,亭台楼阁,曲径小道,别有情趣；是“浙江省十佳美景乐园”之一。', 246, 537, 842, 347);
INSERT INTO `scenic` VALUES (16, '桐乡红杉邨', '120.520625,30.667319', '浙江省嘉兴市桐乡市龙翔街道杨园村宗扬路78号', '2020-10-13/712EDB1B155D4468AD313C5C8853A364.jpg', 'HonShanDun', '桐乡红杉邨景区位于桐乡市龙翔街道杨园村宗扬路78号,按国家3A级景区标准建造,集观光、餐饮、客房、会议、棋牌、烧烤、垂钓、采摘等现代乡村休闲景区。地理位置优越,交通便捷,离桐乡市区5公里,距乌镇景区10公里。无论是商务旅行还是观光休闲,红杉邨景区均将满足您不同所需。红杉邨景区是集乡村名俗,乡村饮食,红豆杉养生文化,大运河以及古代农业学家——杨园先生等深厚的历史文化底蕴建设的。景区共设八大主题功能板块：百问杨园、农耕科普、农家作坊、田园野趣、万“杉”红遍、红豆婚庆、補农书院、河畔乡宴。景区拥有按四星标准建造的各类客房和乡村别墅。具有江南水乡风情的餐饮大厅、水上茶楼、临水包厢,尽显乡村风味,纯正的野味和景区自养自种绿色土特产供您品尝。', 794, 234, 347, 854);
INSERT INTO `scenic` VALUES (17, '绮园', '120.954547,30.523713', '浙江省嘉兴市海盐县武原镇海滨东路37号', '2020-10-13/0EFC624F63FC415FA12BCD4931DDEAE2.jpg', 'YiYuan', '绮园为中国十大名园之一,位于武原镇绮园弄,占地14.8亩。该园原为明代废园,后冯氏在此建园,人称冯家花园。绮园园主充缵斋系清代诗人、剧作家黄燮清之次婿,黄家先后拥有拙宜园和砚园。清咸丰年间（1851-1861）,两园均遭兵火毁坏,同治六年,冯缵斋集两园山石精粹,并添置一些太湖石,修筑此园,同治十年初具规模。后又续建了亭台楼阁等,增设景点,并将其命名为绮园。解放后冯氏将园林献给了国家,1960年10日至1961年10月辟为嘉兴专署工人疗养院。1967年重修,更名为海盐人民公园。1980年被列为县级重点文物保护单位,1985年6月复名绮园,1990年列为省重点文保单位。 　　绮园前为宅院,现存三乐堂等建筑。三乐堂为九开间二层楼,前后皆天井,在砖雕门斗上饰飞椽斗拱、隐堂匾额“竹苞松茂”等。所谓“三乐”,为“仰无愧于天,俯无愧于人,一乐也；父母兄弟俱在,二乐也；聚天下英才而教育之,此三乐也。”陈从周教授为三乐堂题额。宅后为园林,占地10000平方米,水面约2000平方米,树木遮盖约7000平方米。园内以树木山池为主,古木参天,山、水、竹、木、厅、亭、阁、桥、隧道、飞梁等布局精美,错落有致。水随山转,山因水活,各得其宜。', 463, 683, 694, 471);
INSERT INTO `scenic` VALUES (18, '九龙山庄园', '121.143129,30.621711', '平湖市乍浦镇九龙山旅游度假区九龙山庄园', '2020-10-13/5D53B2C2DDFF4B5E8451ADAC9346628B.jpg', 'JiuLonShan', '九龙山旅游度假区又名九龙山庄园,位于杭州湾国家一级口岸乍浦港,座落在杭州湾跨海大桥北址,距离上海 ,苏州,杭州,宁波均一小时路程。度假区依山傍海而建,集湖光、山色、峡谷、森林、岛屿、海浪等景色于一 体。依靠得天独厚的稀缺资源、优美环境以及便捷的交通,通过大师级的设计,移步换景,把欧洲文化的符号和 精髓结合在一起,建成包含旅游度假、体育运动、商务、娱乐等多功能的度假区。整个项目的价值主要体现在高尔夫,威斯汀酒店,游艇俱乐部,马球,商业住宅等的完美设计和世界级的品牌 管理,它融旅游体育、商业住宅、佛教文化,主题公园等为一体,具备了完善的区内结构,完整的旅游文化娱乐 功能。九龙山庄园致力于打造世界级的游乐目的地,顶尖的度假胜地,以使庄园成为人们商务、会议、旅游及社 交的理想去处。', 589, 125, 478, 347);
INSERT INTO `scenic` VALUES (19, '湘家荡', '120.820413,30.809561', '浙江省嘉兴市南湖区湘家荡旅游度假区', '2020-10-13/D0CBB20F10294D15B9DFB26B860ED131.jpg', 'XiangJiaDang', '湘家荡旅游度假区位于嘉兴市区东北部,距市区7公里,是建设中的以江南水乡、田园景色和自然湖泊风光为背景,以水上游乐、农业观光、休闲度假为主要内容的省级旅游度假区。 　　湘家荡,又名湘家湖、湘湖。1997年12月26日,浙江省人民政府批准 建立浙江省嘉兴湘家荡旅游度假区,规划面积为715公顷,其中湖泊130公顷。度假区融江南水乡风光、田园浪漫景色为一体,又兼具现代水上游乐、农业观光、休闲度假之独特功能。 　　度假区充分利用原有的江南特色。建设湘家荡水上娱乐中心、国际垂钓中心、生态农业示范区、现代高科技游乐园、度假中心、汽车 公寓等14个功能区, 　　它将成为嘉兴市旅游的中心和长江三角洲独具特色的旅游度假胜地。', 512, 346, 733, 437);
INSERT INTO `scenic` VALUES (20, '子城', '120.760756,30.765672', '中国浙江嘉兴市中心府前街', '2020-10-13/4278FE59E83E474DA763155242C5108F.jpg', 'ZiCheng', '子城位于嘉兴市中心府前街,是嘉兴历代府衙的所在地和太平天国听王府旧址。嘉兴子城建于三国吴黄龙三年（231）,至今已有一千七百多年历史。子城周长二里十步,高、厚为一丈二尺,占地7.5万平方米。唐末由于子城外兴建了罗城,故原城改称子城（另说原在子城周围遍植梓树,先前叫梓城,后讹化为子城）。 　　从三国至清代,子城均为嘉兴（秀州）府衙或军治所在地,据光绪《嘉兴府志》称,元代子墙正门有丽谯,宋时城上建天王殿、箭楼等建筑。子城谯楼重建于光绪三十四年（1908）,为砖木结构三楹楼房,重檐歇山顶,花式屋脊,四铺水小脊,发戗如意头,戗角雕刻龙头,回廊飞檐,具有我国古代楼台特殊。城东有箭垛,至今仍保存完好。 　　现存的子城及谯楼是1990年重修,长约百米,垣墙为砖石结构,城上设有垛口,下置城门,门为木质,门口有石狮镇守。登城远眺,禾城风貌、南湖烟雨尽收眼底。 　　旧时沿子城外有锦带桥,河旁植梓树,景色优美,唐代刘禹锡、宋代张先、深括、陆蒙老等都有脍炙人口的佳作。陆蒙老《披云阁》诗云：“城角巍栏见海涯,春风帘幕暖飘花。云烟断处沧江阔,一簇楼台十万家”。 　　子城在太平天国时曾建听王府,1860年6月太平天国忠王李秀成部队的听王陈炳文、护王陈坤书等攻占嘉兴,第二年陈炳文大兴土木,在此建造七进听王府,到1864年嘉兴被潘鼎新、程学启攻陷时也尚未竣工,可见其工程之浩大。八十年代,在中山路的姚氏旧宅中还发现过8幅太平天国壁画。', 462, 123, 853, 865);
INSERT INTO `scenic` VALUES (21, '子城', '120.760756,30.765672', '中国浙江嘉兴市中心府前街', '2020-10-13/70E9A4A5CB4F48FFAEA5752787C53AFF.jpg', 'ZiCheng', '子城位于嘉兴市中心府前街,是嘉兴历代府衙的所在地和太平天国听王府旧址。嘉兴子城建于三国吴黄龙三年（231）,至今已有一千七百多年历史。子城周长二里十步,高、厚为一丈二尺,占地7.5万平方米。唐末由于子城外兴建了罗城,故原城改称子城（另说原在子城周围遍植梓树,先前叫梓城,后讹化为子城）。 　　从三国至清代,子城均为嘉兴（秀州）府衙或军治所在地,据光绪《嘉兴府志》称,元代子墙正门有丽谯,宋时城上建天王殿、箭楼等建筑。子城谯楼重建于光绪三十四年（1908）,为砖木结构三楹楼房,重檐歇山顶,花式屋脊,四铺水小脊,发戗如意头,戗角雕刻龙头,回廊飞檐,具有我国古代楼台特殊。城东有箭垛,至今仍保存完好。 　　现存的子城及谯楼是1990年重修,长约百米,垣墙为砖石结构,城上设有垛口,下置城门,门为木质,门口有石狮镇守。登城远眺,禾城风貌、南湖烟雨尽收眼底。 　　旧时沿子城外有锦带桥,河旁植梓树,景色优美,唐代刘禹锡、宋代张先、深括、陆蒙老等都有脍炙人口的佳作。陆蒙老《披云阁》诗云：“城角巍栏见海涯,春风帘幕暖飘花。云烟断处沧江阔,一簇楼台十万家”。 　　子城在太平天国时曾建听王府,1860年6月太平天国忠王李秀成部队的听王陈炳文、护王陈坤书等攻占嘉兴,第二年陈炳文大兴土木,在此建造七进听王府,到1864年嘉兴被潘鼎新、程学启攻陷时也尚未竣工,可见其工程之浩大。八十年代,在中山路的姚氏旧宅中还发现过8幅太平天国壁画。', 351, 235, 733, 523);
INSERT INTO `scenic` VALUES (22, '海宁潮', '120.543886,30.405111', '浙江省嘉兴市海宁市X331(翁金线)', '2020-10-13/389F29053CB14B28AF71B559A5BF1C4A.jpg', 'HaiNingChao', '一潮三看赏四景,令人荡气回肠。表现为八堡“碰头潮”双龙相扑,天崩地裂；盐官“一线潮”白练横江,涛山喷雪；老盐仓“回头潮”蛟龙脱锁,怒吼回首。而观赏半夜潮更是月影银涛,十万奇军。由于杭州湾至钱塘江口外宽内窄,呈喇叭口状,它的出海口宽度达100公里,而溯江而上到达海宁的盐官已不足3公里,可这时江潮却以每秒10米的流速向前推进。涌潮受到两岸急剧收缩的影响,水体涌积,夺路叠进,潮波不断增高,潮头便形如立墙,势若冲天,举世闻名的海宁潮便由此形成。每当江潮来临,数米高的潮水涌入喇叭型的杭州湾,澎湃汹涌,势不可挡,形成一线横江的奇观；潮头过处,惊涛拍岸,令人惊心动魄,叹为观止。唐白居易词：“早潮才落晚潮来,一月周流六十回”,观海宁潮不限于农历八月十八,海宁潮一天二次,白天称潮,夜间称汐,昼夜间隔12小时。由于受月球和太阳引力的影响,潮之强弱呈现规律性变化,每月的农历初一至初五、十六至二十、均为大潮日,一年有120多个观潮佳日,故海宁“天天可观潮,月月有大潮”。不过由于日月对地球的引力,在月圆以后的三天涌潮为最大。春分和秋分两个节气前后,涌潮更为壮观。每年的农历八月十八,是流传千年的传统观潮节。每年此日,海内外数十万宾客云集观潮胜地海宁观潮。', 234, 452, 434, 643);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `loginname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `type` int(11) NULL DEFAULT 2 COMMENT '用户类型[0超级管理员1，管理员，2普通用户]',
  `sex` bit(1) NULL DEFAULT NULL COMMENT '用户性别',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `signature` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  `register_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `avatar_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像路径',
  `salt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '一朵气质花°', '18757335086', '532ac00e86893901af5f0be6b704dbc7', 2, b'0', '18757335086', '这个人很懒还没有签名哦', '浙江省嘉兴市南湖区', '2020-09-06 14:47:19', '2020-10-12/7C76F60720BE46EDAEC75EAD0B15D79F.jpg', NULL);
INSERT INTO `user` VALUES (2, '☆小绿豆的太阳花', '15657312876', '532ac00e86893901af5f0be6b704dbc7', 2, b'1', '15657312876', '这个人很懒还没有签名哦', '浙江省杭州市西湖区', '2020-10-09 20:01:55', '2020-10-12/7B077EB0C6D846359E4E446552B31F98.jpg', NULL);
INSERT INTO `user` VALUES (3, '薄荷蓝', '13868874953', '532ac00e86893901af5f0be6b704dbc7', 2, b'1', '13868874953', '这个人很懒还没有签名哦', '浙江省嘉兴市秀洲区', '2020-10-09 20:19:09', '2020-10-12/98BA541AAA924C61AD448621FB35F4A9.jpg', NULL);
INSERT INTO `user` VALUES (4, '薄荷味丶', '13000229507', '532ac00e86893901af5f0be6b704dbc7', 2, b'0', '13000229507', '这个人很懒还没有签名哦', '浙江省嘉兴市嘉善县', '2020-10-09 22:23:15', '2020-10-12/E2B7DC74A31B446B8B647C52015B1D11.jpg', NULL);
INSERT INTO `user` VALUES (5, '红玫瑰々南筏', '17858337699', '532ac00e86893901af5f0be6b704dbc7', 2, b'0', '17858337699', '这个人很懒还没有签名哦', '浙江省湖州市吴兴区', '2020-10-11 20:29:01', '2020-10-12/89B473381B164EAD94EEBB8B52F43CEF.jpg', '1AE0C3D23B5B49338F9CCB978F44C184');
INSERT INTO `user` VALUES (6, '橙亍', '15203169522', '532ac00e86893901af5f0be6b704dbc7', 2, b'1', '15203169522', '这个人很懒还没有签名哦', '浙江省绍兴市越城区', '2020-10-12 22:24:52', '2020-10-12/E02A67F8F8F34F64A43857C33D720002.jpg', NULL);
INSERT INTO `user` VALUES (7, '红玫瑰々', '13609499500', '532ac00e86893901af5f0be6b704dbc7', 2, b'0', '13609499500', '这个人很懒还没有签名哦', '浙江省金华市婺城区', '2020-10-12 22:24:56', '2020-10-12/D22116C0A98043198474F09C2234E05D.jpg', NULL);
INSERT INTO `user` VALUES (8, '氧气萌主', '13224149504', '532ac00e86893901af5f0be6b704dbc7', 2, b'1', '13224149504', '这个人很懒还没有签名哦', '浙江省衢州市柯城区', '2020-10-10 22:24:59', '2020-10-12/E81634DF0B184471864CA4989D5ABEAB.jpg', NULL);
INSERT INTO `user` VALUES (9, '-柠檬树下少年和吉他', '15992669500', '532ac00e86893901af5f0be6b704dbc7', 2, b'1', '15992669500', '这个人很懒还没有签名哦', '浙江省衢州市衢江区', '2020-10-12 22:25:36', '2020-10-12/B724C1A57A2E41A7B9383BDC08AD7C56.jpg', NULL);
INSERT INTO `user` VALUES (10, '橙家菇凉', '18924399530', '532ac00e86893901af5f0be6b704dbc7', 2, b'0', '18924399530', '这个人很懒还没有签名哦', '浙江省舟山市定海区', '2020-10-12 22:25:38', '2020-10-12/21D87DF0CDE04D35BE637005C9D2F4D5.jpg', NULL);
INSERT INTO `user` VALUES (11, '橙歌', '18734539500', '532ac00e86893901af5f0be6b704dbc7', 2, b'0', '18734539500', '这个人很懒还没有签名哦', '浙江省舟山市普陀区', '2020-10-12 22:25:41', '2020-10-12/7A43BCA47B9D45178E310C054729453A.jpg', NULL);
INSERT INTO `user` VALUES (12, '葵雏', '13609499503', '532ac00e86893901af5f0be6b704dbc7', 2, b'1', '13609499503', '这个人很懒还没有签名哦', '浙江省台州市椒江区', '2020-10-12 22:25:43', '2020-10-12/FCF24023AEAE4E6AAB449E9922244E82.jpg', NULL);
INSERT INTO `user` VALUES (13, '柠檬绿@', '15179819539', '532ac00e86893901af5f0be6b704dbc7', 2, b'1', '15179819539', '这个人很懒还没有签名哦', '浙江省丽水市青田县', '2020-10-12 22:25:46', '2020-10-12/5CB161001BE34452A7FDC7D338D75928.jpg', NULL);
INSERT INTO `user` VALUES (14, '抹绿', '13108789500', '532ac00e86893901af5f0be6b704dbc7', 2, b'1', '13108789500', '这个人很懒还没有签名哦', '浙江省温州市鹿城区', '2020-10-12 22:25:48', '2020-10-12/2EFFEC3CAA1347EFA81C31487EEA118A.jpg', NULL);
INSERT INTO `user` VALUES (15, '柠檬℃', '15179819547', '532ac00e86893901af5f0be6b704dbc7', 2, b'0', '15179819547', '这个人很懒还没有签名哦', '浙江省温州市永嘉县', '2020-10-12 22:25:50', '2020-10-12/DDA816D4CAD3483AAC0C016A6510331A.jpg', NULL);
INSERT INTO `user` VALUES (16, '薄荷糖丶微凉', '13609499535', '532ac00e86893901af5f0be6b704dbc7', 2, b'0', '13609499535', '这个人很懒还没有签名哦', '浙江省宁波市海曙区', '2020-10-12 22:25:51', '2020-10-12/99B26B05FC4748448C66A13687E0D75D.jpg', NULL);
INSERT INTO `user` VALUES (17, '橙七の', '18734539522', '532ac00e86893901af5f0be6b704dbc7', 2, b'1', '18734539522', '这个人很懒还没有签名哦', '浙江省杭州市上城区', '2020-10-12 22:25:55', '2020-10-12/85490619A74848B79245F06E7F055FEA.jpg', NULL);
INSERT INTO `user` VALUES (18, '水清梦蓝', '15203169533', '532ac00e86893901af5f0be6b704dbc7', 2, b'1', '15203169533', '这个人很懒还没有签名哦', '浙江省杭州市江干区', '2020-10-12 22:25:57', '2020-10-12/78FA45C0228A49FBBF998E32015408D1.jpg', NULL);
INSERT INTO `user` VALUES (19, '绿竹猗猗', '18924399601', '532ac00e86893901af5f0be6b704dbc7', 2, b'0', '18924399601', '这个人很懒还没有签名哦', '浙江省宁波市北仑区', '2020-10-12 22:26:00', '2020-10-12/77B76D1627024151BDDF71A1F59550F2.jpg', NULL);
INSERT INTO `user` VALUES (20, '沐晴つ', '15992669522', '532ac00e86893901af5f0be6b704dbc7', 2, b'0', '15992669522', '这个人很懒还没有签名哦', '浙江省温州市瓯海区', '2020-10-12 22:26:02', '2020-10-12/A8715FB365F0468CB62485C11ED0FB32.jpg', NULL);
INSERT INTO `user` VALUES (21, '辜月二七', NULL, '079bbe2c35dddb6bccd0ce7ab8b6c79a', 2, b'1', '15167712232', '我的头发去哪了', '浙江省嘉兴市南湖区', '2020-10-12 09:55:55', '2020-10-13/19BA045B4920456B83483C89CB6F9C3B.jpg', 'B6218441E435442CA5BF0BAED28834A4');
INSERT INTO `user` VALUES (100, '超级管理员', 'admin', 'b18c3d4e50c723c4263e978b502476ea', 0, NULL, NULL, NULL, NULL, NULL, NULL, '7E8100A012C3420EBAADB0B68EB4C2C1');

SET FOREIGN_KEY_CHECKS = 1;
