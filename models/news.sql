SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '新闻标题',
  `cid` int DEFAULT NULL COMMENT '新闻分类',
  `created_time` date DEFAULT NULL COMMENT '新闻发布时间',
  `content` text COMMENT '新闻内容',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='新闻表';

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` (`id`, `title`, `cid`, `created_time`, `content`) VALUES (1, '555', 444, '2022-08-16', 'rrrr');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
