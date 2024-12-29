SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permission [权限表]
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`
(
  `id`              int          NOT NULL AUTO_INCREMENT COMMENT 'id',
  `permission_name` varchar(255) NOT NULL COMMENT '权限名',
  `create_time`     timestamp    NOT NULL COMMENT '创建时间',
  `update_time`     timestamp    NOT NULL COMMENT '更新时间',
  `version`         tinyint      NOT NULL DEFAULT '1' COMMENT '乐观锁',
  `deleted`         tinyint      NOT NULL DEFAULT '0' COMMENT '软删除字段 [ 1 已删除 | 0 未删除 ]',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for role [角色表]
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`
(
  `id`          int          NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name`   varchar(255) NOT NULL COMMENT '角色名',
  `create_time` timestamp    NOT NULL COMMENT '创建时间',
  `update_time` timestamp    NOT NULL COMMENT '更新时间',
  `version`     tinyint      NOT NULL DEFAULT '1' COMMENT '乐观锁',
  `deleted`     tinyint      NOT NULL DEFAULT '0' COMMENT '软删除字段 [ 1 已删除 | 0 未删除 ]',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for role_permission_map [角色-权限表]
-- ----------------------------
DROP TABLE IF EXISTS `role_permission_map`;
CREATE TABLE `role_permission_map`
(
  `id`            int       NOT NULL AUTO_INCREMENT,
  `role_id`       int                DEFAULT NULL,
  `permission_id` int                DEFAULT NULL,
  `create_time`   timestamp NOT NULL COMMENT '创建时间',
  `update_time`   timestamp NOT NULL COMMENT '更新时间',
  `version`       tinyint   NOT NULL DEFAULT '1' COMMENT '乐观锁',
  `deleted`       tinyint   NOT NULL DEFAULT '0' COMMENT '软删除字段 [ 1 已删除 | 0 未删除 ]',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for user [用户表]
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
  `id`          bigint       NOT NULL COMMENT '主键 ID',
  `username`    varchar(30)           DEFAULT NULL COMMENT '姓名',
  `age`         int                   DEFAULT NULL COMMENT '年龄',
  `email`       varchar(50)           DEFAULT NULL COMMENT '邮箱',
  `password`    varchar(255) NOT NULL COMMENT '密码',
  `avatar`      varchar(255)          DEFAULT NULL COMMENT '头像',
  `create_time` timestamp    NOT NULL COMMENT '创建时间',
  `update_time` timestamp    NOT NULL COMMENT '更新时间',
  `version`     tinyint      NOT NULL DEFAULT '1' COMMENT '乐观锁',
  `deleted`     tinyint      NOT NULL DEFAULT '0' COMMENT '软删除字段 [ 1 已删除 | 0 未删除 ]',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for user_role_map [用户-角色表]
-- ----------------------------
DROP TABLE IF EXISTS `user_role_map`;
CREATE TABLE `user_role_map`
(
  `id`          int       NOT NULL AUTO_INCREMENT,
  `user_id`     bigint             DEFAULT NULL,
  `role_id`     int                DEFAULT NULL,
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL COMMENT '更新时间',
  `version`     tinyint   NOT NULL DEFAULT '1' COMMENT '乐观锁',
  `deleted`     tinyint   NOT NULL DEFAULT '0' COMMENT '软删除字段 [ 1 已删除 | 0 未删除 ]',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;


SET FOREIGN_KEY_CHECKS = 1;
