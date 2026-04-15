CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    working_hours INT,
    perhour_salary NUMERIC,
    total_payable_amount NUMERIC
);

-- defining trigger function
CREATE OR REPLACE FUNCTION CALCULATE_AMOUNT() 
RETURNS TRIGGER
AS
$$
BEGIN 
	NEW.total_payable_amount = NEW.perhour_salary * NEW.working_hours;
	IF NEW.total_payable_amount > 25000 THEN
		RAISE EXCEPTION 'AMOUNT IS GREATER THAN 25000'; 
	END IF;
	
	RETURN NEW;
END;
$$ LANGUAGE PLPGSQL;


CREATE OR REPLACE TRIGGER CAL_PAYABLE_AMOUNT
BEFORE INSERT
ON employee 
FOR EACH ROW
EXECUTE FUNCTION CALCULATE_AMOUNT();

-- payable amount less than 25000 
DO 
$$
BEGIN 
	INSERT INTO EMPLOYEE(EMP_ID, EMP_NAME, WORKING_HOURS, perhour_salary) VALUES
	(1, 'Akash', 10, 250);

	EXCEPTION 
	WHEN OTHERS THEN 
	RAISE NOTICE '%', SQLERRM;
END;
$$


SELECT * FROM EMPLOYEE 

-- payable amount more than 25000 
DO 
$$
BEGIN 
	INSERT INTO EMPLOYEE(EMP_ID, EMP_NAME, WORKING_HOURS, perhour_salary) VALUES
	(2, 'Akash', 10, 25000);

	EXCEPTION 
	WHEN OTHERS THEN 
	RAISE NOTICE '%', SQLERRM;
END;
$$
