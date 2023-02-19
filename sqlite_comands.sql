CREATE TABLE books(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(255) NOT NULL,
    release_ INT,
    author VARCHAR(255) NOT NULL
);

INSERT INTO books(title, release_, author)
    VALUES ('Евгений Онегин', 1833, 'Пушкин А.С.'),
           ('Мы', 1988, 'Замятин Е.И.'),
           ('Тарас Бульба', NULL, 'Н.В. Гоголь'),
           ('Гарри Поттер и философский камень', 1997, 'Дж. К. Роулинг'),
           ('Капитанская дочка', Null, 'Пушкин А.С.')

