CREATE OR REPLACE PROCEDURE new_customer(first_name varchar, last_name varchar, phone varchar, email varchar)
LANGUAGE plpgsql
AS $$ 
BEGIN 
    INSERT INTO "Customer"(first_name, last_name, phone, email)
    VALUES (first_name, last_name, phone::integer, email);
END;
$$;

CALL new_customer('Jim', 'Bu', '234567890', 'und@iumesbond.sup');
CALL new_customer('Jamesm', 'Bond', '234567890', 'bond@jamesbond.sup');


SELECT *
FROM "Customer" c 


CREATE OR REPLACE PROCEDURE add_car(year integer, make varchar, model varchar, color varchar)
LANGUAGE plpgsql
AS $$ 
BEGIN 
    INSERT INTO "Car"("year", make, model, color)
    VALUES (year, make, model, color);
END;
$$;

CALL add_car ('2023', 'Tesla', 'Roadster','Purple' );
CALL add_car(2023, 'Lucid', 'Uranos', 'red');



CREATE OR REPLACE PROCEDURE add_dealer("name" varchar, address varchar, phone varchar)
LANGUAGE plpgsql
AS $$ 
BEGIN 
    INSERT INTO "Dealer" ("name", "address", "phone")
    VALUES ("name", "address", "phone");
END;
$$;


CALL add_dealer('Macro', '123 st', '12564578');
CALL add_dealer('Micro', '321 st', '78945612');


CREATE OR REPLACE PROCEDURE add_salesperson_id (first_name varchar, last_name varchar, phone varchar, email varchar)
LANGUAGE plpgsql
AS $$ 
BEGIN 
    INSERT INTO "SalesPerson" ("first_name", "last_name", phone, "email")
    VALUES (first_name, last_name, phone, email);
END;
$$;

CALL add_salesperson_id ('Jose', 'Martinez', '1587456', 'callme@nottheother.com');
CALL add_salesperson_id ('Santa', 'Clous', '1257852', 'jojojo@northpole.universe');


CREATE OR REPLACE PROCEDURE add_mechanic_id(first_name varchar, service_dept_id int)
LANGUAGE plpgsql
AS $$ 
BEGIN 
    INSERT INTO "Mechanic" (first_name, service_dept_id)
    VALUES (first_name, service_dept_id);
END;
$$;

CALL add_mechanic_id('Luis', 1);
CALL add_mechanic_id('Pedro', 2);

CREATE OR REPLACE PROCEDURE add_service_dept_id(phone varchar, description varchar, mechanic_id integer)
LANGUAGE plpgsql
AS $$ 
BEGIN 
    INSERT INTO "ServiceDept" (phone, description, mechanic_id)
    VALUES (phone, description, mechanic_id);
END;
$$;

CALL add_service_dept_id('852369854', 'new and used', 1);
CALL add_service_dept_id('148526935', 'ONLY new parts', 2);

SELECT *
FROM "ServiceDept" sd 


CREATE OR REPLACE PROCEDURE add_invoice(price NUMERIC(7,2), salesperson_id integer, customer_id int, car_id int, dealer_id int, service_dept_id int)
LANGUAGE plpgsql
AS $$ 
BEGIN 
    INSERT INTO "Invoice" (price, salesperson_id, customer_id, car_id, dealer_id, service_dept_id)
    VALUES (price, salesperson_id, customer_id, car_id, dealer_id, service_dept_id);
END;
$$;

CALL add_invoice('78000', 1, 1, 1, 1, 5 );
CALL add_invoice('90000', 2, 2, 2, 1, 6);

