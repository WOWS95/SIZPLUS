-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.5-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- eplus 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `eplus` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `eplus`;

-- 테이블 eplus.e_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `e_board` (
  `seq` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '결과 평가 일련번호',
  `bbs_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '게시판 ID',
  `open_yn` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '공개여부(Y.공개, N.비공개)',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '비밀번호',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제목',
  `contents` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '내용',
  `input_nm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '등록자명',
  `input_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '등록자 아이피',
  `input_date` datetime DEFAULT NULL COMMENT '등록일',
  `edit_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자 아이피',
  `edit_date` datetime DEFAULT NULL COMMENT '수정일',
  `hit` int(11) DEFAULT 0 COMMENT '조회수',
  `good_cnt` datetime DEFAULT NULL COMMENT '추천',
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='게시글 테이블';

-- 테이블 데이터 eplus.e_board:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `e_board` DISABLE KEYS */;
INSERT INTO `e_board` (`seq`, `bbs_id`, `open_yn`, `password`, `title`, `contents`, `input_nm`, `input_ip`, `input_date`, `edit_ip`, `edit_date`, `hit`, `good_cnt`) VALUES
	(313, 'free', 'Y', '81dc9bdb52d04dc20036dbd8313ed055', '예시', '테스트요', '김태윤', NULL, '2022-01-14 09:50:07', NULL, NULL, 2, NULL),
	(314, 'free', 'Y', 'b59c67bf196a4758191e42f76670ceba', '여긴 직접 게시판에 쓴 글 입니다', '네네', '1111', NULL, '2022-01-14 09:56:42', NULL, NULL, 0, NULL),
	(315, 'free', 'Y', '81dc9bdb52d04dc20036dbd8313ed055', '예시-안녕', '\r\n와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우\r\n와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우\r\n와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와우와', '안녕하시유', NULL, '2022-01-14 10:48:42', NULL, NULL, 0, NULL),
	(316, 'free', 'Y', '81dc9bdb52d04dc20036dbd8313ed055', '네네네', '네네', '네네', NULL, '2022-01-14 10:48:54', NULL, NULL, 1, NULL),
	(317, 'free', 'Y', '81dc9bdb52d04dc20036dbd8313ed055', '마지막', '마지막', '마지막', NULL, '2022-01-14 10:49:06', NULL, NULL, 0, NULL);
/*!40000 ALTER TABLE `e_board` ENABLE KEYS */;

-- 테이블 eplus.e_member 구조 내보내기
CREATE TABLE IF NOT EXISTS `e_member` (
  `member_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원번호 시퀀스',
  `member_email` varchar(100) DEFAULT NULL COMMENT '회원 이메일',
  `member_type` varchar(50) DEFAULT NULL COMMENT '회원 타입',
  `member_type_id` varchar(10) DEFAULT NULL COMMENT '회원 타입에 따른 고유 아이디',
  `member_pick` varchar(200) DEFAULT NULL COMMENT '회원 사진',
  `member_intro` varchar(500) DEFAULT NULL COMMENT '회원 자기소개',
  `reg_dt` datetime DEFAULT NULL COMMENT '회원가입 일자',
  `update_dt` datetime DEFAULT NULL COMMENT '회원수정 일자',
  `member_id` varchar(255) NOT NULL,
  `member_pw` varchar(255) NOT NULL,
  `member_nickname` varchar(100) DEFAULT NULL COMMENT '회원 닉네임',
  `member_phone_num` varchar(255) DEFAULT NULL,
  `member_birth` varchar(10) DEFAULT NULL COMMENT '회원 생일',
  `member_gender` varchar(255) DEFAULT NULL,
  `member_way` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 eplus.e_member:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `e_member` DISABLE KEYS */;
INSERT INTO `e_member` (`member_seq`, `member_email`, `member_type`, `member_type_id`, `member_pick`, `member_intro`, `reg_dt`, `update_dt`, `member_id`, `member_pw`, `member_nickname`, `member_phone_num`, `member_birth`, `member_gender`, `member_way`) VALUES
	(6, NULL, NULL, NULL, NULL, NULL, '2022-01-14 10:08:38', NULL, 'wows95', '00fa8f1277ca12e2b8c669df04d759bb', '태윤', '010-7777-8888', '2022-01-14', 'M', '1');
/*!40000 ALTER TABLE `e_member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
