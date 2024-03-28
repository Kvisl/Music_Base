INSERT INTO artists
VALUES
(1,'Metallica'),
(2, 'Madonna'),
(3, 'Eminem'),
(4, 'NOFX');


INSERT INTO genres
VALUES
(1, 'Metal'),
(2, 'Pop'),
(3,'Rap'),
(4, 'Punk');


INSERT INTO albums
VALUES
(1,'The Black Album', 2018),
(2,'Hard Candy',2019),
(3,'Encore', 2020),
(4,'Punk in Drublic',2020);


INSERT INTO tracks
VALUES
(1,'Enter Sandman', '00:05:30', 1),
(2,'Sad but True', '00:05:23', 1),
(3,'Holier Than Thou','00:03:47', 1),
(4,'The Unforgiven','00:06:26', 1),
(5,'Wherever I May Roam', '00:06:43', 1),
(6,'Of Wolf & Man',  '00:04:16', 1),
(7,'Candy Shop', '00:04:16', 2),
(8,'4 Minutes', '00:04:04', 2),
(9,'Give It 2 Me', '00:04:02', 2),
(10,'Evil Deeds', '00:04:20', 3),
(11,'Never Enough', '00:02:40', 3),
(12,'Yellow Brick Road', '00:05:46', 3),
(13,'Like Toy Soldiers', '00:04:57', 3),
(14,'Linoleum', '00:02:10', 4),
(15,'Leave It Alone', '00:02:04', 4),
(16,'Dig', '00:02:16', 4),
(17,'My Heart Is Yearning', '00:02:24, 4');


INSERT INTO compilations
VALUES
(1, 'MetalPop', 2019),
(2, 'PunkRap', 2020 ),
(3, 'RapPop', 2018),
(4, 'MetalPunk', 2020),
(5, 'PopPunk', 2019),
(6, 'MetalRap', 2018);


INSERT INTO albumartists
VALUES
(1,1),
(2,2),
(3,3),
(4,4);


INSERT INTO artistgenres
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(3,2);


INSERT INTO trackcompilations
VALUES
(1,1),
(5,1),
(9,1),
(7,1),
(12,2),
(13,2),
(17,2),
(14,2),
(10,3),
(11,3),
(8,3),
(9,3),
(1,4),
(16,4),
(3,4),
(14,4),
(15,5),
(17,5),
(9,5),
(8,5),
(13,6),
(2,6),
(4,6),
(10,6);
