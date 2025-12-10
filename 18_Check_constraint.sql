USE college;

-- CHECK Constraint used to restrict values allowed in a column.
CREATE TABLE cyber_dept (
    age INT CHECK (age >= 18)
);

INSERT INTO cyber_dept VALUES
(21),
(19),
(19);

SELECT * FROM cyber_dept;
