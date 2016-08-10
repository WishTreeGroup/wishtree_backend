delete from card;

INSERT INTO `card` (`id`, `name`, `summary`, `thumbnail`, `type`, `score`) VALUES
	(1, 'name01', 'summary1', 'thumbnail1', 1, 1),
	(2, 'name02', 'summary2', 'thumbnail2', 2, 2);



delete from person;

INSERT INTO `person` (`id`, `account`, `password`, `level`, `avatar`) VALUES
	(1, '111', '111', 1, '1'),
	(2, '222', '222', 2, '2');



delete from task;

INSERT INTO `task` (`id`, `wishId`, `ownerId`, `assign`) VALUES
	(1, 2, 2, 2),
	(3, 3, 3, 2),
	(4, 3, 3, 3);