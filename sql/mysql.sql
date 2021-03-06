CREATE TABLE `auth_tokens` (
	`token` varchar(128) NOT NULL,
	`expires` datetime NOT NULL,	
	`user_id` int(10) unsigned NOT NULL,
	`user_name` varchar(128) NOT NULL,
	`user_pass` varchar(128) NOT NULL,
	KEY `user_id_fk_auth_tokens` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `auth_tokens`
	ADD CONSTRAINT `auth_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

