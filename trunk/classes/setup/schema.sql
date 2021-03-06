CREATE TABLE IF NOT EXISTS `#{itemTable}` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `BID` VARCHAR (200) NOT NULL,
  `subject` VARCHAR (200) DEFAULT NULL,
  `content` LONGTEXT,
  `is_secret` TINYINT (1) DEFAULT 0,
  `file_cnt` INT (30) DEFAULT 0,
  `user_id` VARCHAR (30) DEFAULT NULL,
  `user_nm` VARCHAR (30) DEFAULT NULL,
  `user_email` VARCHAR (255) DEFAULT NULL,
  `user_phone` VARCHAR (255) DEFAULT NULL,
  `user_tel` VARCHAR (255) DEFAULT NULL,
  `reg_date` DATETIME DEFAULT NULL,
  `update_date` DATETIME DEFAULT NULL,
  `reg_ip` VARCHAR (100) DEFAULT NULL,
  `read_cnt` INT (200) DEFAULT 0,
  `password` VARCHAR (200) DEFAULT NULL,
  `grp` INT (10) DEFAULT 0,
  `ord` INT (10) DEFAULT 0,
  `depth` INT (10) DEFAULT 0,
  `parent` INT (10) DEFAULT 0,
  `etc0` VARCHAR (255) DEFAULT NULL,
  `etc1` VARCHAR (255) DEFAULT NULL,
  `etc2` VARCHAR (255) DEFAULT NULL,
  `etc3` VARCHAR (255) DEFAULT NULL,
  `etc4` VARCHAR (255) DEFAULT NULL,
  `etc5` VARCHAR (255) DEFAULT NULL,
  `etc6` VARCHAR (255) DEFAULT NULL,
  `etc7` VARCHAR (255) DEFAULT NULL,
  `etc8` VARCHAR (255) DEFAULT NULL,
  `etc9` VARCHAR (255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX (grp, ord)
) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `#{settingTable}` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `BID` VARCHAR (200) NOT NULL,
  `title` VARCHAR (200) DEFAULT NULL,
  `skin` VARCHAR (200) DEFAULT NULL,
  `skin_latest` VARCHAR (200) DEFAULT NULL,
  `reg_date` DATETIME DEFAULT NULL,
  `write_role` VARCHAR (200) DEFAULT NULL,
  `read_role` VARCHAR (200) DEFAULT NULL,
  `down_role` VARCHAR (200) DEFAULT NULL,
  `list_role` VARCHAR (200) DEFAULT NULL,
  `file_cnt` VARCHAR (200) DEFAULT NULL,
  `list_cnt` VARCHAR (200) DEFAULT NULL,
  `editor` VARCHAR (200) DEFAULT NULL,
  `use_field_names` VARCHAR (200) DEFAULT NULL,
  `base_content` LONGTEXT DEFAULT NULL,
  `banned_words` LONGTEXT DEFAULT NULL,
  `use_notification` VARCHAR(200) DEFAULT NULL,
  `use_captcha` VARCHAR(200) DEFAULT NULL,
  `admin_users` LONGTEXT DEFAULT NULL,
  `categories` VARCHAR(200) DEFAULT NULL,
  `comment_write_role` VARCHAR(255) DEFAULT NULL,
  `etc0` VARCHAR (255) DEFAULT NULL,
  `etc1` VARCHAR (255) DEFAULT NULL,
  `etc2` VARCHAR (255) DEFAULT NULL,
  `etc3` VARCHAR (255) DEFAULT NULL,
  `etc4` VARCHAR (255) DEFAULT NULL,
  `etc5` VARCHAR (255) DEFAULT NULL,
  `etc6` VARCHAR (255) DEFAULT NULL,
  `etc7` VARCHAR (255) DEFAULT NULL,
  `etc8` VARCHAR (255) DEFAULT NULL,
  `etc9` VARCHAR (255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `U_BID` (`BID`)
) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `#{metaTable}` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `meta_key` VARCHAR (255) NOT NULL ,
  `meta_value` LONGTEXT DEFAULT NULL,
  `reg_date` DATETIME DEFAULT NULL,
  `update_date` DATETIME DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `u_key` (`meta_key`)
) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `#{commentTable}` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `itemID` INT UNSIGNED NOT NULL,
  `subject` VARCHAR (255) NOT NULL ,
  `content` LONGTEXT DEFAULT NULL,
  `password` LONGTEXT DEFAULT NULL,
  `user_nm` VARCHAR (255) NOT NULL ,
  `user_id` VARCHAR (255) NOT NULL ,
  `user_mail` VARCHAR (255) NOT NULL ,
  `reg_date` DATETIME DEFAULT NULL,
  `update_date` DATETIME DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE = INNODB DEFAULT CHARSET = utf8;