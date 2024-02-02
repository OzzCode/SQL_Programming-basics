CREATE TABLE `teams` (
  `teamkey` smallint NOT NULL AUTO_INCREMENT,
  `teamid` char(3) NOT NULL,
  `yearid` varchar(45) NOT NULL,
  `keagueid` char(2) NOT NULL,
  `teamrank` tinyint NOT NULL,
  PRIMARY KEY (`teamkey`),
  UNIQUE KEY `teamkey_UNIQUE` (`teamkey`) /*!80000 INVISIBLE */,
  KEY `teamid_yearid_leagueid_UNIQUE` (`teamid`,`yearid`,`keagueid`),
  CONSTRAINT `check_teamrank` CHECK (((`teamrank` >= 0) and (`teamrank` <= 12))),
  CONSTRAINT `check_year` CHECK (((`yearid` >= 1871) and (`yearid` <= 2155)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
