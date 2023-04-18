use sam;
CREATE TABLE shop(shop_id int,shop_name varchar(50),shop_items varchar(50),item_price int,CHECK (item_price>=2000));
CREATE TABLE country(country_code varchar(50),country_name varchar(50),city varchar(50) default 'Sandnes')