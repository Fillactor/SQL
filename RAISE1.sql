CREATE TABLE t(id integer);
CREATE TABLE
=> INSERT INTO t(id) VALUES (1);
INSERT 0 1
Когда нет ошибок, все операторы блока выполняются обычным образом:

=> DO $$
DECLARE
    n integer;
BEGIN
    SELECT id INTO STRICT n FROM t;
    RAISE NOTICE 'Оператор SELECT INTO выполнился, n = %', n;
END
$$;