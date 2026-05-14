CREATE TABLE `articlecomments` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ArticleId` int NOT NULL,
  `UserId` int NOT NULL,
  `Content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `IX_ArticleComments_ArticleId` (`ArticleId`),
  KEY `IX_ArticleComments_UserId` (`UserId`),
  CONSTRAINT `FK_ArticleComments_Articles_ArticleId` FOREIGN KEY (`ArticleId`) REFERENCES `articles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ArticleComments_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci