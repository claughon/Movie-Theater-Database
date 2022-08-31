CREATE TABLE "Customer" (
  "customer_id" Serial,
  "first_name" VARCHAR(40),
  "last_name" VARCHAR(40),
  "email_address" VARCHAR(60),
  "billing_info" VARCHAR(60),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Tickets" (
  "ticket_id" Serial,
  "ticket_cost" Numeric(5,2),
  "customer_id" Integer,
  "movie_id" Integer,
  PRIMARY KEY ("ticket_id"),
  CONSTRAINT "FK_Tickets.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id")
);

CREATE TABLE "Movies" (
  "movie_id" Serial,
  "theater_number" Integer,
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "Concessions" (
  "order_id" Serial,
  "food_id" VARCHAR(40),
  "drink_id" VARCHAR(40),
  PRIMARY KEY ("order_id")
);

CREATE TABLE "Checkout" (
  "cart_id" Serial,
  "order_id" Integer,
  "ticket_id" Integer,
  "customer_id" Integer,
  PRIMARY KEY ("cart_id")
);
