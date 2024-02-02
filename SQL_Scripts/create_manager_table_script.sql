CREATE TABLE yourschema.`managers` (
`managerkey` smallint NOT NULL AUTO_INCREMENT,
`playerid` varchar(9) NOT NULL,
`yearid` year(4) NOT NULL,
`teamid` char(3) NOT NULL,
`games` tinyint NOT NULL,
`wins` tinyint NOT NULL,
`losses` tinyint NOT NULL,
`alsoplayer` char(1) NOT NULL,
PRIMARY KEY (`managerkey`),
UNIQUE KEY `managerkey_UNIQUE` (`managerkey`),
UNIQUE KEY `playerid_yearid_teamid_UNIQUE` (`playerid`,`yearid`,`teamid`),
KEY `FK_teamid_idx` (`teamid`),
CONSTRAINT `FK_teamid` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `check_alsoplayer` CHECK ((`alsoplayer` in (_utf8mb4'Y',_utf8mb4'N'))),
CONSTRAINT `check_games` CHECK (((`games` >= 0) and (`games` <= 165))),
CONSTRAINT `check_losses` CHECK (((`losses` >= 0) and (`losses` <= 165))),
CONSTRAINT `check_manager_year` CHECK (((`yearid` >= 1871) and (`yearid` <= 2155))),
CONSTRAINT `check_wins` CHECK (((`wins` >= 0) and (`wins` <= 165))));
