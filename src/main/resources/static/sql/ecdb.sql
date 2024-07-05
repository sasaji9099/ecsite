drop database ecdb;
CREATE DATABASE `ecdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
use ecdb;

CREATE TABLE mst_user(
 id INT(11) NOT NULL AUTO_INCREMENT,
 user_name VARCHAR(25) NOT NULL UNIQUE,
 password VARCHAR(25) NOT NULL,
 full_name VARCHAR(50) NOT NULL,
 is_admin TINYINT(1) DEFAULT 0,
 PRIMARY KEY (id)
);


CREATE TABLE mst_goods (
 id INT(11) NOT NULL AUTO_INCREMENT,
 goods_name VARCHAR(255)  COLLATE utf8_unicode_ci NOT NULL,
 price INT(11) DEFAULT 0,
 created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
 updated_at datetime  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (id)
);


CREATE TABLE tbl_purchase (
 id INT(11) NOT NULL AUTO_INCREMENT,
 user_id INT(11) NOT NULL,
 goods_id INT(11) NOT NULL,
 goods_name VARCHAR(255) NOT NULL,
 item_count INT(11) DEFAULT 0,
 total INT(11) DEFAULT 0,
 created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (id)
);


INSERT INTO mst_user
(user_name, password, full_name, is_admin)
VALUES 
('taro', 'taropw', 'Taro Yamada', 0),
('jiro', 'jiropw', 'Jiro Hayashi', 0),
('ichiko', 'ichikopw', 'Ichiko Kimura', 0),
('admin', 'admin', 'Administrator', 1);


INSERT INTO mst_goods
(goods_name, price)
VALUES
('Tシャツ', 1000),
('スニーカー', 1500),
('コート', 12000);