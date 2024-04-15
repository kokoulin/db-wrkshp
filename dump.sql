create table if not exists public.users
(
    id serial
        constraint users_pk primary key,
    name
       varchar(64) not null
);

create table if not exists public.subscriptions
(
    from_user_id integer not null
        constraint subscriptions_from_users_id_fk
            references users,
    to_user_id   integer not null
        constraint subscriptions_to_users_id_fk
            references users
);

create table if not exists public.posts
(
    id
        serial,
    author_id integer not null
        constraint posts_author_id_fk
            references users,
    content
        text,
    views
        integer default 0,
    likes
        integer default 0,
    created_at
        timestamp default now()
);

INSERT INTO public.users (id,name)
VALUES (DEFAULT, 'john'),
       (DEFAULT, 'Abraham'),
       (DEFAULT, 'Addison'),
       (DEFAULT, 'Adrian'),
       (DEFAULT, 'Albert'),
       (DEFAULT, 'Alec'),
       (DEFAULT, 'Alfred'),
       (DEFAULT, 'Alvin'),
       (DEFAULT, 'Andrew'),
       (DEFAULT, 'Andy'),
       (DEFAULT, 'Archibald'),
       (DEFAULT, 'Archie'),
       (DEFAULT, 'Arlo'),
       (DEFAULT, 'Arthur'),
       (DEFAULT, 'Arthur'),
       (DEFAULT, 'Austen'),
       (DEFAULT, 'Barnabe'),
       (DEFAULT, 'Bartholomew'),
       (DEFAULT, 'Bertram'),
       (DEFAULT, 'Bramwell'),
       (DEFAULT, 'Byam'),
       (DEFAULT, 'Cardew'),
       (DEFAULT, 'Chad'),
       (DEFAULT, 'Chance'),
       (DEFAULT, 'Colin'),
       (DEFAULT, 'Coloman'),
       (DEFAULT, 'Curtis'),
       (DEFAULT, 'Cuthbert'),
       (DEFAULT, 'Daniel'),
       (DEFAULT, 'Darryl'),
       (DEFAULT, 'David'),
       (DEFAULT, 'Dickon'),
       (DEFAULT, 'Donald'),
       (DEFAULT, 'Dougie'),
       (DEFAULT, 'Douglas'),
       (DEFAULT, 'Earl'),
       (DEFAULT, 'Ebenezer'),
       (DEFAULT, 'Edgar'),
       (DEFAULT, 'Edmund'),
       (DEFAULT, 'Edward'),
       (DEFAULT, 'Edwin'),
       (DEFAULT, 'Elliot'),
       (DEFAULT, 'Emil'),
       (DEFAULT, 'Floyd'),
       (DEFAULT, 'Franklin'),
       (DEFAULT, 'Frederick'),
       (DEFAULT, 'Gabriel'),
       (DEFAULT, 'Galton'),
       (DEFAULT, 'Gareth'),
       (DEFAULT, 'George'),
       (DEFAULT, 'Gerard'),
       (DEFAULT, 'Gilbert'),
       (DEFAULT, 'Gorden'),
       (DEFAULT, 'Gordon'),
       (DEFAULT, 'Graham'),
       (DEFAULT, 'Grant'),
       (DEFAULT, 'Henry'),
       (DEFAULT, 'Hervey'),
       (DEFAULT, 'Hudson'),
       (DEFAULT, 'Hugh'),
       (DEFAULT, 'Ian'),
       (DEFAULT, 'Jack'),
       (DEFAULT, 'Jaime'),
       (DEFAULT, 'James'),
       (DEFAULT, 'Jason'),
       (DEFAULT, 'Jeffrey'),
       (DEFAULT, 'Joey'),
       (DEFAULT, 'John'),
       (DEFAULT, 'Jolyon'),
       (DEFAULT, 'Jonas'),
       (DEFAULT, 'Joseph'),
       (DEFAULT, 'Joshua'),
       (DEFAULT, 'Julian'),
       (DEFAULT, 'Justin'),
       (DEFAULT, 'Kurt'),
       (DEFAULT, 'Lanny'),
       (DEFAULT, 'Larry'),
       (DEFAULT, 'Laurence'),
       (DEFAULT, 'Lawton'),
       (DEFAULT, 'Lester'),
       (DEFAULT, 'Malcolm'),
       (DEFAULT, 'Marcus'),
       (DEFAULT, 'Mark'),
       (DEFAULT, 'Marshall'),
       (DEFAULT, 'Martin'),
       (DEFAULT, 'Marvin'),
       (DEFAULT, 'Matt'),
       (DEFAULT, 'Maximilian'),
       (DEFAULT, 'Michael'),
       (DEFAULT, 'Miles'),
       (DEFAULT, 'Murray'),
       (DEFAULT, 'Myron'),
       (DEFAULT, 'Nate'),
       (DEFAULT, 'Nathan'),
       (DEFAULT, 'Neil'),
       (DEFAULT, 'Nicholas'),
       (DEFAULT, 'Nicolas'),
       (DEFAULT, 'Norman'),
       (DEFAULT, 'Oliver'),
       (DEFAULT, 'Oscar'),
       (DEFAULT, 'Osric'),
       (DEFAULT, 'Owen'),
       (DEFAULT, 'Patrick'),
       (DEFAULT, 'Paul'),
       (DEFAULT, 'Peleg'),
       (DEFAULT, 'Philip'),
       (DEFAULT, 'Phillipps'),
       (DEFAULT, 'Raymond'),
       (DEFAULT, 'Reginald'),
       (DEFAULT, 'Rhys'),
       (DEFAULT, 'Richard'),
       (DEFAULT, 'Robert'),
       (DEFAULT, 'Roderick'),
       (DEFAULT, 'Rodger'),
       (DEFAULT, 'Roger'),
       (DEFAULT, 'Ronald'),
       (DEFAULT, 'Rowland'),
       (DEFAULT, 'Rufus'),
       (DEFAULT, 'Russell'),
       (DEFAULT, 'Sebastian'),
       (DEFAULT, 'Shahaf'),
       (DEFAULT, 'Simon'),
       (DEFAULT, 'Stephen'),
       (DEFAULT, 'Swaine'),
       (DEFAULT, 'Thomas'),
       (DEFAULT, 'Tobias'),
       (DEFAULT, 'Travis'),
       (DEFAULT, 'Victor'),
       (DEFAULT, 'Vincent'),
       (DEFAULT, 'Vincent'),
       (DEFAULT, 'Vivian'),
       (DEFAULT, 'Wayne'),
       (DEFAULT, 'Wilfred'),
       (DEFAULT, 'William'),
       (DEFAULT, 'Winston'),
       (DEFAULT, 'Zadoc');

