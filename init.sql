CREATE USER 'testuser'@'%'
  IDENTIFIED BY 'abcd1234';
GRANT ALL
  ON *.*
  TO 'testuser'@'%'
  WITH GRANT OPTION;

CREATE DATABASE url_shortener_test;

USE url_shortener_test;

CREATE TABLE url (
  id VARCHAR(6) NOT NULL,
  PRIMARY KEY(id),
  original_url VARCHAR(512) NOT NULL,
  CONSTRAINT uc_url UNIQUE(original_url ),
  creation_time BIGINT UNSIGNED NOT NULL,
  expiration_time BIGINT UNSIGNED NOT NULL
);
