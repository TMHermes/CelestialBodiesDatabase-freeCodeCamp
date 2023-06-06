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
-- Name: extra_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra_info (
    extra_info_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.extra_info OWNER TO freecodecamp;

--
-- Name: extra_info_extra_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_info_extra_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_info_extra_info_id_seq OWNER TO freecodecamp;

--
-- Name: extra_info_extra_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_info_extra_info_id_seq OWNED BY public.extra_info.extra_info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    description text,
    format character varying(20)
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    only_moon boolean,
    planet_id integer,
    diameter_in_kms integer
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
    name character varying(20) NOT NULL,
    distance_to_earth numeric,
    moon_count integer,
    star_id integer,
    diameter_in_kms integer
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    planet_count integer,
    diameter_in_kms integer
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
-- Name: extra_info extra_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info ALTER COLUMN extra_info_id SET DEFAULT nextval('public.extra_info_extra_info_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: extra_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra_info VALUES (1, 'My GitHub', 'https://github.com/TMHermes');
INSERT INTO public.extra_info VALUES (2, 'My LinkedIn', 'https://www.linkedin.com/in/tiago-melari-81793862/');
INSERT INTO public.extra_info VALUES (3, 'My Twitter', 'https://twitter.com/Melari');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'A large spiral system that takes its name from the irregular luminous band of stars and gas clouds that schetches across the sky as seen from Earth.', 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 'Also called Andromeda Nebula, great spiral in the constellation Andromeda is the nearest large galaxy.', 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', false, 'As the most powerful cosmic source of radio waves known, lying in the northern constellation Cygnus it has the appearance of a double galaxy.', 'elliptical');
INSERT INTO public.galaxy VALUES (4, 'Maffei I', false, 'Named after Paolo Maffei, who discovered it in 1967 is made mainly of old metal-rich stars.', 'elliptical');
INSERT INTO public.galaxy VALUES (5, 'Maffei II', false, 'Named after Paolo Maffei, who discovered it in 1967 in the Cassiopeia constellation is about 10 million light-years away from us.', 'spiral');
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', false, 'Two satellite galaxies of the Milky Way, the Small one and the Large One, both share a gaseous envelope.', 'irregular');
INSERT INTO public.galaxy VALUES (7, 'Virgo A', false, 'Also known as Messier 87 or M87, is a giant galaxy in the Virgo constellation whose nucleus contains a black hole.', 'elliptical');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earths Moon', true, 3, 3474);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4, 22);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4, 12);
INSERT INTO public.moon VALUES (4, 'Io', false, 5, 3642);
INSERT INTO public.moon VALUES (5, 'Europa', false, 5, 3100);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 5, 5268);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 5, 4820);
INSERT INTO public.moon VALUES (8, 'Dione', false, 6, 1123);
INSERT INTO public.moon VALUES (9, 'Enceladus', false, 6, 504);
INSERT INTO public.moon VALUES (10, 'Titan', false, 6, 5149);
INSERT INTO public.moon VALUES (11, 'Iapetus', false, 6, 1470);
INSERT INTO public.moon VALUES (12, 'Mimas', false, 6, 396);
INSERT INTO public.moon VALUES (13, 'Ariel', false, 7, 1158);
INSERT INTO public.moon VALUES (14, 'Oberon', false, 7, 1523);
INSERT INTO public.moon VALUES (15, 'Triton', false, 8, 2700);
INSERT INTO public.moon VALUES (16, 'Titania', false, 7, 1600);
INSERT INTO public.moon VALUES (17, 'Umbriel', false, 7, 1200);
INSERT INTO public.moon VALUES (18, 'Larissa', false, 8, 194);
INSERT INTO public.moon VALUES (19, 'Rhea', false, 6, 1528);
INSERT INTO public.moon VALUES (20, 'Tethys', false, 6, 1066);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9, 'Barnards Star B', 56764200000000, 0, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'GJ 15 A b', 113528400000000, 0, NULL, 19772);
INSERT INTO public.planet VALUES (11, '55 Cancri e', 387888700000000, 0, NULL, 23917);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1', 387888700000000, 0, NULL, 11735);
INSERT INTO public.planet VALUES (1, 'Mercury', 77000000, 0, 1, 4879);
INSERT INTO public.planet VALUES (2, 'Venus', 261000000, 0, 1, 12100);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, 1, 1, 12742);
INSERT INTO public.planet VALUES (4, 'Mars', 225000000, 2, 1, 6780);
INSERT INTO public.planet VALUES (5, 'Jupiter', 715000000, 80, 1, 139822);
INSERT INTO public.planet VALUES (6, 'Saturn', 1200000000, 83, 1, 116464);
INSERT INTO public.planet VALUES (7, 'Uranus', 3200000000, 27, 1, 50724);
INSERT INTO public.planet VALUES (8, 'Neptune', 4300000000, 14, 1, 49244);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 8, 13927000);
INSERT INTO public.star VALUES (3, 'Polaris', 1, 0, 70000000);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 0, 2400000);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 1, 0, 214550);
INSERT INTO public.star VALUES (6, 'Rigel', 1, 14, 109781500);
INSERT INTO public.star VALUES (7, 'Vega', 1, 1, 3286500);
INSERT INTO public.star VALUES (8, 'Antares', 1, 1, 946150000);
INSERT INTO public.star VALUES (9, 'Canopus', 1, 0, 98789000);


--
-- Name: extra_info_extra_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_info_extra_info_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: extra_info extra_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT extra_info_name_key UNIQUE (name);


--
-- Name: extra_info extra_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT extra_info_pkey PRIMARY KEY (extra_info_id);


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

