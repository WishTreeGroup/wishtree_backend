CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wishId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `assign` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_task_card` (`wishId`),
  KEY `FK_task_person` (`ownerId`),
  KEY `FK_task_person_2` (`assign`),
  CONSTRAINT `FK_task_card` FOREIGN KEY (`wishId`) REFERENCES `card` (`id`),
  CONSTRAINT `FK_task_person` FOREIGN KEY (`ownerId`) REFERENCES `person` (`id`),
  CONSTRAINT `FK_task_person_2` FOREIGN KEY (`assign`) REFERENCES `person` (`id`)
)
