CREATE TABLE "Invoice" (
  "invoice_id" SERIAL PRIMARY KEY,
  "price" NUMERIC(7,2),
  "salesperson_id" INTEGER,
  "customer_id" INTEGER,
  "car_id" INTEGER,
  "dealer_id" INTEGER,
  "service_dept_id" INTEGER,
	FOREIGN KEY ("salesperson_id") REFERENCES "SalesPerson"("salesperson_id"),
  	FOREIGN KEY ("customer_id") REFERENCES "Customer"("customer_id"),
  	FOREIGN KEY ("car_id") REFERENCES "Car"("car_id"),
  	FOREIGN KEY ("dealer_id") REFERENCES "Dealer"("dealer_id"),
  	FOREIGN KEY ("service_dept_id") REFERENCES "ServiceDept"("service_dept_id")
);

CREATE TABLE "ServiceDept" (
  "service_dept_id" SERIAL PRIMARY KEY,
  "phone" varchar,
  "description" VARCHAR,
  "mechanic_id" INTEGER,
  	FOREIGN KEY ("mechanic_id") REFERENCES "Mechanic"("mechanic_id")
);

CREATE TABLE "Car" (
  "car_id" SERIAL PRIMARY KEY,
  "year" INTEGER,
  "make" VARCHAR,
  "model" VARCHAR,
  "color" VARCHAR
);

CREATE TABLE "Dealer" (
  "dealer_id" SERIAL PRIMARY KEY,
  "name" VARCHAR,
  "address" VARCHAR,
  "phone" VARCHAR
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "phone" VARCHAR,
  "email" VARCHAR
);

CREATE TABLE "SalesPerson" (
  "salesperson_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "phone" VARCHAR,
  "email" VARCHAR
);

CREATE TABLE "Mechanic" (
  "mechanic_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR,
  "service_dept_id" INTEGER
  );