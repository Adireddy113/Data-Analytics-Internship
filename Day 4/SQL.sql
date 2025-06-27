use practise;
CREATE TABLE books (
	book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(225),
    author VARCHAR(50),
    genre VARCHAR(50),
    price FLOAT,
    published_year YEAR,
    m_stock INT
);
INSERT INTO books (title, author, genre, price, published_year, m_stock) VALUES
('atomic habita','adi','life','100','2004','5'),
('psychology','asmi','mind','200','2005','10'),
('medicine','riyansh','health','150','2001','50');
select title from books where title='psychology';
select * from books where published_year = 2004;
select book_id,price - m_stock as profit from books;
select book_id,price*2 as profit from books;
delete from books where book_id=4;
select * from books;

 select * from books order by published_year desc; 
 select * from books limit 1;
 select count(*) as total_rows from books;
 select author,sum(price) from books group by author having sum(price)>=200;
 
CREATE TABLE orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO orders (book_id, quantity, order_date) VALUES
(1, 2, '2024-05-01'),
(2, 1, '2024-06-01'),
(1, 3, '2024-06-15');
SELECT b.title, o.quantity, o.order_date
FROM orders o
JOIN books b ON o.book_id = b.book_id;

 