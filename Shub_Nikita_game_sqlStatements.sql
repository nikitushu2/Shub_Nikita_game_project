insert ignore into game (number, name, genre, rating, quantity)
values
(7, 'Star Adventure', 'adventure', '***', 5),
(4, 'Ladybirds', 'strategy', '**', 15),
(1, 'Amnesia 2030', 'brain-teaser',	'**', 20),
(3, 'The Rise and Fall of an Empire 22', 'brain-twister', '*', 25),
(5, 'Future 2525', 'FPS', '*****', 150),
(2, 'U.F.O', 'board game', '*',	10),
(6, 'Jigsaw puzzle', 'platformer', '****', 30);


select * from game;
select genre, number, quantity from game;
select * from game where name = 'Star Adventure';
select * from game where quantity = 13;
select * from game where rating = '**';

update game
set quantity = 7, rating = '***'
where number = 6;

update game
set rating = '****', genre = 'FPS'
where number = 7;

update game
set genre = 'adventure', quantity = 20, name = 'Future 2525'
where number = 2;

update game
set genre = 'FPS', name = 'Star Adventure', quantity = 10
where number = 5;

delete from game where number = 6;
delete from game where number = 3;
delete from game where quantity = 25;
delete from game where quantity = 20 and rating = '**';
delete from game where genre = 'strategy' or quantity = 25 or genre = 'board game';