問1
CREATE TABLE item_category(
	category_id   	int PRIMARY KEY,
	category_name 	varchar(256) NOT NULL,
);

問2
CREATE TABLE item(
	item_id   		int PRIMARY KEY,
	item_name 		varchar(256) NOT NULL,
	item_price 		int NOT NULL,
	category_id		int,
);

問3
INSERT INTO item_category VALUES(1,'家具');
INSERT INTO item_category VALUES(2,'食品');
INSERT INTO item_category VALUES(3,'本');

問4
INSERT INTO item VALUES(1,'堅牢な机',3000,1);
INSERT INTO item VALUES(2,'生焼け肉',50,2);
INSERT INTO item VALUES(3,'すっきりわかるJava',3000,3);
INSERT INTO item VALUES(4,'おしゃれな椅子',2000,1);
INSERT INTO item VALUES(5,'こんがり肉',500,2);
INSERT INTO item VALUES(6,'書き方ドリルSQL',2500,3);
INSERT INTO item VALUES(7,'ふわふわのベッド',30000,1);
INSERT INTO item VALUES(8,'ミラノ風ドリア',300,2);

問5
SELECT item_name,item_price from item where category_id = 1;

問6
SELECT item_name,item_price from item where item_price >= 1000;

問7
SELECT item_name,item_price from item where item_name LIKE '%肉%';

問8
SELECT item.item_id,item.item_name,item.item_price,item.category_name from item INNER JOIN item_category ON item.category_id = item_category.category_id;

問9
SELECT item_category.category_name,sum(item.item_price) as total_price from item_category INNER JOIN item ON item.category_id = item_category.category_id GROUP BY category_id ORDER BY total_price DESC;
