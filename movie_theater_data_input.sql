INSERT INTO "Customer"(
	"customer_id",
	"first_name",
	"last_name",
	"email_address",
	"billing_info"
) VALUES(
	1,
	'Cecilia',
	'Laughon',
	'claughon3@gmail.com',
	'2525 Commerce Way Durham,NC 27701'
);

INSERT INTO "Tickets" (
	"ticket_id",
	"ticket_cost",
	"customer_id",
	"movie_id"
) VALUES (
	1,
	14.00,
	1,
	3
);

INSERT INTO "Movies" (
	"movie_id",
	"theater_number"
) VALUES (
	3,
	8
);

INSERT INTO "Concessions" (
	"order_id",
	"food_id",
	"drink_id"
) VALUES (
	1,
	'Popcorn', 
	'Medium'
);

INSERT INTO "Checkout" (
	"cart_id",
	"order_id",
	"ticket_id",
	"customer_id"
)VALUES (
	1,
	1,
	1,
	1
);