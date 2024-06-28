CREATE TABLE `Contatos`(
    `contato_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `contato_nome` VARCHAR(255) NOT NULL,
    `contato_intimidade` VARCHAR(255) NOT NULL,
    `contato_complemento` VARCHAR(255) NULL
);
CREATE TABLE `Emails`(
    `email_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email_endereco` VARCHAR(255) NOT NULL,
    `email_usuario` VARCHAR(255) NOT NULL,
    `email_provedor` VARCHAR(255) NOT NULL,
    `email_complemento` VARCHAR(255) NULL
);
CREATE TABLE `Localidades`(
    `local_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `local_cidade` VARCHAR(255) NOT NULL,
    `local_estado` VARCHAR(255) NOT NULL,
    `local_país` VARCHAR(255) NOT NULL,
    `local_continente` VARCHAR(255) NOT NULL,
    `local_complemento` VARCHAR(255) NULL
);
CREATE TABLE `Telefones`(
    `fone_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `fone_regiao` TINYINT NOT NULL,
    `fone_ddd` TINYINT NOT NULL,
    `fone_numero` VARCHAR(255) NOT NULL,
    `fone_complemento` VARCHAR(255) NULL
);

