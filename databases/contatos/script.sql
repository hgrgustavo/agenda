CREATE DATABASE `service_contatos`;
USE `service_contatos`;
DROP TABLE IF EXISTS `contatos`;
CREATE TABLE `contatos`(
    `contato_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `contato_nome` CHAR(255) NOT NULL,
    `contato_endereco` CHAR(255) NOT NULL,
    `contato_bairro` CHAR(255) NOT NULL,
    `contato_complemento` CHAR(255) NULL,
    `cidade_id` BIGINT UNSIGNED NOT NULL
);
DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails`(
    `email_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email_endereco` CHAR(255) NOT NULL,
    `contato_id` BIGINT UNSIGNED NOT NULL
);
DROP TABLE IF EXISTS `telefones`;
CREATE TABLE `telefones`(
    `telefone_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `telefone_numero` CHAR(255) NOT NULL,
    `contato_id` BIGINT UNSIGNED NOT NULL
);
DROP TABLE IF EXISTS `cidades`;
CREATE TABLE `cidades`(
    `cidade_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cidade_nome` CHAR(255) NOT NULL,
    `cidade_uf` CHAR(255) NOT NULL
);
ALTER TABLE
    `emails` ADD CONSTRAINT `emails_contato_id_foreignKey` FOREIGN KEY(`contato_id`) REFERENCES `contatos`(`contato_id`);
ALTER TABLE
    `contatos` ADD CONSTRAINT `contatos_cidade_id_foreignKey` FOREIGN KEY(`cidade_id`) REFERENCES `cidades`(`cidade_id`);
ALTER TABLE
    `telefones` ADD CONSTRAINT `telefones_contato_id_foreignKey` FOREIGN KEY(`contato_id`) REFERENCES `contatos`(`contato_id`);