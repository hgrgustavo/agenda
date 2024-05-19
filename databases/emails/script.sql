CREATE DATABASE `service_email`;
USE `service_email`;
CREATE TABLE `Emails`(
    `email_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email_address` CHAR(255) NOT NULL,
    `email_user` CHAR(255) NOT NULL,
    `email_provider` CHAR(255) NOT NULL
);