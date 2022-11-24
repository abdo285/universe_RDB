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
    name character varying(30) NOT NULL,
    discovered integer NOT NULL,
    age integer NOT NULL,
    width character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: glaxy_glaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.glaxy_glaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.glaxy_glaxy_id_seq OWNER TO freecodecamp;

--
-- Name: glaxy_glaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.glaxy_glaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: lab; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lab (
    lab_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.lab OWNER TO freecodecamp;

--
-- Name: lab_lab_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lab_lab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lab_lab_id_seq OWNER TO freecodecamp;

--
-- Name: lab_lab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lab_lab_id_seq OWNED BY public.lab.lab_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    weight character varying(30),
    type character varying(30)
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
    name character varying(30) NOT NULL,
    acceleration_due_to_gravity numeric(5,1) NOT NULL,
    description text NOT NULL,
    have_moon boolean NOT NULL,
    visited boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: plant_plant_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.plant_plant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plant_plant_id_seq OWNER TO freecodecamp;

--
-- Name: plant_plant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.plant_plant_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    age integer,
    weight character varying(30)
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.glaxy_glaxy_id_seq'::regclass);


--
-- Name: lab lab_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lab ALTER COLUMN lab_id SET DEFAULT nextval('public.lab_lab_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.plant_plant_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'abcde', 1888, 3, NULL);
INSERT INTO public.galaxy VALUES (2, 'abcda', 1888, 3, NULL);
INSERT INTO public.galaxy VALUES (3, 'abcdb', 1888, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'abcdc', 1888, 3, NULL);
INSERT INTO public.galaxy VALUES (5, 'abcdd', 1888, 3, NULL);
INSERT INTO public.galaxy VALUES (6, 'abcdf', 1888, 3, NULL);


--
-- Data for Name: lab; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lab VALUES (1, 'a', 1);
INSERT INTO public.lab VALUES (2, 'b', 3);
INSERT INTO public.lab VALUES (3, 'c', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'aba', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'abb', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'abc', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'abd', 3, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'abe', 3, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'abf', 4, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'abg', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'abh', 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'abi', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'abj', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'abk', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'abl', 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'abm', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'abn', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'abo', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'abp', 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'abq', 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'abu', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'abv', 8, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'ab2', 8, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'abw', 8, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'aba', 4.0, 'dfadfafsdfgs', true, true, 1);
INSERT INTO public.planet VALUES (2, 'abb', 4.0, 'dfadfafsdfgs', true, true, 2);
INSERT INTO public.planet VALUES (3, 'abc', 4.0, 'dfadfafsdfgs', true, true, 3);
INSERT INTO public.planet VALUES (4, 'abd', 4.0, 'dfadfafsdfgs', true, true, 4);
INSERT INTO public.planet VALUES (5, 'abe', 4.0, 'dfadfafsdfgs', true, true, 5);
INSERT INTO public.planet VALUES (6, 'abf', 4.0, 'dfadfafsdfgs', true, true, 6);
INSERT INTO public.planet VALUES (7, 'abg', 4.0, 'dfadfafsdfgs', true, true, 6);
INSERT INTO public.planet VALUES (8, 'abh', 4.0, 'dfadfafsdfgs', true, true, 5);
INSERT INTO public.planet VALUES (10, 'abi', 4.0, 'dfadfafsdfgs', true, true, 4);
INSERT INTO public.planet VALUES (11, 'abj', 4.0, 'dfadfafsdfgs', true, true, 3);
INSERT INTO public.planet VALUES (12, 'abk', 4.0, 'dfadfafsdfgs', true, true, 2);
INSERT INTO public.planet VALUES (13, 'abl', 4.0, 'dfadfafsdfgs', true, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'abcd', 6, NULL, NULL);
INSERT INTO public.star VALUES (2, 'abca', 5, NULL, NULL);
INSERT INTO public.star VALUES (3, 'abcb', 4, NULL, NULL);
INSERT INTO public.star VALUES (4, 'abcc', 3, NULL, NULL);
INSERT INTO public.star VALUES (5, 'abce', 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'abcf', 1, NULL, NULL);


--
-- Name: glaxy_glaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.glaxy_glaxy_id_seq', 6, true);


--
-- Name: lab_lab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lab_lab_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: plant_plant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.plant_plant_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy glaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT glaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lab lab_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lab
    ADD CONSTRAINT lab_name_key UNIQUE (name);


--
-- Name: lab lab_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lab
    ADD CONSTRAINT lab_pkey PRIMARY KEY (lab_id);


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
-- Name: planet plant_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plant_pkey PRIMARY KEY (planet_id);


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
-- Name: lab lab_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lab
    ADD CONSTRAINT lab_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

