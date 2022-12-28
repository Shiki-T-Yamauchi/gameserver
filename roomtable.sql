DROP TABLE IF EXISTS `room`;
DROP TABLE IF EXISTS `room_member`;
CREATE TABLE `room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NOT NULL,
  `live_id` int NOT NULL,
  `joined_user_count` int DEFAULT 1,
  `max_user_count` int DEFAULT 4,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_id` (`room_id`)
);

CREATE TABLE `room_member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NOT NULL,
  `owner` int DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `select_difficulty` int DEFAULT NULL,
  `player_score` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);