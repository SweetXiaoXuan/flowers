/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : flowers

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 29/11/2018 17:10:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for flower_color
-- ----------------------------
DROP TABLE IF EXISTS `flower_color`;
CREATE TABLE `flower_color` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '颜色',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_color
-- ----------------------------
BEGIN;
INSERT INTO `flower_color` VALUES (1, '红', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (2, '橙', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (3, '黄', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (4, '绿', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (5, '蓝', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (6, '靛', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (7, '紫', 0, '2018-11-29 17:08:28', NULL);
COMMIT;

-- ----------------------------
-- Table structure for flower_country
-- ----------------------------
DROP TABLE IF EXISTS `flower_country`;
CREATE TABLE `flower_country` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '国家',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_country
-- ----------------------------
BEGIN;
INSERT INTO `flower_country` VALUES (1, '中国', 0, '2018-11-29 17:09:07', NULL);
INSERT INTO `flower_country` VALUES (2, '英国', 0, '2018-11-29 17:09:07', NULL);
INSERT INTO `flower_country` VALUES (3, '美国', 0, '2018-11-29 17:09:07', NULL);
INSERT INTO `flower_country` VALUES (4, '法国', 0, '2018-11-29 17:09:07', NULL);
INSERT INTO `flower_country` VALUES (5, '日本', 0, '2018-11-29 17:09:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for flower_festival
-- ----------------------------
DROP TABLE IF EXISTS `flower_festival`;
CREATE TABLE `flower_festival` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '国家',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_festival
-- ----------------------------
BEGIN;
INSERT INTO `flower_festival` VALUES (1, '春节', 0, '2018-11-29 17:09:43', NULL);
INSERT INTO `flower_festival` VALUES (2, '端午节', 0, '2018-11-29 17:09:43', NULL);
INSERT INTO `flower_festival` VALUES (3, '清明节', 0, '2018-11-29 17:09:43', NULL);
INSERT INTO `flower_festival` VALUES (4, '国庆节', 0, '2018-11-29 17:09:43', NULL);
INSERT INTO `flower_festival` VALUES (5, '中秋节', 0, '2018-11-29 17:09:43', NULL);
COMMIT;

-- ----------------------------
-- Table structure for flower_info
-- ----------------------------
DROP TABLE IF EXISTS `flower_info`;
CREATE TABLE `flower_info` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `flower_name` varchar(255) DEFAULT NULL COMMENT '名字',
  `delete` int(1) DEFAULT '0' COMMENT '是否删除 0否 1是',
  `flower_language` varchar(500) DEFAULT NULL COMMENT '花语',
  `flower_img` varchar(500) DEFAULT NULL,
  `recommend` int(1) DEFAULT '0' COMMENT '推荐 0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1067322425079787562 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_info
-- ----------------------------
BEGIN;
INSERT INTO `flower_info` VALUES (1, '2018-11-16 09:34:03', '', '紫滕花', 0, '对你执着，最幸福的时刻', 'images/flowers/紫藤.jpg', 0);
INSERT INTO `flower_info` VALUES (2, '2018-11-01 09:34:06', '', '紫罗兰', 0, '永恒的美丽，最适合送给天秤的淑女。', 'images/flowers/蓝色紫罗兰.jpg', 0);
INSERT INTO `flower_info` VALUES (3, '2018-11-08 09:34:10', '', '勿忘我', 0, '永恒的爱，浓情厚谊 ，永不变的心，永远的回忆', 'images/flowers/蓝色勿忘我.jpg', 0);
INSERT INTO `flower_info` VALUES (4, '2018-11-16 09:34:15', NULL, '水仙花', 0, '只爱自己', 'images/flowers/水仙花.jpg', 0);
INSERT INTO `flower_info` VALUES (5, '2018-11-16 09:34:17', NULL, '满天星', 0, '思念、清纯、梦境、真心喜欢、喜悦', 'images/flowers/满天星.jpg', 0);
INSERT INTO `flower_info` VALUES (6, '2018-11-16 09:34:20', NULL, '蝴蝶兰', 0, '我爱你、幸福向你飞来', 'images/flowers/蝴蝶兰.jpg', 0);
INSERT INTO `flower_info` VALUES (1067322425079787557, '2018-11-27 16:59:21', '', '玫瑰花', 0, '爱情、爱与美、容光焕发  ', 'images/flowers/白玫瑰1.jpg', 1);
INSERT INTO `flower_info` VALUES (1067322425079787558, '2018-11-29 09:14:30', '', '百合花', 0, '在中国百合具有百年好合美好家庭、伟大的爱之含意，有深深祝福的意义。受到这种花的祝福的人具有清纯天真的性格，集众人宠爱于一身，不过光凭这一点并不能平静度过一生，必须具备自制力，抵抗外界的诱惑，才能保持不被污染的纯真。', 'images/flowers/粉色百合花.jpg', 0);
INSERT INTO `flower_info` VALUES (1067322425079787559, '2018-11-29 09:19:17', '', '牡丹花', 0, '圆满、浓情、富贵 。', 'images/flowers/牡丹.jpg', 0);
INSERT INTO `flower_info` VALUES (1067322425079787560, '2018-11-29 09:28:52', '', '雏菊', 0, '永远的快乐（Happy forever）', 'images/flowers/蓝色雏菊花.jpg', 0);
INSERT INTO `flower_info` VALUES (1067322425079787561, '2018-11-29 09:33:15', NULL, '樱花', 0, '生命、幸福一生一世永不放弃，命运的法则就是循环。　　\n', 'images/flowers/樱花1.jpg', 0);
COMMIT;

-- ----------------------------
-- Table structure for flower_season
-- ----------------------------
DROP TABLE IF EXISTS `flower_season`;
CREATE TABLE `flower_season` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_season
-- ----------------------------
BEGIN;
INSERT INTO `flower_season` VALUES (1, '春', 0, '2018-11-29 17:06:52', NULL);
INSERT INTO `flower_season` VALUES (2, '夏', 0, '2018-11-29 17:07:57', NULL);
INSERT INTO `flower_season` VALUES (3, '秋', 0, '2018-11-29 17:07:57', NULL);
INSERT INTO `flower_season` VALUES (4, '冬', 0, '2018-11-29 17:07:57', NULL);
COMMIT;

-- ----------------------------
-- Table structure for flower_specific
-- ----------------------------
DROP TABLE IF EXISTS `flower_specific`;
CREATE TABLE `flower_specific` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `fid` bigint(11) DEFAULT NULL COMMENT 'flower_info 表 id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `delete` int(1) DEFAULT '0' COMMENT '是否删除 0否 1是',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_specific
-- ----------------------------
BEGIN;
INSERT INTO `flower_specific` VALUES (1, 2, '2018-11-26 16:37:02', NULL, 0, '传说', '据希腊神话记述，主管爱与美的女神维纳斯，因情人远行，依依惜别，晶莹的泪珠滴落到泥土上，第二年春天竟然发芽生枝，开出一朵朵美丽芳香的花儿来，这就是紫罗兰。 ');
INSERT INTO `flower_specific` VALUES (2, 2, '2018-11-26 17:05:49', NULL, 0, '拿破仑与紫罗兰', '拿破仑独钟情于紫罗兰。他的追随者们把它作为拿破仑派的标志，相信它会为这位受挫的君主重新带来成功和幸福。1815年3月20日，当紫罗兰在法国南方开出第一批花朵时，拿破仑成功地逃出厄尔巴岛，回到他的崇拜者中间。他们迎接他时，不住地高呼：\"欢迎您，紫罗兰之父！\"此时，人们手里举着紫罗兰，头上插着紫罗兰，所有的商店、公用建筑乃至家家户户都用紫罗兰装饰起来了，希望这春天的花能给他们带来好运，让拿破仑重新称霸欧洲。 可惜这股高兴劲没有持续多久。6月22日拿破仑被迫宣布放弃皇位，将它传给年幼的\\儿子拿破仑第二。可是这位皇太子并没有继承父亲的雄心和伟业：他没有接受皇位，而是到他外祖父--奥地利皇帝弗兰茨一世的宫庭中过与世无争的悠闲日子去了。 拿破仑失去皇位后，在被押解到圣海伦岛去之前的一个星期，突然念起约瑟芬的旧情，最后一次到马里美宁城堡去为她扫墓，并在墓前种了一丛终年开花的名贵的紫罗兰。 拿破仑死后，人们在他从未离身的金首饰盒里发现了两样东西：两朵枯萎的紫罗兰和一绺浅栗色的头发。后者是他爱子的胎发，而前者是他与约瑟芬的定情之物。 拿破仑第三与紫罗兰 拿破仑的侄子拿破仑第三与紫罗兰也有不解之缘。');
INSERT INTO `flower_specific` VALUES (3, 2, '2018-11-26 17:34:05', NULL, 0, '描述', '紫罗兰又名草桂花、草紫罗兰，是十字花科紫罗兰属的一、二年生或多年生草本，是欧洲名花之一。株高20--70厘米，全株有灰白色星状柔毛。茎直立，多分枝。叶互生，矩圆形或倒披针形，长3--5厘米。总状花序顶生或腋生，两侧薯片基垂囊状，花梗粗壮，花径2厘米，花瓣4枚，有长爪，瓣铺张为十字形。花有紫红、淡红、淡黄、白色等，微香。花期依品种而不同，有春紫罗兰，四、五月开花；夏紫罗兰，六至八月开花；秋紫罗兰，七至九月开花。 紫罗兰喜欢冬季温暖、夏季凉爽、通风良好的环境。冬季能耐短暂的-5℃低温，夏季忌酷热。需肥沃疏松而湿润的土壤，施肥不宜过多，否则对开花不利。喜阳光，为长日照植物。光照和通风不充分，易罹病虫害。春紫罗兰繁殖在9月初播种，发芽适温为20℃。夏紫罗兰在早春温室育苗。秋紫罗兰在秋末播种。紫罗兰是直根性植物，须根不发达，育苗宜于真叶展开前分苗，并尽量少伤根，多带宿土。不易结实的重瓣品种，还可扦插或分根繁殖。');
INSERT INTO `flower_specific` VALUES (6, 1067322425079787557, '2018-11-27 16:59:21', '', 0, '英国国花', '于蔷薇、月季、玫瑰这三种花来说，人们总把它搞混，它们虽同科同属，但却并不完全相同，但人们似乎比较偏爱玫瑰这个词，所以把这三种花统称为玫瑰了。在英国及欧美许多国家，都把攻瑰(月季)定为国花，以表示亲爱，又因茎上有刺,表示严肃。基督教中，相传耶稣被出卖后，被钉在十字架上，鲜血滴在泥土中，十字架下便生长出玫瑰花。\n　　红玫瑰象征了爱情，这可能是世界通用的花语。相传爱神为了救她的情人，跑得太匆忙，玫瑰的刺划破了她的手脚，鲜血染红了玫瑰花。红玫瑰因此成了爱情的信物。');
INSERT INTO `flower_specific` VALUES (7, 1067322425079787557, '2018-11-27 16:59:21', '', 0, '爱情信物', '玫瑰长久以来就象征着美丽和爱情。古希腊和古罗马民族用玫瑰象征他们的爱神阿芙罗狄蒂（维纳斯）。英国著名的Lancaster与York的玫瑰战争（1455-1485），也是各以红、白玫瑰各为象征。最后以亨利七世与伊丽莎白通婚收场，为了纪念，从此之后英格兰以玫瑰为国花，并把皇室徽章改为红白玫瑰。此外，美国、西班牙、卢森堡、保加利亚的国花也是玫瑰。\n    蔷薇、月季、玫瑰这三种花，人们总把它们搞混，它们虽同科同属，但却并不完全相同，但人们似乎比较偏爱玫瑰这个词，所以往往把这三种花统称为“玫瑰”了。在英国及欧美许多国家，都把攻瑰（月季）定为国花，以表示亲爱，又因茎上有刺，表示严肃。基督教中，相传耶稣被出卖后，被钉在十字架上，鲜血滴在泥土中，十字架下便生长出玫瑰花。\n    红玫瑰象征了爱情，这可能是世界通用的花语。相传爱神为了救她的情人，跑得太匆忙，玫瑰的刺划破了她的手脚，鲜血染红了玫瑰花。红玫瑰因此成了爱情的信物。');
INSERT INTO `flower_specific` VALUES (8, 1067322425079787558, '2018-11-29 09:14:30', '', 0, '传说', '相传，在遥远的古代，智利的百合花只有蓝、白两色。公元16世纪，印第安人阿拉乌加诺部族，与西班牙殖民者进行了不屈不捕的抗争。在民族英雄劳塔罗的领导下，阿拉乌加诺人把尔侵者打得落花流水，狼狈逃窜。正当义军节节胜利之际，却由于叛徒的出卖，仲塔罗和他的3万名爱国将士误中殖民主义者埋伏，经过浴血奋战，全部壮烈牺牲。第二年在天，爱国爱国志士捐躯的地方，漫山遍野绽开了红艳艳的百合花——\"戈比爱\"。人们认为这是烈士们今血浇灌过的蓝色、白色百合变成的。因此，在智利获得国家独立后，人们一致赞成将这种野百合花\"戈比爱\"定为国花。智利的国徽国案上，有一族美丽多姿、质朴可爱的花束，它就是一束红色的野百合花\"戈比爱\"，是独立自由的象征。');
INSERT INTO `flower_specific` VALUES (9, 1067322425079787559, '2018-11-29 09:19:17', '', 0, '黑牡丹传说', '相传，很久很久以前，有个年青人，爱上一个任性的公主，她接受任何人的爱，却不给任何人爱。年轻人和公主见了面，公主肆意妄为，想要墨池对面那丛花中的牡丹，墨池是没人可以过去的，它的黑色就是为了保护对面那丛美丽的花，那只牡丹。掉入池中的人，会化为墨色，永远消失。年轻人爱的太深了，一步一步踏入墨池。 他的腿变成了墨色，他的腰变成了墨色，终于拿到了那支牡丹，他往回走，他的手变成了墨色，他的颈变成了墨色，直到那支牡丹变成了墨色，那样娇艳的散发着墨色的光，年轻人变成了墨色，那支牡丹却交到了公主手中，公主呆住了，看到的确实年轻人消失的身躯，她泪流满面。 之后，那个公主也消失了，人们不知道她去了哪里，但在那之后，在池边多了一片墨色叶子的林子，林子中间，有一丛美丽的黑色牡丹，那样娇媚，那样妖娆。林中的叶子很重，凋落的时候会像利刃一样将人劈开，没人敢进那片林。有人说，那是公主的爱。。。。所以，它的花语为：死了都要爱！');
INSERT INTO `flower_specific` VALUES (10, 1067322425079787559, '2018-11-29 09:19:17', '', 0, '白牡丹观赏价值及寓意', '1、白牡丹盆景花摆设于家中，是品位至荣至贵的身份象征。\n2、白牡丹寓意高洁、端庄秀雅、仪态万千、国色天香，是对女人的最高赞美，是女人心中最心仪的礼物。 \n3、 在盆景花中，牡丹花为花中之王，王者风范，系高档次，是送给亲朋好友最理想的选择，表达内心诚挚的祝愿和崇高的敬意。 \n4、 白牡丹摆设在办公室、卧室，当您看到她的美，给人以舒畅的视觉享受，睹物思人、启迪人生，以明智远、激发出内心深处的灵感。 \n5、 摆设在酒店、宾馆经商之地象征生意发达。 \n6、 白牡丹寓意做人的风格：王者风范，以及人对美好事物的追求和向往。\n7、 净化室内空气，美化居室环境。实践证明白牡丹可以消除室内墙壁散发出的有毒气体。');
INSERT INTO `flower_specific` VALUES (11, 1067322425079787560, '2018-11-29 09:28:52', '', 0, '介绍', '雏菊又名延命菊，是菊科多年生草本植物，原产欧洲。它的叶为匙形丛生呈莲座状，密集矮生，颜色碧翠。从叶间抽出花葶，葶一花，错落排列，外观古朴，花朵娇小玲珑，色彩和谐。早春开花，生气盎然，具有君子的风度和天真烂漫的风采，深得意大利人的喜爱，因而推举为国花。');
INSERT INTO `flower_specific` VALUES (12, 1067322425079787561, '2018-11-29 09:33:32', NULL, 0, '传说1', '日本的国花樱花(Cherryblossom)就源于一个美丽动人的神话故事。据说，在很久以前，有一个聪明美丽的姑娘、名叫木花开耶姬。木花开耶姬即樱花的意思。有一年年底，她从日本冲绳出发，途经九洲，关西、关东，于第二年五，六月间到达北海道，沿途中，她把一朵朵樱花撒遍日本各地。从此，樱花在日本盛开千载。且年年灿若云霞。日本人民非常喜爱樱花。日本人民之所以将樱花定为国花，除了它的纯洁、雅丽、崇高外，还为了纪念那勤劳、善良的木花开耶姬姑娘、并以此象征勤劳、智慧、勇敢的日本人民。');
INSERT INTO `flower_specific` VALUES (13, 1067322425079787561, '2018-11-29 09:33:43', NULL, 0, '传说2', '相传，以前樱花只有白色的 英勇的武士选择了在心爱的樱花树下剖腹 因为当一个武士认为自己达到了人生的辉煌 就会选择结束自己生命 所以樱花树下血流成河 从此樱花开出了红色的⋯⋯樱花的花瓣越红，说明树下的亡魂就越多。\n');
INSERT INTO `flower_specific` VALUES (14, 1067322425079787561, '2018-11-29 09:33:57', NULL, 0, '传说3', '樱花在樱花城中，静静的绽放了数月，每天都看到很多情侣在樱花树下，聊天，谈心，樱花的花瓣渐渐的飘落下来，美及了。所以，樱花就成为了爱情的象征。但是，每个人都希望自己得到爱情，得到幸福，樱花树上的妖精(樱の花)也一样，她看到别人是那么的幸福，自己也想得到，就独自离开了樱花树。 樱花的花瓣仍然在飘落，樱の花在人群中，寻找着自己的另一半，她找了好久好久，当她想放弃而回到樱花树上时，他出现了，他开始为她带来快乐，他开始照顾她，他们一起聊天到深夜。这才得知他是从遥远的国家，因船迷失了方向而来到了这里，樱の花听了，知道，他一定会走的，一定会回到自己的国家。樱の花为了珍惜这段时光，她每天都和他相遇在樱花树下，天天聊天⋯⋯但是，好时光总是短暂的，他要离开了，他来和樱の花道别了。樱の花虽然早有准备，可还是禁不起这个打击，她背对着他，只说了一个字“哦”。他走了，在茫茫的海上，走了。樱の花一个人在樱花树下，哭泣着，樱花的花瓣为了安慰她，而飘落下来，微风吹过，满地的花瓣飘了起来，樱の花的心碎了，她哭了几天几夜，最终决定了，她是该回去的时候了。她看着樱花树，想到：我是樱花的妖精，我最终是樱花树上的一片花瓣，最终是只能看着别人有情人终成眷属的，自己是不会得到幸福的⋯⋯就这样，她消失了，有人说，她回到了树上，有人说，她因为过度的失落，而化为花瓣，随着风一起去寻找他了⋯⋯ 几年后，他回来了，他竟然回来了，他来到当初约定的地方，寻找着她，一直都没有找到，他失落了。原来，他回来是为了告诉她，他已经爱上了她。当他听到村里人在流传的传说时，他知道一切都晚了，他在樱花树下发誓，希望所以有情人能忠诚眷属，不要再有谁像自己一样错过了⋯⋯这次，他再也没离开樱花城了，他还在不断的寻找着她的身影，直到死去⋯⋯⋯⋯ 几百年过去了，樱花仍然在绽放着，许多的情侣为了这个传说而来到这里，见证自己的幸福。不知道是命运的安排，还是⋯⋯樱の花转世投胎成为了世人，她来到樱花树下，总觉得这里似成相识。风突然刮了起来，花瓣瞬间吹过，她的帽子被吹走了，被一名男子接到了，是他，他也来了，这一次，他们一定不会再错过了⋯⋯');
COMMIT;

-- ----------------------------
-- Table structure for flower_world
-- ----------------------------
DROP TABLE IF EXISTS `flower_world`;
CREATE TABLE `flower_world` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '国家',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名',
  `content` varchar(255) DEFAULT NULL COMMENT '说明',
  `status` int(1) DEFAULT '0' COMMENT '0正常 1异常',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) DEFAULT NULL COMMENT '菜单地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES (1, '季节分类', '按季节查询', 0, 0, '2018-11-28 09:52:58', NULL);
INSERT INTO `menu` VALUES (2, '颜色分类', '按颜色查询', 0, 0, '2018-11-28 09:53:08', NULL);
INSERT INTO `menu` VALUES (3, '国花查询', '各国国花', 0, 0, '2018-11-28 09:53:19', NULL);
INSERT INTO `menu` VALUES (4, '节日之花', '节日之花', 0, 0, '2018-11-28 09:53:55', NULL);
INSERT INTO `menu` VALUES (5, '世界之花', '世界之花', 0, 0, '2018-11-28 14:40:14', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `level` int(1) DEFAULT NULL COMMENT '等级，0-超级管理员 1-普通用户',
  `delete` int(1) DEFAULT NULL COMMENT '是否删除，0否 1是',
  `status` int(1) DEFAULT NULL COMMENT '账号状态，0正常 1锁定 2异常',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'aaa', 'aaa', NULL, NULL, 0, 0, 0, '2018-11-26 14:39:44', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(11) DEFAULT NULL COMMENT '用户 id',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `delete` int(1) DEFAULT NULL COMMENT '是否删除 0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` int(1) DEFAULT NULL COMMENT '1新增 2查询 3修改 4删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1316 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_log
-- ----------------------------
BEGIN;
INSERT INTO `user_log` VALUES (10, 1, '用户登录', 0, '2018-11-26 11:27:57', 2);
INSERT INTO `user_log` VALUES (11, 1, '查询日志列表', 0, '2018-11-26 11:28:15', 2);
INSERT INTO `user_log` VALUES (12, 1, '查询总数', 0, '2018-11-26 11:28:19', 2);
INSERT INTO `user_log` VALUES (13, 1, '查询日志列表', 0, '2018-11-26 11:28:22', 2);
INSERT INTO `user_log` VALUES (14, 1, '用户登录', 0, '2018-11-26 11:29:30', 2);
INSERT INTO `user_log` VALUES (15, 1, '查询总数', 0, '2018-11-26 11:31:22', 2);
INSERT INTO `user_log` VALUES (16, 1, '查询总数', 0, '2018-11-26 11:31:26', 2);
INSERT INTO `user_log` VALUES (17, 1, '查询总数', 0, '2018-11-26 11:31:43', 2);
INSERT INTO `user_log` VALUES (18, 1, '查询总数', 0, '2018-11-26 11:33:19', 2);
INSERT INTO `user_log` VALUES (19, 1, '查询用户列表', 0, '2018-11-26 11:33:24', 2);
INSERT INTO `user_log` VALUES (20, 1, '查询总数', 0, '2018-11-26 11:34:49', 2);
INSERT INTO `user_log` VALUES (21, 1, '查询鲜花列表', 0, '2018-11-26 11:34:56', 2);
INSERT INTO `user_log` VALUES (22, 1, '查询总数', 0, '2018-11-26 11:35:00', 2);
INSERT INTO `user_log` VALUES (23, 1, '查询鲜花列表', 0, '2018-11-26 11:35:09', 2);
INSERT INTO `user_log` VALUES (24, 1, '查询总数', 0, '2018-11-26 11:43:49', 2);
INSERT INTO `user_log` VALUES (25, 1, '查询总数', 0, '2018-11-26 11:43:54', 2);
INSERT INTO `user_log` VALUES (26, 1, '查询总数', 0, '2018-11-26 11:44:03', 2);
INSERT INTO `user_log` VALUES (27, 1, '查询用户列表', 0, '2018-11-26 11:44:08', 2);
INSERT INTO `user_log` VALUES (28, 1, '查询鲜花列表', 0, '2018-11-26 11:44:39', 2);
INSERT INTO `user_log` VALUES (29, 1, '查询鲜花列表', 0, '2018-11-26 11:44:39', 2);
INSERT INTO `user_log` VALUES (30, 1, '查询总数', 0, '2018-11-26 11:44:43', 2);
INSERT INTO `user_log` VALUES (31, 1, '查询总数', 0, '2018-11-26 11:45:06', 2);
INSERT INTO `user_log` VALUES (32, 1, '查询鲜花列表', 0, '2018-11-26 11:45:07', 2);
INSERT INTO `user_log` VALUES (33, 1, '查询总数', 0, '2018-11-26 11:49:56', 2);
INSERT INTO `user_log` VALUES (34, 1, '查询鲜花列表', 0, '2018-11-26 11:49:59', 2);
INSERT INTO `user_log` VALUES (35, 1, '查询总数', 0, '2018-11-26 11:50:19', 2);
INSERT INTO `user_log` VALUES (36, 1, '查询鲜花列表', 0, '2018-11-26 11:50:23', 2);
INSERT INTO `user_log` VALUES (37, 1, '查询总数', 0, '2018-11-26 11:50:40', 2);
INSERT INTO `user_log` VALUES (38, 1, '查询鲜花列表', 0, '2018-11-26 11:50:42', 2);
INSERT INTO `user_log` VALUES (39, 1, '查询总数', 0, '2018-11-26 11:51:55', 2);
INSERT INTO `user_log` VALUES (40, 1, '查询鲜花列表', 0, '2018-11-26 11:51:57', 2);
INSERT INTO `user_log` VALUES (41, 1, '查询总数', 0, '2018-11-26 11:52:18', 2);
INSERT INTO `user_log` VALUES (42, 1, '查询鲜花列表', 0, '2018-11-26 11:52:19', 2);
INSERT INTO `user_log` VALUES (43, 1, '查询总数', 0, '2018-11-26 11:52:28', 2);
INSERT INTO `user_log` VALUES (44, 1, '查询鲜花列表', 0, '2018-11-26 11:52:28', 2);
INSERT INTO `user_log` VALUES (45, 1, '查询总数', 0, '2018-11-26 11:52:40', 2);
INSERT INTO `user_log` VALUES (46, 1, '查询鲜花列表', 0, '2018-11-26 11:52:41', 2);
INSERT INTO `user_log` VALUES (47, 1, '查询总数', 0, '2018-11-26 11:52:47', 2);
INSERT INTO `user_log` VALUES (48, 1, '查询鲜花列表', 0, '2018-11-26 11:52:48', 2);
INSERT INTO `user_log` VALUES (49, 1, '查询总数', 0, '2018-11-26 11:53:04', 2);
INSERT INTO `user_log` VALUES (50, 1, '查询鲜花列表', 0, '2018-11-26 11:53:05', 2);
INSERT INTO `user_log` VALUES (51, 1, '查询总数', 0, '2018-11-26 11:53:31', 2);
INSERT INTO `user_log` VALUES (52, 1, '查询鲜花列表', 0, '2018-11-26 11:53:34', 2);
INSERT INTO `user_log` VALUES (53, 1, '查询总数', 0, '2018-11-26 11:54:01', 2);
INSERT INTO `user_log` VALUES (54, 1, '查询鲜花列表', 0, '2018-11-26 11:54:02', 2);
INSERT INTO `user_log` VALUES (55, 1, '查询鲜花列表', 0, '2018-11-26 11:54:03', 2);
INSERT INTO `user_log` VALUES (56, 1, '查询总数', 0, '2018-11-26 11:54:40', 2);
INSERT INTO `user_log` VALUES (57, 1, '查询鲜花列表', 0, '2018-11-26 11:54:41', 2);
INSERT INTO `user_log` VALUES (58, 1, '查询总数', 0, '2018-11-26 11:54:57', 2);
INSERT INTO `user_log` VALUES (59, 1, '查询鲜花列表', 0, '2018-11-26 11:54:58', 2);
INSERT INTO `user_log` VALUES (60, 1, '查询总数', 0, '2018-11-26 11:55:13', 2);
INSERT INTO `user_log` VALUES (61, 1, '查询鲜花列表', 0, '2018-11-26 11:55:14', 2);
INSERT INTO `user_log` VALUES (62, 1, '查询总数', 0, '2018-11-26 11:55:26', 2);
INSERT INTO `user_log` VALUES (63, 1, '查询总数', 0, '2018-11-26 11:55:28', 2);
INSERT INTO `user_log` VALUES (64, 1, '查询鲜花列表', 0, '2018-11-26 11:55:29', 2);
INSERT INTO `user_log` VALUES (65, 1, '查询鲜花列表', 0, '2018-11-26 11:55:30', 2);
INSERT INTO `user_log` VALUES (66, 1, '查询鲜花列表', 0, '2018-11-26 11:55:33', 2);
INSERT INTO `user_log` VALUES (67, 1, '查询鲜花列表', 0, '2018-11-26 11:55:37', 2);
INSERT INTO `user_log` VALUES (68, 1, '查询鲜花列表', 0, '2018-11-26 11:55:45', 2);
INSERT INTO `user_log` VALUES (69, 1, '查询鲜花列表', 0, '2018-11-26 13:04:40', 2);
INSERT INTO `user_log` VALUES (70, 1, '查询鲜花列表', 0, '2018-11-26 13:04:44', 2);
INSERT INTO `user_log` VALUES (71, 1, '查询鲜花列表', 0, '2018-11-26 13:04:51', 2);
INSERT INTO `user_log` VALUES (72, 1, '查询总数', 0, '2018-11-26 13:04:54', 2);
INSERT INTO `user_log` VALUES (73, 1, '用户登录', 0, '2018-11-26 13:04:57', 2);
INSERT INTO `user_log` VALUES (74, 1, '查询用户列表', 0, '2018-11-26 13:05:01', 2);
INSERT INTO `user_log` VALUES (75, 1, '查询总数', 0, '2018-11-26 13:05:10', 2);
INSERT INTO `user_log` VALUES (76, 1, '查询鲜花列表', 0, '2018-11-26 13:05:11', 2);
INSERT INTO `user_log` VALUES (77, 1, '查询鲜花列表', 0, '2018-11-26 13:05:16', 2);
INSERT INTO `user_log` VALUES (78, 1, '查询鲜花列表', 0, '2018-11-26 13:05:17', 2);
INSERT INTO `user_log` VALUES (79, 1, '查询鲜花列表', 0, '2018-11-26 13:07:22', 2);
INSERT INTO `user_log` VALUES (80, 1, '查询鲜花列表', 0, '2018-11-26 13:09:43', 2);
INSERT INTO `user_log` VALUES (81, 1, '查询鲜花列表', 0, '2018-11-26 13:11:46', 2);
INSERT INTO `user_log` VALUES (82, 1, '查询鲜花列表', 0, '2018-11-26 13:16:57', 2);
INSERT INTO `user_log` VALUES (83, 1, '查询鲜花列表', 0, '2018-11-26 13:17:01', 2);
INSERT INTO `user_log` VALUES (84, 1, '查询鲜花列表', 0, '2018-11-26 13:18:49', 2);
INSERT INTO `user_log` VALUES (85, 1, '查询鲜花列表', 0, '2018-11-26 13:18:52', 2);
INSERT INTO `user_log` VALUES (86, 1, '查询鲜花列表', 0, '2018-11-26 13:22:12', 2);
INSERT INTO `user_log` VALUES (87, 1, '查询鲜花列表', 0, '2018-11-26 13:22:14', 2);
INSERT INTO `user_log` VALUES (88, 1, '查询鲜花列表', 0, '2018-11-26 13:22:19', 2);
INSERT INTO `user_log` VALUES (89, 1, '查询鲜花列表', 0, '2018-11-26 13:23:33', 2);
INSERT INTO `user_log` VALUES (90, 1, '查询总数', 0, '2018-11-26 13:55:38', 2);
INSERT INTO `user_log` VALUES (91, 1, '查询总数', 0, '2018-11-26 13:56:15', 2);
INSERT INTO `user_log` VALUES (92, 1, '查询总数', 0, '2018-11-26 13:56:16', 2);
INSERT INTO `user_log` VALUES (93, 1, '查询总数', 0, '2018-11-26 13:56:43', 2);
INSERT INTO `user_log` VALUES (94, 1, '查询总数', 0, '2018-11-26 13:56:44', 2);
INSERT INTO `user_log` VALUES (95, 1, '查询总数', 0, '2018-11-26 13:56:44', 2);
INSERT INTO `user_log` VALUES (96, 1, '查询总数', 0, '2018-11-26 13:56:45', 2);
INSERT INTO `user_log` VALUES (97, 1, '查询总数', 0, '2018-11-26 14:06:10', 2);
INSERT INTO `user_log` VALUES (98, 1, '查询总数', 0, '2018-11-26 14:16:20', 2);
INSERT INTO `user_log` VALUES (99, 1, '查询总数', 0, '2018-11-26 14:16:22', 2);
INSERT INTO `user_log` VALUES (100, 1, '查询总数', 0, '2018-11-26 14:16:23', 2);
INSERT INTO `user_log` VALUES (101, 1, '查询总数', 0, '2018-11-26 14:21:43', 2);
INSERT INTO `user_log` VALUES (102, 1, '查询总数', 0, '2018-11-26 14:27:54', 2);
INSERT INTO `user_log` VALUES (103, 1, '查询总数', 0, '2018-11-26 14:28:19', 2);
INSERT INTO `user_log` VALUES (104, 1, '查询总数', 0, '2018-11-26 14:28:51', 2);
INSERT INTO `user_log` VALUES (105, 1, '查询总数', 0, '2018-11-26 14:28:56', 2);
INSERT INTO `user_log` VALUES (106, 1, '查询总数', 0, '2018-11-26 14:30:42', 2);
INSERT INTO `user_log` VALUES (107, 1, '查询用户列表', 0, '2018-11-26 14:30:48', 2);
INSERT INTO `user_log` VALUES (108, 1, '查询总数', 0, '2018-11-26 14:31:24', 2);
INSERT INTO `user_log` VALUES (109, 1, '查询总数', 0, '2018-11-26 14:33:59', 2);
INSERT INTO `user_log` VALUES (110, 1, '查询鲜花列表', 0, '2018-11-26 14:36:22', 2);
INSERT INTO `user_log` VALUES (111, 1, '查询总数', 0, '2018-11-26 14:36:27', 2);
INSERT INTO `user_log` VALUES (112, 1, '查询鲜花列表', 0, '2018-11-26 14:36:28', 2);
INSERT INTO `user_log` VALUES (113, 1, '查询用户列表', 0, '2018-11-26 14:38:22', 2);
INSERT INTO `user_log` VALUES (114, 1, '查询用户列表', 0, '2018-11-26 14:39:52', 2);
INSERT INTO `user_log` VALUES (115, 1, '查询鲜花列表', 0, '2018-11-26 14:47:40', 2);
INSERT INTO `user_log` VALUES (116, 1, '查询用户列表', 0, '2018-11-26 14:56:10', 2);
INSERT INTO `user_log` VALUES (117, 1, '查询总数', 0, '2018-11-26 14:57:19', 2);
INSERT INTO `user_log` VALUES (118, 1, '查询用户列表', 0, '2018-11-26 15:00:58', 2);
INSERT INTO `user_log` VALUES (119, 1, '查询总数', 0, '2018-11-26 15:01:02', 2);
INSERT INTO `user_log` VALUES (120, 1, '查询用户列表', 0, '2018-11-26 15:01:03', 2);
INSERT INTO `user_log` VALUES (121, 1, '查询用户列表', 0, '2018-11-26 15:05:22', 2);
INSERT INTO `user_log` VALUES (122, 1, '查询用户列表', 0, '2018-11-26 15:05:33', 2);
INSERT INTO `user_log` VALUES (123, 1, '查询用户列表', 0, '2018-11-26 15:05:50', 2);
INSERT INTO `user_log` VALUES (124, 1, '查询用户列表', 0, '2018-11-26 15:06:21', 2);
INSERT INTO `user_log` VALUES (125, 1, '查询用户列表', 0, '2018-11-26 15:08:52', 2);
INSERT INTO `user_log` VALUES (126, 1, '查询用户列表', 0, '2018-11-26 15:10:37', 2);
INSERT INTO `user_log` VALUES (127, 1, '查询用户列表', 0, '2018-11-26 15:12:46', 2);
INSERT INTO `user_log` VALUES (128, 1, '查询用户列表', 0, '2018-11-26 15:15:06', 2);
INSERT INTO `user_log` VALUES (129, 1, '查询用户列表', 0, '2018-11-26 15:18:01', 2);
INSERT INTO `user_log` VALUES (130, 1, '查询用户列表', 0, '2018-11-26 15:18:13', 2);
INSERT INTO `user_log` VALUES (131, 1, '查询用户列表', 0, '2018-11-26 15:20:06', 2);
INSERT INTO `user_log` VALUES (132, 1, '查询用户列表', 0, '2018-11-26 15:21:34', 2);
INSERT INTO `user_log` VALUES (133, 1, '查询总数', 0, '2018-11-26 15:21:39', 2);
INSERT INTO `user_log` VALUES (134, 1, '查询用户列表', 0, '2018-11-26 15:21:40', 2);
INSERT INTO `user_log` VALUES (135, 1, '查询用户列表', 0, '2018-11-26 15:22:53', 2);
INSERT INTO `user_log` VALUES (136, 1, '查询用户列表', 0, '2018-11-26 15:25:05', 2);
INSERT INTO `user_log` VALUES (137, 1, '查询用户列表', 0, '2018-11-26 15:27:40', 2);
INSERT INTO `user_log` VALUES (138, 1, '查询用户列表', 0, '2018-11-26 15:28:36', 2);
INSERT INTO `user_log` VALUES (139, 1, '查询用户列表', 0, '2018-11-26 15:30:07', 2);
INSERT INTO `user_log` VALUES (140, 1, '查询用户列表', 0, '2018-11-26 15:30:10', 2);
INSERT INTO `user_log` VALUES (141, 1, '查询用户列表', 0, '2018-11-26 15:30:14', 2);
INSERT INTO `user_log` VALUES (142, 1, '查询总数', 0, '2018-11-26 15:30:31', 2);
INSERT INTO `user_log` VALUES (143, 1, '查询用户列表', 0, '2018-11-26 15:30:48', 2);
INSERT INTO `user_log` VALUES (144, 1, '查询用户列表', 0, '2018-11-26 15:30:51', 2);
INSERT INTO `user_log` VALUES (145, 1, '查询总数', 0, '2018-11-26 15:30:54', 2);
INSERT INTO `user_log` VALUES (146, 1, '查询用户列表', 0, '2018-11-26 15:30:55', 2);
INSERT INTO `user_log` VALUES (147, 1, '查询总数', 0, '2018-11-26 15:31:07', 2);
INSERT INTO `user_log` VALUES (148, 1, '查询用户列表', 0, '2018-11-26 15:31:08', 2);
INSERT INTO `user_log` VALUES (149, 1, '查询总数', 0, '2018-11-26 15:31:19', 2);
INSERT INTO `user_log` VALUES (150, 1, '查询用户列表', 0, '2018-11-26 15:31:20', 2);
INSERT INTO `user_log` VALUES (151, 1, '查询总数', 0, '2018-11-26 15:32:35', 2);
INSERT INTO `user_log` VALUES (152, 1, '查询用户列表', 0, '2018-11-26 15:32:36', 2);
INSERT INTO `user_log` VALUES (153, 1, '查询用户列表', 0, '2018-11-26 15:32:39', 2);
INSERT INTO `user_log` VALUES (154, 1, '查询用户列表', 0, '2018-11-26 15:32:42', 2);
INSERT INTO `user_log` VALUES (155, 1, '查询总数', 0, '2018-11-26 15:34:25', 2);
INSERT INTO `user_log` VALUES (156, 1, '查询用户列表', 0, '2018-11-26 15:34:26', 2);
INSERT INTO `user_log` VALUES (157, 1, '查询总数', 0, '2018-11-26 15:34:47', 2);
INSERT INTO `user_log` VALUES (158, 1, '查询用户列表', 0, '2018-11-26 15:34:48', 2);
INSERT INTO `user_log` VALUES (159, 1, '查询总数', 0, '2018-11-26 15:35:21', 2);
INSERT INTO `user_log` VALUES (160, 1, '查询用户列表', 0, '2018-11-26 15:35:22', 2);
INSERT INTO `user_log` VALUES (161, 1, '查询鲜花列表', 0, '2018-11-26 15:48:38', 2);
INSERT INTO `user_log` VALUES (162, 1, '查询总数', 0, '2018-11-26 15:53:30', 2);
INSERT INTO `user_log` VALUES (163, 1, '查询鲜花列表', 0, '2018-11-26 15:53:31', 2);
INSERT INTO `user_log` VALUES (164, 1, '查询总数', 0, '2018-11-26 15:53:50', 2);
INSERT INTO `user_log` VALUES (165, 1, '查询鲜花列表', 0, '2018-11-26 15:53:51', 2);
INSERT INTO `user_log` VALUES (166, 1, '查询总数', 0, '2018-11-26 15:57:00', 2);
INSERT INTO `user_log` VALUES (167, 1, '查询鲜花列表', 0, '2018-11-26 15:57:01', 2);
INSERT INTO `user_log` VALUES (168, 1, '查询鲜花列表', 0, '2018-11-26 16:00:09', 2);
INSERT INTO `user_log` VALUES (169, 1, '查询总数', 0, '2018-11-26 16:00:44', 2);
INSERT INTO `user_log` VALUES (170, 1, '查询鲜花列表', 0, '2018-11-26 16:00:45', 2);
INSERT INTO `user_log` VALUES (171, 1, '查询总数', 0, '2018-11-26 16:00:53', 2);
INSERT INTO `user_log` VALUES (172, 1, '查询鲜花列表', 0, '2018-11-26 16:00:53', 2);
INSERT INTO `user_log` VALUES (173, 1, '查询总数', 0, '2018-11-26 16:01:48', 2);
INSERT INTO `user_log` VALUES (174, 1, '查询鲜花列表', 0, '2018-11-26 16:01:49', 2);
INSERT INTO `user_log` VALUES (175, 1, '查询总数', 0, '2018-11-26 16:09:03', 2);
INSERT INTO `user_log` VALUES (176, 1, '查询鲜花列表', 0, '2018-11-26 16:09:04', 2);
INSERT INTO `user_log` VALUES (177, 1, '查询总数', 0, '2018-11-26 16:11:46', 2);
INSERT INTO `user_log` VALUES (178, 1, '查询鲜花列表', 0, '2018-11-26 16:11:46', 2);
INSERT INTO `user_log` VALUES (179, 1, '查询总数', 0, '2018-11-26 16:12:34', 2);
INSERT INTO `user_log` VALUES (180, 1, '查询鲜花列表', 0, '2018-11-26 16:12:35', 2);
INSERT INTO `user_log` VALUES (181, 1, '查询总数', 0, '2018-11-26 16:13:01', 2);
INSERT INTO `user_log` VALUES (182, 1, '查询鲜花列表', 0, '2018-11-26 16:13:06', 2);
INSERT INTO `user_log` VALUES (183, 1, '查询总数', 0, '2018-11-26 16:13:16', 2);
INSERT INTO `user_log` VALUES (184, 1, '查询鲜花列表', 0, '2018-11-26 16:13:17', 2);
INSERT INTO `user_log` VALUES (185, 1, '查询总数', 0, '2018-11-26 16:13:28', 2);
INSERT INTO `user_log` VALUES (186, 1, '查询鲜花列表', 0, '2018-11-26 16:13:29', 2);
INSERT INTO `user_log` VALUES (187, 1, '查询总数', 0, '2018-11-26 16:15:30', 2);
INSERT INTO `user_log` VALUES (188, 1, '查询鲜花列表', 0, '2018-11-26 16:15:30', 2);
INSERT INTO `user_log` VALUES (189, 1, '查询总数', 0, '2018-11-26 16:16:09', 2);
INSERT INTO `user_log` VALUES (190, 1, '查询鲜花列表', 0, '2018-11-26 16:16:10', 2);
INSERT INTO `user_log` VALUES (191, 1, '查询总数', 0, '2018-11-26 16:18:46', 2);
INSERT INTO `user_log` VALUES (192, 1, '查询鲜花列表', 0, '2018-11-26 16:18:47', 2);
INSERT INTO `user_log` VALUES (193, 1, '根据 id 查询鲜花信息', 0, '2018-11-26 16:21:08', 2);
INSERT INTO `user_log` VALUES (194, 1, '根据 id 查询鲜花信息', 0, '2018-11-26 16:36:42', 2);
INSERT INTO `user_log` VALUES (195, 1, '根据 id 查询鲜花信息', 0, '2018-11-26 16:38:57', 2);
INSERT INTO `user_log` VALUES (196, 1, '根据 id 查询鲜花信息', 0, '2018-11-26 16:39:12', 2);
INSERT INTO `user_log` VALUES (197, 1, '根据 id 查询鲜花信息', 0, '2018-11-26 16:39:13', 2);
INSERT INTO `user_log` VALUES (198, 1, '根据 id 查询鲜花信息', 0, '2018-11-26 16:39:13', 2);
INSERT INTO `user_log` VALUES (199, 1, '根据 id 查询鲜花信息', 0, '2018-11-26 16:42:18', 2);
INSERT INTO `user_log` VALUES (200, 1, '根据 id 查询鲜花信息', 0, '2018-11-26 16:43:59', 2);
INSERT INTO `user_log` VALUES (201, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 16:44:44', 2);
INSERT INTO `user_log` VALUES (202, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 16:47:41', 2);
INSERT INTO `user_log` VALUES (203, 1, '查询总数', 0, '2018-11-26 16:48:10', 2);
INSERT INTO `user_log` VALUES (204, 1, '查询鲜花列表', 0, '2018-11-26 16:48:36', 2);
INSERT INTO `user_log` VALUES (205, 1, '查询总数', 0, '2018-11-26 16:49:01', 2);
INSERT INTO `user_log` VALUES (206, 1, '查询鲜花列表', 0, '2018-11-26 16:49:02', 2);
INSERT INTO `user_log` VALUES (207, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 16:49:04', 2);
INSERT INTO `user_log` VALUES (208, 1, '查询总数', 0, '2018-11-26 17:03:18', 2);
INSERT INTO `user_log` VALUES (209, 1, '查询鲜花列表', 0, '2018-11-26 17:03:19', 2);
INSERT INTO `user_log` VALUES (210, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:03:20', 2);
INSERT INTO `user_log` VALUES (211, 1, '查询总数', 0, '2018-11-26 17:03:52', 2);
INSERT INTO `user_log` VALUES (212, 1, '查询鲜花列表', 0, '2018-11-26 17:03:53', 2);
INSERT INTO `user_log` VALUES (213, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:03:55', 2);
INSERT INTO `user_log` VALUES (214, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:04:19', 2);
INSERT INTO `user_log` VALUES (215, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:08:11', 2);
INSERT INTO `user_log` VALUES (216, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:09:54', 2);
INSERT INTO `user_log` VALUES (217, 1, '查询总数', 0, '2018-11-26 17:12:54', 2);
INSERT INTO `user_log` VALUES (218, 1, '查询鲜花列表', 0, '2018-11-26 17:12:56', 2);
INSERT INTO `user_log` VALUES (219, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:12:58', 2);
INSERT INTO `user_log` VALUES (220, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:13:06', 2);
INSERT INTO `user_log` VALUES (221, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:13:19', 2);
INSERT INTO `user_log` VALUES (222, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:13:28', 2);
INSERT INTO `user_log` VALUES (223, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:13:56', 2);
INSERT INTO `user_log` VALUES (224, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:14:45', 2);
INSERT INTO `user_log` VALUES (225, 1, '查询总数', 0, '2018-11-26 17:15:13', 2);
INSERT INTO `user_log` VALUES (226, 1, '查询鲜花列表', 0, '2018-11-26 17:15:14', 2);
INSERT INTO `user_log` VALUES (227, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:15:15', 2);
INSERT INTO `user_log` VALUES (228, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:15:37', 2);
INSERT INTO `user_log` VALUES (229, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:17:09', 2);
INSERT INTO `user_log` VALUES (230, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:18:46', 2);
INSERT INTO `user_log` VALUES (231, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:18:58', 2);
INSERT INTO `user_log` VALUES (232, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:19:22', 2);
INSERT INTO `user_log` VALUES (233, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:20:06', 2);
INSERT INTO `user_log` VALUES (234, 1, '查询总数', 0, '2018-11-26 17:20:09', 2);
INSERT INTO `user_log` VALUES (235, 1, '查询鲜花列表', 0, '2018-11-26 17:20:11', 2);
INSERT INTO `user_log` VALUES (236, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:20:12', 2);
INSERT INTO `user_log` VALUES (237, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:20:36', 2);
INSERT INTO `user_log` VALUES (238, 1, '查询总数', 0, '2018-11-26 17:21:16', 2);
INSERT INTO `user_log` VALUES (239, 1, '查询鲜花列表', 0, '2018-11-26 17:21:16', 2);
INSERT INTO `user_log` VALUES (240, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:21:17', 2);
INSERT INTO `user_log` VALUES (241, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:22:13', 2);
INSERT INTO `user_log` VALUES (242, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:22:30', 2);
INSERT INTO `user_log` VALUES (243, 1, '查询总数', 0, '2018-11-26 17:22:38', 2);
INSERT INTO `user_log` VALUES (244, 1, '查询鲜花列表', 0, '2018-11-26 17:22:38', 2);
INSERT INTO `user_log` VALUES (245, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:22:39', 2);
INSERT INTO `user_log` VALUES (246, 1, '查询总数', 0, '2018-11-26 17:22:45', 2);
INSERT INTO `user_log` VALUES (247, 1, '查询鲜花列表', 0, '2018-11-26 17:22:46', 2);
INSERT INTO `user_log` VALUES (248, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:22:47', 2);
INSERT INTO `user_log` VALUES (249, 1, '查询总数', 0, '2018-11-26 17:23:07', 2);
INSERT INTO `user_log` VALUES (250, 1, '查询鲜花列表', 0, '2018-11-26 17:23:08', 2);
INSERT INTO `user_log` VALUES (251, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:23:09', 2);
INSERT INTO `user_log` VALUES (252, 1, '查询总数', 0, '2018-11-26 17:23:33', 2);
INSERT INTO `user_log` VALUES (253, 1, '查询鲜花列表', 0, '2018-11-26 17:23:35', 2);
INSERT INTO `user_log` VALUES (254, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:23:37', 2);
INSERT INTO `user_log` VALUES (255, 1, '查询总数', 0, '2018-11-26 17:23:48', 2);
INSERT INTO `user_log` VALUES (256, 1, '查询鲜花列表', 0, '2018-11-26 17:23:49', 2);
INSERT INTO `user_log` VALUES (257, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:23:50', 2);
INSERT INTO `user_log` VALUES (258, 1, '查询总数', 0, '2018-11-26 17:24:20', 2);
INSERT INTO `user_log` VALUES (259, 1, '查询鲜花列表', 0, '2018-11-26 17:24:21', 2);
INSERT INTO `user_log` VALUES (260, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:24:22', 2);
INSERT INTO `user_log` VALUES (261, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:24:46', 2);
INSERT INTO `user_log` VALUES (262, 1, '查询总数', 0, '2018-11-26 17:24:50', 2);
INSERT INTO `user_log` VALUES (263, 1, '查询鲜花列表', 0, '2018-11-26 17:24:51', 2);
INSERT INTO `user_log` VALUES (264, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:24:53', 2);
INSERT INTO `user_log` VALUES (265, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:26:10', 2);
INSERT INTO `user_log` VALUES (266, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:26:32', 2);
INSERT INTO `user_log` VALUES (267, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:26:40', 2);
INSERT INTO `user_log` VALUES (268, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:26:53', 2);
INSERT INTO `user_log` VALUES (269, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:27:00', 2);
INSERT INTO `user_log` VALUES (270, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:27:25', 2);
INSERT INTO `user_log` VALUES (271, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:27:27', 2);
INSERT INTO `user_log` VALUES (272, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:27:30', 2);
INSERT INTO `user_log` VALUES (273, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:27:32', 2);
INSERT INTO `user_log` VALUES (274, 1, '查询鲜花列表', 0, '2018-11-26 17:28:25', 2);
INSERT INTO `user_log` VALUES (275, 1, '查询鲜花列表', 0, '2018-11-26 17:28:27', 2);
INSERT INTO `user_log` VALUES (276, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:28:30', 2);
INSERT INTO `user_log` VALUES (277, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:29:15', 2);
INSERT INTO `user_log` VALUES (278, 1, '查询总数', 0, '2018-11-26 17:29:19', 2);
INSERT INTO `user_log` VALUES (279, 1, '查询鲜花列表', 0, '2018-11-26 17:29:20', 2);
INSERT INTO `user_log` VALUES (280, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:29:22', 2);
INSERT INTO `user_log` VALUES (281, 1, '查询鲜花列表', 0, '2018-11-26 17:34:17', 2);
INSERT INTO `user_log` VALUES (282, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:34:19', 2);
INSERT INTO `user_log` VALUES (283, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-26 17:38:12', 2);
INSERT INTO `user_log` VALUES (284, 1, '查询鲜花列表', 0, '2018-11-27 09:08:07', 2);
INSERT INTO `user_log` VALUES (285, 1, '查询总数', 0, '2018-11-27 10:27:40', 2);
INSERT INTO `user_log` VALUES (286, 1, '查询鲜花列表', 0, '2018-11-27 10:27:41', 2);
INSERT INTO `user_log` VALUES (287, 1, '查询鲜花列表', 0, '2018-11-27 10:27:57', 2);
INSERT INTO `user_log` VALUES (288, 1, '查询总数', 0, '2018-11-27 10:44:35', 2);
INSERT INTO `user_log` VALUES (289, 1, '查询鲜花列表', 0, '2018-11-27 10:44:36', 2);
INSERT INTO `user_log` VALUES (290, 1, '查询总数', 0, '2018-11-27 10:44:56', 2);
INSERT INTO `user_log` VALUES (291, 1, '查询鲜花列表', 0, '2018-11-27 10:44:57', 2);
INSERT INTO `user_log` VALUES (292, 1, '查询鲜花列表', 0, '2018-11-27 10:45:11', 2);
INSERT INTO `user_log` VALUES (293, 1, '查询总数', 0, '2018-11-27 10:45:38', 2);
INSERT INTO `user_log` VALUES (294, 1, '查询鲜花列表', 0, '2018-11-27 10:45:38', 2);
INSERT INTO `user_log` VALUES (295, 1, '查询鲜花列表', 0, '2018-11-27 10:46:15', 2);
INSERT INTO `user_log` VALUES (296, 1, '查询总数', 0, '2018-11-27 10:46:27', 2);
INSERT INTO `user_log` VALUES (297, 1, '查询鲜花列表', 0, '2018-11-27 10:46:27', 2);
INSERT INTO `user_log` VALUES (298, 1, '查询鲜花列表', 0, '2018-11-27 10:47:37', 2);
INSERT INTO `user_log` VALUES (299, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 10:47:38', 2);
INSERT INTO `user_log` VALUES (300, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 10:47:40', 2);
INSERT INTO `user_log` VALUES (301, 1, '查询总数', 0, '2018-11-27 10:48:43', 2);
INSERT INTO `user_log` VALUES (302, 1, '查询鲜花列表', 0, '2018-11-27 10:48:44', 2);
INSERT INTO `user_log` VALUES (303, 1, '查询总数', 0, '2018-11-27 10:49:37', 2);
INSERT INTO `user_log` VALUES (304, 1, '查询鲜花列表', 0, '2018-11-27 10:49:38', 2);
INSERT INTO `user_log` VALUES (305, 1, '查询鲜花列表', 0, '2018-11-27 10:49:48', 2);
INSERT INTO `user_log` VALUES (306, 1, '查询总数', 0, '2018-11-27 10:52:37', 2);
INSERT INTO `user_log` VALUES (307, 1, '查询鲜花列表', 0, '2018-11-27 10:52:38', 2);
INSERT INTO `user_log` VALUES (308, 1, '查询鲜花列表', 0, '2018-11-27 10:54:12', 2);
INSERT INTO `user_log` VALUES (309, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 10:54:14', 2);
INSERT INTO `user_log` VALUES (310, 1, '查询鲜花列表', 0, '2018-11-27 10:55:33', 2);
INSERT INTO `user_log` VALUES (311, 1, '查询总数', 0, '2018-11-27 10:57:02', 2);
INSERT INTO `user_log` VALUES (312, 1, '查询鲜花列表', 0, '2018-11-27 10:57:03', 2);
INSERT INTO `user_log` VALUES (313, 1, '查询总数', 0, '2018-11-27 10:59:44', 2);
INSERT INTO `user_log` VALUES (314, 1, '查询鲜花列表', 0, '2018-11-27 10:59:44', 2);
INSERT INTO `user_log` VALUES (315, 1, '查询总数', 0, '2018-11-27 11:00:07', 2);
INSERT INTO `user_log` VALUES (316, 1, '查询鲜花列表', 0, '2018-11-27 11:00:08', 2);
INSERT INTO `user_log` VALUES (317, 1, '查询总数', 0, '2018-11-27 11:01:10', 2);
INSERT INTO `user_log` VALUES (318, 1, '查询鲜花列表', 0, '2018-11-27 11:01:10', 2);
INSERT INTO `user_log` VALUES (319, 1, '查询鲜花列表', 0, '2018-11-27 11:01:29', 2);
INSERT INTO `user_log` VALUES (320, 1, '查询鲜花列表', 0, '2018-11-27 11:01:41', 2);
INSERT INTO `user_log` VALUES (321, 1, '查询总数', 0, '2018-11-27 11:05:18', 2);
INSERT INTO `user_log` VALUES (322, 1, '查询鲜花列表', 0, '2018-11-27 11:05:19', 2);
INSERT INTO `user_log` VALUES (323, 1, '查询总数', 0, '2018-11-27 11:07:02', 2);
INSERT INTO `user_log` VALUES (324, 1, '查询鲜花列表', 0, '2018-11-27 11:07:02', 2);
INSERT INTO `user_log` VALUES (325, 1, '查询总数', 0, '2018-11-27 11:09:19', 2);
INSERT INTO `user_log` VALUES (326, 1, '查询鲜花列表', 0, '2018-11-27 11:09:20', 2);
INSERT INTO `user_log` VALUES (327, 1, '查询总数', 0, '2018-11-27 11:10:06', 2);
INSERT INTO `user_log` VALUES (328, 1, '查询鲜花列表', 0, '2018-11-27 11:10:07', 2);
INSERT INTO `user_log` VALUES (329, 1, '查询鲜花列表', 0, '2018-11-27 11:10:33', 2);
INSERT INTO `user_log` VALUES (330, 1, '查询鲜花列表', 0, '2018-11-27 11:10:47', 2);
INSERT INTO `user_log` VALUES (331, 1, '查询鲜花列表', 0, '2018-11-27 11:11:08', 2);
INSERT INTO `user_log` VALUES (332, 1, '查询总数', 0, '2018-11-27 11:11:17', 2);
INSERT INTO `user_log` VALUES (333, 1, '查询鲜花列表', 0, '2018-11-27 11:11:18', 2);
INSERT INTO `user_log` VALUES (334, 1, '查询鲜花列表', 0, '2018-11-27 11:11:28', 2);
INSERT INTO `user_log` VALUES (335, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 14:40:05', 2);
INSERT INTO `user_log` VALUES (336, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 14:40:28', 2);
INSERT INTO `user_log` VALUES (337, 1, '查询用户列表', 0, '2018-11-27 14:40:31', 2);
INSERT INTO `user_log` VALUES (338, 1, '查询用户列表', 0, '2018-11-27 14:52:37', 2);
INSERT INTO `user_log` VALUES (339, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 14:53:43', 2);
INSERT INTO `user_log` VALUES (340, 1, '查询用户列表', 0, '2018-11-27 15:11:40', 2);
INSERT INTO `user_log` VALUES (341, 1, '查询鲜花列表', 0, '2018-11-27 15:11:44', 2);
INSERT INTO `user_log` VALUES (342, 1, '查询鲜花列表', 0, '2018-11-27 15:44:50', 2);
INSERT INTO `user_log` VALUES (343, 1, '查询鲜花列表', 0, '2018-11-27 15:47:10', 2);
INSERT INTO `user_log` VALUES (344, 1, '查询鲜花列表', 0, '2018-11-27 15:47:13', 2);
INSERT INTO `user_log` VALUES (345, 1, '查询鲜花列表', 0, '2018-11-27 15:47:13', 2);
INSERT INTO `user_log` VALUES (346, 1, '查询鲜花列表', 0, '2018-11-27 15:47:13', 2);
INSERT INTO `user_log` VALUES (347, 1, '查询鲜花列表', 0, '2018-11-27 15:47:13', 2);
INSERT INTO `user_log` VALUES (348, 1, '查询鲜花列表', 0, '2018-11-27 15:47:13', 2);
INSERT INTO `user_log` VALUES (349, 1, '查询鲜花列表', 0, '2018-11-27 15:47:14', 2);
INSERT INTO `user_log` VALUES (350, 1, '查询鲜花列表', 0, '2018-11-27 15:47:20', 2);
INSERT INTO `user_log` VALUES (351, 1, '查询鲜花列表', 0, '2018-11-27 15:50:23', 2);
INSERT INTO `user_log` VALUES (352, 1, '查询鲜花列表', 0, '2018-11-27 15:59:29', 2);
INSERT INTO `user_log` VALUES (353, 1, '查询鲜花列表', 0, '2018-11-27 16:00:14', 2);
INSERT INTO `user_log` VALUES (354, 1, '查询鲜花列表', 0, '2018-11-27 16:00:18', 2);
INSERT INTO `user_log` VALUES (355, 1, '查询鲜花列表', 0, '2018-11-27 16:00:19', 2);
INSERT INTO `user_log` VALUES (356, 1, '查询鲜花列表', 0, '2018-11-27 16:00:19', 2);
INSERT INTO `user_log` VALUES (357, 1, '查询鲜花列表', 0, '2018-11-27 16:00:19', 2);
INSERT INTO `user_log` VALUES (358, 1, '查询鲜花列表', 0, '2018-11-27 16:00:19', 2);
INSERT INTO `user_log` VALUES (359, 1, '查询鲜花列表', 0, '2018-11-27 16:00:19', 2);
INSERT INTO `user_log` VALUES (360, 1, '查询鲜花列表', 0, '2018-11-27 16:01:13', 2);
INSERT INTO `user_log` VALUES (361, 1, '查询鲜花列表', 0, '2018-11-27 16:09:27', 2);
INSERT INTO `user_log` VALUES (362, 1, '查询总数', 0, '2018-11-27 16:09:34', 2);
INSERT INTO `user_log` VALUES (363, 1, '查询鲜花列表', 0, '2018-11-27 16:09:36', 2);
INSERT INTO `user_log` VALUES (364, 1, '查询鲜花列表', 0, '2018-11-27 16:15:27', 2);
INSERT INTO `user_log` VALUES (365, 1, '查询鲜花列表', 0, '2018-11-27 16:16:19', 2);
INSERT INTO `user_log` VALUES (366, 1, '查询总数', 0, '2018-11-27 16:39:08', 2);
INSERT INTO `user_log` VALUES (367, 1, '查询鲜花列表', 0, '2018-11-27 16:39:09', 2);
INSERT INTO `user_log` VALUES (368, 1, '查询总数', 0, '2018-11-27 16:54:59', 2);
INSERT INTO `user_log` VALUES (369, 1, '查询鲜花列表', 0, '2018-11-27 16:55:00', 2);
INSERT INTO `user_log` VALUES (370, 1, '查询鲜花列表', 0, '2018-11-27 16:59:21', 2);
INSERT INTO `user_log` VALUES (371, 1, '查询鲜花列表', 0, '2018-11-27 16:59:33', 2);
INSERT INTO `user_log` VALUES (372, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 16:59:34', 2);
INSERT INTO `user_log` VALUES (373, 1, '查询总数', 0, '2018-11-27 16:59:38', 2);
INSERT INTO `user_log` VALUES (374, 1, '查询鲜花列表', 0, '2018-11-27 16:59:39', 2);
INSERT INTO `user_log` VALUES (375, 1, '查询鲜花列表', 0, '2018-11-27 16:59:41', 2);
INSERT INTO `user_log` VALUES (376, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 16:59:42', 2);
INSERT INTO `user_log` VALUES (377, 1, '查询鲜花列表', 0, '2018-11-27 16:59:48', 2);
INSERT INTO `user_log` VALUES (378, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 16:59:49', 2);
INSERT INTO `user_log` VALUES (379, 1, '查询鲜花列表', 0, '2018-11-27 16:59:52', 2);
INSERT INTO `user_log` VALUES (380, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 16:59:58', 2);
INSERT INTO `user_log` VALUES (381, 1, '查询鲜花列表', 0, '2018-11-27 17:03:51', 2);
INSERT INTO `user_log` VALUES (382, 1, '查询鲜花列表', 0, '2018-11-27 17:03:53', 2);
INSERT INTO `user_log` VALUES (383, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 17:03:57', 2);
INSERT INTO `user_log` VALUES (384, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-27 17:28:05', 2);
INSERT INTO `user_log` VALUES (385, 1, '查询总数', 0, '2018-11-28 13:54:37', 2);
INSERT INTO `user_log` VALUES (386, 1, '查询总数', 0, '2018-11-28 15:55:22', 2);
INSERT INTO `user_log` VALUES (387, 1, '查询总数', 0, '2018-11-28 15:55:24', 2);
INSERT INTO `user_log` VALUES (388, 1, '查询鲜花列表', 0, '2018-11-28 15:55:26', 2);
INSERT INTO `user_log` VALUES (389, 1, '查询用户列表', 0, '2018-11-28 15:55:29', 2);
INSERT INTO `user_log` VALUES (390, 1, '查询鲜花列表', 0, '2018-11-28 15:55:32', 2);
INSERT INTO `user_log` VALUES (391, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:02:05', 2);
INSERT INTO `user_log` VALUES (392, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:02:28', 2);
INSERT INTO `user_log` VALUES (393, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:02:52', 2);
INSERT INTO `user_log` VALUES (394, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:03:26', 2);
INSERT INTO `user_log` VALUES (395, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:04:29', 2);
INSERT INTO `user_log` VALUES (396, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:04:30', 2);
INSERT INTO `user_log` VALUES (397, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:04:30', 2);
INSERT INTO `user_log` VALUES (398, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:04:55', 2);
INSERT INTO `user_log` VALUES (399, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:05:06', 2);
INSERT INTO `user_log` VALUES (400, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:05:12', 2);
INSERT INTO `user_log` VALUES (401, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:05:16', 2);
INSERT INTO `user_log` VALUES (402, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:05:20', 2);
INSERT INTO `user_log` VALUES (403, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:05:25', 2);
INSERT INTO `user_log` VALUES (404, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:05:28', 2);
INSERT INTO `user_log` VALUES (405, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:08:36', 2);
INSERT INTO `user_log` VALUES (406, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:09:38', 2);
INSERT INTO `user_log` VALUES (407, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:17:48', 2);
INSERT INTO `user_log` VALUES (408, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:18:02', 2);
INSERT INTO `user_log` VALUES (409, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:18:27', 2);
INSERT INTO `user_log` VALUES (410, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:18:55', 2);
INSERT INTO `user_log` VALUES (411, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:18:56', 2);
INSERT INTO `user_log` VALUES (412, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:18:56', 2);
INSERT INTO `user_log` VALUES (413, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:18:56', 2);
INSERT INTO `user_log` VALUES (414, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:18:56', 2);
INSERT INTO `user_log` VALUES (415, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:19:14', 2);
INSERT INTO `user_log` VALUES (416, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:19:15', 2);
INSERT INTO `user_log` VALUES (417, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:19:15', 2);
INSERT INTO `user_log` VALUES (418, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:19:15', 2);
INSERT INTO `user_log` VALUES (419, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:19:58', 2);
INSERT INTO `user_log` VALUES (420, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:19:58', 2);
INSERT INTO `user_log` VALUES (421, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:20:21', 2);
INSERT INTO `user_log` VALUES (422, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:20:21', 2);
INSERT INTO `user_log` VALUES (423, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:20:22', 2);
INSERT INTO `user_log` VALUES (424, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:20:22', 2);
INSERT INTO `user_log` VALUES (425, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:20:45', 2);
INSERT INTO `user_log` VALUES (426, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:20:45', 2);
INSERT INTO `user_log` VALUES (427, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:21:12', 2);
INSERT INTO `user_log` VALUES (428, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:21:12', 2);
INSERT INTO `user_log` VALUES (429, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:21:44', 2);
INSERT INTO `user_log` VALUES (430, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:21:45', 2);
INSERT INTO `user_log` VALUES (431, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:27:57', 2);
INSERT INTO `user_log` VALUES (432, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:28:13', 2);
INSERT INTO `user_log` VALUES (433, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:28:18', 2);
INSERT INTO `user_log` VALUES (434, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:28:19', 2);
INSERT INTO `user_log` VALUES (435, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:28:35', 2);
INSERT INTO `user_log` VALUES (436, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:28:35', 2);
INSERT INTO `user_log` VALUES (437, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:29:10', 2);
INSERT INTO `user_log` VALUES (438, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:29:31', 2);
INSERT INTO `user_log` VALUES (439, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:29:34', 2);
INSERT INTO `user_log` VALUES (440, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:29:56', 2);
INSERT INTO `user_log` VALUES (441, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:30:10', 2);
INSERT INTO `user_log` VALUES (442, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:30:18', 2);
INSERT INTO `user_log` VALUES (443, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:31:01', 2);
INSERT INTO `user_log` VALUES (444, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:31:07', 2);
INSERT INTO `user_log` VALUES (445, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:31:15', 2);
INSERT INTO `user_log` VALUES (446, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:33:33', 2);
INSERT INTO `user_log` VALUES (447, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:33:33', 2);
INSERT INTO `user_log` VALUES (448, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:33:54', 2);
INSERT INTO `user_log` VALUES (449, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:33:54', 2);
INSERT INTO `user_log` VALUES (450, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:34:40', 2);
INSERT INTO `user_log` VALUES (451, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:34:40', 2);
INSERT INTO `user_log` VALUES (452, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:35:03', 2);
INSERT INTO `user_log` VALUES (453, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:35:03', 2);
INSERT INTO `user_log` VALUES (454, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:35:13', 2);
INSERT INTO `user_log` VALUES (455, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:35:13', 2);
INSERT INTO `user_log` VALUES (456, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:35:18', 2);
INSERT INTO `user_log` VALUES (457, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:35:18', 2);
INSERT INTO `user_log` VALUES (458, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:35:24', 2);
INSERT INTO `user_log` VALUES (459, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:35:24', 2);
INSERT INTO `user_log` VALUES (460, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:35:53', 2);
INSERT INTO `user_log` VALUES (461, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:35:53', 2);
INSERT INTO `user_log` VALUES (462, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:37:14', 2);
INSERT INTO `user_log` VALUES (463, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:37:14', 2);
INSERT INTO `user_log` VALUES (464, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:37:26', 2);
INSERT INTO `user_log` VALUES (465, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:37:26', 2);
INSERT INTO `user_log` VALUES (466, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:37:47', 2);
INSERT INTO `user_log` VALUES (467, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:37:47', 2);
INSERT INTO `user_log` VALUES (468, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:37:59', 2);
INSERT INTO `user_log` VALUES (469, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:37:59', 2);
INSERT INTO `user_log` VALUES (470, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:38:32', 2);
INSERT INTO `user_log` VALUES (471, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:38:32', 2);
INSERT INTO `user_log` VALUES (472, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 17:40:52', 2);
INSERT INTO `user_log` VALUES (473, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 17:40:53', 2);
INSERT INTO `user_log` VALUES (474, 1, '根据 id 查询鲜花信息', 0, '2018-11-28 18:00:59', 2);
INSERT INTO `user_log` VALUES (475, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-28 18:00:59', 2);
INSERT INTO `user_log` VALUES (476, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 09:09:57', 2);
INSERT INTO `user_log` VALUES (477, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 09:09:57', 2);
INSERT INTO `user_log` VALUES (478, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 09:09:58', 2);
INSERT INTO `user_log` VALUES (479, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 09:09:58', 2);
INSERT INTO `user_log` VALUES (480, 1, '查询总数', 0, '2018-11-29 09:10:38', 2);
INSERT INTO `user_log` VALUES (481, 1, '查询鲜花列表', 0, '2018-11-29 09:10:45', 2);
INSERT INTO `user_log` VALUES (482, 1, '查询鲜花列表', 0, '2018-11-29 09:14:30', 2);
INSERT INTO `user_log` VALUES (483, 1, '查询鲜花列表', 0, '2018-11-29 09:14:32', 2);
INSERT INTO `user_log` VALUES (484, 1, '查询鲜花列表', 0, '2018-11-29 09:18:21', 2);
INSERT INTO `user_log` VALUES (485, 1, '查询鲜花列表', 0, '2018-11-29 09:18:24', 2);
INSERT INTO `user_log` VALUES (486, 1, '查询鲜花列表', 0, '2018-11-29 09:19:17', 2);
INSERT INTO `user_log` VALUES (487, 1, '查询鲜花列表', 0, '2018-11-29 09:19:19', 2);
INSERT INTO `user_log` VALUES (488, 1, '查询鲜花列表', 0, '2018-11-29 09:28:53', 2);
INSERT INTO `user_log` VALUES (489, 1, '查询鲜花列表', 0, '2018-11-29 09:34:01', 2);
INSERT INTO `user_log` VALUES (490, 1, '查询鲜花列表', 0, '2018-11-29 09:34:03', 2);
INSERT INTO `user_log` VALUES (491, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 09:34:04', 2);
INSERT INTO `user_log` VALUES (492, 1, '查询鲜花列表', 0, '2018-11-29 09:40:24', 2);
INSERT INTO `user_log` VALUES (493, 1, '查询鲜花列表', 0, '2018-11-29 09:41:03', 2);
INSERT INTO `user_log` VALUES (494, 1, '查询鲜花列表', 0, '2018-11-29 09:42:01', 2);
INSERT INTO `user_log` VALUES (495, 1, '查询总数', 0, '2018-11-29 09:42:52', 2);
INSERT INTO `user_log` VALUES (496, 1, '查询鲜花列表', 0, '2018-11-29 09:42:53', 2);
INSERT INTO `user_log` VALUES (497, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 09:53:39', 2);
INSERT INTO `user_log` VALUES (498, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 09:53:39', 2);
INSERT INTO `user_log` VALUES (499, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 09:54:36', 2);
INSERT INTO `user_log` VALUES (500, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 09:54:36', 2);
INSERT INTO `user_log` VALUES (501, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 09:54:40', 2);
INSERT INTO `user_log` VALUES (502, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 09:54:40', 2);
INSERT INTO `user_log` VALUES (503, 1, '查询鲜花列表', 0, '2018-11-29 10:27:00', 2);
INSERT INTO `user_log` VALUES (504, 1, '查询鲜花列表', 0, '2018-11-29 10:28:49', 2);
INSERT INTO `user_log` VALUES (505, 1, '查询鲜花列表', 0, '2018-11-29 10:42:19', 2);
INSERT INTO `user_log` VALUES (506, 1, '查询鲜花列表', 0, '2018-11-29 10:42:50', 2);
INSERT INTO `user_log` VALUES (507, 1, '查询鲜花列表', 0, '2018-11-29 10:42:50', 2);
INSERT INTO `user_log` VALUES (508, 1, '查询鲜花列表', 0, '2018-11-29 10:42:51', 2);
INSERT INTO `user_log` VALUES (509, 1, '查询鲜花列表', 0, '2018-11-29 10:42:51', 2);
INSERT INTO `user_log` VALUES (510, 1, '查询鲜花列表', 0, '2018-11-29 10:43:02', 2);
INSERT INTO `user_log` VALUES (511, 1, '查询鲜花列表', 0, '2018-11-29 10:43:02', 2);
INSERT INTO `user_log` VALUES (512, 1, '查询鲜花列表', 0, '2018-11-29 10:43:02', 2);
INSERT INTO `user_log` VALUES (513, 1, '查询鲜花列表', 0, '2018-11-29 10:43:02', 2);
INSERT INTO `user_log` VALUES (514, 1, '查询鲜花列表', 0, '2018-11-29 10:43:03', 2);
INSERT INTO `user_log` VALUES (515, 1, '查询鲜花列表', 0, '2018-11-29 10:54:52', 2);
INSERT INTO `user_log` VALUES (516, 1, '查询鲜花列表', 0, '2018-11-29 10:55:14', 2);
INSERT INTO `user_log` VALUES (517, 1, '查询鲜花列表', 0, '2018-11-29 10:55:33', 2);
INSERT INTO `user_log` VALUES (518, 1, '查询鲜花列表', 0, '2018-11-29 10:57:42', 2);
INSERT INTO `user_log` VALUES (519, 1, '查询鲜花列表', 0, '2018-11-29 10:58:08', 2);
INSERT INTO `user_log` VALUES (520, 1, '查询鲜花列表', 0, '2018-11-29 10:58:25', 2);
INSERT INTO `user_log` VALUES (521, 1, '查询鲜花列表', 0, '2018-11-29 10:58:37', 2);
INSERT INTO `user_log` VALUES (522, 1, '查询鲜花列表', 0, '2018-11-29 10:58:50', 2);
INSERT INTO `user_log` VALUES (523, 1, '查询鲜花列表', 0, '2018-11-29 10:59:01', 2);
INSERT INTO `user_log` VALUES (524, 1, '查询鲜花列表', 0, '2018-11-29 10:59:40', 2);
INSERT INTO `user_log` VALUES (525, 1, '查询鲜花列表', 0, '2018-11-29 11:00:29', 2);
INSERT INTO `user_log` VALUES (526, 1, '查询鲜花列表', 0, '2018-11-29 11:00:58', 2);
INSERT INTO `user_log` VALUES (527, 1, '查询鲜花列表', 0, '2018-11-29 11:01:07', 2);
INSERT INTO `user_log` VALUES (528, 1, '查询鲜花列表', 0, '2018-11-29 11:02:35', 2);
INSERT INTO `user_log` VALUES (529, 1, '查询鲜花列表', 0, '2018-11-29 11:02:46', 2);
INSERT INTO `user_log` VALUES (530, 1, '查询鲜花列表', 0, '2018-11-29 11:04:02', 2);
INSERT INTO `user_log` VALUES (531, 1, '查询总数', 0, '2018-11-29 11:08:23', 2);
INSERT INTO `user_log` VALUES (532, 1, '查询鲜花列表', 0, '2018-11-29 11:11:43', 2);
INSERT INTO `user_log` VALUES (533, 1, '查询鲜花列表', 0, '2018-11-29 11:11:53', 2);
INSERT INTO `user_log` VALUES (534, 1, '查询鲜花列表', 0, '2018-11-29 11:12:17', 2);
INSERT INTO `user_log` VALUES (535, 1, '查询鲜花列表', 0, '2018-11-29 11:13:19', 2);
INSERT INTO `user_log` VALUES (536, 1, '查询鲜花列表', 0, '2018-11-29 11:13:25', 2);
INSERT INTO `user_log` VALUES (537, 1, '查询鲜花列表', 0, '2018-11-29 11:13:48', 2);
INSERT INTO `user_log` VALUES (538, 1, '查询鲜花列表', 0, '2018-11-29 11:14:01', 2);
INSERT INTO `user_log` VALUES (539, 1, '查询鲜花列表', 0, '2018-11-29 11:14:15', 2);
INSERT INTO `user_log` VALUES (540, 1, '查询鲜花列表', 0, '2018-11-29 11:14:24', 2);
INSERT INTO `user_log` VALUES (541, 1, '查询鲜花列表', 0, '2018-11-29 11:14:29', 2);
INSERT INTO `user_log` VALUES (542, 1, '查询鲜花列表', 0, '2018-11-29 11:14:32', 2);
INSERT INTO `user_log` VALUES (543, 1, '查询鲜花列表', 0, '2018-11-29 11:15:12', 2);
INSERT INTO `user_log` VALUES (544, 1, '查询鲜花列表', 0, '2018-11-29 11:15:16', 2);
INSERT INTO `user_log` VALUES (545, 1, '查询鲜花列表', 0, '2018-11-29 11:15:33', 2);
INSERT INTO `user_log` VALUES (546, 1, '查询鲜花列表', 0, '2018-11-29 11:15:34', 2);
INSERT INTO `user_log` VALUES (547, 1, '查询鲜花列表', 0, '2018-11-29 11:15:52', 2);
INSERT INTO `user_log` VALUES (548, 1, '查询鲜花列表', 0, '2018-11-29 11:16:14', 2);
INSERT INTO `user_log` VALUES (549, 1, '查询鲜花列表', 0, '2018-11-29 11:16:54', 2);
INSERT INTO `user_log` VALUES (550, 1, '查询鲜花列表', 0, '2018-11-29 11:18:37', 2);
INSERT INTO `user_log` VALUES (551, 1, '查询鲜花列表', 0, '2018-11-29 11:19:46', 2);
INSERT INTO `user_log` VALUES (552, 1, '查询鲜花列表', 0, '2018-11-29 11:19:59', 2);
INSERT INTO `user_log` VALUES (553, 1, '查询鲜花列表', 0, '2018-11-29 11:21:08', 2);
INSERT INTO `user_log` VALUES (554, 1, '查询鲜花列表', 0, '2018-11-29 11:21:39', 2);
INSERT INTO `user_log` VALUES (555, 1, '查询鲜花列表', 0, '2018-11-29 11:22:02', 2);
INSERT INTO `user_log` VALUES (556, 1, '查询鲜花列表', 0, '2018-11-29 11:22:21', 2);
INSERT INTO `user_log` VALUES (557, 1, '查询鲜花列表', 0, '2018-11-29 11:22:36', 2);
INSERT INTO `user_log` VALUES (558, 1, '查询鲜花列表', 0, '2018-11-29 11:23:16', 2);
INSERT INTO `user_log` VALUES (559, 1, '查询鲜花列表', 0, '2018-11-29 11:24:45', 2);
INSERT INTO `user_log` VALUES (560, 1, '查询鲜花列表', 0, '2018-11-29 11:25:11', 2);
INSERT INTO `user_log` VALUES (561, 1, '查询鲜花列表', 0, '2018-11-29 11:27:14', 2);
INSERT INTO `user_log` VALUES (562, 1, '查询鲜花列表', 0, '2018-11-29 11:28:21', 2);
INSERT INTO `user_log` VALUES (563, 1, '查询鲜花列表', 0, '2018-11-29 13:41:45', 2);
INSERT INTO `user_log` VALUES (564, 1, '查询鲜花列表', 0, '2018-11-29 13:44:58', 2);
INSERT INTO `user_log` VALUES (565, 1, '查询鲜花列表', 0, '2018-11-29 13:45:01', 2);
INSERT INTO `user_log` VALUES (566, 1, '查询鲜花列表', 0, '2018-11-29 13:47:03', 2);
INSERT INTO `user_log` VALUES (567, 1, '查询鲜花列表', 0, '2018-11-29 13:47:06', 2);
INSERT INTO `user_log` VALUES (568, 1, '查询鲜花列表', 0, '2018-11-29 13:47:08', 2);
INSERT INTO `user_log` VALUES (569, 1, '查询鲜花列表', 0, '2018-11-29 13:47:18', 2);
INSERT INTO `user_log` VALUES (570, 1, '查询鲜花列表', 0, '2018-11-29 13:47:21', 2);
INSERT INTO `user_log` VALUES (571, 1, '查询鲜花列表', 0, '2018-11-29 13:47:41', 2);
INSERT INTO `user_log` VALUES (572, 1, '查询总数', 0, '2018-11-29 14:51:33', 2);
INSERT INTO `user_log` VALUES (573, 1, '查询鲜花列表', 0, '2018-11-29 15:09:17', 2);
INSERT INTO `user_log` VALUES (574, 1, '查询鲜花列表', 0, '2018-11-29 15:09:17', 2);
INSERT INTO `user_log` VALUES (575, 1, '查询鲜花列表', 0, '2018-11-29 15:09:18', 2);
INSERT INTO `user_log` VALUES (576, 1, '查询鲜花列表', 0, '2018-11-29 15:09:18', 2);
INSERT INTO `user_log` VALUES (577, 1, '查询鲜花列表', 0, '2018-11-29 15:09:57', 2);
INSERT INTO `user_log` VALUES (578, 1, '查询鲜花列表', 0, '2018-11-29 15:09:57', 2);
INSERT INTO `user_log` VALUES (579, 1, '查询鲜花列表', 0, '2018-11-29 15:09:57', 2);
INSERT INTO `user_log` VALUES (580, 1, '查询鲜花列表', 0, '2018-11-29 15:09:58', 2);
INSERT INTO `user_log` VALUES (581, 1, '查询鲜花列表', 0, '2018-11-29 15:10:28', 2);
INSERT INTO `user_log` VALUES (582, 1, '查询鲜花列表', 0, '2018-11-29 15:10:29', 2);
INSERT INTO `user_log` VALUES (583, 1, '查询鲜花列表', 0, '2018-11-29 15:10:29', 2);
INSERT INTO `user_log` VALUES (584, 1, '查询鲜花列表', 0, '2018-11-29 15:10:29', 2);
INSERT INTO `user_log` VALUES (585, 1, '查询鲜花列表', 0, '2018-11-29 15:12:39', 2);
INSERT INTO `user_log` VALUES (586, 1, '查询鲜花列表', 0, '2018-11-29 15:12:42', 2);
INSERT INTO `user_log` VALUES (587, 1, '查询鲜花列表', 0, '2018-11-29 15:12:42', 2);
INSERT INTO `user_log` VALUES (588, 1, '查询鲜花列表', 0, '2018-11-29 15:12:49', 2);
INSERT INTO `user_log` VALUES (589, 1, '查询鲜花列表', 0, '2018-11-29 15:13:16', 2);
INSERT INTO `user_log` VALUES (590, 1, '查询鲜花列表', 0, '2018-11-29 15:13:23', 2);
INSERT INTO `user_log` VALUES (591, 1, '查询鲜花列表', 0, '2018-11-29 15:13:24', 2);
INSERT INTO `user_log` VALUES (592, 1, '查询鲜花列表', 0, '2018-11-29 15:13:24', 2);
INSERT INTO `user_log` VALUES (593, 1, '查询鲜花列表', 0, '2018-11-29 15:16:41', 2);
INSERT INTO `user_log` VALUES (594, 1, '查询鲜花列表', 0, '2018-11-29 15:16:41', 2);
INSERT INTO `user_log` VALUES (595, 1, '查询鲜花列表', 0, '2018-11-29 15:16:43', 2);
INSERT INTO `user_log` VALUES (596, 1, '查询鲜花列表', 0, '2018-11-29 15:16:43', 2);
INSERT INTO `user_log` VALUES (597, 1, '查询鲜花列表', 0, '2018-11-29 15:16:43', 2);
INSERT INTO `user_log` VALUES (598, 1, '查询鲜花列表', 0, '2018-11-29 15:16:43', 2);
INSERT INTO `user_log` VALUES (599, 1, '查询鲜花列表', 0, '2018-11-29 15:16:44', 2);
INSERT INTO `user_log` VALUES (600, 1, '查询鲜花列表', 0, '2018-11-29 15:16:44', 2);
INSERT INTO `user_log` VALUES (601, 1, '查询鲜花列表', 0, '2018-11-29 15:16:45', 2);
INSERT INTO `user_log` VALUES (602, 1, '查询鲜花列表', 0, '2018-11-29 15:16:45', 2);
INSERT INTO `user_log` VALUES (603, 1, '查询鲜花列表', 0, '2018-11-29 15:16:45', 2);
INSERT INTO `user_log` VALUES (604, 1, '查询鲜花列表', 0, '2018-11-29 15:16:45', 2);
INSERT INTO `user_log` VALUES (605, 1, '查询鲜花列表', 0, '2018-11-29 15:16:46', 2);
INSERT INTO `user_log` VALUES (606, 1, '查询鲜花列表', 0, '2018-11-29 15:16:46', 2);
INSERT INTO `user_log` VALUES (607, 1, '查询鲜花列表', 0, '2018-11-29 15:16:47', 2);
INSERT INTO `user_log` VALUES (608, 1, '查询鲜花列表', 0, '2018-11-29 15:16:47', 2);
INSERT INTO `user_log` VALUES (609, 1, '查询鲜花列表', 0, '2018-11-29 15:16:47', 2);
INSERT INTO `user_log` VALUES (610, 1, '查询鲜花列表', 0, '2018-11-29 15:16:47', 2);
INSERT INTO `user_log` VALUES (611, 1, '查询鲜花列表', 0, '2018-11-29 15:16:48', 2);
INSERT INTO `user_log` VALUES (612, 1, '查询鲜花列表', 0, '2018-11-29 15:16:48', 2);
INSERT INTO `user_log` VALUES (613, 1, '查询鲜花列表', 0, '2018-11-29 15:16:48', 2);
INSERT INTO `user_log` VALUES (614, 1, '查询鲜花列表', 0, '2018-11-29 15:19:53', 2);
INSERT INTO `user_log` VALUES (615, 1, '查询鲜花列表', 0, '2018-11-29 15:19:53', 2);
INSERT INTO `user_log` VALUES (616, 1, '查询鲜花列表', 0, '2018-11-29 15:19:53', 2);
INSERT INTO `user_log` VALUES (617, 1, '查询鲜花列表', 0, '2018-11-29 15:19:53', 2);
INSERT INTO `user_log` VALUES (618, 1, '查询鲜花列表', 0, '2018-11-29 15:21:10', 2);
INSERT INTO `user_log` VALUES (619, 1, '查询鲜花列表', 0, '2018-11-29 15:21:10', 2);
INSERT INTO `user_log` VALUES (620, 1, '查询鲜花列表', 0, '2018-11-29 15:21:14', 2);
INSERT INTO `user_log` VALUES (621, 1, '查询鲜花列表', 0, '2018-11-29 15:21:14', 2);
INSERT INTO `user_log` VALUES (622, 1, '查询鲜花列表', 0, '2018-11-29 15:21:14', 2);
INSERT INTO `user_log` VALUES (623, 1, '查询鲜花列表', 0, '2018-11-29 15:21:15', 2);
INSERT INTO `user_log` VALUES (624, 1, '查询鲜花列表', 0, '2018-11-29 15:21:15', 2);
INSERT INTO `user_log` VALUES (625, 1, '查询鲜花列表', 0, '2018-11-29 15:21:15', 2);
INSERT INTO `user_log` VALUES (626, 1, '查询鲜花列表', 0, '2018-11-29 15:21:15', 2);
INSERT INTO `user_log` VALUES (627, 1, '查询鲜花列表', 0, '2018-11-29 15:21:35', 2);
INSERT INTO `user_log` VALUES (628, 1, '查询鲜花列表', 0, '2018-11-29 15:21:35', 2);
INSERT INTO `user_log` VALUES (629, 1, '查询鲜花列表', 0, '2018-11-29 15:21:39', 2);
INSERT INTO `user_log` VALUES (630, 1, '查询鲜花列表', 0, '2018-11-29 15:21:39', 2);
INSERT INTO `user_log` VALUES (631, 1, '查询鲜花列表', 0, '2018-11-29 15:21:40', 2);
INSERT INTO `user_log` VALUES (632, 1, '查询鲜花列表', 0, '2018-11-29 15:21:40', 2);
INSERT INTO `user_log` VALUES (633, 1, '查询鲜花列表', 0, '2018-11-29 15:21:40', 2);
INSERT INTO `user_log` VALUES (634, 1, '查询鲜花列表', 0, '2018-11-29 15:21:41', 2);
INSERT INTO `user_log` VALUES (635, 1, '查询鲜花列表', 0, '2018-11-29 15:21:41', 2);
INSERT INTO `user_log` VALUES (636, 1, '查询鲜花列表', 0, '2018-11-29 15:21:41', 2);
INSERT INTO `user_log` VALUES (637, 1, '查询鲜花列表', 0, '2018-11-29 15:21:42', 2);
INSERT INTO `user_log` VALUES (638, 1, '查询鲜花列表', 0, '2018-11-29 15:21:42', 2);
INSERT INTO `user_log` VALUES (639, 1, '查询鲜花列表', 0, '2018-11-29 15:21:42', 2);
INSERT INTO `user_log` VALUES (640, 1, '查询鲜花列表', 0, '2018-11-29 15:21:42', 2);
INSERT INTO `user_log` VALUES (641, 1, '查询鲜花列表', 0, '2018-11-29 15:21:43', 2);
INSERT INTO `user_log` VALUES (642, 1, '查询鲜花列表', 0, '2018-11-29 15:21:43', 2);
INSERT INTO `user_log` VALUES (643, 1, '查询鲜花列表', 0, '2018-11-29 15:21:44', 2);
INSERT INTO `user_log` VALUES (644, 1, '查询鲜花列表', 0, '2018-11-29 15:21:44', 2);
INSERT INTO `user_log` VALUES (645, 1, '查询鲜花列表', 0, '2018-11-29 15:21:44', 2);
INSERT INTO `user_log` VALUES (646, 1, '查询鲜花列表', 0, '2018-11-29 15:21:44', 2);
INSERT INTO `user_log` VALUES (647, 1, '查询鲜花列表', 0, '2018-11-29 15:21:45', 2);
INSERT INTO `user_log` VALUES (648, 1, '查询鲜花列表', 0, '2018-11-29 15:21:45', 2);
INSERT INTO `user_log` VALUES (649, 1, '查询鲜花列表', 0, '2018-11-29 15:21:45', 2);
INSERT INTO `user_log` VALUES (650, 1, '查询鲜花列表', 0, '2018-11-29 15:21:45', 2);
INSERT INTO `user_log` VALUES (651, 1, '查询鲜花列表', 0, '2018-11-29 15:21:46', 2);
INSERT INTO `user_log` VALUES (652, 1, '查询鲜花列表', 0, '2018-11-29 15:21:46', 2);
INSERT INTO `user_log` VALUES (653, 1, '查询鲜花列表', 0, '2018-11-29 15:21:47', 2);
INSERT INTO `user_log` VALUES (654, 1, '查询鲜花列表', 0, '2018-11-29 15:21:47', 2);
INSERT INTO `user_log` VALUES (655, 1, '查询鲜花列表', 0, '2018-11-29 15:21:47', 2);
INSERT INTO `user_log` VALUES (656, 1, '查询鲜花列表', 0, '2018-11-29 15:21:47', 2);
INSERT INTO `user_log` VALUES (657, 1, '查询鲜花列表', 0, '2018-11-29 15:21:48', 2);
INSERT INTO `user_log` VALUES (658, 1, '查询鲜花列表', 0, '2018-11-29 15:21:48', 2);
INSERT INTO `user_log` VALUES (659, 1, '查询鲜花列表', 0, '2018-11-29 15:21:49', 2);
INSERT INTO `user_log` VALUES (660, 1, '查询鲜花列表', 0, '2018-11-29 15:21:49', 2);
INSERT INTO `user_log` VALUES (661, 1, '查询鲜花列表', 0, '2018-11-29 15:21:49', 2);
INSERT INTO `user_log` VALUES (662, 1, '查询鲜花列表', 0, '2018-11-29 15:21:49', 2);
INSERT INTO `user_log` VALUES (663, 1, '查询鲜花列表', 0, '2018-11-29 15:21:50', 2);
INSERT INTO `user_log` VALUES (664, 1, '查询鲜花列表', 0, '2018-11-29 15:21:50', 2);
INSERT INTO `user_log` VALUES (665, 1, '查询鲜花列表', 0, '2018-11-29 15:21:50', 2);
INSERT INTO `user_log` VALUES (666, 1, '查询鲜花列表', 0, '2018-11-29 15:21:50', 2);
INSERT INTO `user_log` VALUES (667, 1, '查询鲜花列表', 0, '2018-11-29 15:21:51', 2);
INSERT INTO `user_log` VALUES (668, 1, '查询鲜花列表', 0, '2018-11-29 15:21:51', 2);
INSERT INTO `user_log` VALUES (669, 1, '查询鲜花列表', 0, '2018-11-29 15:21:52', 2);
INSERT INTO `user_log` VALUES (670, 1, '查询鲜花列表', 0, '2018-11-29 15:21:52', 2);
INSERT INTO `user_log` VALUES (671, 1, '查询鲜花列表', 0, '2018-11-29 15:21:52', 2);
INSERT INTO `user_log` VALUES (672, 1, '查询鲜花列表', 0, '2018-11-29 15:21:52', 2);
INSERT INTO `user_log` VALUES (673, 1, '查询鲜花列表', 0, '2018-11-29 15:21:53', 2);
INSERT INTO `user_log` VALUES (674, 1, '查询鲜花列表', 0, '2018-11-29 15:21:53', 2);
INSERT INTO `user_log` VALUES (675, 1, '查询鲜花列表', 0, '2018-11-29 15:21:54', 2);
INSERT INTO `user_log` VALUES (676, 1, '查询鲜花列表', 0, '2018-11-29 15:21:54', 2);
INSERT INTO `user_log` VALUES (677, 1, '查询鲜花列表', 0, '2018-11-29 15:21:54', 2);
INSERT INTO `user_log` VALUES (678, 1, '查询鲜花列表', 0, '2018-11-29 15:21:54', 2);
INSERT INTO `user_log` VALUES (679, 1, '查询鲜花列表', 0, '2018-11-29 15:21:55', 2);
INSERT INTO `user_log` VALUES (680, 1, '查询鲜花列表', 0, '2018-11-29 15:21:55', 2);
INSERT INTO `user_log` VALUES (681, 1, '查询鲜花列表', 0, '2018-11-29 15:21:55', 2);
INSERT INTO `user_log` VALUES (682, 1, '查询鲜花列表', 0, '2018-11-29 15:21:55', 2);
INSERT INTO `user_log` VALUES (683, 1, '查询鲜花列表', 0, '2018-11-29 15:21:56', 2);
INSERT INTO `user_log` VALUES (684, 1, '查询鲜花列表', 0, '2018-11-29 15:21:56', 2);
INSERT INTO `user_log` VALUES (685, 1, '查询鲜花列表', 0, '2018-11-29 15:21:57', 2);
INSERT INTO `user_log` VALUES (686, 1, '查询鲜花列表', 0, '2018-11-29 15:21:57', 2);
INSERT INTO `user_log` VALUES (687, 1, '查询鲜花列表', 0, '2018-11-29 15:21:57', 2);
INSERT INTO `user_log` VALUES (688, 1, '查询鲜花列表', 0, '2018-11-29 15:21:57', 2);
INSERT INTO `user_log` VALUES (689, 1, '查询鲜花列表', 0, '2018-11-29 15:21:58', 2);
INSERT INTO `user_log` VALUES (690, 1, '查询鲜花列表', 0, '2018-11-29 15:21:58', 2);
INSERT INTO `user_log` VALUES (691, 1, '查询鲜花列表', 0, '2018-11-29 15:21:59', 2);
INSERT INTO `user_log` VALUES (692, 1, '查询鲜花列表', 0, '2018-11-29 15:21:59', 2);
INSERT INTO `user_log` VALUES (693, 1, '查询鲜花列表', 0, '2018-11-29 15:21:59', 2);
INSERT INTO `user_log` VALUES (694, 1, '查询鲜花列表', 0, '2018-11-29 15:21:59', 2);
INSERT INTO `user_log` VALUES (695, 1, '查询鲜花列表', 0, '2018-11-29 15:22:00', 2);
INSERT INTO `user_log` VALUES (696, 1, '查询鲜花列表', 0, '2018-11-29 15:22:00', 2);
INSERT INTO `user_log` VALUES (697, 1, '查询鲜花列表', 0, '2018-11-29 15:22:00', 2);
INSERT INTO `user_log` VALUES (698, 1, '查询鲜花列表', 0, '2018-11-29 15:22:00', 2);
INSERT INTO `user_log` VALUES (699, 1, '查询鲜花列表', 0, '2018-11-29 15:22:01', 2);
INSERT INTO `user_log` VALUES (700, 1, '查询鲜花列表', 0, '2018-11-29 15:22:01', 2);
INSERT INTO `user_log` VALUES (701, 1, '查询鲜花列表', 0, '2018-11-29 15:22:02', 2);
INSERT INTO `user_log` VALUES (702, 1, '查询鲜花列表', 0, '2018-11-29 15:22:02', 2);
INSERT INTO `user_log` VALUES (703, 1, '查询鲜花列表', 0, '2018-11-29 15:22:02', 2);
INSERT INTO `user_log` VALUES (704, 1, '查询鲜花列表', 0, '2018-11-29 15:22:02', 2);
INSERT INTO `user_log` VALUES (705, 1, '查询鲜花列表', 0, '2018-11-29 15:22:03', 2);
INSERT INTO `user_log` VALUES (706, 1, '查询鲜花列表', 0, '2018-11-29 15:22:03', 2);
INSERT INTO `user_log` VALUES (707, 1, '查询鲜花列表', 0, '2018-11-29 15:22:04', 2);
INSERT INTO `user_log` VALUES (708, 1, '查询鲜花列表', 0, '2018-11-29 15:22:04', 2);
INSERT INTO `user_log` VALUES (709, 1, '查询鲜花列表', 0, '2018-11-29 15:22:04', 2);
INSERT INTO `user_log` VALUES (710, 1, '查询鲜花列表', 0, '2018-11-29 15:22:04', 2);
INSERT INTO `user_log` VALUES (711, 1, '查询鲜花列表', 0, '2018-11-29 15:22:05', 2);
INSERT INTO `user_log` VALUES (712, 1, '查询鲜花列表', 0, '2018-11-29 15:22:05', 2);
INSERT INTO `user_log` VALUES (713, 1, '查询鲜花列表', 0, '2018-11-29 15:22:05', 2);
INSERT INTO `user_log` VALUES (714, 1, '查询鲜花列表', 0, '2018-11-29 15:22:05', 2);
INSERT INTO `user_log` VALUES (715, 1, '查询鲜花列表', 0, '2018-11-29 15:22:06', 2);
INSERT INTO `user_log` VALUES (716, 1, '查询鲜花列表', 0, '2018-11-29 15:22:06', 2);
INSERT INTO `user_log` VALUES (717, 1, '查询鲜花列表', 0, '2018-11-29 15:22:07', 2);
INSERT INTO `user_log` VALUES (718, 1, '查询鲜花列表', 0, '2018-11-29 15:22:07', 2);
INSERT INTO `user_log` VALUES (719, 1, '查询鲜花列表', 0, '2018-11-29 15:22:07', 2);
INSERT INTO `user_log` VALUES (720, 1, '查询鲜花列表', 0, '2018-11-29 15:22:07', 2);
INSERT INTO `user_log` VALUES (721, 1, '查询鲜花列表', 0, '2018-11-29 15:22:08', 2);
INSERT INTO `user_log` VALUES (722, 1, '查询鲜花列表', 0, '2018-11-29 15:22:08', 2);
INSERT INTO `user_log` VALUES (723, 1, '查询鲜花列表', 0, '2018-11-29 15:22:09', 2);
INSERT INTO `user_log` VALUES (724, 1, '查询鲜花列表', 0, '2018-11-29 15:22:09', 2);
INSERT INTO `user_log` VALUES (725, 1, '查询鲜花列表', 0, '2018-11-29 15:22:09', 2);
INSERT INTO `user_log` VALUES (726, 1, '查询鲜花列表', 0, '2018-11-29 15:22:09', 2);
INSERT INTO `user_log` VALUES (727, 1, '查询鲜花列表', 0, '2018-11-29 15:22:10', 2);
INSERT INTO `user_log` VALUES (728, 1, '查询鲜花列表', 0, '2018-11-29 15:22:10', 2);
INSERT INTO `user_log` VALUES (729, 1, '查询鲜花列表', 0, '2018-11-29 15:22:10', 2);
INSERT INTO `user_log` VALUES (730, 1, '查询鲜花列表', 0, '2018-11-29 15:22:10', 2);
INSERT INTO `user_log` VALUES (731, 1, '查询鲜花列表', 0, '2018-11-29 15:22:11', 2);
INSERT INTO `user_log` VALUES (732, 1, '查询鲜花列表', 0, '2018-11-29 15:22:11', 2);
INSERT INTO `user_log` VALUES (733, 1, '查询鲜花列表', 0, '2018-11-29 15:22:12', 2);
INSERT INTO `user_log` VALUES (734, 1, '查询鲜花列表', 0, '2018-11-29 15:22:12', 2);
INSERT INTO `user_log` VALUES (735, 1, '查询鲜花列表', 0, '2018-11-29 15:22:12', 2);
INSERT INTO `user_log` VALUES (736, 1, '查询鲜花列表', 0, '2018-11-29 15:22:12', 2);
INSERT INTO `user_log` VALUES (737, 1, '查询鲜花列表', 0, '2018-11-29 15:22:13', 2);
INSERT INTO `user_log` VALUES (738, 1, '查询鲜花列表', 0, '2018-11-29 15:22:13', 2);
INSERT INTO `user_log` VALUES (739, 1, '查询鲜花列表', 0, '2018-11-29 15:22:14', 2);
INSERT INTO `user_log` VALUES (740, 1, '查询鲜花列表', 0, '2018-11-29 15:22:14', 2);
INSERT INTO `user_log` VALUES (741, 1, '查询鲜花列表', 0, '2018-11-29 15:22:14', 2);
INSERT INTO `user_log` VALUES (742, 1, '查询鲜花列表', 0, '2018-11-29 15:22:14', 2);
INSERT INTO `user_log` VALUES (743, 1, '查询鲜花列表', 0, '2018-11-29 15:22:15', 2);
INSERT INTO `user_log` VALUES (744, 1, '查询鲜花列表', 0, '2018-11-29 15:22:15', 2);
INSERT INTO `user_log` VALUES (745, 1, '查询鲜花列表', 0, '2018-11-29 15:22:15', 2);
INSERT INTO `user_log` VALUES (746, 1, '查询鲜花列表', 0, '2018-11-29 15:22:16', 2);
INSERT INTO `user_log` VALUES (747, 1, '查询鲜花列表', 0, '2018-11-29 15:22:16', 2);
INSERT INTO `user_log` VALUES (748, 1, '查询鲜花列表', 0, '2018-11-29 15:22:16', 2);
INSERT INTO `user_log` VALUES (749, 1, '查询鲜花列表', 0, '2018-11-29 15:22:17', 2);
INSERT INTO `user_log` VALUES (750, 1, '查询鲜花列表', 0, '2018-11-29 15:22:17', 2);
INSERT INTO `user_log` VALUES (751, 1, '查询鲜花列表', 0, '2018-11-29 15:22:17', 2);
INSERT INTO `user_log` VALUES (752, 1, '查询鲜花列表', 0, '2018-11-29 15:22:17', 2);
INSERT INTO `user_log` VALUES (753, 1, '查询鲜花列表', 0, '2018-11-29 15:22:18', 2);
INSERT INTO `user_log` VALUES (754, 1, '查询鲜花列表', 0, '2018-11-29 15:22:18', 2);
INSERT INTO `user_log` VALUES (755, 1, '查询鲜花列表', 0, '2018-11-29 15:22:19', 2);
INSERT INTO `user_log` VALUES (756, 1, '查询鲜花列表', 0, '2018-11-29 15:22:19', 2);
INSERT INTO `user_log` VALUES (757, 1, '查询鲜花列表', 0, '2018-11-29 15:22:19', 2);
INSERT INTO `user_log` VALUES (758, 1, '查询鲜花列表', 0, '2018-11-29 15:22:19', 2);
INSERT INTO `user_log` VALUES (759, 1, '查询鲜花列表', 0, '2018-11-29 15:22:20', 2);
INSERT INTO `user_log` VALUES (760, 1, '查询鲜花列表', 0, '2018-11-29 15:22:20', 2);
INSERT INTO `user_log` VALUES (761, 1, '查询鲜花列表', 0, '2018-11-29 15:22:21', 2);
INSERT INTO `user_log` VALUES (762, 1, '查询鲜花列表', 0, '2018-11-29 15:22:21', 2);
INSERT INTO `user_log` VALUES (763, 1, '查询鲜花列表', 0, '2018-11-29 15:22:21', 2);
INSERT INTO `user_log` VALUES (764, 1, '查询鲜花列表', 0, '2018-11-29 15:22:21', 2);
INSERT INTO `user_log` VALUES (765, 1, '查询鲜花列表', 0, '2018-11-29 15:22:22', 2);
INSERT INTO `user_log` VALUES (766, 1, '查询鲜花列表', 0, '2018-11-29 15:22:22', 2);
INSERT INTO `user_log` VALUES (767, 1, '查询鲜花列表', 0, '2018-11-29 15:22:22', 2);
INSERT INTO `user_log` VALUES (768, 1, '查询鲜花列表', 0, '2018-11-29 15:22:22', 2);
INSERT INTO `user_log` VALUES (769, 1, '查询鲜花列表', 0, '2018-11-29 15:22:23', 2);
INSERT INTO `user_log` VALUES (770, 1, '查询鲜花列表', 0, '2018-11-29 15:22:23', 2);
INSERT INTO `user_log` VALUES (771, 1, '查询鲜花列表', 0, '2018-11-29 15:22:24', 2);
INSERT INTO `user_log` VALUES (772, 1, '查询鲜花列表', 0, '2018-11-29 15:22:24', 2);
INSERT INTO `user_log` VALUES (773, 1, '查询鲜花列表', 0, '2018-11-29 15:22:24', 2);
INSERT INTO `user_log` VALUES (774, 1, '查询鲜花列表', 0, '2018-11-29 15:22:24', 2);
INSERT INTO `user_log` VALUES (775, 1, '查询鲜花列表', 0, '2018-11-29 15:22:25', 2);
INSERT INTO `user_log` VALUES (776, 1, '查询鲜花列表', 0, '2018-11-29 15:22:25', 2);
INSERT INTO `user_log` VALUES (777, 1, '查询鲜花列表', 0, '2018-11-29 15:22:26', 2);
INSERT INTO `user_log` VALUES (778, 1, '查询鲜花列表', 0, '2018-11-29 15:22:26', 2);
INSERT INTO `user_log` VALUES (779, 1, '查询鲜花列表', 0, '2018-11-29 15:22:26', 2);
INSERT INTO `user_log` VALUES (780, 1, '查询鲜花列表', 0, '2018-11-29 15:22:26', 2);
INSERT INTO `user_log` VALUES (781, 1, '查询鲜花列表', 0, '2018-11-29 15:22:27', 2);
INSERT INTO `user_log` VALUES (782, 1, '查询鲜花列表', 0, '2018-11-29 15:22:27', 2);
INSERT INTO `user_log` VALUES (783, 1, '查询鲜花列表', 0, '2018-11-29 15:22:28', 2);
INSERT INTO `user_log` VALUES (784, 1, '查询鲜花列表', 0, '2018-11-29 15:22:28', 2);
INSERT INTO `user_log` VALUES (785, 1, '查询鲜花列表', 0, '2018-11-29 15:22:28', 2);
INSERT INTO `user_log` VALUES (786, 1, '查询鲜花列表', 0, '2018-11-29 15:22:28', 2);
INSERT INTO `user_log` VALUES (787, 1, '查询鲜花列表', 0, '2018-11-29 15:22:29', 2);
INSERT INTO `user_log` VALUES (788, 1, '查询鲜花列表', 0, '2018-11-29 15:22:29', 2);
INSERT INTO `user_log` VALUES (789, 1, '查询鲜花列表', 0, '2018-11-29 15:22:29', 2);
INSERT INTO `user_log` VALUES (790, 1, '查询鲜花列表', 0, '2018-11-29 15:22:29', 2);
INSERT INTO `user_log` VALUES (791, 1, '查询鲜花列表', 0, '2018-11-29 15:22:30', 2);
INSERT INTO `user_log` VALUES (792, 1, '查询鲜花列表', 0, '2018-11-29 15:22:30', 2);
INSERT INTO `user_log` VALUES (793, 1, '查询鲜花列表', 0, '2018-11-29 15:22:31', 2);
INSERT INTO `user_log` VALUES (794, 1, '查询鲜花列表', 0, '2018-11-29 15:22:31', 2);
INSERT INTO `user_log` VALUES (795, 1, '查询鲜花列表', 0, '2018-11-29 15:22:31', 2);
INSERT INTO `user_log` VALUES (796, 1, '查询鲜花列表', 0, '2018-11-29 15:22:31', 2);
INSERT INTO `user_log` VALUES (797, 1, '查询鲜花列表', 0, '2018-11-29 15:22:32', 2);
INSERT INTO `user_log` VALUES (798, 1, '查询鲜花列表', 0, '2018-11-29 15:22:32', 2);
INSERT INTO `user_log` VALUES (799, 1, '查询鲜花列表', 0, '2018-11-29 15:22:33', 2);
INSERT INTO `user_log` VALUES (800, 1, '查询鲜花列表', 0, '2018-11-29 15:22:33', 2);
INSERT INTO `user_log` VALUES (801, 1, '查询鲜花列表', 0, '2018-11-29 15:22:33', 2);
INSERT INTO `user_log` VALUES (802, 1, '查询鲜花列表', 0, '2018-11-29 15:22:33', 2);
INSERT INTO `user_log` VALUES (803, 1, '查询鲜花列表', 0, '2018-11-29 15:22:34', 2);
INSERT INTO `user_log` VALUES (804, 1, '查询鲜花列表', 0, '2018-11-29 15:22:34', 2);
INSERT INTO `user_log` VALUES (805, 1, '查询鲜花列表', 0, '2018-11-29 15:22:34', 2);
INSERT INTO `user_log` VALUES (806, 1, '查询鲜花列表', 0, '2018-11-29 15:22:34', 2);
INSERT INTO `user_log` VALUES (807, 1, '查询鲜花列表', 0, '2018-11-29 15:22:35', 2);
INSERT INTO `user_log` VALUES (808, 1, '查询鲜花列表', 0, '2018-11-29 15:22:35', 2);
INSERT INTO `user_log` VALUES (809, 1, '查询鲜花列表', 0, '2018-11-29 15:22:36', 2);
INSERT INTO `user_log` VALUES (810, 1, '查询鲜花列表', 0, '2018-11-29 15:22:36', 2);
INSERT INTO `user_log` VALUES (811, 1, '查询鲜花列表', 0, '2018-11-29 15:22:36', 2);
INSERT INTO `user_log` VALUES (812, 1, '查询鲜花列表', 0, '2018-11-29 15:22:36', 2);
INSERT INTO `user_log` VALUES (813, 1, '查询鲜花列表', 0, '2018-11-29 15:22:37', 2);
INSERT INTO `user_log` VALUES (814, 1, '查询鲜花列表', 0, '2018-11-29 15:22:37', 2);
INSERT INTO `user_log` VALUES (815, 1, '查询鲜花列表', 0, '2018-11-29 15:22:38', 2);
INSERT INTO `user_log` VALUES (816, 1, '查询鲜花列表', 0, '2018-11-29 15:22:38', 2);
INSERT INTO `user_log` VALUES (817, 1, '查询鲜花列表', 0, '2018-11-29 15:22:38', 2);
INSERT INTO `user_log` VALUES (818, 1, '查询鲜花列表', 0, '2018-11-29 15:22:38', 2);
INSERT INTO `user_log` VALUES (819, 1, '查询鲜花列表', 0, '2018-11-29 15:22:39', 2);
INSERT INTO `user_log` VALUES (820, 1, '查询鲜花列表', 0, '2018-11-29 15:22:39', 2);
INSERT INTO `user_log` VALUES (821, 1, '查询鲜花列表', 0, '2018-11-29 15:22:40', 2);
INSERT INTO `user_log` VALUES (822, 1, '查询鲜花列表', 0, '2018-11-29 15:22:40', 2);
INSERT INTO `user_log` VALUES (823, 1, '查询鲜花列表', 0, '2018-11-29 15:22:40', 2);
INSERT INTO `user_log` VALUES (824, 1, '查询鲜花列表', 0, '2018-11-29 15:22:40', 2);
INSERT INTO `user_log` VALUES (825, 1, '查询鲜花列表', 0, '2018-11-29 15:22:41', 2);
INSERT INTO `user_log` VALUES (826, 1, '查询鲜花列表', 0, '2018-11-29 15:22:41', 2);
INSERT INTO `user_log` VALUES (827, 1, '查询鲜花列表', 0, '2018-11-29 15:22:41', 2);
INSERT INTO `user_log` VALUES (828, 1, '查询鲜花列表', 0, '2018-11-29 15:22:41', 2);
INSERT INTO `user_log` VALUES (829, 1, '查询鲜花列表', 0, '2018-11-29 15:22:42', 2);
INSERT INTO `user_log` VALUES (830, 1, '查询鲜花列表', 0, '2018-11-29 15:22:42', 2);
INSERT INTO `user_log` VALUES (831, 1, '查询鲜花列表', 0, '2018-11-29 15:22:43', 2);
INSERT INTO `user_log` VALUES (832, 1, '查询鲜花列表', 0, '2018-11-29 15:22:43', 2);
INSERT INTO `user_log` VALUES (833, 1, '查询鲜花列表', 0, '2018-11-29 15:22:43', 2);
INSERT INTO `user_log` VALUES (834, 1, '查询鲜花列表', 0, '2018-11-29 15:22:43', 2);
INSERT INTO `user_log` VALUES (835, 1, '查询鲜花列表', 0, '2018-11-29 15:22:44', 2);
INSERT INTO `user_log` VALUES (836, 1, '查询鲜花列表', 0, '2018-11-29 15:22:44', 2);
INSERT INTO `user_log` VALUES (837, 1, '查询鲜花列表', 0, '2018-11-29 15:22:45', 2);
INSERT INTO `user_log` VALUES (838, 1, '查询鲜花列表', 0, '2018-11-29 15:22:45', 2);
INSERT INTO `user_log` VALUES (839, 1, '查询鲜花列表', 0, '2018-11-29 15:22:45', 2);
INSERT INTO `user_log` VALUES (840, 1, '查询鲜花列表', 0, '2018-11-29 15:22:45', 2);
INSERT INTO `user_log` VALUES (841, 1, '查询鲜花列表', 0, '2018-11-29 15:22:46', 2);
INSERT INTO `user_log` VALUES (842, 1, '查询鲜花列表', 0, '2018-11-29 15:22:46', 2);
INSERT INTO `user_log` VALUES (843, 1, '查询鲜花列表', 0, '2018-11-29 15:22:47', 2);
INSERT INTO `user_log` VALUES (844, 1, '查询鲜花列表', 0, '2018-11-29 15:22:47', 2);
INSERT INTO `user_log` VALUES (845, 1, '查询鲜花列表', 0, '2018-11-29 15:22:47', 2);
INSERT INTO `user_log` VALUES (846, 1, '查询鲜花列表', 0, '2018-11-29 15:22:47', 2);
INSERT INTO `user_log` VALUES (847, 1, '查询鲜花列表', 0, '2018-11-29 15:22:48', 2);
INSERT INTO `user_log` VALUES (848, 1, '查询鲜花列表', 0, '2018-11-29 15:22:48', 2);
INSERT INTO `user_log` VALUES (849, 1, '查询鲜花列表', 0, '2018-11-29 15:22:48', 2);
INSERT INTO `user_log` VALUES (850, 1, '查询鲜花列表', 0, '2018-11-29 15:22:49', 2);
INSERT INTO `user_log` VALUES (851, 1, '查询鲜花列表', 0, '2018-11-29 15:22:49', 2);
INSERT INTO `user_log` VALUES (852, 1, '查询鲜花列表', 0, '2018-11-29 15:22:49', 2);
INSERT INTO `user_log` VALUES (853, 1, '查询鲜花列表', 0, '2018-11-29 15:22:50', 2);
INSERT INTO `user_log` VALUES (854, 1, '查询鲜花列表', 0, '2018-11-29 15:22:50', 2);
INSERT INTO `user_log` VALUES (855, 1, '查询鲜花列表', 0, '2018-11-29 15:22:50', 2);
INSERT INTO `user_log` VALUES (856, 1, '查询鲜花列表', 0, '2018-11-29 15:22:50', 2);
INSERT INTO `user_log` VALUES (857, 1, '查询鲜花列表', 0, '2018-11-29 15:22:51', 2);
INSERT INTO `user_log` VALUES (858, 1, '查询鲜花列表', 0, '2018-11-29 15:22:51', 2);
INSERT INTO `user_log` VALUES (859, 1, '查询鲜花列表', 0, '2018-11-29 15:22:52', 2);
INSERT INTO `user_log` VALUES (860, 1, '查询鲜花列表', 0, '2018-11-29 15:22:52', 2);
INSERT INTO `user_log` VALUES (861, 1, '查询鲜花列表', 0, '2018-11-29 15:22:52', 2);
INSERT INTO `user_log` VALUES (862, 1, '查询鲜花列表', 0, '2018-11-29 15:22:52', 2);
INSERT INTO `user_log` VALUES (863, 1, '查询鲜花列表', 0, '2018-11-29 15:22:53', 2);
INSERT INTO `user_log` VALUES (864, 1, '查询鲜花列表', 0, '2018-11-29 15:22:53', 2);
INSERT INTO `user_log` VALUES (865, 1, '查询鲜花列表', 0, '2018-11-29 15:22:54', 2);
INSERT INTO `user_log` VALUES (866, 1, '查询鲜花列表', 0, '2018-11-29 15:22:54', 2);
INSERT INTO `user_log` VALUES (867, 1, '查询鲜花列表', 0, '2018-11-29 15:22:54', 2);
INSERT INTO `user_log` VALUES (868, 1, '查询鲜花列表', 0, '2018-11-29 15:22:55', 2);
INSERT INTO `user_log` VALUES (869, 1, '查询鲜花列表', 0, '2018-11-29 15:22:55', 2);
INSERT INTO `user_log` VALUES (870, 1, '查询鲜花列表', 0, '2018-11-29 15:22:55', 2);
INSERT INTO `user_log` VALUES (871, 1, '查询鲜花列表', 0, '2018-11-29 15:22:56', 2);
INSERT INTO `user_log` VALUES (872, 1, '查询鲜花列表', 0, '2018-11-29 15:22:56', 2);
INSERT INTO `user_log` VALUES (873, 1, '查询鲜花列表', 0, '2018-11-29 15:22:56', 2);
INSERT INTO `user_log` VALUES (874, 1, '查询鲜花列表', 0, '2018-11-29 15:22:56', 2);
INSERT INTO `user_log` VALUES (875, 1, '查询鲜花列表', 0, '2018-11-29 15:22:57', 2);
INSERT INTO `user_log` VALUES (876, 1, '查询鲜花列表', 0, '2018-11-29 15:22:57', 2);
INSERT INTO `user_log` VALUES (877, 1, '查询鲜花列表', 0, '2018-11-29 15:22:57', 2);
INSERT INTO `user_log` VALUES (878, 1, '查询鲜花列表', 0, '2018-11-29 15:22:57', 2);
INSERT INTO `user_log` VALUES (879, 1, '查询鲜花列表', 0, '2018-11-29 15:22:58', 2);
INSERT INTO `user_log` VALUES (880, 1, '查询鲜花列表', 0, '2018-11-29 15:22:58', 2);
INSERT INTO `user_log` VALUES (881, 1, '查询鲜花列表', 0, '2018-11-29 15:22:59', 2);
INSERT INTO `user_log` VALUES (882, 1, '查询鲜花列表', 0, '2018-11-29 15:22:59', 2);
INSERT INTO `user_log` VALUES (883, 1, '查询鲜花列表', 0, '2018-11-29 15:22:59', 2);
INSERT INTO `user_log` VALUES (884, 1, '查询鲜花列表', 0, '2018-11-29 15:22:59', 2);
INSERT INTO `user_log` VALUES (885, 1, '查询鲜花列表', 0, '2018-11-29 15:23:00', 2);
INSERT INTO `user_log` VALUES (886, 1, '查询鲜花列表', 0, '2018-11-29 15:23:00', 2);
INSERT INTO `user_log` VALUES (887, 1, '查询鲜花列表', 0, '2018-11-29 15:23:01', 2);
INSERT INTO `user_log` VALUES (888, 1, '查询鲜花列表', 0, '2018-11-29 15:23:01', 2);
INSERT INTO `user_log` VALUES (889, 1, '查询鲜花列表', 0, '2018-11-29 15:23:01', 2);
INSERT INTO `user_log` VALUES (890, 1, '查询鲜花列表', 0, '2018-11-29 15:23:01', 2);
INSERT INTO `user_log` VALUES (891, 1, '查询鲜花列表', 0, '2018-11-29 15:23:02', 2);
INSERT INTO `user_log` VALUES (892, 1, '查询鲜花列表', 0, '2018-11-29 15:23:02', 2);
INSERT INTO `user_log` VALUES (893, 1, '查询鲜花列表', 0, '2018-11-29 15:23:03', 2);
INSERT INTO `user_log` VALUES (894, 1, '查询鲜花列表', 0, '2018-11-29 15:23:03', 2);
INSERT INTO `user_log` VALUES (895, 1, '查询鲜花列表', 0, '2018-11-29 15:23:03', 2);
INSERT INTO `user_log` VALUES (896, 1, '查询鲜花列表', 0, '2018-11-29 15:23:03', 2);
INSERT INTO `user_log` VALUES (897, 1, '查询鲜花列表', 0, '2018-11-29 15:23:04', 2);
INSERT INTO `user_log` VALUES (898, 1, '查询鲜花列表', 0, '2018-11-29 15:23:04', 2);
INSERT INTO `user_log` VALUES (899, 1, '查询鲜花列表', 0, '2018-11-29 15:23:04', 2);
INSERT INTO `user_log` VALUES (900, 1, '查询鲜花列表', 0, '2018-11-29 15:23:05', 2);
INSERT INTO `user_log` VALUES (901, 1, '查询鲜花列表', 0, '2018-11-29 15:23:05', 2);
INSERT INTO `user_log` VALUES (902, 1, '查询鲜花列表', 0, '2018-11-29 15:23:05', 2);
INSERT INTO `user_log` VALUES (903, 1, '查询鲜花列表', 0, '2018-11-29 15:23:06', 2);
INSERT INTO `user_log` VALUES (904, 1, '查询鲜花列表', 0, '2018-11-29 15:23:06', 2);
INSERT INTO `user_log` VALUES (905, 1, '查询鲜花列表', 0, '2018-11-29 15:23:06', 2);
INSERT INTO `user_log` VALUES (906, 1, '查询鲜花列表', 0, '2018-11-29 15:23:06', 2);
INSERT INTO `user_log` VALUES (907, 1, '查询鲜花列表', 0, '2018-11-29 15:23:07', 2);
INSERT INTO `user_log` VALUES (908, 1, '查询鲜花列表', 0, '2018-11-29 15:23:07', 2);
INSERT INTO `user_log` VALUES (909, 1, '查询鲜花列表', 0, '2018-11-29 15:23:08', 2);
INSERT INTO `user_log` VALUES (910, 1, '查询鲜花列表', 0, '2018-11-29 15:23:08', 2);
INSERT INTO `user_log` VALUES (911, 1, '查询鲜花列表', 0, '2018-11-29 15:23:08', 2);
INSERT INTO `user_log` VALUES (912, 1, '查询鲜花列表', 0, '2018-11-29 15:23:08', 2);
INSERT INTO `user_log` VALUES (913, 1, '查询鲜花列表', 0, '2018-11-29 15:23:09', 2);
INSERT INTO `user_log` VALUES (914, 1, '查询鲜花列表', 0, '2018-11-29 15:23:09', 2);
INSERT INTO `user_log` VALUES (915, 1, '查询鲜花列表', 0, '2018-11-29 15:23:10', 2);
INSERT INTO `user_log` VALUES (916, 1, '查询鲜花列表', 0, '2018-11-29 15:23:10', 2);
INSERT INTO `user_log` VALUES (917, 1, '查询鲜花列表', 0, '2018-11-29 15:23:10', 2);
INSERT INTO `user_log` VALUES (918, 1, '查询鲜花列表', 0, '2018-11-29 15:23:10', 2);
INSERT INTO `user_log` VALUES (919, 1, '查询鲜花列表', 0, '2018-11-29 15:23:11', 2);
INSERT INTO `user_log` VALUES (920, 1, '查询鲜花列表', 0, '2018-11-29 15:23:11', 2);
INSERT INTO `user_log` VALUES (921, 1, '查询鲜花列表', 0, '2018-11-29 15:23:12', 2);
INSERT INTO `user_log` VALUES (922, 1, '查询鲜花列表', 0, '2018-11-29 15:23:12', 2);
INSERT INTO `user_log` VALUES (923, 1, '查询鲜花列表', 0, '2018-11-29 15:23:12', 2);
INSERT INTO `user_log` VALUES (924, 1, '查询鲜花列表', 0, '2018-11-29 15:23:12', 2);
INSERT INTO `user_log` VALUES (925, 1, '查询鲜花列表', 0, '2018-11-29 15:23:13', 2);
INSERT INTO `user_log` VALUES (926, 1, '查询鲜花列表', 0, '2018-11-29 15:23:13', 2);
INSERT INTO `user_log` VALUES (927, 1, '查询鲜花列表', 0, '2018-11-29 15:23:13', 2);
INSERT INTO `user_log` VALUES (928, 1, '查询鲜花列表', 0, '2018-11-29 15:23:14', 2);
INSERT INTO `user_log` VALUES (929, 1, '查询鲜花列表', 0, '2018-11-29 15:23:14', 2);
INSERT INTO `user_log` VALUES (930, 1, '查询鲜花列表', 0, '2018-11-29 15:23:14', 2);
INSERT INTO `user_log` VALUES (931, 1, '查询鲜花列表', 0, '2018-11-29 15:23:15', 2);
INSERT INTO `user_log` VALUES (932, 1, '查询鲜花列表', 0, '2018-11-29 15:23:15', 2);
INSERT INTO `user_log` VALUES (933, 1, '查询鲜花列表', 0, '2018-11-29 15:23:15', 2);
INSERT INTO `user_log` VALUES (934, 1, '查询鲜花列表', 0, '2018-11-29 15:23:15', 2);
INSERT INTO `user_log` VALUES (935, 1, '查询鲜花列表', 0, '2018-11-29 15:23:16', 2);
INSERT INTO `user_log` VALUES (936, 1, '查询鲜花列表', 0, '2018-11-29 15:23:16', 2);
INSERT INTO `user_log` VALUES (937, 1, '查询鲜花列表', 0, '2018-11-29 15:23:17', 2);
INSERT INTO `user_log` VALUES (938, 1, '查询鲜花列表', 0, '2018-11-29 15:23:17', 2);
INSERT INTO `user_log` VALUES (939, 1, '查询鲜花列表', 0, '2018-11-29 15:23:17', 2);
INSERT INTO `user_log` VALUES (940, 1, '查询鲜花列表', 0, '2018-11-29 15:23:17', 2);
INSERT INTO `user_log` VALUES (941, 1, '查询鲜花列表', 0, '2018-11-29 15:23:18', 2);
INSERT INTO `user_log` VALUES (942, 1, '查询鲜花列表', 0, '2018-11-29 15:23:18', 2);
INSERT INTO `user_log` VALUES (943, 1, '查询鲜花列表', 0, '2018-11-29 15:23:19', 2);
INSERT INTO `user_log` VALUES (944, 1, '查询鲜花列表', 0, '2018-11-29 15:23:19', 2);
INSERT INTO `user_log` VALUES (945, 1, '查询鲜花列表', 0, '2018-11-29 15:23:19', 2);
INSERT INTO `user_log` VALUES (946, 1, '查询鲜花列表', 0, '2018-11-29 15:23:19', 2);
INSERT INTO `user_log` VALUES (947, 1, '查询鲜花列表', 0, '2018-11-29 15:23:20', 2);
INSERT INTO `user_log` VALUES (948, 1, '查询鲜花列表', 0, '2018-11-29 15:23:20', 2);
INSERT INTO `user_log` VALUES (949, 1, '查询鲜花列表', 0, '2018-11-29 15:23:21', 2);
INSERT INTO `user_log` VALUES (950, 1, '查询鲜花列表', 0, '2018-11-29 15:23:21', 2);
INSERT INTO `user_log` VALUES (951, 1, '查询鲜花列表', 0, '2018-11-29 15:23:21', 2);
INSERT INTO `user_log` VALUES (952, 1, '查询鲜花列表', 0, '2018-11-29 15:23:21', 2);
INSERT INTO `user_log` VALUES (953, 1, '查询鲜花列表', 0, '2018-11-29 15:23:22', 2);
INSERT INTO `user_log` VALUES (954, 1, '查询鲜花列表', 0, '2018-11-29 15:23:22', 2);
INSERT INTO `user_log` VALUES (955, 1, '查询鲜花列表', 0, '2018-11-29 15:23:23', 2);
INSERT INTO `user_log` VALUES (956, 1, '查询鲜花列表', 0, '2018-11-29 15:23:23', 2);
INSERT INTO `user_log` VALUES (957, 1, '查询鲜花列表', 0, '2018-11-29 15:23:23', 2);
INSERT INTO `user_log` VALUES (958, 1, '查询鲜花列表', 0, '2018-11-29 15:23:23', 2);
INSERT INTO `user_log` VALUES (959, 1, '查询鲜花列表', 0, '2018-11-29 15:23:24', 2);
INSERT INTO `user_log` VALUES (960, 1, '查询鲜花列表', 0, '2018-11-29 15:23:24', 2);
INSERT INTO `user_log` VALUES (961, 1, '查询鲜花列表', 0, '2018-11-29 15:23:24', 2);
INSERT INTO `user_log` VALUES (962, 1, '查询鲜花列表', 0, '2018-11-29 15:23:24', 2);
INSERT INTO `user_log` VALUES (963, 1, '查询鲜花列表', 0, '2018-11-29 15:23:25', 2);
INSERT INTO `user_log` VALUES (964, 1, '查询鲜花列表', 0, '2018-11-29 15:23:25', 2);
INSERT INTO `user_log` VALUES (965, 1, '查询鲜花列表', 0, '2018-11-29 15:23:26', 2);
INSERT INTO `user_log` VALUES (966, 1, '查询鲜花列表', 0, '2018-11-29 15:23:26', 2);
INSERT INTO `user_log` VALUES (967, 1, '查询鲜花列表', 0, '2018-11-29 15:23:26', 2);
INSERT INTO `user_log` VALUES (968, 1, '查询鲜花列表', 0, '2018-11-29 15:23:26', 2);
INSERT INTO `user_log` VALUES (969, 1, '查询鲜花列表', 0, '2018-11-29 15:23:27', 2);
INSERT INTO `user_log` VALUES (970, 1, '查询鲜花列表', 0, '2018-11-29 15:23:27', 2);
INSERT INTO `user_log` VALUES (971, 1, '查询鲜花列表', 0, '2018-11-29 15:23:28', 2);
INSERT INTO `user_log` VALUES (972, 1, '查询鲜花列表', 0, '2018-11-29 15:23:28', 2);
INSERT INTO `user_log` VALUES (973, 1, '查询鲜花列表', 0, '2018-11-29 15:23:28', 2);
INSERT INTO `user_log` VALUES (974, 1, '查询鲜花列表', 0, '2018-11-29 15:23:28', 2);
INSERT INTO `user_log` VALUES (975, 1, '查询鲜花列表', 0, '2018-11-29 15:23:29', 2);
INSERT INTO `user_log` VALUES (976, 1, '查询鲜花列表', 0, '2018-11-29 15:23:29', 2);
INSERT INTO `user_log` VALUES (977, 1, '查询鲜花列表', 0, '2018-11-29 15:23:30', 2);
INSERT INTO `user_log` VALUES (978, 1, '查询鲜花列表', 0, '2018-11-29 15:23:30', 2);
INSERT INTO `user_log` VALUES (979, 1, '查询鲜花列表', 0, '2018-11-29 15:23:30', 2);
INSERT INTO `user_log` VALUES (980, 1, '查询鲜花列表', 0, '2018-11-29 15:23:30', 2);
INSERT INTO `user_log` VALUES (981, 1, '查询鲜花列表', 0, '2018-11-29 15:23:31', 2);
INSERT INTO `user_log` VALUES (982, 1, '查询鲜花列表', 0, '2018-11-29 15:23:31', 2);
INSERT INTO `user_log` VALUES (983, 1, '查询鲜花列表', 0, '2018-11-29 15:23:32', 2);
INSERT INTO `user_log` VALUES (984, 1, '查询鲜花列表', 0, '2018-11-29 15:23:32', 2);
INSERT INTO `user_log` VALUES (985, 1, '查询鲜花列表', 0, '2018-11-29 15:23:32', 2);
INSERT INTO `user_log` VALUES (986, 1, '查询鲜花列表', 0, '2018-11-29 15:23:32', 2);
INSERT INTO `user_log` VALUES (987, 1, '查询鲜花列表', 0, '2018-11-29 15:23:33', 2);
INSERT INTO `user_log` VALUES (988, 1, '查询鲜花列表', 0, '2018-11-29 15:23:33', 2);
INSERT INTO `user_log` VALUES (989, 1, '查询鲜花列表', 0, '2018-11-29 15:23:33', 2);
INSERT INTO `user_log` VALUES (990, 1, '查询鲜花列表', 0, '2018-11-29 15:23:34', 2);
INSERT INTO `user_log` VALUES (991, 1, '查询鲜花列表', 0, '2018-11-29 15:23:34', 2);
INSERT INTO `user_log` VALUES (992, 1, '查询鲜花列表', 0, '2018-11-29 15:23:34', 2);
INSERT INTO `user_log` VALUES (993, 1, '查询鲜花列表', 0, '2018-11-29 15:23:35', 2);
INSERT INTO `user_log` VALUES (994, 1, '查询鲜花列表', 0, '2018-11-29 15:23:35', 2);
INSERT INTO `user_log` VALUES (995, 1, '查询鲜花列表', 0, '2018-11-29 15:23:35', 2);
INSERT INTO `user_log` VALUES (996, 1, '查询鲜花列表', 0, '2018-11-29 15:23:35', 2);
INSERT INTO `user_log` VALUES (997, 1, '查询鲜花列表', 0, '2018-11-29 15:23:36', 2);
INSERT INTO `user_log` VALUES (998, 1, '查询鲜花列表', 0, '2018-11-29 15:23:36', 2);
INSERT INTO `user_log` VALUES (999, 1, '查询鲜花列表', 0, '2018-11-29 15:23:37', 2);
INSERT INTO `user_log` VALUES (1000, 1, '查询鲜花列表', 0, '2018-11-29 15:23:37', 2);
INSERT INTO `user_log` VALUES (1001, 1, '查询鲜花列表', 0, '2018-11-29 15:23:37', 2);
INSERT INTO `user_log` VALUES (1002, 1, '查询鲜花列表', 0, '2018-11-29 15:23:37', 2);
INSERT INTO `user_log` VALUES (1003, 1, '查询鲜花列表', 0, '2018-11-29 15:23:38', 2);
INSERT INTO `user_log` VALUES (1004, 1, '查询鲜花列表', 0, '2018-11-29 15:23:38', 2);
INSERT INTO `user_log` VALUES (1005, 1, '查询鲜花列表', 0, '2018-11-29 15:23:39', 2);
INSERT INTO `user_log` VALUES (1006, 1, '查询鲜花列表', 0, '2018-11-29 15:23:39', 2);
INSERT INTO `user_log` VALUES (1007, 1, '查询鲜花列表', 0, '2018-11-29 15:23:39', 2);
INSERT INTO `user_log` VALUES (1008, 1, '查询鲜花列表', 0, '2018-11-29 15:23:39', 2);
INSERT INTO `user_log` VALUES (1009, 1, '查询鲜花列表', 0, '2018-11-29 15:23:40', 2);
INSERT INTO `user_log` VALUES (1010, 1, '查询鲜花列表', 0, '2018-11-29 15:23:40', 2);
INSERT INTO `user_log` VALUES (1011, 1, '查询鲜花列表', 0, '2018-11-29 15:23:41', 2);
INSERT INTO `user_log` VALUES (1012, 1, '查询鲜花列表', 0, '2018-11-29 15:23:41', 2);
INSERT INTO `user_log` VALUES (1013, 1, '查询鲜花列表', 0, '2018-11-29 15:23:41', 2);
INSERT INTO `user_log` VALUES (1014, 1, '查询鲜花列表', 0, '2018-11-29 15:23:41', 2);
INSERT INTO `user_log` VALUES (1015, 1, '查询鲜花列表', 0, '2018-11-29 15:23:42', 2);
INSERT INTO `user_log` VALUES (1016, 1, '查询鲜花列表', 0, '2018-11-29 15:23:42', 2);
INSERT INTO `user_log` VALUES (1017, 1, '查询鲜花列表', 0, '2018-11-29 15:23:43', 2);
INSERT INTO `user_log` VALUES (1018, 1, '查询鲜花列表', 0, '2018-11-29 15:23:43', 2);
INSERT INTO `user_log` VALUES (1019, 1, '查询鲜花列表', 0, '2018-11-29 15:23:43', 2);
INSERT INTO `user_log` VALUES (1020, 1, '查询鲜花列表', 0, '2018-11-29 15:23:43', 2);
INSERT INTO `user_log` VALUES (1021, 1, '查询鲜花列表', 0, '2018-11-29 15:23:44', 2);
INSERT INTO `user_log` VALUES (1022, 1, '查询鲜花列表', 0, '2018-11-29 15:23:44', 2);
INSERT INTO `user_log` VALUES (1023, 1, '查询鲜花列表', 0, '2018-11-29 15:23:45', 2);
INSERT INTO `user_log` VALUES (1024, 1, '查询鲜花列表', 0, '2018-11-29 15:23:45', 2);
INSERT INTO `user_log` VALUES (1025, 1, '查询鲜花列表', 0, '2018-11-29 15:23:45', 2);
INSERT INTO `user_log` VALUES (1026, 1, '查询鲜花列表', 0, '2018-11-29 15:23:45', 2);
INSERT INTO `user_log` VALUES (1027, 1, '查询鲜花列表', 0, '2018-11-29 15:23:46', 2);
INSERT INTO `user_log` VALUES (1028, 1, '查询鲜花列表', 0, '2018-11-29 15:23:46', 2);
INSERT INTO `user_log` VALUES (1029, 1, '查询鲜花列表', 0, '2018-11-29 15:23:46', 2);
INSERT INTO `user_log` VALUES (1030, 1, '查询鲜花列表', 0, '2018-11-29 15:23:46', 2);
INSERT INTO `user_log` VALUES (1031, 1, '查询鲜花列表', 0, '2018-11-29 15:23:47', 2);
INSERT INTO `user_log` VALUES (1032, 1, '查询鲜花列表', 0, '2018-11-29 15:23:47', 2);
INSERT INTO `user_log` VALUES (1033, 1, '查询鲜花列表', 0, '2018-11-29 15:23:48', 2);
INSERT INTO `user_log` VALUES (1034, 1, '查询鲜花列表', 0, '2018-11-29 15:23:48', 2);
INSERT INTO `user_log` VALUES (1035, 1, '查询鲜花列表', 0, '2018-11-29 15:23:48', 2);
INSERT INTO `user_log` VALUES (1036, 1, '查询鲜花列表', 0, '2018-11-29 15:23:48', 2);
INSERT INTO `user_log` VALUES (1037, 1, '查询鲜花列表', 0, '2018-11-29 15:23:49', 2);
INSERT INTO `user_log` VALUES (1038, 1, '查询鲜花列表', 0, '2018-11-29 15:23:49', 2);
INSERT INTO `user_log` VALUES (1039, 1, '查询鲜花列表', 0, '2018-11-29 15:23:50', 2);
INSERT INTO `user_log` VALUES (1040, 1, '查询鲜花列表', 0, '2018-11-29 15:23:50', 2);
INSERT INTO `user_log` VALUES (1041, 1, '查询鲜花列表', 0, '2018-11-29 15:23:50', 2);
INSERT INTO `user_log` VALUES (1042, 1, '查询鲜花列表', 0, '2018-11-29 15:23:50', 2);
INSERT INTO `user_log` VALUES (1043, 1, '查询鲜花列表', 0, '2018-11-29 15:23:51', 2);
INSERT INTO `user_log` VALUES (1044, 1, '查询鲜花列表', 0, '2018-11-29 15:23:51', 2);
INSERT INTO `user_log` VALUES (1045, 1, '查询鲜花列表', 0, '2018-11-29 15:23:52', 2);
INSERT INTO `user_log` VALUES (1046, 1, '查询鲜花列表', 0, '2018-11-29 15:23:52', 2);
INSERT INTO `user_log` VALUES (1047, 1, '查询鲜花列表', 0, '2018-11-29 15:23:52', 2);
INSERT INTO `user_log` VALUES (1048, 1, '查询鲜花列表', 0, '2018-11-29 15:23:52', 2);
INSERT INTO `user_log` VALUES (1049, 1, '查询鲜花列表', 0, '2018-11-29 15:23:53', 2);
INSERT INTO `user_log` VALUES (1050, 1, '查询鲜花列表', 0, '2018-11-29 15:23:53', 2);
INSERT INTO `user_log` VALUES (1051, 1, '查询鲜花列表', 0, '2018-11-29 15:23:54', 2);
INSERT INTO `user_log` VALUES (1052, 1, '查询鲜花列表', 0, '2018-11-29 15:23:54', 2);
INSERT INTO `user_log` VALUES (1053, 1, '查询鲜花列表', 0, '2018-11-29 15:23:54', 2);
INSERT INTO `user_log` VALUES (1054, 1, '查询鲜花列表', 0, '2018-11-29 15:23:54', 2);
INSERT INTO `user_log` VALUES (1055, 1, '查询鲜花列表', 0, '2018-11-29 15:23:55', 2);
INSERT INTO `user_log` VALUES (1056, 1, '查询鲜花列表', 0, '2018-11-29 15:23:55', 2);
INSERT INTO `user_log` VALUES (1057, 1, '查询鲜花列表', 0, '2018-11-29 15:23:56', 2);
INSERT INTO `user_log` VALUES (1058, 1, '查询鲜花列表', 0, '2018-11-29 15:23:56', 2);
INSERT INTO `user_log` VALUES (1059, 1, '查询鲜花列表', 0, '2018-11-29 15:23:56', 2);
INSERT INTO `user_log` VALUES (1060, 1, '查询鲜花列表', 0, '2018-11-29 15:23:56', 2);
INSERT INTO `user_log` VALUES (1061, 1, '查询鲜花列表', 0, '2018-11-29 15:23:57', 2);
INSERT INTO `user_log` VALUES (1062, 1, '查询总数', 0, '2018-11-29 15:27:43', 2);
INSERT INTO `user_log` VALUES (1063, 1, '查询鲜花列表', 0, '2018-11-29 15:28:54', 2);
INSERT INTO `user_log` VALUES (1064, 1, '查询鲜花列表', 0, '2018-11-29 15:29:45', 2);
INSERT INTO `user_log` VALUES (1065, 1, '查询鲜花列表', 0, '2018-11-29 15:29:46', 2);
INSERT INTO `user_log` VALUES (1066, 1, '查询鲜花列表', 0, '2018-11-29 15:29:47', 2);
INSERT INTO `user_log` VALUES (1067, 1, '查询鲜花列表', 0, '2018-11-29 15:29:47', 2);
INSERT INTO `user_log` VALUES (1068, 1, '查询鲜花列表', 0, '2018-11-29 15:29:48', 2);
INSERT INTO `user_log` VALUES (1069, 1, '查询鲜花列表', 0, '2018-11-29 15:29:48', 2);
INSERT INTO `user_log` VALUES (1070, 1, '查询鲜花列表', 0, '2018-11-29 15:29:48', 2);
INSERT INTO `user_log` VALUES (1071, 1, '查询鲜花列表', 0, '2018-11-29 15:29:48', 2);
INSERT INTO `user_log` VALUES (1072, 1, '查询鲜花列表', 0, '2018-11-29 15:29:49', 2);
INSERT INTO `user_log` VALUES (1073, 1, '查询鲜花列表', 0, '2018-11-29 15:29:49', 2);
INSERT INTO `user_log` VALUES (1074, 1, '查询鲜花列表', 0, '2018-11-29 15:29:55', 2);
INSERT INTO `user_log` VALUES (1075, 1, '查询鲜花列表', 0, '2018-11-29 15:29:56', 2);
INSERT INTO `user_log` VALUES (1076, 1, '查询鲜花列表', 0, '2018-11-29 15:30:17', 2);
INSERT INTO `user_log` VALUES (1077, 1, '查询鲜花列表', 0, '2018-11-29 15:30:18', 2);
INSERT INTO `user_log` VALUES (1078, 1, '查询鲜花列表', 0, '2018-11-29 15:30:20', 2);
INSERT INTO `user_log` VALUES (1079, 1, '查询鲜花列表', 0, '2018-11-29 15:30:21', 2);
INSERT INTO `user_log` VALUES (1080, 1, '查询鲜花列表', 0, '2018-11-29 15:30:23', 2);
INSERT INTO `user_log` VALUES (1081, 1, '查询鲜花列表', 0, '2018-11-29 15:30:23', 2);
INSERT INTO `user_log` VALUES (1082, 1, '查询鲜花列表', 0, '2018-11-29 15:30:25', 2);
INSERT INTO `user_log` VALUES (1083, 1, '查询鲜花列表', 0, '2018-11-29 15:30:25', 2);
INSERT INTO `user_log` VALUES (1084, 1, '查询鲜花列表', 0, '2018-11-29 15:30:25', 2);
INSERT INTO `user_log` VALUES (1085, 1, '查询鲜花列表', 0, '2018-11-29 15:30:33', 2);
INSERT INTO `user_log` VALUES (1086, 1, '查询鲜花列表', 0, '2018-11-29 15:30:34', 2);
INSERT INTO `user_log` VALUES (1087, 1, '查询鲜花列表', 0, '2018-11-29 15:30:36', 2);
INSERT INTO `user_log` VALUES (1088, 1, '查询鲜花列表', 0, '2018-11-29 15:30:37', 2);
INSERT INTO `user_log` VALUES (1089, 1, '查询鲜花列表', 0, '2018-11-29 15:30:37', 2);
INSERT INTO `user_log` VALUES (1090, 1, '查询鲜花列表', 0, '2018-11-29 15:30:37', 2);
INSERT INTO `user_log` VALUES (1091, 1, '查询鲜花列表', 0, '2018-11-29 15:30:38', 2);
INSERT INTO `user_log` VALUES (1092, 1, '查询鲜花列表', 0, '2018-11-29 15:30:38', 2);
INSERT INTO `user_log` VALUES (1093, 1, '查询鲜花列表', 0, '2018-11-29 15:30:38', 2);
INSERT INTO `user_log` VALUES (1094, 1, '查询鲜花列表', 0, '2018-11-29 15:30:38', 2);
INSERT INTO `user_log` VALUES (1095, 1, '查询鲜花列表', 0, '2018-11-29 15:30:39', 2);
INSERT INTO `user_log` VALUES (1096, 1, '查询鲜花列表', 0, '2018-11-29 15:30:39', 2);
INSERT INTO `user_log` VALUES (1097, 1, '查询鲜花列表', 0, '2018-11-29 15:30:39', 2);
INSERT INTO `user_log` VALUES (1098, 1, '查询鲜花列表', 0, '2018-11-29 15:30:39', 2);
INSERT INTO `user_log` VALUES (1099, 1, '查询鲜花列表', 0, '2018-11-29 15:30:40', 2);
INSERT INTO `user_log` VALUES (1100, 1, '查询鲜花列表', 0, '2018-11-29 15:30:40', 2);
INSERT INTO `user_log` VALUES (1101, 1, '查询鲜花列表', 0, '2018-11-29 15:30:41', 2);
INSERT INTO `user_log` VALUES (1102, 1, '查询鲜花列表', 0, '2018-11-29 15:30:41', 2);
INSERT INTO `user_log` VALUES (1103, 1, '查询鲜花列表', 0, '2018-11-29 15:30:41', 2);
INSERT INTO `user_log` VALUES (1104, 1, '查询鲜花列表', 0, '2018-11-29 15:30:41', 2);
INSERT INTO `user_log` VALUES (1105, 1, '查询鲜花列表', 0, '2018-11-29 15:30:42', 2);
INSERT INTO `user_log` VALUES (1106, 1, '查询鲜花列表', 0, '2018-11-29 15:30:42', 2);
INSERT INTO `user_log` VALUES (1107, 1, '查询鲜花列表', 0, '2018-11-29 15:30:42', 2);
INSERT INTO `user_log` VALUES (1108, 1, '查询鲜花列表', 0, '2018-11-29 15:30:43', 2);
INSERT INTO `user_log` VALUES (1109, 1, '查询鲜花列表', 0, '2018-11-29 15:30:43', 2);
INSERT INTO `user_log` VALUES (1110, 1, '查询鲜花列表', 0, '2018-11-29 15:30:43', 2);
INSERT INTO `user_log` VALUES (1111, 1, '查询鲜花列表', 0, '2018-11-29 15:30:44', 2);
INSERT INTO `user_log` VALUES (1112, 1, '查询鲜花列表', 0, '2018-11-29 15:30:44', 2);
INSERT INTO `user_log` VALUES (1113, 1, '查询鲜花列表', 0, '2018-11-29 15:30:44', 2);
INSERT INTO `user_log` VALUES (1114, 1, '查询鲜花列表', 0, '2018-11-29 15:30:44', 2);
INSERT INTO `user_log` VALUES (1115, 1, '查询鲜花列表', 0, '2018-11-29 15:30:45', 2);
INSERT INTO `user_log` VALUES (1116, 1, '查询鲜花列表', 0, '2018-11-29 15:30:45', 2);
INSERT INTO `user_log` VALUES (1117, 1, '查询鲜花列表', 0, '2018-11-29 15:30:46', 2);
INSERT INTO `user_log` VALUES (1118, 1, '查询鲜花列表', 0, '2018-11-29 15:30:46', 2);
INSERT INTO `user_log` VALUES (1119, 1, '查询鲜花列表', 0, '2018-11-29 15:30:46', 2);
INSERT INTO `user_log` VALUES (1120, 1, '查询鲜花列表', 0, '2018-11-29 15:30:46', 2);
INSERT INTO `user_log` VALUES (1121, 1, '查询鲜花列表', 0, '2018-11-29 15:30:47', 2);
INSERT INTO `user_log` VALUES (1122, 1, '查询鲜花列表', 0, '2018-11-29 15:30:47', 2);
INSERT INTO `user_log` VALUES (1123, 1, '查询鲜花列表', 0, '2018-11-29 15:30:47', 2);
INSERT INTO `user_log` VALUES (1124, 1, '查询鲜花列表', 0, '2018-11-29 15:30:47', 2);
INSERT INTO `user_log` VALUES (1125, 1, '查询鲜花列表', 0, '2018-11-29 15:30:48', 2);
INSERT INTO `user_log` VALUES (1126, 1, '查询鲜花列表', 0, '2018-11-29 15:30:48', 2);
INSERT INTO `user_log` VALUES (1127, 1, '查询鲜花列表', 0, '2018-11-29 15:30:49', 2);
INSERT INTO `user_log` VALUES (1128, 1, '查询鲜花列表', 0, '2018-11-29 15:30:49', 2);
INSERT INTO `user_log` VALUES (1129, 1, '查询鲜花列表', 0, '2018-11-29 15:30:49', 2);
INSERT INTO `user_log` VALUES (1130, 1, '查询鲜花列表', 0, '2018-11-29 15:30:49', 2);
INSERT INTO `user_log` VALUES (1131, 1, '查询鲜花列表', 0, '2018-11-29 15:30:50', 2);
INSERT INTO `user_log` VALUES (1132, 1, '查询鲜花列表', 0, '2018-11-29 15:30:50', 2);
INSERT INTO `user_log` VALUES (1133, 1, '查询鲜花列表', 0, '2018-11-29 15:30:51', 2);
INSERT INTO `user_log` VALUES (1134, 1, '查询鲜花列表', 0, '2018-11-29 15:30:51', 2);
INSERT INTO `user_log` VALUES (1135, 1, '查询鲜花列表', 0, '2018-11-29 15:30:51', 2);
INSERT INTO `user_log` VALUES (1136, 1, '查询鲜花列表', 0, '2018-11-29 15:30:51', 2);
INSERT INTO `user_log` VALUES (1137, 1, '查询鲜花列表', 0, '2018-11-29 15:30:52', 2);
INSERT INTO `user_log` VALUES (1138, 1, '查询鲜花列表', 0, '2018-11-29 15:30:52', 2);
INSERT INTO `user_log` VALUES (1139, 1, '查询鲜花列表', 0, '2018-11-29 15:30:52', 2);
INSERT INTO `user_log` VALUES (1140, 1, '查询鲜花列表', 0, '2018-11-29 15:30:53', 2);
INSERT INTO `user_log` VALUES (1141, 1, '查询鲜花列表', 0, '2018-11-29 15:30:53', 2);
INSERT INTO `user_log` VALUES (1142, 1, '查询鲜花列表', 0, '2018-11-29 15:30:53', 2);
INSERT INTO `user_log` VALUES (1143, 1, '查询鲜花列表', 0, '2018-11-29 15:30:54', 2);
INSERT INTO `user_log` VALUES (1144, 1, '查询鲜花列表', 0, '2018-11-29 15:30:54', 2);
INSERT INTO `user_log` VALUES (1145, 1, '查询鲜花列表', 0, '2018-11-29 15:30:54', 2);
INSERT INTO `user_log` VALUES (1146, 1, '查询鲜花列表', 0, '2018-11-29 15:30:54', 2);
INSERT INTO `user_log` VALUES (1147, 1, '查询鲜花列表', 0, '2018-11-29 15:30:55', 2);
INSERT INTO `user_log` VALUES (1148, 1, '查询鲜花列表', 0, '2018-11-29 15:30:55', 2);
INSERT INTO `user_log` VALUES (1149, 1, '查询鲜花列表', 0, '2018-11-29 15:30:56', 2);
INSERT INTO `user_log` VALUES (1150, 1, '查询鲜花列表', 0, '2018-11-29 15:30:56', 2);
INSERT INTO `user_log` VALUES (1151, 1, '查询鲜花列表', 0, '2018-11-29 15:30:56', 2);
INSERT INTO `user_log` VALUES (1152, 1, '查询鲜花列表', 0, '2018-11-29 15:30:56', 2);
INSERT INTO `user_log` VALUES (1153, 1, '查询鲜花列表', 0, '2018-11-29 15:30:57', 2);
INSERT INTO `user_log` VALUES (1154, 1, '查询鲜花列表', 0, '2018-11-29 15:30:57', 2);
INSERT INTO `user_log` VALUES (1155, 1, '查询鲜花列表', 0, '2018-11-29 15:30:57', 2);
INSERT INTO `user_log` VALUES (1156, 1, '查询鲜花列表', 0, '2018-11-29 15:30:57', 2);
INSERT INTO `user_log` VALUES (1157, 1, '查询鲜花列表', 0, '2018-11-29 15:30:58', 2);
INSERT INTO `user_log` VALUES (1158, 1, '查询鲜花列表', 0, '2018-11-29 15:30:58', 2);
INSERT INTO `user_log` VALUES (1159, 1, '查询鲜花列表', 0, '2018-11-29 15:30:59', 2);
INSERT INTO `user_log` VALUES (1160, 1, '查询鲜花列表', 0, '2018-11-29 15:30:59', 2);
INSERT INTO `user_log` VALUES (1161, 1, '查询鲜花列表', 0, '2018-11-29 15:30:59', 2);
INSERT INTO `user_log` VALUES (1162, 1, '查询鲜花列表', 0, '2018-11-29 15:30:59', 2);
INSERT INTO `user_log` VALUES (1163, 1, '查询鲜花列表', 0, '2018-11-29 15:31:00', 2);
INSERT INTO `user_log` VALUES (1164, 1, '查询鲜花列表', 0, '2018-11-29 15:31:00', 2);
INSERT INTO `user_log` VALUES (1165, 1, '查询鲜花列表', 0, '2018-11-29 15:31:01', 2);
INSERT INTO `user_log` VALUES (1166, 1, '查询鲜花列表', 0, '2018-11-29 15:31:01', 2);
INSERT INTO `user_log` VALUES (1167, 1, '查询鲜花列表', 0, '2018-11-29 15:31:01', 2);
INSERT INTO `user_log` VALUES (1168, 1, '查询鲜花列表', 0, '2018-11-29 15:31:01', 2);
INSERT INTO `user_log` VALUES (1169, 1, '查询鲜花列表', 0, '2018-11-29 15:31:02', 2);
INSERT INTO `user_log` VALUES (1170, 1, '查询鲜花列表', 0, '2018-11-29 15:31:02', 2);
INSERT INTO `user_log` VALUES (1171, 1, '查询鲜花列表', 0, '2018-11-29 15:31:02', 2);
INSERT INTO `user_log` VALUES (1172, 1, '查询鲜花列表', 0, '2018-11-29 15:31:02', 2);
INSERT INTO `user_log` VALUES (1173, 1, '查询鲜花列表', 0, '2018-11-29 15:31:03', 2);
INSERT INTO `user_log` VALUES (1174, 1, '查询鲜花列表', 0, '2018-11-29 15:31:03', 2);
INSERT INTO `user_log` VALUES (1175, 1, '查询鲜花列表', 0, '2018-11-29 15:31:04', 2);
INSERT INTO `user_log` VALUES (1176, 1, '查询鲜花列表', 0, '2018-11-29 15:31:04', 2);
INSERT INTO `user_log` VALUES (1177, 1, '查询鲜花列表', 0, '2018-11-29 15:31:04', 2);
INSERT INTO `user_log` VALUES (1178, 1, '查询鲜花列表', 0, '2018-11-29 15:31:04', 2);
INSERT INTO `user_log` VALUES (1179, 1, '查询鲜花列表', 0, '2018-11-29 15:31:05', 2);
INSERT INTO `user_log` VALUES (1180, 1, '查询鲜花列表', 0, '2018-11-29 15:31:05', 2);
INSERT INTO `user_log` VALUES (1181, 1, '查询鲜花列表', 0, '2018-11-29 15:31:37', 2);
INSERT INTO `user_log` VALUES (1182, 1, '查询鲜花列表', 0, '2018-11-29 15:32:01', 2);
INSERT INTO `user_log` VALUES (1183, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:32:03', 2);
INSERT INTO `user_log` VALUES (1184, 1, '查询鲜花列表', 0, '2018-11-29 15:32:05', 2);
INSERT INTO `user_log` VALUES (1185, 1, '查询鲜花列表', 0, '2018-11-29 15:32:23', 2);
INSERT INTO `user_log` VALUES (1186, 1, '查询鲜花列表', 0, '2018-11-29 15:32:35', 2);
INSERT INTO `user_log` VALUES (1187, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:32:36', 2);
INSERT INTO `user_log` VALUES (1188, 1, '查询鲜花列表', 0, '2018-11-29 15:32:38', 2);
INSERT INTO `user_log` VALUES (1189, 1, '查询鲜花列表', 0, '2018-11-29 15:32:57', 2);
INSERT INTO `user_log` VALUES (1190, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:33:00', 2);
INSERT INTO `user_log` VALUES (1191, 1, '查询鲜花列表', 0, '2018-11-29 15:33:01', 2);
INSERT INTO `user_log` VALUES (1192, 1, '查询鲜花列表', 0, '2018-11-29 15:33:09', 2);
INSERT INTO `user_log` VALUES (1193, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:33:11', 2);
INSERT INTO `user_log` VALUES (1194, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:33:23', 2);
INSERT INTO `user_log` VALUES (1195, 1, '查询鲜花列表', 0, '2018-11-29 15:33:25', 2);
INSERT INTO `user_log` VALUES (1196, 1, '查询鲜花列表', 0, '2018-11-29 15:33:26', 2);
INSERT INTO `user_log` VALUES (1197, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:33:27', 2);
INSERT INTO `user_log` VALUES (1198, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:33:44', 2);
INSERT INTO `user_log` VALUES (1199, 1, '查询鲜花列表', 0, '2018-11-29 15:33:46', 2);
INSERT INTO `user_log` VALUES (1200, 1, '查询鲜花列表', 0, '2018-11-29 15:33:47', 2);
INSERT INTO `user_log` VALUES (1201, 1, '查询鲜花列表', 0, '2018-11-29 15:33:55', 2);
INSERT INTO `user_log` VALUES (1202, 1, '查询鲜花列表', 0, '2018-11-29 15:34:18', 2);
INSERT INTO `user_log` VALUES (1203, 1, '查询鲜花列表', 0, '2018-11-29 15:34:29', 2);
INSERT INTO `user_log` VALUES (1204, 1, '查询鲜花列表', 0, '2018-11-29 15:34:36', 2);
INSERT INTO `user_log` VALUES (1205, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:34:38', 2);
INSERT INTO `user_log` VALUES (1206, 1, '查询鲜花列表', 0, '2018-11-29 15:34:40', 2);
INSERT INTO `user_log` VALUES (1207, 1, '查询鲜花列表', 0, '2018-11-29 15:34:53', 2);
INSERT INTO `user_log` VALUES (1208, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:34:55', 2);
INSERT INTO `user_log` VALUES (1209, 1, '查询鲜花列表', 0, '2018-11-29 15:34:55', 2);
INSERT INTO `user_log` VALUES (1210, 1, '查询鲜花列表', 0, '2018-11-29 15:34:59', 2);
INSERT INTO `user_log` VALUES (1211, 1, '查询鲜花列表', 0, '2018-11-29 15:35:06', 2);
INSERT INTO `user_log` VALUES (1212, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:35:07', 2);
INSERT INTO `user_log` VALUES (1213, 1, '查询鲜花列表', 0, '2018-11-29 15:35:08', 2);
INSERT INTO `user_log` VALUES (1214, 1, '查询鲜花列表', 0, '2018-11-29 15:35:34', 2);
INSERT INTO `user_log` VALUES (1215, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:35:36', 2);
INSERT INTO `user_log` VALUES (1216, 1, '查询鲜花列表', 0, '2018-11-29 15:35:37', 2);
INSERT INTO `user_log` VALUES (1217, 1, '查询鲜花列表', 0, '2018-11-29 15:35:51', 2);
INSERT INTO `user_log` VALUES (1218, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:35:52', 2);
INSERT INTO `user_log` VALUES (1219, 1, '查询鲜花列表', 0, '2018-11-29 15:35:53', 2);
INSERT INTO `user_log` VALUES (1220, 1, '查询鲜花列表', 0, '2018-11-29 15:36:08', 2);
INSERT INTO `user_log` VALUES (1221, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:36:10', 2);
INSERT INTO `user_log` VALUES (1222, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:36:10', 2);
INSERT INTO `user_log` VALUES (1223, 1, '查询鲜花列表', 0, '2018-11-29 15:36:13', 2);
INSERT INTO `user_log` VALUES (1224, 1, '查询鲜花列表', 0, '2018-11-29 15:36:35', 2);
INSERT INTO `user_log` VALUES (1225, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:36:37', 2);
INSERT INTO `user_log` VALUES (1226, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:36:37', 2);
INSERT INTO `user_log` VALUES (1227, 1, '查询鲜花列表', 0, '2018-11-29 15:36:38', 2);
INSERT INTO `user_log` VALUES (1228, 1, '查询鲜花列表', 0, '2018-11-29 15:36:42', 2);
INSERT INTO `user_log` VALUES (1229, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:36:44', 2);
INSERT INTO `user_log` VALUES (1230, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:36:44', 2);
INSERT INTO `user_log` VALUES (1231, 1, '查询鲜花列表', 0, '2018-11-29 15:36:59', 2);
INSERT INTO `user_log` VALUES (1232, 1, '查询鲜花列表', 0, '2018-11-29 15:37:19', 2);
INSERT INTO `user_log` VALUES (1233, 1, '查询鲜花列表', 0, '2018-11-29 15:44:04', 2);
INSERT INTO `user_log` VALUES (1234, 1, '查询鲜花列表', 0, '2018-11-29 15:44:11', 2);
INSERT INTO `user_log` VALUES (1235, 1, '查询鲜花列表', 0, '2018-11-29 15:44:42', 2);
INSERT INTO `user_log` VALUES (1236, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:44:43', 2);
INSERT INTO `user_log` VALUES (1237, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:44:43', 2);
INSERT INTO `user_log` VALUES (1238, 1, '查询鲜花列表', 0, '2018-11-29 15:44:45', 2);
INSERT INTO `user_log` VALUES (1239, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:44:48', 2);
INSERT INTO `user_log` VALUES (1240, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:44:48', 2);
INSERT INTO `user_log` VALUES (1241, 1, '查询鲜花列表', 0, '2018-11-29 15:44:50', 2);
INSERT INTO `user_log` VALUES (1242, 1, '查询鲜花列表', 0, '2018-11-29 15:44:50', 2);
INSERT INTO `user_log` VALUES (1243, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:44:54', 2);
INSERT INTO `user_log` VALUES (1244, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:44:54', 2);
INSERT INTO `user_log` VALUES (1245, 1, '查询鲜花列表', 0, '2018-11-29 15:44:56', 2);
INSERT INTO `user_log` VALUES (1246, 1, '查询鲜花列表', 0, '2018-11-29 15:44:56', 2);
INSERT INTO `user_log` VALUES (1247, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:44:58', 2);
INSERT INTO `user_log` VALUES (1248, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:44:58', 2);
INSERT INTO `user_log` VALUES (1249, 1, '查询鲜花列表', 0, '2018-11-29 15:45:00', 2);
INSERT INTO `user_log` VALUES (1250, 1, '查询鲜花列表', 0, '2018-11-29 15:45:00', 2);
INSERT INTO `user_log` VALUES (1251, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:45:01', 2);
INSERT INTO `user_log` VALUES (1252, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:45:01', 2);
INSERT INTO `user_log` VALUES (1253, 1, '查询鲜花列表', 0, '2018-11-29 15:45:03', 2);
INSERT INTO `user_log` VALUES (1254, 1, '查询鲜花列表', 0, '2018-11-29 15:45:04', 2);
INSERT INTO `user_log` VALUES (1255, 1, '查询鲜花列表', 0, '2018-11-29 15:45:05', 2);
INSERT INTO `user_log` VALUES (1256, 1, '查询鲜花列表', 0, '2018-11-29 15:45:05', 2);
INSERT INTO `user_log` VALUES (1257, 1, '查询鲜花列表', 0, '2018-11-29 15:45:06', 2);
INSERT INTO `user_log` VALUES (1258, 1, '查询鲜花列表', 0, '2018-11-29 15:45:06', 2);
INSERT INTO `user_log` VALUES (1259, 1, '查询鲜花列表', 0, '2018-11-29 15:45:06', 2);
INSERT INTO `user_log` VALUES (1260, 1, '查询鲜花列表', 0, '2018-11-29 15:45:06', 2);
INSERT INTO `user_log` VALUES (1261, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:45:06', 2);
INSERT INTO `user_log` VALUES (1262, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:45:06', 2);
INSERT INTO `user_log` VALUES (1263, 1, '查询鲜花列表', 0, '2018-11-29 15:45:14', 2);
INSERT INTO `user_log` VALUES (1264, 1, '查询鲜花列表', 0, '2018-11-29 15:47:55', 2);
INSERT INTO `user_log` VALUES (1265, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:47:57', 2);
INSERT INTO `user_log` VALUES (1266, 1, '查询鲜花列表', 0, '2018-11-29 15:48:00', 2);
INSERT INTO `user_log` VALUES (1267, 1, '查询鲜花列表', 0, '2018-11-29 15:48:01', 2);
INSERT INTO `user_log` VALUES (1268, 1, '查询鲜花列表', 0, '2018-11-29 15:48:03', 2);
INSERT INTO `user_log` VALUES (1269, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:48:04', 2);
INSERT INTO `user_log` VALUES (1270, 1, '查询鲜花列表', 0, '2018-11-29 15:48:05', 2);
INSERT INTO `user_log` VALUES (1271, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:48:07', 2);
INSERT INTO `user_log` VALUES (1272, 1, '查询鲜花列表', 0, '2018-11-29 15:48:09', 2);
INSERT INTO `user_log` VALUES (1273, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:48:11', 2);
INSERT INTO `user_log` VALUES (1274, 1, '查询鲜花列表', 0, '2018-11-29 15:48:35', 2);
INSERT INTO `user_log` VALUES (1275, 1, '查询鲜花列表', 0, '2018-11-29 15:48:36', 2);
INSERT INTO `user_log` VALUES (1276, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:48:37', 2);
INSERT INTO `user_log` VALUES (1277, 1, '查询鲜花列表', 0, '2018-11-29 15:48:45', 2);
INSERT INTO `user_log` VALUES (1278, 1, '查询鲜花列表', 0, '2018-11-29 15:48:47', 2);
INSERT INTO `user_log` VALUES (1279, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:48:49', 2);
INSERT INTO `user_log` VALUES (1280, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:48:49', 2);
INSERT INTO `user_log` VALUES (1281, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:49:14', 2);
INSERT INTO `user_log` VALUES (1282, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:49:14', 2);
INSERT INTO `user_log` VALUES (1283, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:49:22', 2);
INSERT INTO `user_log` VALUES (1284, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:49:22', 2);
INSERT INTO `user_log` VALUES (1285, 1, '查询鲜花列表', 0, '2018-11-29 15:49:25', 2);
INSERT INTO `user_log` VALUES (1286, 1, '查询鲜花列表', 0, '2018-11-29 15:49:28', 2);
INSERT INTO `user_log` VALUES (1287, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:49:29', 2);
INSERT INTO `user_log` VALUES (1288, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:49:29', 2);
INSERT INTO `user_log` VALUES (1289, 1, '查询鲜花列表', 0, '2018-11-29 15:49:30', 2);
INSERT INTO `user_log` VALUES (1290, 1, '查询鲜花列表', 0, '2018-11-29 15:50:08', 2);
INSERT INTO `user_log` VALUES (1291, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:50:10', 2);
INSERT INTO `user_log` VALUES (1292, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:50:10', 2);
INSERT INTO `user_log` VALUES (1293, 1, '查询鲜花列表', 0, '2018-11-29 15:50:19', 2);
INSERT INTO `user_log` VALUES (1294, 1, '查询鲜花列表', 0, '2018-11-29 15:50:26', 2);
INSERT INTO `user_log` VALUES (1295, 1, '查询鲜花列表', 0, '2018-11-29 15:50:48', 2);
INSERT INTO `user_log` VALUES (1296, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 15:50:50', 2);
INSERT INTO `user_log` VALUES (1297, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 15:50:50', 2);
INSERT INTO `user_log` VALUES (1298, 1, '查询鲜花列表', 0, '2018-11-29 15:50:52', 2);
INSERT INTO `user_log` VALUES (1299, 1, '查询鲜花列表', 0, '2018-11-29 16:17:52', 2);
INSERT INTO `user_log` VALUES (1300, 1, '查询鲜花列表', 0, '2018-11-29 16:17:53', 2);
INSERT INTO `user_log` VALUES (1301, 1, '查询鲜花列表', 0, '2018-11-29 16:41:42', 2);
INSERT INTO `user_log` VALUES (1302, 1, '查询鲜花列表', 0, '2018-11-29 16:41:55', 2);
INSERT INTO `user_log` VALUES (1303, 1, '查询鲜花列表', 0, '2018-11-29 16:41:57', 2);
INSERT INTO `user_log` VALUES (1304, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 16:43:29', 2);
INSERT INTO `user_log` VALUES (1305, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 16:43:29', 2);
INSERT INTO `user_log` VALUES (1306, 1, '查询鲜花列表', 0, '2018-11-29 16:43:30', 2);
INSERT INTO `user_log` VALUES (1307, 1, '查询鲜花列表', 0, '2018-11-29 16:43:53', 2);
INSERT INTO `user_log` VALUES (1308, 1, '根据 id 查询鲜花信息', 0, '2018-11-29 16:43:55', 2);
INSERT INTO `user_log` VALUES (1309, 1, '根据 id 查询鲜花其他信息', 0, '2018-11-29 16:43:55', 2);
INSERT INTO `user_log` VALUES (1310, 1, '查询鲜花列表', 0, '2018-11-29 16:43:56', 2);
INSERT INTO `user_log` VALUES (1311, 1, '查询鲜花列表', 0, '2018-11-29 16:45:11', 2);
INSERT INTO `user_log` VALUES (1312, 1, '查询鲜花列表', 0, '2018-11-29 16:45:13', 2);
INSERT INTO `user_log` VALUES (1313, 1, '查询鲜花列表', 0, '2018-11-29 16:45:18', 2);
INSERT INTO `user_log` VALUES (1314, 1, '查询鲜花列表', 0, '2018-11-29 16:46:15', 2);
INSERT INTO `user_log` VALUES (1315, 1, '查询鲜花列表', 0, '2018-11-29 16:46:28', 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
