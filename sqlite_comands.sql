CREATE TABLE genres(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    genre VARCHAR(255) NOT NULL
);

INSERT INTO genres(genre)
    VALUES ('Роман'),
           ('Повесть'),
           ('Фэнтезийная литература');


CREATE TABLE books(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(255) NOT NULL,
    genre_id INTEGER,
    release_ INT,
    author VARCHAR(255) NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);

INSERT INTO books(title, release_, author ,genre_id)
    VALUES ('Евгений Онегин', 1833, 'Пушкин А.С.', 1),
           ('Мы', 1988, 'Замятин Е.И.', 1),
           ('Тарас Бульба', NULL, 'Н.В. Гоголь', 2),
           ('Гарри Поттер и философский камень', 1997, 'Дж. К. Роулинг', 3),
           ('Капитанская дочка', Null, 'Пушкин А.С.', NULL);

INSERT INTO genres(genre)
    VALUES ('лирика');

DELETE FROM genres
    WHERE genre='лирика'; --Удаление произошло, так как ни одна запись из таблицы books не ссылается на новый жанр

DELETE FROM genres
    WHERE  genre='Роман'; --Призойдет ошибка так как есть ссылки, нужно каскадное удаление, или редактирование табиц с добавлением условия каскадного удаления
-- FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE CASCADE

