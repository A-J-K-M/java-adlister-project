
TRUNCATE table ads;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE table users;
SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO users(username, email, password) VALUES
('MikuHatsune', 'worldismine@email.com', '$2a$12$Ji/mV8KYcSht5MQyEFC.yOQGyOuXPoU.c8bBBVqS/UQd87/SKwAUK'),
('Yimothy', 'yimothy@yahoo.net', '$2a$12$33kjPr4iufbum3L37BLO6.nkLBqOplFO1AQTYGN7O0KqW4diamYSC');



INSERT INTO ads (user_id, title, description, img_url, gender, price, age) VALUES
(1, 'Dog', 'I dont know what it is', 'https://static.wikia.nocookie.net/warner-bros-entertainment/images/e/e5/Courage_cartoon_network.png','male',1, 20),
(1, 'Cat', 'Dont eat', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/ed/Nyan_cat_250px_frame.PNG/220px-Nyan_cat_250px_frame.PNG', 'unknown', 100, 12),
(1, 'Snake', 'Slipper', 'https://img.freepik.com/premium-photo/giant-predatory-snake-3d-illustrations_533101-1352.jpg?w=200', 'unknown', 60, 69),
(1, 'Dragon','BURNER', 'https://i.natgeofe.com/k/c02b35d2-bfd7-4ed9-aad4-8e25627cd481/komodo-dragon-head-on.jpg', 'unknown', 700, 275),
(1, 'Lion', 'Ralph', 'https://thumbs.dreamstime.com/b/portrait-lion-black-detail-face-lion-hight-quality-portrait-lion-portrait-animal-portrait-lion-black-detail-145612151.jpg" ','male', 790, 22 ),
(1, 'Kraken', 'Veronica', 'https://static.wikia.nocookie.net/powerlisting/images/c/c5/King_Kraken.jpg/revision/latest?cb=20220616094322', 'female', 3000, 45),
(1, 'Loch Ness Monster', 'Nessy', 'https://ichef.bbci.co.uk/news/1024/cpsprodpb/4B11/production/_107971291_nessie.jpg', 'female', 35000, 59),
(1, 'Goblin', 'George', 'https://m.economictimes.com/thumb/msid-96020437,width-1200,height-900,resizemode-4,imgsize-45162/goblin-mode-canva.jpg', 'male', 2000, 26);
