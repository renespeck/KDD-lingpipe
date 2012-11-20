USE medline;

CREATE TABLE IF NOT EXISTS sentence (
	sentence_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	citation_id INT UNSIGNED NOT NULL REFERENCES citation,
	offset INT UNSIGNED NOT NULL,
	length INT UNSIGNED NOT NULL,
	type VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS mention (
	mention_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	sentence_id INT UNSIGNED NOT NULL REFERENCES sentence,
	offset INT UNSIGNED NOT NULL,
	length INT UNSIGNED NOT NULL,
	type VARCHAR(40) NOT NULL,
	text VARCHAR(500) CHARSET utf8 NOT NULL
);
