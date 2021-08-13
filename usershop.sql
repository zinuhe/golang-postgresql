--
-- PostgreSQL port of the MySQL "usershop" database.
--

BEGIN;

-- SET client_encoding = 'LATIN1';

CREATE TABLE users (
                        id integer NOT NULL,
                        firstname text NOT NULL,
                        lastname text NOT NULL,
                        age integer NOT NULL
);


CREATE TABLE products (
                         id integer NOT NULL,
                         name text NOT NULL,
                         quantity integer NOT NULL
);


CREATE TABLE wishlists (
                         idUser integer NOT NULL,
                         idProduct integer NOT NULL,
                         quantity integer NOT NULL
);


COPY users (id, firstname, lastname, age) FROM stdin;
1	Teresa	Rayford	25
2	Tomy	Freeman	30
3	Hope	Chan	35
4	Maryjane	Hummel	40
5	Gary	Coyle	45
\.


ALTER TABLE ONLY users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);

ALTER TABLE ONLY products
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);

ALTER TABLE ONLY wishlists
    ADD CONSTRAINT wishlist_pkey PRIMARY KEY (idUser, idProduct);

COMMIT;
