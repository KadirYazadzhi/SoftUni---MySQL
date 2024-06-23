ALTER TABLE products
ADD CONSTRAINT fk_category
FOREIGN KEY (category_id)
REFERENCES categories(id);