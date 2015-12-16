
drop function wesleySafadao;
DELIMITER //
create function wesleySafadao(dday int, mmonth int, yyear int) returns varchar(60)
DETERMINISTIC
BEGIN
DECLARE mySum, safadeza, anjo DOUBLE;
set mySum = 0;
set safadeza = 0; 
set anjo = 0;
 WHILE mmonth > 0 DO
    SET mySum = mySum + mmonth;
    SET mmonth = mmonth -1;
END WHILE;

set safadeza = mySum + (yyear /100) * (50 - dday);
set anjo = 100 - safadeza;
return concat("Você é ", round(safadeza, 2), "% safado e ", round(anjo, 2), "% anjo");
END
 //
 
select wesleySafadao(5, 9, 91);
