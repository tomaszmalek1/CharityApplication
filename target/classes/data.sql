INSERT INTO categories (name) VALUES ('ubrania, które nadają się do ponownego użycia');
INSERT INTO categories (name) VALUES ('ubrania, do wyrzucenia');
INSERT INTO categories (name) VALUES ('Zabawki');
INSERT INTO categories (name) VALUES ('Książki');
INSERT INTO categories (name) VALUES ('inne');

INSERT INTO charity_donation.institutions (description, name) VALUES ('Pomoc dzieciom z ubogich rodzin', 'Dbam o Zdrowie');
INSERT INTO charity_donation.institutions (description, name) VALUES ('Pomoc wybudzaniu dzieci ze śpiączki', 'A kogo');
INSERT INTO charity_donation.institutions (description, name) VALUES ('Pomoc osobom znajdującym się w trudnej sytuacji życiowej', 'Dla dzieci');
INSERT INTO charity_donation.institutions (description, name) VALUES ('Pomoc dla osób nie posiadających miejsca zamieszkania','Bez domu');

INSERT INTO charity_donation.role (name) VALUES ('ROLE_USER');
INSERT INTO charity_donation.role (name) VALUES ('ROLE_ADMIN');