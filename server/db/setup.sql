DROP TABLE IF EXISTS aniChar;

CREATE TABLE aniChar (
    char_id INT GENERATED ALWAYS AS IDENTITY,
    char_name VARCHAR(500) NOT NULL,
    anime VARCHAR(500),
    age VARCHAR(3) DEFAULT 'tbc',
    gender VARCHAR(10) DEFAULT 'tbc',
    ability VARCHAR(100) DEFAULT 'tbc',
    quote VARCHAR(1000)
);

INSERT INTO aniChar
    (char_name, anime, age, gender, ability, quote)
VALUES
    ('Yuji Itadori', 'Jujustu Kaisen', '15', 'Male', 'Sukuna''s vessel', 'I''m into girls like Jennifier Lawrence' ),
    ('Monkey D. Luffy', 'One piece', '19', 'Male', 'Gomu Gomu no Mi', 'I''m gonna be Pirate King!'),
    ('Naruto Uzumaki', 'Naruto', '17', 'Male', 'Nine-Tails power', 'Dattebayo')