-- Table: public.moviedata

-- DROP TABLE IF EXISTS public.moviedata;

CREATE TABLE IF NOT EXISTS public.moviedata
(
    id integer NOT NULL DEFAULT nextval('moviedata_id_seq'::regclass),
    title character varying(128) COLLATE pg_catalog."default" NOT NULL,
    genre character varying(128) COLLATE pg_catalog."default" NOT NULL,
    released date NOT NULL,
    rated character varying(128) COLLATE pg_catalog."default",
    rating numeric,
    director character varying(128) COLLATE pg_catalog."default",
    writer character varying(128) COLLATE pg_catalog."default",
    actors character varying(500) COLLATE pg_catalog."default",
    plot character varying(1000) COLLATE pg_catalog."default",
    poster character varying(1000) COLLATE pg_catalog."default",
    CONSTRAINT moviedata_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.moviedata
    OWNER to postgres;