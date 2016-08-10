CREATE TABLE IF NOT EXISTS `card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `summary` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  `score` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
)