INSERT INTO public.subscriptions (from_user_id, to_user_id)
VALUES (1, 2), (1, 4),(1, 15), (1, 25),(1, 29), (1, 7), (1, 31), (1, 45),
       (2, 34), (2, 46), (2, 17), (2, 1), (2, 89), (81, 46), (77, 33),
       (86, 4), (48, 32), (29, 52),(62, 12), (91, 84), (16, 1), (74, 100),
       (64, 6), (95, 85), (98, 2), (59, 10), (25, 95), (66, 17), (38, 6),
       (60, 100), (95, 68), (88, 100), (87, 22), (80, 33), (71, 65),
       (84, 44), (1, 45), (57, 54), (50, 94), (17, 89), (87, 59), (99, 26),
       (79, 76), (56, 97), (63, 45), (74, 23), (39, 7), (99, 18), (54, 6),
       (90, 28), (4, 46), (37, 47), (92, 6), (27, 4), (1, 5), (14, 26),
       (79, 34), (32, 11), (41, 17), (85, 13), (11, 51), (26, 44), (49, 87),
       (87, 5), (84, 91), (46, 26),(32, 89), (50, 9), (37, 27), (64, 90),
       (42, 8), (46, 23), (89, 86), (27, 99), (27, 36), (83, 78), (90, 45),
       (25, 18), (78, 83), (80, 29), (44, 57), (96, 77), (7, 85), (22, 53),
       (42, 73), (36, 51),(7, 47), (58, 51), (67, 67), (76, 76), (20, 13),
       (16, 90), (60, 92), (100, 92), (46, 52), (51, 48), (5, 40),
        (57, 81), (36, 15), (10, 89), (87, 77), (16, 56), (55, 93), (93, 37),
        (1, 32), (59, 96), (76, 37), (43, 81), (33, 57), (25, 93), (35, 36),
        (26, 44), (65, 21), (88, 60), (31, 67), (65, 28), (84, 38), (27, 85),
        (88, 12), (96, 22), (7, 26), (37, 95), (42, 56), (24, 52), (70, 50),
        (32, 66), (65, 83), (25, 54), (37, 92), (62, 88), (29, 35), (53, 57),
        (40, 37), (95, 57), (55, 4), (68, 47), (83, 46), (69, 44), (22, 13),
        (34, 57), (73, 52), (41, 85), (54, 24), (18, 39), (22, 32), (97, 8),
        (47, 7), (69, 41), (48, 44), (64, 48), (4, 6), (96, 60), (19, 16),
        (57, 11), (64, 70), (84, 82), (21, 49), (58, 43), (46, 80), (80, 32),
        (79, 8), (80, 5), (36, 47), (77, 42), (61, 9), (84, 48), (86, 66), (3, 61),
        (31, 98), (17, 97), (98, 18), (59, 7), (84, 43), (14, 30), (3, 19), (69, 50),
        (47, 10), (97, 1), (75, 60), (85, 15), (2, 93), (41, 97), (92, 82), (10, 92),
        (95, 46), (19, 17), (8, 62), (63, 14), (66, 82), (83, 23), (19, 4), (57, 55),
        (79, 24), (48, 40), (18, 17), (75, 98), (85, 70), (72, 48), (22, 78), (60, 32),
        (32, 28), (93, 58), (74, 60), (29, 16), (99, 24), (81, 90), (40, 73), (34, 27),
        (91, 58), (19, 13), (62, 6), (28, 86), (97, 60), (87, 43), (32, 100), (96, 1),
        (5, 67), (34, 34), (99, 18), (4, 96), (8, 37), (36, 70), (18, 61), (61, 76),
        (57, 20), (36, 55), (100, 47), (6, 98), (30, 1), (48, 7), (88, 99), (50, 48),
        (90, 16), (62, 68), (23, 45), (13, 7), (58, 46), (83, 55), (35, 70), (15, 21),
        (23, 98), (6, 97), (47, 17), (45, 100), (91, 96), (23, 20), (15, 40), (24, 56),
        (86, 36), (61, 19);

INSERT INTO public.posts (id, author_id, content)
VALUES
    (DEFAULT, 1, 'Lorem ipsum'),
    (DEFAULT, 22, 'Lorem ipsum'),
    (DEFAULT, 45, 'Lorem ipsum'),
    (DEFAULT, 18, 'Lorem ipsum'),
    (DEFAULT, 34, 'Lorem ipsum'),
    (DEFAULT, 56, 'Lorem ipsum'),
    (DEFAULT, 40, 'Lorem ipsum'),
    (DEFAULT, 58, 'Lorem ipsum'),
    (DEFAULT, 62, 'Lorem ipsum'),
    (DEFAULT, 66, 'Lorem ipsum'),
    (DEFAULT, 71, 'Lorem ipsum'),
    (DEFAULT, 86, 'Lorem ipsum'),
    (DEFAULT, 93, 'Lorem ipsum'),
    (DEFAULT, 101, 'Lorem ipsum');







































