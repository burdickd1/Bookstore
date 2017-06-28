SET SQL_SAFE_UPDATES=0;
DELETE FROM `book_authors`
WHERE book_book_id=1 OR authors_author_id=1;
DELETE FROM `book_authors`
WHERE book_book_id=2 OR authors_author_id=2;
DELETE FROM `book_authors`
WHERE book_book_id=3 OR authors_author_id=3;
DELETE FROM `book_authors`
WHERE book_book_id=4 OR authors_author_id=4;
DELETE FROM `book_authors`
WHERE book_book_id=5 OR authors_author_id=5;
DELETE FROM `book_authors`
WHERE book_book_id=6 OR authors_author_id=6;
DELETE FROM `book_authors`
WHERE book_book_id=7 OR authors_author_id=7;
DELETE FROM `book_authors`
WHERE book_book_id=8 OR authors_author_id=8;
DELETE FROM `book_authors`
WHERE book_book_id=9 OR authors_author_id=9;
DELETE FROM `book_authors`
WHERE book_book_id=10 OR authors_author_id=10;
DELETE FROM `book_authors`
WHERE book_book_id=11 OR authors_author_id=11;
DELETE FROM `book_authors`
WHERE book_book_id=12 OR authors_author_id=12;
DELETE FROM `book_authors`
WHERE book_book_id=13 OR authors_author_id=13;
DELETE FROM `book_authors`
WHERE book_book_id=14 OR authors_author_id=14;
DELETE FROM `book_authors`
WHERE book_book_id=15 OR authors_author_id=15;


INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (1,1);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (2,2);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (3,3);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (4,4);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (5,5);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (6,6);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (7,7);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (8,8);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (9,9);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (10,10);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (11,11);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (12,12);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (13,13);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (14,14);
INSERT INTO `book_authors` (book_book_id, authors_author_id)
VALUES (15,15);

UPDATE author
SET author.author_name='Brain D. Hahn'
WHERE author.author_id=1;
UPDATE author
SET author.author_name='George R.R. Martin'
WHERE author.author_id=2;
UPDATE author
SET author.author_name='Johannes Paul'
WHERE author.author_id=3;
UPDATE author
SET author.author_name='Neil Degrasse Tyson'
WHERE author.author_id=4;
UPDATE author
SET author.author_name='Elin Hilderbrand'
WHERE author.author_id=5;
UPDATE author
SET author.author_name='Kate DiCamillo'
WHERE author.author_id=6;
UPDATE author
SET author.author_name='Tom Clancy'
WHERE author.author_id=7;
UPDATE author
SET author.author_name='J.D. Salinger'
WHERE author.author_id=8;
UPDATE author
SET author.author_name='Stephen Chbosky'
WHERE author.author_id=9;
UPDATE author
SET author.author_name='Page Smith'
WHERE author.author_id=10;
UPDATE author
SET author.author_name='Chuck Palahniuk'
WHERE author.author_id=11;
UPDATE author
SET author.author_name='J.R.R. Tolkien'
WHERE author.author_id=12;
UPDATE author
SET author.author_name='Gail Damerow'
WHERE author.author_id=13;
UPDATE author
SET author.author_name='John Grisham'
WHERE author.author_id=14;
UPDATE author
SET author.author_name='George R.R. Martin'
WHERE author.author_id=15;

UPDATE book
SET book.book_image = 'images/book_covers/1.jpg', book.description='This text serves as an introduction to the programming language Java for scientists and engineers, as well as experienced programmers wishing to learn Java as an additional language.', book.title='Essential Java For Scientists and Engineers'
WHERE book.book_id=1;
UPDATE book
SET book.book_image = 'images/book_covers/2.jpg', book.description='A Dance with Dragons is the fifth of seven planned novels in the epic fantasy series A Song of Ice and Fire by American author George R. R. Martin.', book.title='A Dance With Dragons'
WHERE book.book_id=2;
UPDATE book
SET book.book_image = 'images/book_covers/3.jpg', book.description='When fresh eggs are needed for the kitchen, what could be better than going out to the back yard and collecting them, courtesy of home-bred chickens?', book.title='Keeping Chickens as Pets'
WHERE book.book_id=3;
UPDATE book
SET book.book_image = 'images/book_covers/4.jpg', book.description='Astrophysics for People in a Hurry is a 2017 popular science book by Neil deGrasse Tyson, centering around a number of basic questions about the universe.', book.title='Astrophysics for People in a Hurry'
WHERE book.book_id=4;
UPDATE book
SET book.book_image = 'images/book_covers/5.jpg', book.description='Elin Hilderbrand has a twin brother who is not a bestselling novelist. She does her best writing on the beaches of Nantucket as well as on the charming streets of...', book.title='The Identicals'
WHERE book.book_id=5;
UPDATE book
SET book.book_image = 'images/book_covers/6.jpg', book.description='She longed for adventure. So she left her home and ventured out into the wide world.The pleasures and perils she met proved plentiful: marauding pirates on the majestic seas...', book.title='Louise, The Adventures of a Chicken'
WHERE book.book_id=6;
UPDATE book
SET book.book_image = 'images/book_covers/7.jpg', book.description='Former U.S. Senator Weston Rhodes is a defense contractor with an urgent problem. His company needs someone to look over the books of Dalfan Technologies...', book.title='Point of Contact'
WHERE book.book_id=7;
UPDATE book
SET book.book_image = 'images/book_covers/8.jpg', book.description='A 16-year old American boy relates in his own words the experiences he goes through at school and after, and reveals with unusual candour the workings of his own mind.', book.title='The Catcher in the Rye'
WHERE book.book_id=8;
UPDATE book
SET book.book_image = 'images/book_covers/9.jpg', book.description='This haunting novel about the dilemma of passivity vs. passion has become a modern classic.', book.title='The Perks of Being a Wallflower'
WHERE book.book_id=9;
UPDATE book
SET book.book_image = 'images/book_covers/10.jpg', book.description='Entertaining and insightful, The Chicken Book will change the way we regard this too often underappreciated animal.', book.title='The Chicken Book'
WHERE book.book_id=10;
UPDATE book
SET book.book_image = 'images/book_covers/11.jpg', book.description='The first rule about fight club is you don\'t talk about fight club. In his debut novel, Chuck Palahniuk showed himself to be his generation\'s most visionary satirist.', book.title='Fight Club'
WHERE book.book_id=11;
UPDATE book
SET book.book_image = 'images/book_covers/12.jpg', book.description='Bilbo Baggins, a respectable, well-to-do hobbit, lives comfortably in his hobbit-hole until the day the wandering wizard Gandalf chooses him...', book.title='The Hobbit'
WHERE book.book_id=12;
UPDATE book
SET book.book_image = 'images/book_covers/13.jpg', book.description='\"The Chicken Encyclopedia\" is the go-to guide for chicken owners and enthusiasts of all levels.', book.title='The Chicken Encyclopedia'
WHERE book.book_id=13;
UPDATE book
SET book.book_image = 'images/book_covers/14.jpg', book.description='Their loot is priceless, but Princeton has insured it for twenty-five million dollars. Bruce Cable owns a popular bookstore in the sleepy resort town of Santa Rosa...', book.title='Camino Island'
WHERE book.book_id=14;
UPDATE book
SET book.book_image = 'images/book_covers/15.jpg', book.description='The three surviving contenders for the throne of the Seven Kingdoms continue to struggle among themselves, Robb defends his kingdom from the Greyjoys, Jon confronts...', book.title='A Storm of Swords'
WHERE book.book_id=15;