/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : mileapp-test

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 27/02/2023 21:28:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for connote
-- ----------------------------
DROP TABLE IF EXISTS `connote`;
CREATE TABLE `connote`  (
  `connote_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_number` int NOT NULL,
  `connote_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_service_price` int NOT NULL,
  `connote_amount` int NOT NULL,
  `connote_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_booking_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `connote_order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_state_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_code_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_code_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surcharge_amount` int NULL DEFAULT NULL,
  `actual_weight` int NOT NULL,
  `volume_weight` int NOT NULL,
  `chargeable_weight` int NOT NULL,
  `connote_total_package` int NOT NULL,
  `connote_surcharge_amount` int NOT NULL,
  `connote_sla_day` int NOT NULL,
  `source_tariff_db` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_source_tariff` int NOT NULL,
  `pod` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`connote_id`) USING BTREE,
  INDEX `connote_connote_state_id_foreign`(`connote_state_id` ASC) USING BTREE,
  CONSTRAINT `connote_connote_state_id_foreign` FOREIGN KEY (`connote_state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of connote
-- ----------------------------
INSERT INTO `connote` VALUES ('01c73eb1-c420-4771-a73b-32c7ba663af7', 1, 'ECO', 70700, 70700, '20127', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:03:11', '2023-02-27 13:03:11', '2023-02-27 13:03:11');
INSERT INTO `connote` VALUES ('054c037d-d490-4406-a7fc-55241a10c687', 1, 'ECO', 70700, 70700, '82456', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:12:48', '2023-02-27 13:12:48', NULL);
INSERT INTO `connote` VALUES ('096d5d8f-bdbf-49f3-bd2f-7612a41d8765', 1, 'ECO', 70700, 70700, '33651-8630', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:07:07', '2023-02-27 13:07:07', NULL);
INSERT INTO `connote` VALUES ('0e24f4e2-ac75-4938-9d37-25feedbc9853', 1, 'ECO', 70700, 70700, '23989', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:02:57', '2023-02-27 13:02:57', NULL);
INSERT INTO `connote` VALUES ('116a67ff-398d-4bf6-9b0f-753fe1802330', 1, 'ECO', 70700, 70700, '64344-3535', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:08:40', '2023-02-27 13:08:40', NULL);
INSERT INTO `connote` VALUES ('182bf4db-a29d-442e-ab03-11f5e432b05a', 1, 'ECO', 70700, 70700, '02430-4655', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:07:55', '2023-02-27 13:07:55', NULL);
INSERT INTO `connote` VALUES ('19f9f5c8-098e-4c27-8e1f-2c89f488cf77', 1, 'ECO', 70700, 70700, '72289', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:03:11', '2023-02-27 13:03:11', NULL);
INSERT INTO `connote` VALUES ('1ad8636e-6ef2-40ec-86d4-1b1186d98628', 1, 'ECO', 70700, 70700, 'AWB00127022023', NULL, '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 11:56:44', '2023-02-27 11:56:44', NULL);
INSERT INTO `connote` VALUES ('1da98384-743f-41ed-9b90-89cdedc8d6f3', 1, 'ECO', 70700, 70700, '51320', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:02:39', '2023-02-27 13:02:39', NULL);
INSERT INTO `connote` VALUES ('1e6ac556-ce8d-4eea-bd37-8a70c6b948ab', 1, 'ECO', 70700, 70700, '5', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:02:40', '2023-02-27 12:02:40', NULL);
INSERT INTO `connote` VALUES ('1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca', 1, 'ECO', 70700, 70700, 'AWB00126022023', NULL, '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-26 07:11:57', '2023-02-26 12:14:13', '2023-02-26 12:14:13');
INSERT INTO `connote` VALUES ('24aa82a0-395d-4a3f-8c08-45da5370ca38', 1, 'ECO', 70700, 70700, '87420', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:19:20', '2023-02-27 12:19:20', NULL);
INSERT INTO `connote` VALUES ('26e07202-8dda-4b5e-b615-754ad8d16817', 1, 'ECO', 70700, 70700, 'AWB00226022023', NULL, '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-26 13:54:52', '2023-02-26 13:54:52', NULL);
INSERT INTO `connote` VALUES ('2895ec04-5c43-46b1-bb84-b0be914ba61f', 1, 'ECO', 70700, 70700, '85803-2390', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:09:25', '2023-02-27 13:09:25', NULL);
INSERT INTO `connote` VALUES ('2b963342-528e-47fb-bb0e-2249b06b730c', 1, 'ECO', 70700, 70700, '62717', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:11:39', '2023-02-27 12:11:39', NULL);
INSERT INTO `connote` VALUES ('2ecc306d-7511-47d2-b38f-ac2e2042b82b', 1, 'ECO', 70700, 70700, '40868-5901', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:08:59', '2023-02-27 13:08:59', NULL);
INSERT INTO `connote` VALUES ('31683132-d39d-42ad-9122-5198c49290b6', 1, 'ECO', 70700, 70700, '56070', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:05:18', '2023-02-27 13:05:18', '2023-02-27 13:05:18');
INSERT INTO `connote` VALUES ('3a4eedbd-1599-4127-a51d-008e0bf28f5a', 1, 'ECO', 70700, 70700, '70971', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:04:58', '2023-02-27 13:04:58', NULL);
INSERT INTO `connote` VALUES ('3b28c6d0-d188-4d5a-b0db-05d1838c8d78', 1, 'ECO', 70700, 70700, '52499-8394', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:13:23', '2023-02-27 13:13:23', NULL);
INSERT INTO `connote` VALUES ('406522df-da4a-457b-8396-0da36a5bc513', 1, 'ECO', 70700, 70700, '56947', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:14:34', '2023-02-27 13:14:34', NULL);
INSERT INTO `connote` VALUES ('47377b1f-68c2-4ccd-8c0e-db4c4b7d77d2', 1, 'ECO', 70700, 70700, '50292-7700', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:36:16', '2023-02-27 12:36:16', NULL);
INSERT INTO `connote` VALUES ('499ae1c1-9790-4982-8f3d-83e4fe79a04f', 1, 'ECO', 70700, 70700, '21522-2059', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:08:24', '2023-02-27 13:08:24', NULL);
INSERT INTO `connote` VALUES ('53a7d961-2fa8-4bf3-a23b-c6fb8e4d6c85', 1, 'ECO', 70700, 70700, '54460', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:07:42', '2023-02-27 13:07:42', NULL);
INSERT INTO `connote` VALUES ('555d6357-1ef6-456e-b90c-038da24f2478', 1, 'ECO', 70700, 70700, '00918-0252', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:09:18', '2023-02-27 12:09:18', NULL);
INSERT INTO `connote` VALUES ('583138f4-6a00-4be2-ae92-9e5009a2189c', 1, 'ECO', 70700, 70700, '77684', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:35:58', '2023-02-27 12:35:58', NULL);
INSERT INTO `connote` VALUES ('6bd223db-04ae-4f68-89c9-ab30f1add408', 1, 'ECO', 70700, 70700, '73937', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:14:19', '2023-02-27 13:14:19', NULL);
INSERT INTO `connote` VALUES ('6cb057a4-9764-421e-9e99-05eb55858a65', 1, 'ECO', 70700, 70700, 'AWB00326022023', NULL, '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-26 13:55:36', '2023-02-26 13:55:36', NULL);
INSERT INTO `connote` VALUES ('6cd229ba-ab24-4949-936c-8c2ad50479ad', 1, 'ECO', 70700, 70700, '17980-7657', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:03:50', '2023-02-27 13:03:50', NULL);
INSERT INTO `connote` VALUES ('736e11af-0136-463f-a953-025d821ac6e1', 1, 'ECO', 70700, 70700, '91269-9484', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:11:26', '2023-02-27 12:11:26', NULL);
INSERT INTO `connote` VALUES ('831edc6b-c02d-4b54-9d9e-26f6633a819f', 1, 'ECO', 70700, 70700, '28599-9769', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:03:32', '2023-02-27 13:03:32', '2023-02-27 13:03:32');
INSERT INTO `connote` VALUES ('8369683b-eeb9-41bc-a844-48887e946032', 1, 'ECO', 70700, 70700, '89440', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:03:55', '2023-02-27 13:03:55', NULL);
INSERT INTO `connote` VALUES ('85476792-42f6-4e99-95e3-668020a775f1', 1, 'ECO', 70700, 70700, '48944', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:05:17', '2023-02-27 13:05:17', NULL);
INSERT INTO `connote` VALUES ('86af6a4e-0276-4c2a-945d-8e908ea5f0cd', 1, 'ECO', 70700, 70700, '78176-1588', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:07:46', '2023-02-27 12:07:46', NULL);
INSERT INTO `connote` VALUES ('86c01c50-1ace-4a35-8e61-e61a634258fc', 1, 'ECO', 70700, 70700, '98817-4501', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:14:06', '2023-02-27 13:14:06', '2023-02-27 13:14:06');
INSERT INTO `connote` VALUES ('8a403e84-708e-4707-93f5-ed5af371972d', 1, 'ECO', 70700, 70700, '09280', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:07:29', '2023-02-27 13:46:35', '2023-02-27 13:46:35');
INSERT INTO `connote` VALUES ('98c20f7e-7f59-4e61-8e68-8415acbefdc6', 1, 'ECO', 70700, 70700, '54070-6495', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:18:53', '2023-02-27 12:18:53', NULL);
INSERT INTO `connote` VALUES ('a14b25c9-f3fd-463d-ba39-281327949d96', 1, 'ECO', 70700, 70700, '29619', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:03:56', '2023-02-27 13:03:56', '2023-02-27 13:03:56');
INSERT INTO `connote` VALUES ('a31d779d-c95b-48e1-9221-4aded6d9f3f4', 1, 'ECO', 70700, 70700, '68433', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:11:20', '2023-02-27 13:11:20', NULL);
INSERT INTO `connote` VALUES ('a930aef7-1441-4941-9457-154eb5674f1b', 1, 'ECO', 70700, 70700, 'AWB00227022023', NULL, '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:31:46', '2023-02-27 12:31:46', NULL);
INSERT INTO `connote` VALUES ('ac63ba7b-a70d-40d0-ab44-0cd84acef1ca', 1, 'ECO', 70700, 70700, '23796', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:04:04', '2023-02-27 12:04:04', NULL);
INSERT INTO `connote` VALUES ('af3c5b00-57e5-4965-81fe-18a9b82f3659', 1, 'ECO', 70700, 70700, '64866-7866', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:06:09', '2023-02-27 13:06:09', NULL);
INSERT INTO `connote` VALUES ('b2cdafa1-8cc9-4635-a659-0ec173b5d450', 1, 'ECO', 70700, 70700, 'AWB00327022023', NULL, '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:31:47', '2023-02-27 12:31:47', NULL);
INSERT INTO `connote` VALUES ('b341c35b-5fa2-4220-9e95-7f60a830d1d2', 1, 'ECO', 70700, 70700, '44115', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:02:39', '2023-02-27 13:02:39', NULL);
INSERT INTO `connote` VALUES ('bbe1cc19-f7fc-4ddb-ae20-d25f99d28289', 1, 'ECO', 70700, 70700, '69129', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:04:58', '2023-02-27 13:04:58', '2023-02-27 13:04:58');
INSERT INTO `connote` VALUES ('bec79e8c-cca0-45e2-a0aa-3a027226452b', 1, 'ECO', 70700, 70700, '40757-0419', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:04:46', '2023-02-27 13:04:46', '2023-02-27 13:04:46');
INSERT INTO `connote` VALUES ('c0fe18b8-84e9-4c4e-af8a-b2a17564f53c', 1, 'ECO', 70700, 70700, '99903-0873', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:06:07', '2023-02-27 12:06:07', NULL);
INSERT INTO `connote` VALUES ('c52fd603-0edd-4a9f-94e5-ade25f4007c0', 1, 'ECO', 70700, 70700, '60161', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:02:58', '2023-02-27 13:02:58', '2023-02-27 13:02:58');
INSERT INTO `connote` VALUES ('cee3da35-a093-4f82-8794-9625dcd6c5f7', 1, 'ECO', 70700, 70700, '73154', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:07:47', '2023-02-27 13:07:47', NULL);
INSERT INTO `connote` VALUES ('d5102ba2-d222-4b31-bc2d-a4918ca82c3d', 1, 'ECO', 70700, 70700, '21543-7581', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:14:20', '2023-02-27 13:14:20', '2023-02-27 13:14:20');
INSERT INTO `connote` VALUES ('d57bd353-6f36-407d-985c-cbe7f19a5c79', 1, 'ECO', 70700, 70700, 'AWB00226022023', NULL, '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-26 07:12:31', '2023-02-27 11:00:04', '2023-02-27 11:00:04');
INSERT INTO `connote` VALUES ('d7759643-d5c5-41fa-acf5-8b5ea2900de5', 1, 'ECO', 70700, 70700, 'AWB00426022023', NULL, '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-26 13:57:05', '2023-02-26 13:57:05', NULL);
INSERT INTO `connote` VALUES ('d95caea7-a49a-4064-9673-fbbe725d8d1b', 1, 'ECO', 70700, 70700, '70944-6540', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:14:05', '2023-02-27 13:14:05', NULL);
INSERT INTO `connote` VALUES ('da8a2d57-8a7e-4dd2-8954-3cd799a2646f', 1, 'ECO', 70700, 70700, '10163', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:36:42', '2023-02-27 12:36:42', NULL);
INSERT INTO `connote` VALUES ('de83767c-28a9-4874-9575-6a5fe5afd8ca', 1, 'ECO', 70700, 70700, '68911', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:07:08', '2023-02-27 12:07:08', NULL);
INSERT INTO `connote` VALUES ('e35be6f5-1fc8-4b2d-87ad-89ca9e87da22', 1, 'ECO', 70700, 70700, '76818', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:03:31', '2023-02-27 13:03:31', NULL);
INSERT INTO `connote` VALUES ('e4a11e34-dadc-44ea-8d19-221f60ce8491', 1, 'ECO', 70700, 70700, '61592', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:03:50', '2023-02-27 13:03:50', '2023-02-27 13:03:50');
INSERT INTO `connote` VALUES ('e762409c-ea6a-4394-8c90-02152ab06d23', 1, 'ECO', 70700, 70700, '51902', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:10:41', '2023-02-27 12:10:41', NULL);
INSERT INTO `connote` VALUES ('e8b26e4d-fdc1-4352-96e4-e30295a3b158', 1, 'ECO', 70700, 70700, 'AWB00526022023', NULL, '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-26 13:57:12', '2023-02-26 13:57:12', NULL);
INSERT INTO `connote` VALUES ('ea913e95-61a9-4898-bb55-5266002229a5', 1, 'ECO', 70700, 70700, '47726-9783', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:14:35', '2023-02-27 13:14:35', '2023-02-27 13:14:35');
INSERT INTO `connote` VALUES ('f1690955-7d08-4711-9ab6-20255797a419', 1, 'ECO', 70700, 70700, '45595-8536', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:36:06', '2023-02-27 12:36:06', NULL);
INSERT INTO `connote` VALUES ('f4f63d7e-9b67-4334-bfac-49bd7b92c17b', 1, 'ECO', 70700, 70700, '47450-0003', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 12:18:26', '2023-02-27 12:18:26', NULL);
INSERT INTO `connote` VALUES ('f6ab1b36-35ee-4d49-b259-d4e3736b456c', 1, 'ECO', 70700, 70700, '66659-5725', '', '326931', 'PAID', 'ea908603-f04e-4b21-9a5c-192f99b99994', 'CGKFT', 'SMG', NULL, 20, 0, 20, 3, 0, 4, 'tariff_customers', 1576868, NULL, '2023-02-27 13:04:45', '2023-02-27 13:04:45', NULL);

-- ----------------------------
-- Table structure for connote_history
-- ----------------------------
DROP TABLE IF EXISTS `connote_history`;
CREATE TABLE `connote_history`  (
  `connote_history_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_history_number` int NOT NULL,
  `connote_history_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_history_service_price` int NOT NULL,
  `connote_history_amount` int NOT NULL,
  `connote_history_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_history_booking_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_history_order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_history_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_state_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_code_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_code_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surchange_amount` int NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actual_weight` int NOT NULL,
  `volume_weight` int NOT NULL,
  `chargeable_weight` int NOT NULL,
  `connote_history_total_package` int NOT NULL,
  `connote_history_surcharge_amount` int NOT NULL,
  `connote_history_sla_day` int NOT NULL,
  `source_tariff_db` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_source_tariff` int NOT NULL,
  `pod` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`connote_history_id`) USING BTREE,
  INDEX `connote_history_connote_id_foreign`(`connote_id` ASC) USING BTREE,
  INDEX `connote_history_connote_state_id_foreign`(`connote_state_id` ASC) USING BTREE,
  CONSTRAINT `connote_history_connote_id_foreign` FOREIGN KEY (`connote_id`) REFERENCES `connote` (`connote_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `connote_history_connote_state_id_foreign` FOREIGN KEY (`connote_state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of connote_history
-- ----------------------------

-- ----------------------------
-- Table structure for custom_field
-- ----------------------------
DROP TABLE IF EXISTS `custom_field`;
CREATE TABLE `custom_field`  (
  `custom_field_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_field_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_field_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`custom_field_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom_field
-- ----------------------------
INSERT INTO `custom_field` VALUES ('4ba62e32-4c0f-420d-ba18-43b15f90df9d', 'harga_barang', 'harga_barang', '2023-02-26 07:16:18', '2023-02-26 07:16:18', NULL);
INSERT INTO `custom_field` VALUES ('4f2ca9a8-266c-408a-9fb3-5c8cc198c03f', 'jenis_barang', 'jenis_barang', '2023-02-26 16:11:22', '2023-02-26 16:11:22', NULL);
INSERT INTO `custom_field` VALUES ('9c36836a-d696-4e77-8437-5c6b1333d184', 'awb_sicepat2', 'awb_sicepat2', '2023-02-26 10:31:24', '2023-02-26 10:31:24', NULL);
INSERT INTO `custom_field` VALUES ('a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', 'catatan_baru', 'catatan_baru', '2023-02-26 09:07:51', '2023-02-26 09:07:51', NULL);
INSERT INTO `custom_field` VALUES ('ae02f730-53d8-493c-92bb-528fb68dd159', 'update_barang', 'update_barang', '2023-02-27 14:13:08', '2023-02-27 14:13:08', NULL);
INSERT INTO `custom_field` VALUES ('bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', 'awb_sicepat', 'awb_sicepat', '2023-02-26 07:16:18', '2023-02-26 07:16:18', NULL);
INSERT INTO `custom_field` VALUES ('c446d7e1-74b6-41f7-8316-2027a29a8dcc', 'catatan_tambahan', 'catatan_tambahan', '2023-02-26 07:16:18', '2023-02-26 07:16:18', NULL);
INSERT INTO `custom_field` VALUES ('c9311a44-2530-44a2-9ecd-b0229d2a8da5', 'bahan_barang', 'bahan_barang', '2023-02-26 15:32:34', '2023-02-26 15:32:34', NULL);

-- ----------------------------
-- Table structure for custom_field_data
-- ----------------------------
DROP TABLE IF EXISTS `custom_field_data`;
CREATE TABLE `custom_field_data`  (
  `custom_field_data_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_field_data_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `custom_field_data_relation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_field_data_module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_field_data_custom_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`custom_field_data_id`) USING BTREE,
  INDEX `custom_field_data_custom_field_data_custom_id_foreign`(`custom_field_data_custom_id` ASC) USING BTREE,
  CONSTRAINT `custom_field_data_custom_field_data_custom_id_foreign` FOREIGN KEY (`custom_field_data_custom_id`) REFERENCES `custom_field` (`custom_field_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom_field_data
-- ----------------------------
INSERT INTO `custom_field_data` VALUES ('042cb0b0-7089-4383-bc63-affa8627ec67', 'JANGAN DI BANTING / DI TINDIH', 'f0c10c4b-c09e-4716-8c1f-66f9c68ddfe3', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-26 07:16:18', '2023-02-27 11:00:04', '2023-02-27 11:00:04');
INSERT INTO `custom_field_data` VALUES ('0453631b-2374-42ad-a2d6-d364c25040b6', 'TES', '9dd8989f-885d-42ca-aafe-ff24b6db5770', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 12:36:16', '2023-02-27 12:36:16', NULL);
INSERT INTO `custom_field_data` VALUES ('067bffac-d468-4ad6-a562-e872f316289b', NULL, 'a20f1bcc-eeb2-4470-a92c-d749e0f998a3', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 15:32:34', '2023-02-26 15:32:34', NULL);
INSERT INTO `custom_field_data` VALUES ('068e4157-b585-448a-9d1c-c59af19e6202', NULL, '6269c080-c4b9-432c-b20f-db8d3b5aa701', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 07:16:18', '2023-02-26 07:16:18', NULL);
INSERT INTO `custom_field_data` VALUES ('0ca82c84-c552-4427-8392-3a28677cf014', '20000', 'bd5ca25f-5c24-4261-a262-1fe88f6ae8d1', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:02:39', '2023-02-27 13:02:39', NULL);
INSERT INTO `custom_field_data` VALUES ('0e09e49c-a51e-451b-8a22-42a05d311d37', 'JANGAN DI BANTING DAN DI TINDIH', '64e75c5a-403a-435f-a174-c27093faed71', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 13:14:05', '2023-02-27 13:14:05', NULL);
INSERT INTO `custom_field_data` VALUES ('0fbf3ac9-cd53-40ef-845c-18737f1ffe59', NULL, '54dca3af-b8c2-4196-a297-34f943f439a0', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-26 14:39:12', '2023-02-26 14:39:12', NULL);
INSERT INTO `custom_field_data` VALUES ('104a3822-ae86-40e0-9481-4168b0e4dc92', 'JANGAN DI BANTING DAN DI TINDIH', 'f826d8ba-41ad-40f2-a898-49f6c46af74b', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 12:36:16', '2023-02-27 12:36:16', NULL);
INSERT INTO `custom_field_data` VALUES ('161e4a81-dd1d-4c6b-a0aa-dd5906a791b8', NULL, '0f5626dd-eeac-4abf-ac61-3107f4aa8e2e', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:43:08', '2023-02-27 13:43:08', NULL);
INSERT INTO `custom_field_data` VALUES ('1851de3c-d68f-4a2c-bfeb-c3560a71ecdb', 'kardus', '12c414e9-eed0-4d5b-90c5-538dc470ae6a', 'koli', '4f2ca9a8-266c-408a-9fb3-5c8cc198c03f', '2023-02-27 10:52:11', '2023-02-27 10:52:11', NULL);
INSERT INTO `custom_field_data` VALUES ('187a3eaf-446f-427e-b966-9ab2460b8701', 'BARANG MUDAH PECAH', '677b5c90-41b1-45e1-a8a5-2aa5bb1c1b5e', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-26 16:11:22', '2023-02-26 16:11:22', NULL);
INSERT INTO `custom_field_data` VALUES ('18999da6-e8a9-4a80-b510-7a6e95ffc584', 'Barang Kaca dan Barang Baru', 'ccbf1d48-6a21-4c56-a097-f96d857bf26e', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 13:07:29', '2023-02-27 13:46:35', '2023-02-27 13:46:35');
INSERT INTO `custom_field_data` VALUES ('19c2837d-c5f7-4673-8b93-4650e454eb7f', 'JANGAN DI BANTING DAN DI TINDIH', '018dd4af-c1ef-4210-88d6-82842f952d37', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 13:13:23', '2023-02-27 13:13:23', NULL);
INSERT INTO `custom_field_data` VALUES ('1ce664b1-3074-41ed-bfe3-a75084af060f', '20000', '2b235acb-0bbe-4f64-8cb7-9e6109ef3c76', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 12:36:42', '2023-02-27 12:36:42', NULL);
INSERT INTO `custom_field_data` VALUES ('2587c737-9e26-4c85-bda4-ea07d58f13a8', 'TES', '86226496-cb5c-4ee9-bd8a-917132d50f60', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:03:50', '2023-02-27 13:03:50', NULL);
INSERT INTO `custom_field_data` VALUES ('259c007c-7d41-4844-af89-a46f7874756b', '20000', '0f5626dd-eeac-4abf-ac61-3107f4aa8e2e', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:43:08', '2023-02-27 14:12:03', NULL);
INSERT INTO `custom_field_data` VALUES ('261c823b-1bc1-4c7d-8659-4da018287416', '20000', '8f51370c-3a26-4cf6-bfb0-855d6b1d0fc8', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:14:05', '2023-02-27 13:14:05', NULL);
INSERT INTO `custom_field_data` VALUES ('26fdae1e-d635-4c2f-b424-174e051d737b', 'Barang Kaca dan Barang Baru', '64e75c5a-403a-435f-a174-c27093faed71', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 13:14:05', '2023-02-27 13:14:05', NULL);
INSERT INTO `custom_field_data` VALUES ('278c834b-db3f-4856-9c3a-1e575445d9d0', 'JANGAN DI BANTING DAN DI TINDIH', '999df33d-6e6e-4de8-8e17-751a8a4a0a13', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-26 07:17:35', '2023-02-26 11:58:43', '2023-02-26 11:58:43');
INSERT INTO `custom_field_data` VALUES ('282ee501-495a-43bf-8c45-b3283fe3aed4', 'Barang Kaca dan Barang Baru', 'f826d8ba-41ad-40f2-a898-49f6c46af74b', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 12:36:16', '2023-02-27 12:36:16', NULL);
INSERT INTO `custom_field_data` VALUES ('2b079253-6633-42e9-b7b3-7cb74b255ec6', 'JANGAN DI BANTING ATAU DI TINDIH', '2d57ceb3-73f4-4f02-9b50-fb75b881f51b', 'koli', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-26 11:12:03', '2023-02-26 11:12:03', NULL);
INSERT INTO `custom_field_data` VALUES ('2c856a98-f8df-46e6-9846-ae1b61bbba24', NULL, '55832e11-e936-4d03-8ee3-a1d83d2064c8', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 14:13:08', '2023-02-27 14:13:08', NULL);
INSERT INTO `custom_field_data` VALUES ('2d359aaa-61b8-4bd7-b99e-11f4a2e2fd7d', 'Barang Kaca dan Barang Baru', '940899a4-4d5c-4812-a41b-0a85fc419779', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 11:32:20', '2023-02-27 13:14:35', NULL);
INSERT INTO `custom_field_data` VALUES ('2dc7f1a0-4fce-4f9f-a07c-28d311ad1536', NULL, '4655a330-4b9d-4514-8da2-cc8df0407abb', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 14:12:03', '2023-02-27 14:12:03', NULL);
INSERT INTO `custom_field_data` VALUES ('2f530290-0046-4abb-a97d-005ea85a1510', NULL, 'd9c3c498-4d6c-4219-9c9e-870eddd25896', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-26 16:11:22', '2023-02-26 16:11:22', NULL);
INSERT INTO `custom_field_data` VALUES ('2f7b871e-f376-4f09-8a8a-b0092cf6d49e', '20000', 'b9d22bc8-d098-4eae-ad05-9265d4f4048b', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:45:00', '2023-02-27 13:45:00', NULL);
INSERT INTO `custom_field_data` VALUES ('313a8b3a-f357-4b46-9a6c-01537e1b5fcc', 'JANGAN DI BANTING DAN DI TINDIH', '2d12dc2d-e548-4084-83d0-b9fd6442906d', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 13:03:11', '2023-02-27 13:03:11', NULL);
INSERT INTO `custom_field_data` VALUES ('33b66cfb-b83c-4ea0-87c8-fb66af97b3ca', 'Barang Kaca dan Barang Baru', '999df33d-6e6e-4de8-8e17-751a8a4a0a13', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-26 09:07:51', '2023-02-26 11:58:43', '2023-02-26 11:58:43');
INSERT INTO `custom_field_data` VALUES ('34c74ef0-0989-4e7b-802a-2af6235d1f1b', 'Barang Kaca dan Barang Baru', '2d12dc2d-e548-4084-83d0-b9fd6442906d', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 13:03:11', '2023-02-27 13:03:11', NULL);
INSERT INTO `custom_field_data` VALUES ('356330ef-e6d6-42f6-8dab-918af9148898', 'TES', 'ef8cbf22-9260-4e34-ba02-a1fea55ac54f', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:02:57', '2023-02-27 13:02:57', NULL);
INSERT INTO `custom_field_data` VALUES ('36c17185-ccb3-4395-a0f1-363ec36eb055', NULL, 'ae4d3577-6ece-4b32-ba7a-b0ee5e01faf4', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-26 14:40:04', '2023-02-26 14:40:04', NULL);
INSERT INTO `custom_field_data` VALUES ('37d077f8-37dc-4da1-b998-a910e27096c2', 'JANGAN DI BANTING DAN DI TINDIH', 'ccbf1d48-6a21-4c56-a097-f96d857bf26e', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 13:07:29', '2023-02-27 13:46:35', '2023-02-27 13:46:35');
INSERT INTO `custom_field_data` VALUES ('3988998a-4d01-44e2-96ac-f03aa2d4663e', 'TES', 'a0fa206b-5b0c-46b9-b986-6c4bb5fa8c1c', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:45:00', '2023-02-27 13:45:00', NULL);
INSERT INTO `custom_field_data` VALUES ('3994c84c-fad1-4f9a-b9e2-d180d6c8551e', 'JANGAN DI BANTING DAN DI TINDIH', '4c268c3b-fdbb-4c02-b7b7-f5b965e1ccc7', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 13:14:19', '2023-02-27 13:14:19', NULL);
INSERT INTO `custom_field_data` VALUES ('4048cbc7-96ee-41e9-93ba-45fa95e3ab5e', 'TES', '996ebfcd-4f0e-4dcd-a57d-66ef68ce6e18', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:13:23', '2023-02-27 13:13:23', NULL);
INSERT INTO `custom_field_data` VALUES ('41ee6510-674b-4df0-943c-d404ea83784f', 'barang A', '677b5c90-41b1-45e1-a8a5-2aa5bb1c1b5e', 'transaction', 'ae02f730-53d8-493c-92bb-528fb68dd159', '2023-02-27 14:13:08', '2023-02-27 14:13:08', NULL);
INSERT INTO `custom_field_data` VALUES ('4209ecc5-bf16-4687-b468-c65311c1d2c7', NULL, '6269c080-c4b9-432c-b20f-db8d3b5aa701', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-26 07:16:18', '2023-02-26 07:16:18', NULL);
INSERT INTO `custom_field_data` VALUES ('433dbff6-366a-4019-ac3b-9958f8027ffe', '20000', '9dd8989f-885d-42ca-aafe-ff24b6db5770', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 12:36:16', '2023-02-27 12:36:16', NULL);
INSERT INTO `custom_field_data` VALUES ('46297c93-0133-4862-aa9b-7d1f49071a66', '20000', '545e3915-9e7d-44cb-ba6f-6d23ca40aff9', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:03:11', '2023-02-27 13:03:11', NULL);
INSERT INTO `custom_field_data` VALUES ('4781f06e-753c-4c38-9933-81de14b7a5f0', 'Kaca', '3bb4da2d-3bcc-478c-8049-4e52fa019a80', 'transaction', 'c9311a44-2530-44a2-9ecd-b0229d2a8da5', '2023-02-27 13:45:00', '2023-02-27 13:45:00', NULL);
INSERT INTO `custom_field_data` VALUES ('4b05bb9b-1968-43d4-bb9c-46995a5a4b04', NULL, '4ef40a24-12f9-4efc-bbd2-1782fe4f97d7', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-26 07:16:18', '2023-02-26 07:16:18', NULL);
INSERT INTO `custom_field_data` VALUES ('4b7a98e9-c478-460d-a060-758e39810b8d', NULL, '4ef40a24-12f9-4efc-bbd2-1782fe4f97d7', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 07:16:18', '2023-02-26 07:16:18', NULL);
INSERT INTO `custom_field_data` VALUES ('4c1bc3e4-6455-491c-bc48-5ecfa7ff7272', NULL, 'ae4d3577-6ece-4b32-ba7a-b0ee5e01faf4', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 14:40:04', '2023-02-26 14:40:04', NULL);
INSERT INTO `custom_field_data` VALUES ('5025fd81-3d7c-494a-9d01-7cbd8db2da21', 'JANGAN DI BANTING DAN DI TINDIH', '8945f67a-6793-4a51-9d5e-33f5b22f6eee', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 12:35:58', '2023-02-27 12:35:58', NULL);
INSERT INTO `custom_field_data` VALUES ('508ec141-298d-4008-a7d0-b07b3aa7c276', 'Kaca Polos', '677b5c90-41b1-45e1-a8a5-2aa5bb1c1b5e', 'transaction', 'c9311a44-2530-44a2-9ecd-b0229d2a8da5', '2023-02-26 15:32:34', '2023-02-27 14:13:08', NULL);
INSERT INTO `custom_field_data` VALUES ('5192983e-0043-436a-9b3a-692b3cdf20fd', 'TES', '1698a044-2f55-4605-ab32-265b2d149646', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 12:30:32', '2023-02-27 12:30:32', NULL);
INSERT INTO `custom_field_data` VALUES ('51af8ceb-c424-4a75-9c76-b79c226fefd3', 'TES', 'a103c2ca-f122-411b-b007-cf13e7f254e0', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 12:32:01', '2023-02-27 12:32:01', NULL);
INSERT INTO `custom_field_data` VALUES ('52d0f903-aa47-4b03-8dd3-8721d34a119d', 'JANGAN DI BANTING DAN DI TINDIH', 'e93c127e-341f-49a2-bd66-f9cdf1818f2d', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 13:02:39', '2023-02-27 13:02:39', NULL);
INSERT INTO `custom_field_data` VALUES ('53dcd92f-f3e9-470c-ab73-daca5c0d2657', 'TES', '2d57ceb3-73f4-4f02-9b50-fb75b881f51b', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 11:12:03', '2023-02-26 11:12:03', NULL);
INSERT INTO `custom_field_data` VALUES ('56478a3c-4e20-4b83-a607-fcca1bbb6f30', '20000', 'd35990e2-b0ff-4465-b8c4-601e56a64d7b', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 12:35:58', '2023-02-27 12:35:58', NULL);
INSERT INTO `custom_field_data` VALUES ('565eb38e-ba59-4c3c-81c7-99a0cd1418c4', 'barang baru', '0f5626dd-eeac-4abf-ac61-3107f4aa8e2e', 'koli', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 14:12:03', '2023-02-27 14:12:03', NULL);
INSERT INTO `custom_field_data` VALUES ('56c271c2-a7c2-49ea-b982-e53c5fd1247a', NULL, '55832e11-e936-4d03-8ee3-a1d83d2064c8', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 14:13:08', '2023-02-27 14:13:08', NULL);
INSERT INTO `custom_field_data` VALUES ('570887e1-532e-425f-abe7-2bb041553e31', NULL, 'af7330bc-76e6-40b4-89bb-d6be83656bf1', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 14:40:04', '2023-02-26 14:40:04', NULL);
INSERT INTO `custom_field_data` VALUES ('5ba74dc8-3373-4f4a-848e-b41f283ad1ad', 'TES', '0577b5ab-6368-4dd0-9c4d-f0ea35935f1e', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 07:17:35', '2023-02-26 07:17:35', NULL);
INSERT INTO `custom_field_data` VALUES ('6255252b-1114-45d9-9b89-7de8d7ed6edd', '20000', 'a0fa206b-5b0c-46b9-b986-6c4bb5fa8c1c', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:45:00', '2023-02-27 13:45:00', NULL);
INSERT INTO `custom_field_data` VALUES ('63884e27-678d-41dd-9b47-e284fe442407', '20000', '4de60d20-6ec0-4fc6-83d4-9a6b6f14b8fb', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:07:29', '2023-02-27 13:07:29', NULL);
INSERT INTO `custom_field_data` VALUES ('64e79be5-4540-440b-b84e-f5408631567f', 'kardus', 'd9c3c498-4d6c-4219-9c9e-870eddd25896', 'koli', '4f2ca9a8-266c-408a-9fb3-5c8cc198c03f', '2023-02-26 16:11:22', '2023-02-26 16:11:22', NULL);
INSERT INTO `custom_field_data` VALUES ('65dbe2bc-d043-4bac-a1b6-cdc84bada54e', 'JANGAN DI BANTING DAN DI TINDIH', '940899a4-4d5c-4812-a41b-0a85fc419779', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 11:32:20', '2023-02-27 11:32:20', NULL);
INSERT INTO `custom_field_data` VALUES ('665e39f1-070c-4274-813e-00a76842f101', NULL, 'a20f1bcc-eeb2-4470-a92c-d749e0f998a3', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-26 15:32:34', '2023-02-26 15:32:34', NULL);
INSERT INTO `custom_field_data` VALUES ('69bab39a-43e8-46e1-ba8e-015ec2fd9e56', 'ABC', '0577b5ab-6368-4dd0-9c4d-f0ea35935f1e', 'koli', '9c36836a-d696-4e77-8437-5c6b1333d184', '2023-02-26 10:31:24', '2023-02-26 10:31:24', NULL);
INSERT INTO `custom_field_data` VALUES ('6a56065f-c731-41bb-a079-34fba5dd6924', 'TES', '2b235acb-0bbe-4f64-8cb7-9e6109ef3c76', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 12:36:42', '2023-02-27 12:36:42', NULL);
INSERT INTO `custom_field_data` VALUES ('742c99d2-c5e1-4b06-9b11-fd1ec895ff7b', '20000', '4a9042d6-64fc-4d77-aea0-36a3a03815b6', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 12:29:10', '2023-02-27 12:29:10', NULL);
INSERT INTO `custom_field_data` VALUES ('74f0634f-e4a6-424a-be45-0c1279cec9ff', 'Barang Kaca dan Barang Baru', '4c268c3b-fdbb-4c02-b7b7-f5b965e1ccc7', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 13:14:19', '2023-02-27 13:14:19', NULL);
INSERT INTO `custom_field_data` VALUES ('75c309b6-c9e2-4fed-b645-e6bd194a3978', NULL, '12c414e9-eed0-4d5b-90c5-538dc470ae6a', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 10:52:11', '2023-02-27 10:52:11', NULL);
INSERT INTO `custom_field_data` VALUES ('77e61fbe-11ac-4a3a-8780-2eb8db173bf8', 'TES', 'bd5ca25f-5c24-4261-a262-1fe88f6ae8d1', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:02:39', '2023-02-27 13:02:39', NULL);
INSERT INTO `custom_field_data` VALUES ('7a1fe2fd-0f56-4079-84fa-eea737cd94e9', '500', '0577b5ab-6368-4dd0-9c4d-f0ea35935f1e', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-26 07:17:35', '2023-02-26 11:03:12', NULL);
INSERT INTO `custom_field_data` VALUES ('7dbe5d50-9299-4f61-8acb-f95228fcd274', 'TES', '8d53368f-35eb-47e2-9851-0a2941debf2b', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 12:16:31', '2023-02-27 12:16:31', NULL);
INSERT INTO `custom_field_data` VALUES ('813bc67b-0437-4497-a457-4915263548eb', '20000', '86226496-cb5c-4ee9-bd8a-917132d50f60', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:03:50', '2023-02-27 13:03:50', NULL);
INSERT INTO `custom_field_data` VALUES ('85aa938e-0b40-4124-a831-ccfbec1381f6', 'TES', 'e42e7264-1371-445f-9454-e3ff5bef86b6', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:14:19', '2023-02-27 13:14:19', NULL);
INSERT INTO `custom_field_data` VALUES ('8b54aec3-8022-442d-85fc-e949013c5dea', NULL, 'af7330bc-76e6-40b4-89bb-d6be83656bf1', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-26 14:40:04', '2023-02-26 14:40:04', NULL);
INSERT INTO `custom_field_data` VALUES ('8dac48ef-34ca-48fd-b1f9-1cc0d69068ec', 'TES', '4de60d20-6ec0-4fc6-83d4-9a6b6f14b8fb', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:07:29', '2023-02-27 13:07:29', NULL);
INSERT INTO `custom_field_data` VALUES ('8f96632f-188c-46f7-8179-e17adf57f431', 'JANGAN DI BANTING DAN DI TINDIH', '826ceb17-0d26-4866-8f9e-fa57f25f966d', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 13:03:50', '2023-02-27 13:03:50', NULL);
INSERT INTO `custom_field_data` VALUES ('90d21045-fd27-4518-9caa-5233d11937e4', '20000', 'a103c2ca-f122-411b-b007-cf13e7f254e0', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 12:32:01', '2023-02-27 12:32:01', NULL);
INSERT INTO `custom_field_data` VALUES ('97c641d8-edbb-4963-94a6-3223951ef410', NULL, 'b31c9a09-9b44-45bd-bd6e-7bd9ece5318d', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-26 14:40:04', '2023-02-26 14:40:04', NULL);
INSERT INTO `custom_field_data` VALUES ('9932d09b-e34e-48c5-a77b-091635090e51', NULL, 'd467eef7-4101-4c26-b6f9-1e18d8a43580', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 14:39:12', '2023-02-26 14:39:12', NULL);
INSERT INTO `custom_field_data` VALUES ('9e96ff9e-c527-4a60-b585-c406b67e4945', '20000', 'ef8cbf22-9260-4e34-ba02-a1fea55ac54f', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:02:57', '2023-02-27 13:02:57', NULL);
INSERT INTO `custom_field_data` VALUES ('9fce069e-f1de-44eb-ad5b-29d11ff626eb', 'JANGAN DI BANTING DAN DI TINDIH', '4c53dc12-c52e-4258-b7c7-473b1b92ab1a', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 12:36:42', '2023-02-27 12:36:42', NULL);
INSERT INTO `custom_field_data` VALUES ('a11e1dc7-1015-4f45-bef5-5b3c26ef8e3b', NULL, '0c84e96f-ae10-4858-9b9d-72ecc33e4800', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 14:13:20', '2023-02-27 14:13:20', NULL);
INSERT INTO `custom_field_data` VALUES ('a6097fdc-4f37-492d-a56f-cf01d6b7c29e', NULL, 'd9c3c498-4d6c-4219-9c9e-870eddd25896', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 16:11:22', '2023-02-26 16:11:22', NULL);
INSERT INTO `custom_field_data` VALUES ('ac560c29-3f6e-4e45-a06d-99fc2b926204', '20000', 'e42e7264-1371-445f-9454-e3ff5bef86b6', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:14:19', '2023-02-27 13:14:19', NULL);
INSERT INTO `custom_field_data` VALUES ('ac59b033-730f-4925-8634-f033ce2c2fbd', '20000', '00c2dd4b-5544-4b65-be3b-0dfe198bac4a', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:14:34', '2023-02-27 13:14:34', NULL);
INSERT INTO `custom_field_data` VALUES ('adebf831-329b-4114-aaed-157bcc4e1e53', 'TES', '545e3915-9e7d-44cb-ba6f-6d23ca40aff9', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:03:11', '2023-02-27 13:03:11', NULL);
INSERT INTO `custom_field_data` VALUES ('afe7180e-be3c-47f5-96b5-9c63155e3488', NULL, '0c84e96f-ae10-4858-9b9d-72ecc33e4800', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 14:13:20', '2023-02-27 14:13:20', NULL);
INSERT INTO `custom_field_data` VALUES ('b0093fea-9275-4e7b-a564-e3660ccc5404', 'JANGAN DI BANTING ATAU DI TINDIH', '0577b5ab-6368-4dd0-9c4d-f0ea35935f1e', 'koli', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-26 10:31:24', '2023-02-26 10:31:24', NULL);
INSERT INTO `custom_field_data` VALUES ('b770dab1-ae87-479f-afbb-07b6d52e70a4', 'Barang Kaca dan Barang Baru', '66b99a06-3f59-41ef-86ac-33c75cc9fdef', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 12:32:01', '2023-02-27 12:32:01', NULL);
INSERT INTO `custom_field_data` VALUES ('b87cd0de-a341-41f0-9a69-345aad938ff0', NULL, 'd467eef7-4101-4c26-b6f9-1e18d8a43580', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-26 14:39:12', '2023-02-26 14:39:12', NULL);
INSERT INTO `custom_field_data` VALUES ('b97793d8-1e5d-485a-b443-f6a0e688451e', 'Barang Kaca dan Barang Baru', '826ceb17-0d26-4866-8f9e-fa57f25f966d', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 13:03:50', '2023-02-27 13:03:50', NULL);
INSERT INTO `custom_field_data` VALUES ('bc17d779-ac8e-47b5-9d05-1fa9c80e7db0', 'Barang Kaca dan Barang Baru', '8945f67a-6793-4a51-9d5e-33f5b22f6eee', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 12:35:58', '2023-02-27 12:35:58', NULL);
INSERT INTO `custom_field_data` VALUES ('c3c746f1-c037-4ac7-b38a-5502e87009d8', 'JANGAN DI BANTING DAN DI TINDIH', 'bb132a35-7fb9-4db9-946a-74b927dff8a5', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 13:02:57', '2023-02-27 13:02:57', NULL);
INSERT INTO `custom_field_data` VALUES ('c44e1042-4501-4154-9ed1-a6e97a498069', 'Barang Kaca dan Barang Baru', 'bb132a35-7fb9-4db9-946a-74b927dff8a5', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 13:02:57', '2023-02-27 13:02:57', NULL);
INSERT INTO `custom_field_data` VALUES ('c4fd4cbb-d82e-4e4b-b4d4-142df0b0083c', '20000', '8d53368f-35eb-47e2-9851-0a2941debf2b', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 12:16:31', '2023-02-27 12:16:31', NULL);
INSERT INTO `custom_field_data` VALUES ('c63ad0d5-4dd4-4a57-8ece-93b32b9fe711', 'JANGAN DI BANTING / DI TINDIH', 'bf82d86a-def7-47f2-b8fe-181f9e751afb', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 12:16:31', '2023-02-27 12:16:31', NULL);
INSERT INTO `custom_field_data` VALUES ('c7f414c1-4983-4402-b195-379cbcb8a627', 'Barang Kaca dan Barang Baru', '2aa93995-478e-4665-8ae6-348df0b14866', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 13:14:34', '2023-02-27 13:14:34', NULL);
INSERT INTO `custom_field_data` VALUES ('cb072dbe-0926-4229-aede-2f7feb4f74ed', 'JANGAN DI BANTING atau DI TINDIH', '677b5c90-41b1-45e1-a8a5-2aa5bb1c1b5e', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-26 14:40:04', '2023-02-26 15:32:34', NULL);
INSERT INTO `custom_field_data` VALUES ('cc9c2a4e-3cb2-40f0-aad2-2488e1538dd6', 'TES', '4a9042d6-64fc-4d77-aea0-36a3a03815b6', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 12:29:10', '2023-02-27 12:29:10', NULL);
INSERT INTO `custom_field_data` VALUES ('d0f05957-7421-4193-ab0f-d1d4e8a6171a', 'TES', 'b9d22bc8-d098-4eae-ad05-9265d4f4048b', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:45:00', '2023-02-27 13:45:00', NULL);
INSERT INTO `custom_field_data` VALUES ('d43a98f4-654c-4804-800c-f572f86cc2e1', NULL, '4655a330-4b9d-4514-8da2-cc8df0407abb', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 14:12:03', '2023-02-27 14:12:03', NULL);
INSERT INTO `custom_field_data` VALUES ('d586a926-2568-4f79-9b16-c35b28682790', 'Barang Kaca dan Barang Baru', 'e93c127e-341f-49a2-bd66-f9cdf1818f2d', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 13:02:39', '2023-02-27 13:02:39', NULL);
INSERT INTO `custom_field_data` VALUES ('da90ab06-e8c4-4b78-bdb5-0539560fdffb', 'JANGAN DI BANTING DAN DI TINDIH', '2aa93995-478e-4665-8ae6-348df0b14866', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 13:14:34', '2023-02-27 13:14:34', NULL);
INSERT INTO `custom_field_data` VALUES ('dc08c739-f5f9-4827-b064-751db311c0cf', '20000', '996ebfcd-4f0e-4dcd-a57d-66ef68ce6e18', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 13:13:23', '2023-02-27 13:13:23', NULL);
INSERT INTO `custom_field_data` VALUES ('ddf4f2d1-4e04-4ad8-9285-970d6ef4e781', '20000', '1698a044-2f55-4605-ab32-265b2d149646', 'koli', '4ba62e32-4c0f-420d-ba18-43b15f90df9d', '2023-02-27 12:30:32', '2023-02-27 12:30:32', NULL);
INSERT INTO `custom_field_data` VALUES ('df77f046-4023-4a26-917c-20cd2a8160ca', 'JANGAN DI BANTING atau DI TINDIH', '3bb4da2d-3bcc-478c-8049-4e52fa019a80', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 13:45:00', '2023-02-27 13:45:00', NULL);
INSERT INTO `custom_field_data` VALUES ('e4425a5b-834b-401c-8154-696262ea91e2', 'TES', 'd35990e2-b0ff-4465-b8c4-601e56a64d7b', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 12:35:58', '2023-02-27 12:35:58', NULL);
INSERT INTO `custom_field_data` VALUES ('e4a9c0f3-b9cb-48ea-b9c3-4a895bf40871', 'JANGAN DI BANTING DAN DI TINDIH', '66b99a06-3f59-41ef-86ac-33c75cc9fdef', 'transaction', 'c446d7e1-74b6-41f7-8316-2027a29a8dcc', '2023-02-27 12:32:01', '2023-02-27 12:32:01', NULL);
INSERT INTO `custom_field_data` VALUES ('e4c40895-57c5-4810-abe6-6ba511dfc945', 'Barang Kaca dan Barang Baru', '4c53dc12-c52e-4258-b7c7-473b1b92ab1a', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 12:36:42', '2023-02-27 12:36:42', NULL);
INSERT INTO `custom_field_data` VALUES ('e89ddd4f-8d7b-4538-845f-1dcbe1d8581b', 'TES', '8f51370c-3a26-4cf6-bfb0-855d6b1d0fc8', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:14:05', '2023-02-27 13:14:05', NULL);
INSERT INTO `custom_field_data` VALUES ('eba5de2e-94b2-4a26-8c32-449b205826c4', 'Barang Kaca dan Barang Baru', '018dd4af-c1ef-4210-88d6-82842f952d37', 'transaction', 'a9cf7b6c-5779-4cec-944a-b703e1b6f7b1', '2023-02-27 13:13:23', '2023-02-27 13:13:23', NULL);
INSERT INTO `custom_field_data` VALUES ('eeceb988-315b-48a9-8f32-522e7bb8c32b', NULL, 'b31c9a09-9b44-45bd-bd6e-7bd9ece5318d', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 14:40:04', '2023-02-26 14:40:04', NULL);
INSERT INTO `custom_field_data` VALUES ('f6eea557-1295-4e92-97af-c41581dad834', NULL, '54dca3af-b8c2-4196-a297-34f943f439a0', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-26 14:39:12', '2023-02-26 14:39:12', NULL);
INSERT INTO `custom_field_data` VALUES ('f7d4a692-6564-47a6-ab04-5a9e884f603e', NULL, '12c414e9-eed0-4d5b-90c5-538dc470ae6a', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 10:52:11', '2023-02-27 10:52:11', NULL);
INSERT INTO `custom_field_data` VALUES ('fad94c12-798b-4e5c-b047-60e49e81cd21', 'TES', '00c2dd4b-5544-4b65-be3b-0dfe198bac4a', 'koli', 'bd2fa41d-56b6-43c6-8afc-c6b811d24bb1', '2023-02-27 13:14:34', '2023-02-27 13:14:34', NULL);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customer_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `customer_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_phone` int NULL DEFAULT NULL,
  `customer_address_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `customer_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('33bae657-4933-433d-a3d6-1250151cabc6', 'Bambang Fahriansyah', 'AA2394', 'Dau Malang', 'bambang@gmail.com', 12345, NULL, '12425', NULL, '2023-02-27 13:50:04', '2023-02-27 13:50:04');
INSERT INTO `customer` VALUES ('48e3e486-963b-4c04-8a63-3373bb908689', 'Dani Fahriansyah', '13338593', 'Dau Malang', 'dani@gmail.com', 12345, NULL, '12425', NULL, '2023-02-24 14:02:07', '2023-02-24 14:02:07');
INSERT INTO `customer` VALUES ('5b9e42a3-4fc2-4d31-988c-e0193fa11b64', 'Koko Andriansyah', '54298520', 'Bromo Malang', 'koko@gmail.com', 12345, NULL, '12425', NULL, '2023-02-26 12:57:38', '2023-02-26 12:57:38');

-- ----------------------------
-- Table structure for customer_attribute
-- ----------------------------
DROP TABLE IF EXISTS `customer_attribute`;
CREATE TABLE `customer_attribute`  (
  `customer_attribute_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_attribute_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_attribute_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_attribute_id`) USING BTREE,
  INDEX `customer_attribute_customer_id_foreign`(`customer_id` ASC) USING BTREE,
  CONSTRAINT `customer_attribute_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_attribute
-- ----------------------------
INSERT INTO `customer_attribute` VALUES ('049ad3c7-cc6a-42ae-9ae6-c2ea5d954fea', 'Jenis_Pelanggan', 'B2B', '33bae657-4933-433d-a3d6-1250151cabc6', '2023-02-27 13:50:04', '2023-02-27 13:50:04');
INSERT INTO `customer_attribute` VALUES ('1385a0e5-dd94-4e22-a2b2-67a4a0b43330', 'Nama_Sales', 'Raditya Dika', '48e3e486-963b-4c04-8a63-3373bb908689', '2023-02-24 14:02:07', '2023-02-24 14:02:07');
INSERT INTO `customer_attribute` VALUES ('3a361d6f-4166-4a78-830c-5fe624916985', 'Nama_Sales', 'Jojo', '5b9e42a3-4fc2-4d31-988c-e0193fa11b64', '2023-02-26 12:57:38', '2023-02-26 12:57:38');
INSERT INTO `customer_attribute` VALUES ('71fd51ac-b867-46e1-a718-aa7305868218', 'Nama_Sales', 'Raditya Dika', '33bae657-4933-433d-a3d6-1250151cabc6', '2023-02-27 13:50:04', '2023-02-27 13:50:04');
INSERT INTO `customer_attribute` VALUES ('85574b7e-a193-44d4-8713-90af3929d14b', 'TOP', '14 Hari', '48e3e486-963b-4c04-8a63-3373bb908689', '2023-02-24 14:02:07', '2023-02-24 14:02:07');
INSERT INTO `customer_attribute` VALUES ('9b03ae1d-48d0-47af-b3c3-381057c2b166', 'Jenis_Pelanggan', 'B2B', '48e3e486-963b-4c04-8a63-3373bb908689', '2023-02-24 14:02:07', '2023-02-24 14:02:07');
INSERT INTO `customer_attribute` VALUES ('9ce3b8f1-631a-4f79-9525-22daba4cf260', 'TOP', '15 Hari', '5b9e42a3-4fc2-4d31-988c-e0193fa11b64', '2023-02-26 12:57:38', '2023-02-26 12:57:38');
INSERT INTO `customer_attribute` VALUES ('d7bf6de7-7199-40b3-ad25-a5228a133d3b', 'TOP', '14 Hari', '33bae657-4933-433d-a3d6-1250151cabc6', '2023-02-27 13:50:04', '2023-02-27 13:50:04');
INSERT INTO `customer_attribute` VALUES ('e6335c83-dc29-48d2-97c9-23a894dae4fc', 'Jenis_Pelanggan', 'B2B', '5b9e42a3-4fc2-4d31-988c-e0193fa11b64', '2023-02-26 12:57:38', '2023-02-26 12:57:38');

-- ----------------------------
-- Table structure for destination_data
-- ----------------------------
DROP TABLE IF EXISTS `destination_data`;
CREATE TABLE `destination_data`  (
  `destination_data_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`destination_data_id`) USING BTREE,
  INDEX `destination_data_customer_id_foreign`(`customer_id` ASC) USING BTREE,
  INDEX `destination_data_location_id_foreign`(`location_id` ASC) USING BTREE,
  INDEX `destination_data_organization_id_foreign`(`organization_id` ASC) USING BTREE,
  CONSTRAINT `destination_data_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `destination_data_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `destination_data_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destination_data
-- ----------------------------
INSERT INTO `destination_data` VALUES ('36e59517-c6b6-4dd7-848d-a6eedc233e46', 'CGKFT', '48e3e486-963b-4c04-8a63-3373bb908689', 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', '2023-02-25 01:02:53', '2023-02-25 01:02:53', NULL);
INSERT INTO `destination_data` VALUES ('a122b9a1-fabb-419b-9ae0-0fa92c687ae9', 'AACD', '48e3e486-963b-4c04-8a63-3373bb908689', 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', '2023-02-27 14:03:43', '2023-02-27 14:03:43', NULL);
INSERT INTO `destination_data` VALUES ('a67a3345-86da-4855-b80c-7ef02d00a7a4', 'FNLKFT', '5b9e42a3-4fc2-4d31-988c-e0193fa11b64', 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', '2023-02-26 13:43:02', '2023-02-26 13:43:02', NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for koli
-- ----------------------------
DROP TABLE IF EXISTS `koli`;
CREATE TABLE `koli`  (
  `koli_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connote_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `koli_length` int NULL DEFAULT NULL,
  `awb_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `koli_chargeable_weight` int NOT NULL,
  `koli_width` int NULL DEFAULT NULL,
  `koli_surcharge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `koli_height` int NULL DEFAULT NULL,
  `koli_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `koli_formula_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `koli_volume` int NULL DEFAULT NULL,
  `koli_weight` int NULL DEFAULT NULL,
  `koli_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`koli_id`) USING BTREE,
  INDEX `koli_transaction_id_foreign`(`connote_id` ASC) USING BTREE,
  CONSTRAINT `koli_transaction_id_foreign` FOREIGN KEY (`connote_id`) REFERENCES `connote` (`connote_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of koli
-- ----------------------------
INSERT INTO `koli` VALUES ('00c2dd4b-5544-4b65-be3b-0dfe198bac4a', '406522df-da4a-457b-8396-0da36a5bc513', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '56947.1', '2023-02-27 13:14:34', '2023-02-27 13:14:34', NULL);
INSERT INTO `koli` VALUES ('0577b5ab-6368-4dd0-9c4d-f0ea35935f1e', '1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca', 100, 'https://tracking.mile.app/label/AWB00100209082020.2.123', 9, 200, NULL, 300, 'V WARP EDIT', NULL, 0, 9, 'AWB00126022023.1', '2023-02-26 07:17:35', '2023-02-26 12:14:13', '2023-02-26 12:14:13');
INSERT INTO `koli` VALUES ('0c84e96f-ae10-4858-9b9d-72ecc33e4800', 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 0, 'https://tracking.mile.app/label/AWB00100209082020.99', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00526022023.10', '2023-02-27 14:13:20', '2023-02-27 14:13:20', NULL);
INSERT INTO `koli` VALUES ('0f5626dd-eeac-4abf-ac61-3107f4aa8e2e', 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 10, 'https://tracking.mile.app/label/AWB00100209082020.46', 9, 0, NULL, 0, 'V WARP A', NULL, 0, 9, 'AWB00526022023.7', '2023-02-27 13:43:08', '2023-02-27 14:12:03', NULL);
INSERT INTO `koli` VALUES ('12c414e9-eed0-4d5b-90c5-538dc470ae6a', 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 1, 'https://tracking.mile.app/label/AWB00100209082020.2', 5, 0, NULL, 0, 'LID HOT CUP', NULL, 0, 2, 'AWB00526022023.6', '2023-02-27 10:52:11', '2023-02-27 10:52:11', NULL);
INSERT INTO `koli` VALUES ('1698a044-2f55-4605-ab32-265b2d149646', 'f4f63d7e-9b67-4334-bfac-49bd7b92c17b', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '47450-0003.1', '2023-02-27 12:30:32', '2023-02-27 12:30:32', NULL);
INSERT INTO `koli` VALUES ('1a2ecd87-5d00-4e46-9e35-56eb8a33c8b1', '1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca', 100, 'https://tracking.mile.app/label/AWB00100209082020.2.456', 19, 2001, NULL, 3001, 'V WARP BARU', NULL, 10, 10, 'AWB00126022023.3', '2023-02-26 11:11:41', '2023-02-26 12:14:13', '2023-02-26 12:14:13');
INSERT INTO `koli` VALUES ('2b235acb-0bbe-4f64-8cb7-9e6109ef3c76', 'da8a2d57-8a7e-4dd2-8954-3cd799a2646f', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '10163.1', '2023-02-27 12:36:42', '2023-02-27 12:36:42', NULL);
INSERT INTO `koli` VALUES ('2d57ceb3-73f4-4f02-9b50-fb75b881f51b', '1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca', 100, 'https://tracking.mile.app/label/AWB00100209082020.2.456', 19, 2001, NULL, 3001, 'V WARP BARU', NULL, 10, 10, 'AWB00126022023.4', '2023-02-26 11:12:03', '2023-02-26 12:14:13', '2023-02-26 12:14:13');
INSERT INTO `koli` VALUES ('4655a330-4b9d-4514-8da2-cc8df0407abb', 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 0, 'https://tracking.mile.app/label/AWB00100209082020.99', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00526022023.8', '2023-02-27 14:12:03', '2023-02-27 14:12:03', NULL);
INSERT INTO `koli` VALUES ('4a9042d6-64fc-4d77-aea0-36a3a03815b6', '736e11af-0136-463f-a953-025d821ac6e1', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '91269-9484.1', '2023-02-27 12:29:10', '2023-02-27 12:29:10', NULL);
INSERT INTO `koli` VALUES ('4de60d20-6ec0-4fc6-83d4-9a6b6f14b8fb', '8a403e84-708e-4707-93f5-ed5af371972d', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '09280.1', '2023-02-27 13:07:29', '2023-02-27 13:46:35', '2023-02-27 13:46:35');
INSERT INTO `koli` VALUES ('4ef40a24-12f9-4efc-bbd2-1782fe4f97d7', 'd57bd353-6f36-407d-985c-cbe7f19a5c79', 0, 'https://tracking.mile.app/label/AWB00100209082020.2', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00226022023.1', '2023-02-26 07:16:18', '2023-02-27 11:00:04', '2023-02-27 11:00:04');
INSERT INTO `koli` VALUES ('545e3915-9e7d-44cb-ba6f-6d23ca40aff9', '19f9f5c8-098e-4c27-8e1f-2c89f488cf77', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '72289.1', '2023-02-27 13:03:11', '2023-02-27 13:03:11', NULL);
INSERT INTO `koli` VALUES ('54dca3af-b8c2-4196-a297-34f943f439a0', 'd7759643-d5c5-41fa-acf5-8b5ea2900de5', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00426022023.1', '2023-02-26 14:39:12', '2023-02-26 14:39:12', NULL);
INSERT INTO `koli` VALUES ('55832e11-e936-4d03-8ee3-a1d83d2064c8', 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 0, 'https://tracking.mile.app/label/AWB00100209082020.99', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00526022023.9', '2023-02-27 14:13:08', '2023-02-27 14:13:08', NULL);
INSERT INTO `koli` VALUES ('6269c080-c4b9-432c-b20f-db8d3b5aa701', 'd57bd353-6f36-407d-985c-cbe7f19a5c79', 0, 'https://tracking.mile.app/label/AWB00100209082020.2', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00226022023.2', '2023-02-26 07:16:18', '2023-02-27 11:00:04', '2023-02-27 11:00:04');
INSERT INTO `koli` VALUES ('86226496-cb5c-4ee9-bd8a-917132d50f60', '6cd229ba-ab24-4949-936c-8c2ad50479ad', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '17980-7657.1', '2023-02-27 13:03:50', '2023-02-27 13:03:50', NULL);
INSERT INTO `koli` VALUES ('8d53368f-35eb-47e2-9851-0a2941debf2b', '2b963342-528e-47fb-bb0e-2249b06b730c', 0, 'https://tracking.mile.app/label/AWB00100209082020.2', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '62717.1', '2023-02-27 12:16:31', '2023-02-27 12:16:31', NULL);
INSERT INTO `koli` VALUES ('8f51370c-3a26-4cf6-bfb0-855d6b1d0fc8', 'd95caea7-a49a-4064-9673-fbbe725d8d1b', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '70944-6540.1', '2023-02-27 13:14:05', '2023-02-27 13:14:05', NULL);
INSERT INTO `koli` VALUES ('93db9f4d-bcb7-4e71-8773-267dc1ba8d4a', '1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca', 100, 'https://tracking.mile.app/label/AWB00100209082020.2.456', 19, 2001, NULL, 3001, 'V WARP BARU', NULL, 10, 10, 'AWB00126022023.2', '2023-02-26 11:03:12', '2023-02-26 12:14:13', '2023-02-26 12:14:13');
INSERT INTO `koli` VALUES ('996ebfcd-4f0e-4dcd-a57d-66ef68ce6e18', '3b28c6d0-d188-4d5a-b0db-05d1838c8d78', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '52499-8394.1', '2023-02-27 13:13:23', '2023-02-27 13:13:23', NULL);
INSERT INTO `koli` VALUES ('9dd8989f-885d-42ca-aafe-ff24b6db5770', '47377b1f-68c2-4ccd-8c0e-db4c4b7d77d2', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '50292-7700.1', '2023-02-27 12:36:16', '2023-02-27 12:36:16', NULL);
INSERT INTO `koli` VALUES ('a0fa206b-5b0c-46b9-b986-6c4bb5fa8c1c', '116a67ff-398d-4bf6-9b0f-753fe1802330', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '64344-3535.2', '2023-02-27 13:45:00', '2023-02-27 13:45:00', NULL);
INSERT INTO `koli` VALUES ('a103c2ca-f122-411b-b007-cf13e7f254e0', 'b2cdafa1-8cc9-4635-a659-0ec173b5d450', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00327022023.1', '2023-02-27 12:32:01', '2023-02-27 12:32:01', NULL);
INSERT INTO `koli` VALUES ('a20f1bcc-eeb2-4470-a92c-d749e0f998a3', 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 0, 'https://tracking.mile.app/label/AWB00100209082020.4', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00526022023.4', '2023-02-26 15:32:34', '2023-02-26 15:32:34', NULL);
INSERT INTO `koli` VALUES ('ae4d3577-6ece-4b32-ba7a-b0ee5e01faf4', 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 1, 'https://tracking.mile.app/label/AWB00100209082020.3123', 5, 0, NULL, 0, 'LID HOT CUP', NULL, 0, 2, 'AWB00526022023.3', '2023-02-26 14:40:04', '2023-02-26 15:32:33', NULL);
INSERT INTO `koli` VALUES ('af7330bc-76e6-40b4-89bb-d6be83656bf1', 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 2, 'https://tracking.mile.app/label/AWB00100209082020.2', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00526022023.2', '2023-02-26 14:40:04', '2023-02-26 15:32:33', NULL);
INSERT INTO `koli` VALUES ('b31c9a09-9b44-45bd-bd6e-7bd9ece5318d', 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 3, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00526022023.1', '2023-02-26 14:40:04', '2023-02-26 15:32:33', NULL);
INSERT INTO `koli` VALUES ('b9d22bc8-d098-4eae-ad05-9265d4f4048b', '116a67ff-398d-4bf6-9b0f-753fe1802330', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '64344-3535.1', '2023-02-27 13:45:00', '2023-02-27 13:45:00', NULL);
INSERT INTO `koli` VALUES ('bd5ca25f-5c24-4261-a262-1fe88f6ae8d1', 'b341c35b-5fa2-4220-9e95-7f60a830d1d2', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '44115.1', '2023-02-27 13:02:39', '2023-02-27 13:02:39', NULL);
INSERT INTO `koli` VALUES ('d35990e2-b0ff-4465-b8c4-601e56a64d7b', '583138f4-6a00-4be2-ae92-9e5009a2189c', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '77684.1', '2023-02-27 12:35:58', '2023-02-27 12:35:58', NULL);
INSERT INTO `koli` VALUES ('d467eef7-4101-4c26-b6f9-1e18d8a43580', 'd7759643-d5c5-41fa-acf5-8b5ea2900de5', 0, 'https://tracking.mile.app/label/AWB00100209082020.2', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, 'AWB00426022023.2', '2023-02-26 14:39:12', '2023-02-26 14:39:12', NULL);
INSERT INTO `koli` VALUES ('d9c3c498-4d6c-4219-9c9e-870eddd25896', 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 1, 'https://tracking.mile.app/label/AWB00100209082020.2', 5, 0, NULL, 0, 'LID HOT CUP', NULL, 0, 2, 'AWB00526022023.5', '2023-02-26 16:11:22', '2023-02-26 16:11:22', NULL);
INSERT INTO `koli` VALUES ('e42e7264-1371-445f-9454-e3ff5bef86b6', '6bd223db-04ae-4f68-89c9-ab30f1add408', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '73937.1', '2023-02-27 13:14:19', '2023-02-27 13:14:19', NULL);
INSERT INTO `koli` VALUES ('ef8cbf22-9260-4e34-ba02-a1fea55ac54f', '0e24f4e2-ac75-4938-9d37-25feedbc9853', 0, 'https://tracking.mile.app/label/AWB00100209082020.1', 9, 0, NULL, 0, 'V WARP', NULL, 0, 9, '23989.1', '2023-02-27 13:02:57', '2023-02-27 13:02:57', NULL);

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `location_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `location_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`location_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('004e96ef-58ba-4aba-acaa-00bd0ade1f85', 'MLG01', 'Malang', 'HUB', '2023-02-27 13:59:58', '2023-02-27 13:59:58', NULL);
INSERT INTO `location` VALUES ('38d5ec47-e397-465c-adf6-e5ebb7196f6d', 'SBY01', 'Surabaya', 'HUB', '2023-02-27 13:59:37', '2023-02-27 13:59:37', NULL);
INSERT INTO `location` VALUES ('9831d2ef-fe02-4ab3-86c2-f6c59b7e1116', 'JKT01', 'Jakarta', 'HUB', '2023-02-26 13:02:04', '2023-02-26 13:02:04', NULL);
INSERT INTO `location` VALUES ('f9d6000e-7c45-41f8-a515-d638a216d449', 'BDG01', 'Bandung', 'HUB', '2023-02-24 16:51:18', '2023-02-24 16:51:18', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_02_24_034848_create_customer', 1);
INSERT INTO `migrations` VALUES (7, '2023_02_24_040101_create_state', 1);
INSERT INTO `migrations` VALUES (8, '2023_02_24_040244_create_location', 1);
INSERT INTO `migrations` VALUES (9, '2023_02_24_040303_create_organization', 1);
INSERT INTO `migrations` VALUES (10, '2023_02_24_040633_create_origin_data', 1);
INSERT INTO `migrations` VALUES (11, '2023_02_24_040915_create_destination_data', 1);
INSERT INTO `migrations` VALUES (12, '2023_02_24_040957_create_connote', 1);
INSERT INTO `migrations` VALUES (13, '2023_02_24_041015_create_connote_history', 1);
INSERT INTO `migrations` VALUES (14, '2023_02_24_041112_create_custom_field', 1);
INSERT INTO `migrations` VALUES (15, '2023_02_24_070103_create_custom_field_data', 1);
INSERT INTO `migrations` VALUES (16, '2023_02_24_093122_create_transaction', 1);
INSERT INTO `migrations` VALUES (17, '2023_02_24_093606_create_koli', 1);
INSERT INTO `migrations` VALUES (18, '2023_02_24_035738_create_customer_attribute', 2);

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization`  (
  `organization_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`organization_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('df0647a4-b743-4658-a709-0eb2976e54f1', 'Organization Test', '2023-02-27 14:01:09', '2023-02-27 14:01:09', NULL);
INSERT INTO `organization` VALUES ('e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Organization ABC', '2023-02-24 16:57:24', '2023-02-24 16:57:24', NULL);
INSERT INTO `organization` VALUES ('eba16bdc-7929-4a99-bbfc-5946660aff99', 'Organization CBA', '2023-02-26 13:05:17', '2023-02-26 13:05:17', NULL);

-- ----------------------------
-- Table structure for origin_data
-- ----------------------------
DROP TABLE IF EXISTS `origin_data`;
CREATE TABLE `origin_data`  (
  `origin_data_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`origin_data_id`) USING BTREE,
  INDEX `origin_data_customer_id_foreign`(`customer_id` ASC) USING BTREE,
  INDEX `origin_data_location_id_foreign`(`location_id` ASC) USING BTREE,
  INDEX `origin_data_organization_id_foreign`(`organization_id` ASC) USING BTREE,
  CONSTRAINT `origin_data_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `origin_data_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `origin_data_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of origin_data
-- ----------------------------
INSERT INTO `origin_data` VALUES ('13d8b0da-bd8f-4296-9587-fb8b0db2d175', 'CGFJD', '5b9e42a3-4fc2-4d31-988c-e0193fa11b64', '9831d2ef-fe02-4ab3-86c2-f6c59b7e1116', 'eba16bdc-7929-4a99-bbfc-5946660aff99', '2023-02-26 13:39:19', '2023-02-26 13:39:19', NULL);
INSERT INTO `origin_data` VALUES ('1eabe897-8e70-47fd-98ef-1bc5d035d98d', 'ABC', '48e3e486-963b-4c04-8a63-3373bb908689', 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', '2023-02-27 14:02:11', '2023-02-27 14:02:11', NULL);
INSERT INTO `origin_data` VALUES ('fde2da10-643f-451d-bc6f-6c538714deec', 'CGKFT', '48e3e486-963b-4c04-8a63-3373bb908689', 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', '2023-02-25 00:55:56', '2023-02-25 00:55:56', NULL);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (1, 'App\\Models\\User', 1, 'authToken', 'b6d080623a81a0188a40c1e94cb16cdb591e2bb53f264c483c5bf3993e531281', '[\"*\"]', NULL, '2023-02-24 10:38:59', '2023-02-24 10:38:59');
INSERT INTO `personal_access_tokens` VALUES (2, 'App\\Models\\User', 1, 'authToken', '9531eaaf6321e9405d9d117ccaa941d052bf1215d32bfbd0136124a3d7a642c2', '[\"*\"]', NULL, '2023-02-24 10:52:08', '2023-02-24 10:52:08');
INSERT INTO `personal_access_tokens` VALUES (3, 'App\\Models\\User', 1, 'authToken', '5982f083f7f9d19f69f18bd19211edf1688588ad439d8ae544984ed9e722f43e', '[\"*\"]', NULL, '2023-02-24 10:52:44', '2023-02-24 10:52:44');
INSERT INTO `personal_access_tokens` VALUES (4, 'App\\Models\\User', 1, 'authToken', 'b3c0891221da471cd4daaa60ba98ad2979a7aed204d030c8b1ae351dfa1fbccc', '[\"*\"]', NULL, '2023-02-24 12:11:18', '2023-02-24 12:11:18');
INSERT INTO `personal_access_tokens` VALUES (5, 'App\\Models\\User', 1, 'authToken', '87a1988fc7027a080a47739f583fb7eeeb16b9bf5b6909054e8d7821a8c00539', '[\"*\"]', '2023-02-27 14:15:15', '2023-02-24 12:33:18', '2023-02-27 14:15:15');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\User', 1, 'authToken', '353a0c212b443cd62389c2cabc181d2313d9eac44c6f7b09ab3be62cb618f110', '[\"*\"]', NULL, '2023-02-26 13:59:07', '2023-02-26 13:59:07');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\User', 2, 'authToken', '4512456d9424b7ac4ac97a921b703a3b20e54bf408ce254d492c638d50e4bce8', '[\"*\"]', NULL, '2023-02-26 13:59:54', '2023-02-26 13:59:54');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\User', 3, 'authToken', 'a46a76c12d11458e8522b516432c96f7cf899a47db700b60cab754b86bb4bf19', '[\"*\"]', NULL, '2023-02-27 09:05:29', '2023-02-27 09:05:29');
INSERT INTO `personal_access_tokens` VALUES (9, 'App\\Models\\User', 4, 'authToken', 'd52c19fd4e93850524223510bbdb990470c26f318bb6e2d66caff2b6d893ea26', '[\"*\"]', NULL, '2023-02-27 09:08:34', '2023-02-27 09:08:34');
INSERT INTO `personal_access_tokens` VALUES (10, 'App\\Models\\User', 5, 'authToken', '80daa3382ddfcdfbbce378756e79ce6e685c26fe03fca6cc47c87fe30d1ff02b', '[\"*\"]', NULL, '2023-02-27 09:10:21', '2023-02-27 09:10:21');
INSERT INTO `personal_access_tokens` VALUES (11, 'App\\Models\\User', 6, 'authToken', '54231307938d3ea0f576806776f0b97b371e36ba44e4988cc0199d0eb6e53766', '[\"*\"]', NULL, '2023-02-27 09:12:40', '2023-02-27 09:12:40');
INSERT INTO `personal_access_tokens` VALUES (12, 'App\\Models\\User', 7, 'authToken', '151d0d897671eb621d5b3b7ba9c7b99b2aa0bf36085e93e1ce7f9577e19bf887', '[\"*\"]', NULL, '2023-02-27 09:13:01', '2023-02-27 09:13:01');
INSERT INTO `personal_access_tokens` VALUES (13, 'App\\Models\\User', 8, 'authToken', 'd22af059618b53d51d3708ed183843bb827246a063a690f054a92a5b07d1ab58', '[\"*\"]', NULL, '2023-02-27 09:14:37', '2023-02-27 09:14:37');
INSERT INTO `personal_access_tokens` VALUES (14, 'App\\Models\\User', 9, 'authToken', '15eec8e8e89d109c7dc72641bfb9c8a561a2fb628d4fcced8891659e57996d75', '[\"*\"]', NULL, '2023-02-27 09:15:58', '2023-02-27 09:15:58');
INSERT INTO `personal_access_tokens` VALUES (15, 'App\\Models\\User', 10, 'authToken', '6f430bbeedc131f87d3f2e4adbfb64beb0275d09a23789304da9d7a423f479d2', '[\"*\"]', NULL, '2023-02-27 09:16:11', '2023-02-27 09:16:11');
INSERT INTO `personal_access_tokens` VALUES (16, 'App\\Models\\User', 11, 'authToken', '60d424107e246a2b99db4f60f90b2b037b6855c1d58d3ab0f3761a9a94500ccb', '[\"*\"]', NULL, '2023-02-27 09:18:12', '2023-02-27 09:18:12');
INSERT INTO `personal_access_tokens` VALUES (17, 'App\\Models\\User', 12, 'authToken', '3118116a49bcb8f99453b02f06ba55867904c10fb164e50dcd455ec8252860f8', '[\"*\"]', NULL, '2023-02-27 09:19:01', '2023-02-27 09:19:01');
INSERT INTO `personal_access_tokens` VALUES (18, 'App\\Models\\User', 13, 'authToken', '6726c28c3dd4d040361893d789cb8b74007b177ec9cda289cb3241a7c7a14625', '[\"*\"]', NULL, '2023-02-27 09:19:25', '2023-02-27 09:19:25');
INSERT INTO `personal_access_tokens` VALUES (19, 'App\\Models\\User', 14, 'authToken', '4d4d39200b8c8b2a13fa349557a17cfed8a9fe0560a5586c76cc45174ae04c63', '[\"*\"]', NULL, '2023-02-27 09:29:12', '2023-02-27 09:29:12');
INSERT INTO `personal_access_tokens` VALUES (20, 'App\\Models\\User', 15, 'authToken', '6d7ceec8c2ff78816d58357fe992db728f68fe7dd79257ff20b2e6b89b94d95e', '[\"*\"]', NULL, '2023-02-27 09:30:33', '2023-02-27 09:30:33');
INSERT INTO `personal_access_tokens` VALUES (21, 'App\\Models\\User', 16, 'authToken', '066467362faa89c30712f75b853cf2d9d5e0f7f8ef85aefc69c6e71ef02f88b5', '[\"*\"]', NULL, '2023-02-27 09:30:44', '2023-02-27 09:30:44');
INSERT INTO `personal_access_tokens` VALUES (22, 'App\\Models\\User', 1, 'authToken', '677c2bbe5aa9c3e23c6a8240ed2f5c9248bc227e321e2fdb99fd07904b2d8d24', '[\"*\"]', NULL, '2023-02-27 09:31:36', '2023-02-27 09:31:36');
INSERT INTO `personal_access_tokens` VALUES (23, 'App\\Models\\User', 1, 'authToken', '0739cd329293654916cc29d03eb66d5e3525bd84bdf33ca98cfb6eac0bbf0639', '[\"*\"]', NULL, '2023-02-27 09:32:04', '2023-02-27 09:32:04');
INSERT INTO `personal_access_tokens` VALUES (24, 'App\\Models\\User', 17, 'authToken', 'a62b1c4b1f894ba2f1347f619f0c1a0e1293d7476abd34f60d5c07858fec2a7b', '[\"*\"]', NULL, '2023-02-27 09:32:04', '2023-02-27 09:32:04');
INSERT INTO `personal_access_tokens` VALUES (25, 'App\\Models\\User', 1, 'authToken', '436c95a93ccf1e9626ed903cc500522d96b00216775d556fb6965d72570824d8', '[\"*\"]', NULL, '2023-02-27 09:35:37', '2023-02-27 09:35:37');
INSERT INTO `personal_access_tokens` VALUES (26, 'App\\Models\\User', 18, 'authToken', '1046a11169c398b1f05f47ce31dac5339b7b1c372c58035777ab2c9d63cad4c7', '[\"*\"]', NULL, '2023-02-27 09:35:37', '2023-02-27 09:35:37');
INSERT INTO `personal_access_tokens` VALUES (27, 'App\\Models\\User', 1, 'authToken', '37e39ab06e02f626f344bd1c02e00401f8149496eb96cbf88858f86aabdb2e81', '[\"*\"]', NULL, '2023-02-27 10:28:23', '2023-02-27 10:28:23');
INSERT INTO `personal_access_tokens` VALUES (28, 'App\\Models\\User', 19, 'authToken', 'c4d1526b6385ca3db0bebff8d3044f5da9df1a9fc757a20324c65a6311d35cd7', '[\"*\"]', NULL, '2023-02-27 10:28:23', '2023-02-27 10:28:23');
INSERT INTO `personal_access_tokens` VALUES (29, 'App\\Models\\User', 1, 'authToken', '26de9259d0758e9c0a47ad9a0834a8695dda8dc6580b58b0cdc2c4cd8c819301', '[\"*\"]', NULL, '2023-02-27 13:03:31', '2023-02-27 13:03:31');
INSERT INTO `personal_access_tokens` VALUES (30, 'App\\Models\\User', 20, 'authToken', 'b1872e76e205e996af9694ed2f8c11b4f2795346f97d378f721768c66192d2e2', '[\"*\"]', NULL, '2023-02-27 13:03:31', '2023-02-27 13:03:31');
INSERT INTO `personal_access_tokens` VALUES (31, 'App\\Models\\User', 1, 'authToken', '415af6dd95660cf21aa6e060b5916718c1d9d25a6dc96594039f6e1ea014a821', '[\"*\"]', NULL, '2023-02-27 13:14:19', '2023-02-27 13:14:19');
INSERT INTO `personal_access_tokens` VALUES (32, 'App\\Models\\User', 21, 'authToken', '2af3804d39d7a9895e393fd50dfe742c2d860603477a4ccf72babb599169da5b', '[\"*\"]', NULL, '2023-02-27 13:14:19', '2023-02-27 13:14:19');
INSERT INTO `personal_access_tokens` VALUES (33, 'App\\Models\\User', 1, 'authToken', '8eaf54323a869e4ed1de3a027ff8e05b3dbc1b51bed3dcef97ebffc4def28f3f', '[\"*\"]', NULL, '2023-02-27 13:14:34', '2023-02-27 13:14:34');
INSERT INTO `personal_access_tokens` VALUES (34, 'App\\Models\\User', 22, 'authToken', '0c60c830b194af56631ab358d92e73013abc528ec97eb4bf3c4dffd90e0e990f', '[\"*\"]', NULL, '2023-02-27 13:14:34', '2023-02-27 13:14:34');
INSERT INTO `personal_access_tokens` VALUES (35, 'App\\Models\\User', 1, 'authToken', '2736bfb82c4c855625641997a5a8a62a84aab2552a02819526a7cbdb2f2d0491', '[\"*\"]', NULL, '2023-02-27 13:42:00', '2023-02-27 13:42:00');

-- ----------------------------
-- Table structure for state
-- ----------------------------
DROP TABLE IF EXISTS `state`;
CREATE TABLE `state`  (
  `state_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`state_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of state
-- ----------------------------
INSERT INTO `state` VALUES ('52ec13b0-27b3-43e2-81ad-69c93ed7fc77', 'SUCCESS', '2023-02-27 14:04:27', '2023-02-27 14:04:27', NULL);
INSERT INTO `state` VALUES ('9ab6eaa2-096e-4e89-8555-79f9229d4c11', 'CANCEL', '2023-02-26 13:08:42', '2023-02-26 13:08:42', NULL);
INSERT INTO `state` VALUES ('ea908603-f04e-4b21-9a5c-192f99b99994', 'PAID', '2023-02-25 05:34:33', '2023-02-25 05:34:33', NULL);

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction`  (
  `transaction_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_amount` int NOT NULL,
  `transaction_discount` int NULL DEFAULT NULL,
  `transaction_additional_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `transaction_payment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_order` int NOT NULL,
  `location_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_payment_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_cash_amount` int NULL DEFAULT NULL,
  `transaction_cash_change` int NULL DEFAULT NULL,
  `connote_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_data_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_data_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`transaction_id`) USING BTREE,
  INDEX `transaction_cutomer_id_foreign`(`customer_id` ASC) USING BTREE,
  INDEX `transaction_location_id_foreign`(`location_id` ASC) USING BTREE,
  INDEX `transaction_organization_id_foreign`(`organization_id` ASC) USING BTREE,
  INDEX `transaction_connote_id_foreign`(`connote_id` ASC) USING BTREE,
  INDEX `transaction_origin_data_id_foreign`(`origin_data_id` ASC) USING BTREE,
  INDEX `transaction_destination_data_id_foreign`(`destination_data_id` ASC) USING BTREE,
  CONSTRAINT `transaction_connote_id_foreign` FOREIGN KEY (`connote_id`) REFERENCES `connote` (`connote_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `transaction_cutomer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `transaction_destination_data_id_foreign` FOREIGN KEY (`destination_data_id`) REFERENCES `destination_data` (`destination_data_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `transaction_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `transaction_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `transaction_origin_data_id_foreign` FOREIGN KEY (`origin_data_id`) REFERENCES `origin_data` (`origin_data_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES ('018dd4af-c1ef-4210-88d6-82842f952d37', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'ABCDEv93KiyRxhX', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '3b28c6d0-d188-4d5a-b0db-05d1838c8d78', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:13:23', '2023-02-27 13:13:23', NULL);
INSERT INTO `transaction` VALUES ('11a82d99-4559-4793-893c-8354e0f73690', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDE3', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '01c73eb1-c420-4771-a73b-32c7ba663af7', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:03:11', '2023-02-27 13:03:11', '2023-02-27 13:03:11');
INSERT INTO `transaction` VALUES ('2aa93995-478e-4665-8ae6-348df0b14866', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'ABCDEqTH1SRPcFA', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '406522df-da4a-457b-8396-0da36a5bc513', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:14:34', '2023-02-27 13:14:34', NULL);
INSERT INTO `transaction` VALUES ('2d12dc2d-e548-4084-83d0-b9fd6442906d', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'ABCDE6', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '19f9f5c8-098e-4c27-8e1f-2c89f488cf77', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:03:11', '2023-02-27 13:03:11', NULL);
INSERT INTO `transaction` VALUES ('35f3f2d7-2748-44cc-b0a6-732126c093e2', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDE4', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '31683132-d39d-42ad-9122-5198c49290b6', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:05:18', '2023-02-27 13:05:18', '2023-02-27 13:05:18');
INSERT INTO `transaction` VALUES ('366df76b-b0c1-4cec-b476-373fbe6c7d7d', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDEUSGQ2OZuDU', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'ea913e95-61a9-4898-bb55-5266002229a5', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:14:35', '2023-02-27 13:14:35', '2023-02-27 13:14:35');
INSERT INTO `transaction` VALUES ('3bb4da2d-3bcc-478c-8049-4e52fa019a80', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'LOREMIPSUM555', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '116a67ff-398d-4bf6-9b0f-753fe1802330', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:45:00', '2023-02-27 13:45:00', NULL);
INSERT INTO `transaction` VALUES ('3e47aadf-1ce7-4cbd-bb21-883622bbab7e', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDE0', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '1da98384-743f-41ed-9b90-89cdedc8d6f3', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:02:39', '2023-02-27 13:02:39', NULL);
INSERT INTO `transaction` VALUES ('4ae8a29f-8043-4f7f-908e-7029f3cd18fd', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'LOREMIPSUM123', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'f4f63d7e-9b67-4334-bfac-49bd7b92c17b', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 12:30:32', '2023-02-27 12:30:32', NULL);
INSERT INTO `transaction` VALUES ('4c268c3b-fdbb-4c02-b7b7-f5b965e1ccc7', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'ABCDEgDjeRhQ3GR', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '6bd223db-04ae-4f68-89c9-ab30f1add408', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:14:19', '2023-02-27 13:14:19', NULL);
INSERT INTO `transaction` VALUES ('4c53dc12-c52e-4258-b7c7-473b1b92ab1a', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'ABCDE8', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'da8a2d57-8a7e-4dd2-8954-3cd799a2646f', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 12:36:42', '2023-02-27 12:36:42', NULL);
INSERT INTO `transaction` VALUES ('579c3c10-c952-487b-a76d-f75fab434f19', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDE3', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'c52fd603-0edd-4a9f-94e5-ade25f4007c0', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:02:58', '2023-02-27 13:02:58', '2023-02-27 13:02:58');
INSERT INTO `transaction` VALUES ('64e75c5a-403a-435f-a174-c27093faed71', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'ABCDEB2sYkIjkPB', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'd95caea7-a49a-4064-9673-fbbe725d8d1b', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:14:05', '2023-02-27 13:14:05', NULL);
INSERT INTO `transaction` VALUES ('66b99a06-3f59-41ef-86ac-33c75cc9fdef', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'LOREMIPSUM12345', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'b2cdafa1-8cc9-4635-a659-0ec173b5d450', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 12:32:01', '2023-02-27 12:32:01', NULL);
INSERT INTO `transaction` VALUES ('677b5c90-41b1-45e1-a8a5-2aa5bb1c1b5e', '5b9e42a3-4fc2-4d31-988c-e0193fa11b64', 250000, 0, NULL, '39', 'PAID', 'CGKFT20200715121', 120, '9831d2ef-fe02-4ab3-86c2-f6c59b7e1116', 'eba16bdc-7929-4a99-bbfc-5946660aff99', 'Invoice', 200000, 300000, 'e8b26e4d-fdc1-4352-96e4-e30295a3b158', 'fde2da10-643f-451d-bc6f-6c538714deec', 'a67a3345-86da-4855-b80c-7ef02d00a7a4', '2023-02-26 14:40:04', '2023-02-27 14:14:17', NULL);
INSERT INTO `transaction` VALUES ('6af5b7d2-1410-4fdd-aaf0-f7bbf790303d', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDE8', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '831edc6b-c02d-4b54-9d9e-26f6633a819f', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:03:32', '2023-02-27 13:03:32', '2023-02-27 13:03:32');
INSERT INTO `transaction` VALUES ('6e9b0e06-89f7-4b53-b402-d09760d05edb', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDE7', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'bbe1cc19-f7fc-4ddb-ae20-d25f99d28289', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:04:58', '2023-02-27 13:04:58', '2023-02-27 13:04:58');
INSERT INTO `transaction` VALUES ('826ceb17-0d26-4866-8f9e-fa57f25f966d', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'ABCDE2', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '6cd229ba-ab24-4949-936c-8c2ad50479ad', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:03:50', '2023-02-27 13:03:50', NULL);
INSERT INTO `transaction` VALUES ('8945f67a-6793-4a51-9d5e-33f5b22f6eee', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'LOREMIPSUM12345678', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '583138f4-6a00-4be2-ae92-9e5009a2189c', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 12:35:58', '2023-02-27 12:35:58', NULL);
INSERT INTO `transaction` VALUES ('8d2d8b16-0324-4691-b00a-2f999c19f512', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDE1', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'e4a11e34-dadc-44ea-8d19-221f60ce8491', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:03:50', '2023-02-27 13:03:50', '2023-02-27 13:03:50');
INSERT INTO `transaction` VALUES ('8f4ba21a-f1a8-4954-a5c9-2fbfb6442e13', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDEBiQYD0Ri3a', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '86c01c50-1ace-4a35-8e61-e61a634258fc', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:14:06', '2023-02-27 13:14:06', '2023-02-27 13:14:06');
INSERT INTO `transaction` VALUES ('940899a4-4d5c-4812-a41b-0a85fc419779', '5b9e42a3-4fc2-4d31-988c-e0193fa11b64', 50000, 0, NULL, '39', 'PAID', '5230592', 120, '9831d2ef-fe02-4ab3-86c2-f6c59b7e1116', 'eba16bdc-7929-4a99-bbfc-5946660aff99', 'Invoice', 0, 0, 'd7759643-d5c5-41fa-acf5-8b5ea2900de5', 'fde2da10-643f-451d-bc6f-6c538714deec', 'a67a3345-86da-4855-b80c-7ef02d00a7a4', '2023-02-26 14:39:12', '2023-02-27 13:14:35', NULL);
INSERT INTO `transaction` VALUES ('999df33d-6e6e-4de8-8e17-751a8a4a0a13', '48e3e486-963b-4c04-8a63-3373bb908689', 100000, 0, NULL, '29', 'PAID', 'ASBJN953', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-26 07:17:35', '2023-02-26 12:14:13', '2023-02-26 12:14:13');
INSERT INTO `transaction` VALUES ('af364769-be1b-4137-aa21-9190733b398c', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDE7XPTvtOlbB', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'd5102ba2-d222-4b31-bc2d-a4918ca82c3d', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:14:20', '2023-02-27 13:14:20', '2023-02-27 13:14:20');
INSERT INTO `transaction` VALUES ('bb132a35-7fb9-4db9-946a-74b927dff8a5', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'ABCDE5', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '0e24f4e2-ac75-4938-9d37-25feedbc9853', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:02:57', '2023-02-27 13:02:57', NULL);
INSERT INTO `transaction` VALUES ('bf82d86a-def7-47f2-b8fe-181f9e751afb', '48e3e486-963b-4c04-8a63-3373bb908689', 100000, 0, NULL, '29', 'PAID', 'ABC542102', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '2b963342-528e-47fb-bb0e-2249b06b730c', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 12:16:31', '2023-02-27 12:16:31', NULL);
INSERT INTO `transaction` VALUES ('ccbf1d48-6a21-4c56-a097-f96d857bf26e', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'ABCDE9', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '8a403e84-708e-4707-93f5-ed5af371972d', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:07:29', '2023-02-27 13:46:35', '2023-02-27 13:46:35');
INSERT INTO `transaction` VALUES ('e2415448-99ec-4940-b3ec-9015d899083d', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDE4', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'a14b25c9-f3fd-463d-ba39-281327949d96', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:03:56', '2023-02-27 13:03:56', '2023-02-27 13:03:56');
INSERT INTO `transaction` VALUES ('e27d0467-dbf1-43fd-bfc8-4f71b5e74d3c', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'LOREMIPSUM', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '736e11af-0136-463f-a953-025d821ac6e1', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 12:29:10', '2023-02-27 12:29:10', NULL);
INSERT INTO `transaction` VALUES ('e87c2a25-8db7-4cb4-b9ec-3cc88973b49b', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, '', '29', 'PAID', 'ABCDE4', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'bec79e8c-cca0-45e2-a0aa-3a027226452b', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:04:46', '2023-02-27 13:04:46', '2023-02-27 13:04:46');
INSERT INTO `transaction` VALUES ('e93c127e-341f-49a2-bd66-f9cdf1818f2d', '48e3e486-963b-4c04-8a63-3373bb908689', 10000, 0, NULL, '29', 'PAID', 'ABCDE1', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'b341c35b-5fa2-4220-9e95-7f60a830d1d2', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 13:02:39', '2023-02-27 13:02:39', NULL);
INSERT INTO `transaction` VALUES ('f0c10c4b-c09e-4716-8c1f-66f9c68ddfe3', '48e3e486-963b-4c04-8a63-3373bb908689', 100000, 0, NULL, '29', 'PAID', '5289t2', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, 'd57bd353-6f36-407d-985c-cbe7f19a5c79', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-26 07:16:18', '2023-02-27 11:00:04', '2023-02-27 11:00:04');
INSERT INTO `transaction` VALUES ('f826d8ba-41ad-40f2-a898-49f6c46af74b', '48e3e486-963b-4c04-8a63-3373bb908689', 20000, 0, NULL, '29', 'PAID', 'LOREMIPSUM123456789', 121, 'f9d6000e-7c45-41f8-a515-d638a216d449', 'e33a29e3-fe9e-4f6b-a25e-a4943cf128d2', 'Invoice', 0, 0, '47377b1f-68c2-4ccd-8c0e-db4c4b7d77d2', 'fde2da10-643f-451d-bc6f-6c538714deec', '36e59517-c6b6-4dd7-848d-a6eedc233e46', '2023-02-27 12:36:16', '2023-02-27 13:47:15', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Administrator', 'admin@admin.com', NULL, '$2y$10$VupL8myGTrvCl36I/ik2EeuwCcngMIxI.C7z8LG34dL3ksuTIIedu', NULL, '2023-02-24 10:38:58', '2023-02-24 10:38:58');
INSERT INTO `users` VALUES (2, 'Tester', 'tester@admin.com', NULL, '$2y$10$c.rmkNlIcLOnqNlcimfiDOTSYHuWdaSI7L3dr0uhmZMiM45ItfmGe', NULL, '2023-02-26 13:59:54', '2023-02-26 13:59:54');
INSERT INTO `users` VALUES (4, 'John Doe', 'doe@example.com', NULL, '$2y$10$SMKy888dIOAcSk6bvWGm9uDue2reEE1ET5zL9nlV4lPExtk2EPq06', NULL, '2023-02-27 09:08:34', '2023-02-27 09:08:34');
INSERT INTO `users` VALUES (5, 'John Doe', 'doe123@example.com', NULL, '$2y$10$WXvnP5.gN6kke2qUchgTKOl/8Jh.pfb/AkYdkkdMvSDfiR1xuNi4.', NULL, '2023-02-27 09:10:21', '2023-02-27 09:10:21');
INSERT INTO `users` VALUES (6, 'John Doe', 'doe123@123.com', NULL, '$2y$10$51Jl2d0SONxsdMJLsSYu3O6zG7kOw5ip296MPtS5UiOh1G/h5x672', NULL, '2023-02-27 09:12:40', '2023-02-27 09:12:40');
INSERT INTO `users` VALUES (7, 'Administrator', '1@1.com', NULL, '$2y$10$H2K6Ceye1A6F7Uk4y.U/LOFfygKqRJGHFbh2brSYYMhKvolUq8zWS', NULL, '2023-02-27 09:13:01', '2023-02-27 09:13:01');
INSERT INTO `users` VALUES (8, 'John Doe', 'aaa@aa.com', NULL, '$2y$10$Gr1Eae.irNsxxjtzRKZ7yuraW5aWyfd075VjwEyn9AYidSyhA2pj6', NULL, '2023-02-27 09:14:37', '2023-02-27 09:14:37');
INSERT INTO `users` VALUES (9, 'John Doe', 'dd@dd.com', NULL, '$2y$10$SiYo5HSd5kbVXRTWUdD2i.KWEkXf0D2j4TsQsZCUSMuym2.qucSyS', NULL, '2023-02-27 09:15:58', '2023-02-27 09:15:58');
INSERT INTO `users` VALUES (10, 'John Doe', 'dbd@dd.com', NULL, '$2y$10$Cb2FqLMj.IcZBwAbrCxF5es6kg9MK6z3JJFuiKQ5JK8zEU4Q9wkU.', NULL, '2023-02-27 09:16:11', '2023-02-27 09:16:11');
INSERT INTO `users` VALUES (11, 'John Doe', 'ddf@dd.com', NULL, '$2y$10$D59pEtOhMPPDiYVyTmGkN.QQdz.CQzDtXsMxxP2l94kaKp4rFT7na', NULL, '2023-02-27 09:18:12', '2023-02-27 09:18:12');
INSERT INTO `users` VALUES (12, 'John Doe', 'ddf@f.com', NULL, '$2y$10$gv2f9wESIaEIPJOyAdlc0usvjxmkpZz7L.uCPa9CU2glmyRQsph8m', NULL, '2023-02-27 09:19:01', '2023-02-27 09:19:01');
INSERT INTO `users` VALUES (13, 'John Doe', 'ddf@f.c5om', NULL, '$2y$10$hMXWrHFSIUjtc63yeqiLD.QPZIG6WKcRQn0K9qEFMWPsKQMWiUcTe', NULL, '2023-02-27 09:19:25', '2023-02-27 09:19:25');
INSERT INTO `users` VALUES (14, 'John Doe', 'johnston.sophia@gmail.com', NULL, '$2y$10$oF8s/wMI5dbPqtqzrNuGRuzKmx5Fpxx3jNnpu4uEQKo3UtgEUjWh.', NULL, '2023-02-27 09:29:12', '2023-02-27 09:29:12');
INSERT INTO `users` VALUES (15, 'John Doe', 'marshall.wyman@yahoo.com', NULL, '$2y$10$omEMjazERCc43sU.zAatM./VmClJn/fFo9yugT8oJsu6YGWGocV2K', NULL, '2023-02-27 09:30:33', '2023-02-27 09:30:33');
INSERT INTO `users` VALUES (16, 'John Doe', 'arne.mcglynn@pacocha.com', NULL, '$2y$10$VxdWqKvZiA4ny0cnCGgf2.jaQDoewwsjSi9QDVLI6zl.sHOsufk9m', NULL, '2023-02-27 09:30:44', '2023-02-27 09:30:44');
INSERT INTO `users` VALUES (17, 'John Doe', 'cruickshank.claudia@gmail.com', NULL, '$2y$10$WcusUBLLspT785vfvYDIM.35z0w5GlPcLLy9xqCOfm8f3mQOnOM0e', NULL, '2023-02-27 09:32:04', '2023-02-27 09:32:04');
INSERT INTO `users` VALUES (18, 'John Doe', 'iryan@gmail.com', NULL, '$2y$10$e8HnSQGlb8STIcOZ1ZfDfO78bMnQI1Gy2k.HIBVH5SfyJiDwvNWRm', NULL, '2023-02-27 09:35:37', '2023-02-27 09:35:37');
INSERT INTO `users` VALUES (19, 'John Doe', 'amely.cormier@gmail.com', NULL, '$2y$10$yDhi7LQvCO5UuVJHHWiIDu1clZyh24ssSgrPMInh2pSKfmB4AdJYO', NULL, '2023-02-27 10:28:23', '2023-02-27 10:28:23');
INSERT INTO `users` VALUES (20, 'John Doe', 'angel.connelly@yahoo.com', NULL, '$2y$10$9M/DewN1n9Sdvt1.OicaUu5vsYAYrB4kM7Z85a.NFIGUZLoCtbp6K', NULL, '2023-02-27 13:03:31', '2023-02-27 13:03:31');
INSERT INTO `users` VALUES (21, 'John Doe', 'nathanael.jenkins@lindgren.org', NULL, '$2y$10$1rwlyKc17N8OYEju3aVcr.B2Zp2a5owZrTnCKZcKv8WqC.ug2g3k.', NULL, '2023-02-27 13:14:19', '2023-02-27 13:14:19');
INSERT INTO `users` VALUES (22, 'John Doe', 'jlabadie@macejkovic.info', NULL, '$2y$10$7y/5AxPjhACictyvSgCTc.KHbA1vzUBmazbDNz4whDmIOXve/3PDa', NULL, '2023-02-27 13:14:34', '2023-02-27 13:14:34');

SET FOREIGN_KEY_CHECKS = 1;
