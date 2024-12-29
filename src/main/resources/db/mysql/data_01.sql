-- ----------------------------
-- Records of permission [权限表]
-- ----------------------------
BEGIN;
INSERT INTO `permission` (`id`, `permission_name`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (1, 'CREATE', '2024-12-12 19:51:52', '2024-12-12 19:51:54', 1, 0);
INSERT INTO `permission` (`id`, `permission_name`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (2, 'DELETE', '2024-12-12 19:51:55', '2024-12-12 19:51:56', 1, 0);
INSERT INTO `permission` (`id`, `permission_name`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (3, 'UPDATE', '2024-12-12 19:51:57', '2024-12-12 19:51:58', 1, 0);
INSERT INTO `permission` (`id`, `permission_name`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (4, 'SELECT', '2024-12-12 19:51:59', '2024-12-12 19:52:00', 1, 0);
COMMIT;

-- ----------------------------
-- Records of role [角色表]
-- ----------------------------
BEGIN;
INSERT INTO `role` (`id`, `role_name`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (1, 'ADMIN', '2024-12-12 19:51:24', '2024-12-12 19:51:25', 1, 0);
INSERT INTO `role` (`id`, `role_name`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (2, 'USER', '2024-12-12 19:51:31', '2024-12-12 19:51:32', 1, 0);
COMMIT;

-- ----------------------------
-- Records of role_permission_map [角色-权限表]
-- ----------------------------
BEGIN;
INSERT INTO `role_permission_map` (`id`, `role_id`, `permission_id`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (1, 1, 1, '2024-12-12 19:52:12', '2024-12-12 19:52:13', 1, 0);
INSERT INTO `role_permission_map` (`id`, `role_id`, `permission_id`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (2, 1, 2, '2024-12-12 19:52:40', '2024-12-12 19:52:41', 1, 0);
INSERT INTO `role_permission_map` (`id`, `role_id`, `permission_id`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (3, 1, 3, '2024-12-12 19:52:42', '2024-12-12 19:52:43', 1, 0);
INSERT INTO `role_permission_map` (`id`, `role_id`, `permission_id`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (4, 1, 4, '2024-12-12 19:52:44', '2024-12-12 19:52:45', 1, 0);
INSERT INTO `role_permission_map` (`id`, `role_id`, `permission_id`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (5, 2, 4, '2024-12-12 19:52:53', '2024-12-12 19:52:54', 1, 0);
COMMIT;

-- ----------------------------
-- Records of user [用户表]
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `username`, `age`, `email`, `password`, `avatar`, `create_time`, `update_time`, `version`,
                    `deleted`)
VALUES (1867175151160201218, 'mcdd1024', 22, 'mcdd1024@gmail.com',
        '{pbkdf2@SpringSecurity_v5_8}1f1df50c5215008cf550f4fb01f4f8d4e2b67a71f0bbc03b177d84b07a0c85400385c37fa92f21029f40b6e2d49611d3',
        'https://mcdd1024.avatar.cn', '2024-12-12 19:50:21', '2024-12-12 19:50:21', 1, 0);
COMMIT;

-- ----------------------------
-- Records of user_role_map [用户-角色表]
-- ----------------------------
BEGIN;
INSERT INTO `user_role_map` (`id`, `user_id`, `role_id`, `create_time`, `update_time`, `version`, `deleted`)
VALUES (1, 1867175151160201218, 1, '2024-12-12 19:53:01', '2024-12-12 19:53:02', 1, 0);
COMMIT;
