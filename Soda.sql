USE gregs_list;
DROP TABLE easy_drinks;
CREATE TABLE easy_drinks(
drink_name VARCHAR(30) NOT NULL,
main VARCHAR(30) NOT NULL,
amount1 DEC(3,2) DEFAULT 1.5,
second VARCHAR(50),
amount2 DEC(3,2),
direction VARCHAR(50)
);
INSERT INTO easy_drinks(drink_name,main,second,amount2,direction)
VALUES('Black Thorne','Tonic Water','Pineapple Juice',1.00,'stir with ice');
INSERT INTO easy_drinks(drink_name,main,second,amount2,direction)
VALUES('Blue Moon','Soda','Blueberry Juice',.75,'strain into cocktail');
INSERT INTO easy_drinks(drink_name,main,amount1,second,amount2,direction)
VALUES('Oh My Gosh','Peach Nectar',1,'Pineapple Juice',1.00,'stir with ice');
INSERT INTO easy_drinks(drink_name,main,second,amount2,direction)
VALUES('Lime Fizz','Sprite','Lime Juice',.75,'strain into cocktail');
INSERT INTO easy_drinks(drink_name,main,amount1,second,amount2,direction)
VALUES('Kiss on the Lips','Cherry Juice',2,'Apricot Nectar',7,'stir with ice');
INSERT INTO easy_drinks(drink_name,main,amount1,second,amount2,direction)
VALUES('Hot Gold','Peach Nectar',3,'Orange Juice',6,'strain into cocktail');
INSERT INTO easy_drinks(drink_name,main,second,amount2,direction)
VALUES('Lone Tree','Soda','Cherry Juice',.75,'stir with ice');
INSERT INTO easy_drinks(drink_name,main,second,amount2,direction)
VALUES('Greyhound','Soda','Grapefruit Juice',5,'strain into cocktail');
INSERT INTO easy_drinks(drink_name,main,amount1,second,amount2,direction)
VALUES('Indian Summer','Apple Juice',2,'Hot Tea',6,'stir with ice');
INSERT INTO easy_drinks(drink_name,main,second,amount2,direction)
VALUES('Bull Frog','Iced Tea','Lemonade',5,'strain into cocktail');
INSERT INTO easy_drinks(drink_name,main,amount1,second,amount2,direction)
VALUES('Soda and It','Soda',2,'Grape Juice',1,'stir with ice');
SELECT*FROM easy_drinks;
SHOW CREATE TABLE easy_drinks;
SELECT*FROM easy_drinks WHERE main='sprite';
SELECT*FROM easy_drinks WHERE main='soda';
SELECT*FROM easy_drinks WHERE amount2=6;
SELECT*FROM easy_drinks WHERE second='orange juice';
SELECT*FROM easy_drinks WHERE amount1<1.5;
SELECT*FROM easy_drinks WHERE amount1=1.5;
SELECT*FROM easy_drinks WHERE amount1>1.5 AND amount2>0.75;
SELECT*FROM easy_drinks WHERE amount2<'1';
SELECT*FROM easy_drinks WHERE main>'soda';
SELECT drink_name, main, second FROM easy_drinks WHERE main='soda';
SELECT drink_name, main, second FROM easy_drinks WHERE main IN ('soda');
SELECT drink_name, main, second FROM easy_drinks WHERE main='soda' AND second='blueberry juice';
SELECT drink_name, main, second FROM easy_drinks WHERE main='soda' OR second='blueberry juice';
SELECT drink_name FROM easy_drinks WHERE main='cherry juice';
SELECT drink_name, main, second FROM easy_drinks WHERE drink_name LIKE '%zz';
SELECT drink_name, main, second FROM easy_drinks WHERE drink_name LIKE 'b%';
SELECT drink_name, main, second FROM easy_drinks WHERE drink_name LIKE 'b%';
SELECT drink_name FROM easy_drinks WHERE drink_name LIKE '_re%';
SELECT drink_name FROM easy_drinks WHERE drink_name LIKE '___ck%';
SELECT drink_name FROM easy_drinks WHERE amount1 BETWEEN 2 AND 3.0;
SELECT drink_name FROM easy_drinks WHERE amount1>2.0 AND amount1<3.00;
SELECT drink_name,main,amount1 FROM easy_drinks WHERE amount1 IN (1.50 , 2.50);
SELECT drink_name,main,amount1 FROM easy_drinks WHERE amount1 NOT IN (1.50 , 2.50);
DELETE FROM easy_drinks WHERE drink_name='Soda and It';
DELETE FROM easy_drinks WHERE main='soda';
DELETE FROM easy_drinks WHERE amount1=1.50 AND amount2=1.00;
SELECT*FROM easy_drinks WHERE main='soda';
INSERT INTO easy_drinks VALUES(
'Grey Hound','Soda',1.50,'Grapefruit Juice',5.00,'stir with ice,strain with cocktail');
UPDATE easy_drinks SET main='Water' WHERE main='Tonic Water';
