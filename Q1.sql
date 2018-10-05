��1
CREATE TABLE item_category(
	category_id   	int PRIMARY KEY,
	category_name 	varchar(256) NOT NULL,
);

��2
CREATE TABLE item(
	item_id   		int PRIMARY KEY,
	item_name 		varchar(256) NOT NULL,
	item_price 		int NOT NULL,
	category_id		int,
);

��3
INSERT INTO item_category VALUES(1,'�Ƌ�');
INSERT INTO item_category VALUES(2,'�H�i');
INSERT INTO item_category VALUES(3,'�{');

��4
INSERT INTO item VALUES(1,'���S�Ȋ�',3000,1);
INSERT INTO item VALUES(2,'���Ă���',50,2);
INSERT INTO item VALUES(3,'��������킩��Java',3000,3);
INSERT INTO item VALUES(4,'�������Ȉ֎q',2000,1);
INSERT INTO item VALUES(5,'���񂪂��',500,2);
INSERT INTO item VALUES(6,'�������h����SQL',2500,3);
INSERT INTO item VALUES(7,'�ӂ�ӂ�̃x�b�h',30000,1);
INSERT INTO item VALUES(8,'�~���m���h���A',300,2);

��5
SELECT item_name,item_price from item where category_id = 1;

��6
SELECT item_name,item_price from item where item_price >= 1000;

��7
SELECT item_name,item_price from item where item_name LIKE '%��%';

��8
SELECT item.item_id,item.item_name,item.item_price,item.category_name from item INNER JOIN item_category ON item.category_id = item_category.category_id;

��9
SELECT item_category.category_name,sum(item.item_price) as total_price from item_category INNER JOIN item ON item.category_id = item_category.category_id GROUP BY category_id ORDER BY total_price DESC;
