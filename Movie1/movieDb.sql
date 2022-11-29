-- Database: movies

-- DROP DATABASE IF EXISTS movies;

CREATE DATABASE movies
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Germany.1252'
    LC_CTYPE = 'English_Germany.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;