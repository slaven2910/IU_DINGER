--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-11-29 20:28:29

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3324 (class 1262 OID 16443)
-- Name: movies; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE movies WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Germany.1252';


ALTER DATABASE movies OWNER TO postgres;

\connect movies

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16478)
-- Name: moviedata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moviedata (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    genre character varying(128) NOT NULL,
    released date NOT NULL,
    rated character varying(128),
    rating numeric,
    director character varying(128),
    writer character varying(128),
    actors character varying(500),
    plot character varying(1000),
    poster character varying(1000)
);


ALTER TABLE public.moviedata OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16477)
-- Name: moviedata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moviedata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moviedata_id_seq OWNER TO postgres;

--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 215
-- Name: moviedata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moviedata_id_seq OWNED BY public.moviedata.id;


--
-- TOC entry 3175 (class 2604 OID 16481)
-- Name: moviedata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moviedata ALTER COLUMN id SET DEFAULT nextval('public.moviedata_id_seq'::regclass);


--
-- TOC entry 3318 (class 0 OID 16478)
-- Dependencies: 216
-- Data for Name: moviedata; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (1, 'Home Alone', 'Comedy, Family', '1990-11-16', 'PG', 7.7, 'Chris Columbus', 'John Hughes', 'Macaulay Culkin, Joe Pesci, Daniel Stern', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.', 'https://m.media-amazon.com/images/M/MV5BMzFkM2YwOTQtYzk2Mi00N2VlLWE3NTItN2YwNDg1YmY0ZDNmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (2, 'Daddy is Home', 'Comedy, Family', '2015-12-25', 'PG-13', 6.1, 'Sean Anders', 'Brian Burns, Sean Anders, John Morris', 'Will Ferrell, Mark Wahlberg, Linda Cardellini', 'Brad Whitaker is a radio host trying to get his stepchildren to love him and call him Dad. But his plans turn upside down when their biological father, Dusty Mayron, returns.', 'https://m.media-amazon.com/images/M/MV5BMTQ0OTE1MTk4N15BMl5BanBnXkFtZTgwMDM5OTk5NjE@._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (3, 'Top Gun', 'Action, Drama', '1986-05-16', 'PG', 6.9, 'Tony Scott', 'Jim Cash, Jack Epps Jr., Ehud Yonay', 'Tom Cruise, Tim Robbins, Kelly McGillis', 'As students at the United States Navys elite fighter weapons school compete to be best in the class, one daring young pilot learns a few things from a civilian instructor that are not taught in the classroom.', 'https://m.media-amazon.com/images/M/MV5BZjQxYTA3ODItNzgxMy00N2Y2LWJlZGMtMTRlM2JkZjI1ZDhhXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (4, 'The Godfather', 'Crime, Drama', '1972-03-24', 'R', 9.2, 'Francis Ford Coppola', 'Mario Puzo, Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 'The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.', 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (5, 'The Dark Knight', 'Action, Crime, Drama', '2008-07-18', 'PG-13', 9.0, 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan, David S. Goyer', 'Christian Bale, Heath Ledger, Aaron Eckhart', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (6, 'Green Lantern', 'Action, Adventure, Sci-Fi', '2011-06-17', 'PG-13', 5.5, 'Martin Campbell', 'Greg Berlanti, Michael Green, Marc Guggenheim', 'Ryan Reynolds, Blake Lively, Peter Sarsgaard', 'Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.', 'https://m.media-amazon.com/images/M/MV5BZjQ1YTIxNzEtMzcxNC00NTUzLThkZjktMmJlYTcyMjBhMGUyXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (7, 'Pulp Fiction', 'Crime, Drama', '1994-10-14', 'R', 8.9, 'Quentin Tarantino', 'Quentin Tarantino, Roger Avary', 'John Travolta, Uma Thurman, Samuel L. Jackson', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (8, 'Shutter Island', 'Mystery, Thriller', '2010-02-19', 'R', 8.2, 'Martin Scorsese', 'Laeta Kalogridis, Dennis Lehane', 'Leonardo DiCaprio, Emily Mortimer, Mark Ruffalo', 'In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.', 'https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (9, 'Blade', 'Action, Horror, Sci-Fi', '1998-08-21', 'R', 7.1, 'Stephen Norrington', 'David S. Goyer', 'Wesley Snipes, Stephen Dorff, Kris Kristofferson', 'A half-vampire, half-mortal man becomes a protector of the mortal race, while slaying evil vampires.', 'https://m.media-amazon.com/images/M/MV5BOTk2NDNjZWQtMGY0Mi00YTY2LWE5MzctMGRhZmNlYzljYTg5XkEyXkFqcGdeQXVyMTAyNjg4NjE0._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (10, 'Blade Runner 2049', 'Action, Drama, Mystery', '2017-10-06', 'R', 8.0, 'Denis Villeneuve', 'Hampton Fancher, Michael Green, Philip K. Dick', 'Harrison Ford, Ryan Gosling, Ana de Armas', 'Young Blade Runner K s discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who has been missing for thirty years.', 'https://m.media-amazon.com/images/M/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (11, 'The Karate Kid', 'Action, Drama, Family', '1984-06-22', 'PG', 7.3, 'John G. Avildsen', 'Robert Mark Kamen', 'Ralph Macchio, Pat Morita, Elisabeth Shue', 'A martial arts master agrees to teach karate to a bullied teenager.', 'https://m.media-amazon.com/images/M/MV5BNTkzY2YzNmYtY2ViMS00MThiLWFlYTEtOWQ1OTBiOGEwMTdhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg');
INSERT INTO public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) VALUES (12, 'Insidious', 'Horror, Mystery, Thriller', '2011-04-01', 'PG-13', 6.8, 'James Wan', 'Leigh Whannell', 'Patrick Wilson, Rose Byrne, Ty Simpkins', 'A family looks to prevent evil spirits from trapping their comatose child in a realm called The Further.', 'https://m.media-amazon.com/images/M/MV5BMTYyOTAxMDA0OF5BMl5BanBnXkFtZTcwNzgwNTc1NA@@._V1_SX300.jpg');


--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 215
-- Name: moviedata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moviedata_id_seq', 12, true);


--
-- TOC entry 3177 (class 2606 OID 16485)
-- Name: moviedata moviedata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moviedata
    ADD CONSTRAINT moviedata_pkey PRIMARY KEY (id);


-- Completed on 2022-11-29 20:28:29

--
-- PostgreSQL database dump complete
--

