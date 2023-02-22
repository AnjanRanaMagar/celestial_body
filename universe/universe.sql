--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    neighbor_galaxy text,
    big_in_mil numeric,
    star_id integer NOT NULL,
    galaxy_age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: has_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.has_life (
    has_life_id integer NOT NULL,
    which_planet text,
    how_many integer NOT NULL,
    has_life boolean,
    name character varying(50)
);


ALTER TABLE public.has_life OWNER TO freecodecamp;

--
-- Name: has_life_has_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.has_life_has_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.has_life_has_life_id_seq OWNER TO freecodecamp;

--
-- Name: has_life_has_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.has_life_has_life_id_seq OWNED BY public.has_life.has_life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    has_planet boolean,
    size numeric,
    other_moon text NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    neighboring_planet text,
    size numeric,
    is_big_than_earth boolean,
    moon_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    neighbor_star text,
    size_mil numeric,
    planet_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: has_life has_life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life ALTER COLUMN has_life_id SET DEFAULT nextval('public.has_life_has_life_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, ' mikly_way', NULL, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (2, ' milky_way2', NULL, NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (3, ' milky_way23', NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (4, ' milky_way24', NULL, NULL, 4, NULL);
INSERT INTO public.galaxy VALUES (5, ' milky_way25', NULL, NULL, 5, NULL);
INSERT INTO public.galaxy VALUES (6, ' milky_way26', NULL, NULL, 6, NULL);
INSERT INTO public.galaxy VALUES (7, ' milky_way27', NULL, NULL, 7, NULL);
INSERT INTO public.galaxy VALUES (8, ' milky_way28', NULL, NULL, 8, NULL);
INSERT INTO public.galaxy VALUES (9, ' milky_way29', NULL, NULL, 9, NULL);
INSERT INTO public.galaxy VALUES (10, 'milky_way30 ', NULL, NULL, 10, NULL);
INSERT INTO public.galaxy VALUES (11, ' milky_way31', NULL, NULL, 11, NULL);
INSERT INTO public.galaxy VALUES (12, ' milky_way32', NULL, NULL, 12, NULL);


--
-- Data for Name: has_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.has_life VALUES (1, NULL, 1, NULL, NULL);
INSERT INTO public.has_life VALUES (2, NULL, 2, NULL, NULL);
INSERT INTO public.has_life VALUES (3, NULL, 3, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, ' Moo01a', NULL, NULL, ' ab');
INSERT INTO public.moon VALUES (2, ' Moon01b', NULL, NULL, ' aba');
INSERT INTO public.moon VALUES (3, ' Moon01c', NULL, NULL, ' abc');
INSERT INTO public.moon VALUES (4, ' Moon01d', NULL, NULL, ' abcd');
INSERT INTO public.moon VALUES (5, ' Moone01', NULL, NULL, ' abcde');
INSERT INTO public.moon VALUES (6, ' Moon01f', NULL, NULL, ' adbcedf');
INSERT INTO public.moon VALUES (7, ' Moon01g', NULL, NULL, ' hello');
INSERT INTO public.moon VALUES (8, ' Moon01h', NULL, NULL, ' mehl');
INSERT INTO public.moon VALUES (9, ' Moon01i', NULL, NULL, ' mehun');
INSERT INTO public.moon VALUES (10, ' Moon01j', NULL, NULL, ' nha');
INSERT INTO public.moon VALUES (11, ' Moon01', NULL, NULL, ' asa');
INSERT INTO public.moon VALUES (12, ' Moon01k', NULL, NULL, ' asas');
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, 'a');
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, 'c');
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, 'd');
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, 'a');
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, 'c');
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, 'd');
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, 'a');
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, 'c');
INSERT INTO public.moon VALUES (21, NULL, NULL, NULL, 'd');
INSERT INTO public.moon VALUES (22, NULL, NULL, NULL, 'a');
INSERT INTO public.moon VALUES (23, NULL, NULL, NULL, 'c');
INSERT INTO public.moon VALUES (24, NULL, NULL, NULL, 'd');
INSERT INTO public.moon VALUES (25, NULL, NULL, NULL, 'a');
INSERT INTO public.moon VALUES (26, NULL, NULL, NULL, 'c');
INSERT INTO public.moon VALUES (27, NULL, NULL, NULL, 'd');
INSERT INTO public.moon VALUES (28, NULL, NULL, NULL, 'a');
INSERT INTO public.moon VALUES (29, NULL, NULL, NULL, 'c');
INSERT INTO public.moon VALUES (30, NULL, NULL, NULL, 'd');
INSERT INTO public.moon VALUES (31, NULL, NULL, NULL, 'a');
INSERT INTO public.moon VALUES (32, NULL, NULL, NULL, 'c');
INSERT INTO public.moon VALUES (33, NULL, NULL, NULL, 'd');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'Pluto2', NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'Pluto3', NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'Pluto4', NULL, NULL, NULL, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, ' star_aa', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, ' star_aab', NULL, NULL, 2);
INSERT INTO public.star VALUES (3, ' star_aac', NULL, NULL, 3);
INSERT INTO public.star VALUES (4, ' star_aad', NULL, NULL, 4);
INSERT INTO public.star VALUES (5, ' star_aae', NULL, NULL, 5);
INSERT INTO public.star VALUES (6, ' star_aaf', NULL, NULL, 6);
INSERT INTO public.star VALUES (7, ' star_aag', NULL, NULL, 7);
INSERT INTO public.star VALUES (8, ' star_aah', NULL, NULL, 8);
INSERT INTO public.star VALUES (9, ' star_aai', NULL, NULL, 9);
INSERT INTO public.star VALUES (10, ' star_aaj', NULL, NULL, 10);
INSERT INTO public.star VALUES (11, ' star_aak', NULL, NULL, 11);
INSERT INTO public.star VALUES (12, ' star_aal', NULL, NULL, 12);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: has_life_has_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.has_life_has_life_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: has_life has_life_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life
    ADD CONSTRAINT has_life_name_key UNIQUE (name);


--
-- Name: has_life has_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_life
    ADD CONSTRAINT has_life_pkey PRIMARY KEY (has_life_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

