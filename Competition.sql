CREATE TABLE competition (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    start_date DATE,
    end_date DATE,
    year INT,
    location VARCHAR(255));

 INSERT INTO competition (id, name, start_date, end_date, year,
 location) VALUES

 (7093747, 'Jogos Olímpicos do Rio de Janeiro', '2016-08-12',
 '2016-08-21', 2016, 'Estádio Olímpico, Rio de Janeiro (BRA)'),
 (7093740, 'Campeonato Mundial de Atletismo de Londres',
 '2017-08-04', '2017-08-13', 2017, 'Estádio Olímpico, Londres (GBR)'),
 (7125365, 'Campeonato Mundial de Atletismo de Doha','2019-09-27', '2019-10-06', 2019, 'Estádio Internacional Khalifa,
 Doha (QAT)');


 CREATE TABLE discipline (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    is_men BOOLEAN,
    distance INT);

INSERT INTO discipline (id, name, is_men, distance) VALUES
 (1, '100m Masculino', TRUE, 100),
 (2, '200m Masculino', TRUE, 200),
 (3, '400m Masculino', TRUE, 400),
 (4, '800m Masculino', TRUE, 800),
 (5, '1500m Masculino', TRUE, 1500);

CREATE TABLE event (
    id INT PRIMARY KEY,
    competition_id INT,
    discipline_id INT,
    final_date DATE,
    wind FLOAT,
    FOREIGN KEY (competition_id) REFERENCES competition(id),
    FOREIGN KEY (discipline_id) REFERENCES discipline(id));

 INSERT INTO event (id, competition_id, discipline_id, final_date,
 wind) VALUES
 (1, 7093747, 1, '2016-08-14', 0.2),
 (2, 7093747, 2, '2016-08-18',-0.5),
 (3, 7093747, 3, '2016-08-14', 0),
 (4, 7093747, 4, '2016-08-15', 0),
 (5, 7093747, 5, '2016-08-20', 0);
 
   CREATE TABLE nationality (
    id INT PRIMARY KEY,
    country_name VARCHAR(255),
    country_abbr VARCHAR(3));

INSERT INTO nationality (id, country_name, country_abbr) VALUES
(1, 'Jamaica', 'JAM'),
(2, 'Estados Unidos', 'USA'),
 (3, 'Canadá', 'CAN'),
 (4, 'África do Sul', 'RSA'),
 (5, 'Costa do Marfim', 'CIV');

 CREATE TABLE athlete (
    id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    nationality_id INT,
    birth_date DATE,
    FOREIGN KEY (nationality_id) REFERENCES nationality(id));

 INSERT INTO athlete (id, first_name, last_name, nationality_id,
 birth_date) VALUES
 (14201847, 'Usain', 'BOLT', 1, '1986-08-21'),
 (14238562, 'Justin', 'GATLIN', 2, '1982-02-10'),
 (14535607, 'André', 'DE GRASSE', 3, '1994-11-10'),
 (14201842, 'Yohan', 'BLAKE', 1, '1989-12-26');

  CREATE TABLE final_result (
 event_id INT,
 athlete_id INT,
 result TIME,
 place INT,
 is_dsq BOOLEAN,
 is_dnf BOOLEAN,
 is_dns BOOLEAN,
 PRIMARY KEY (event_id, athlete_id),
 FOREIGN KEY (event_id) REFERENCES event(id),
 FOREIGN KEY (athlete_id) REFERENCES athlete(id));

  INSERT INTO final_result (event_id, athlete_id, result, place,
 is_dsq, is_dnf, is_dns) VALUES
 (1, 14201847, '00:00:10', 1, FALSE, FALSE, FALSE),
 (1, 14238562, '00:00:10', 2, FALSE, FALSE, FALSE),
 (1, 14535607, '00:00:10', 3, FALSE, FALSE, FALSE),
 (1, 14201842, '00:00:10', 4, FALSE, FALSE, FALSE);

-- Consulta de quantos homens competem
SELECT c.name AS competition_name,
	d.is_men AS is_male_discipline,
    COUNT (e.id) AS event_count
FROM competition c, event e, discipline discipline
WHERE c.id = e.competition_id AND e.discipline_id = d.id
GROUP BY c.name, d.is_men;
