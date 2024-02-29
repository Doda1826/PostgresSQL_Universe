--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    description text,
    celestial_body_id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_of_every_celestial_body_celestial_body_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_of_every_celestial_body_celestial_body_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_of_every_celestial_body_celestial_body_id_seq OWNER TO freecodecamp;

--
-- Name: description_of_every_celestial_body_celestial_body_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_of_every_celestial_body_celestial_body_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    size_in_light_years numeric,
    galaxy_types text,
    celestial_body_id integer NOT NULL
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
    which_planet_belongs text,
    diameters_in_km numeric NOT NULL,
    planet_id integer NOT NULL,
    name character varying(255)
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
    planet_types text,
    has_life boolean,
    radius_in_km numeric NOT NULL,
    star_id integer NOT NULL,
    name character varying(255)
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
    is_alive boolean,
    age_in_millions_of_years integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(255)
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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_of_every_celestial_body_celestial_body_id_seq'::regclass);


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
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'Andromeda is the closest big galaxy to the Milky Way.', 1, NULL);
INSERT INTO public.description VALUES (3, 'The galaxy containing the Sun and its Solar System', 2, NULL);
INSERT INTO public.description VALUES (4, 'Two colliding galaxies', 3, NULL);
INSERT INTO public.description VALUES (5, 'The largest in the Cartwheel Galaxy group', 4, NULL);
INSERT INTO public.description VALUES (6, 'is reported to be the brightest of distant galaxies', 5, NULL);
INSERT INTO public.description VALUES (7, 'This is the fourth-largest galaxy in the Local Group', 6, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 220.0, 'Great spiral galaxy', 1);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 10.0, 'Spiral galaxy', 2);
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxies', 50.0, 'Spiral galaxies', 3);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', 150.0, 'Ring galaxy', 4);
INSERT INTO public.galaxy VALUES (5, 'Cosmos Redshift 7', 144.3, 'High-redshift Lyman-alpha emitter galaxy', 5);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 32.2, 'Satellite galaxy', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth', 3476, 1, 'Moon');
INSERT INTO public.moon VALUES (2, 'Mars', 8, 4, 'Deimos');
INSERT INTO public.moon VALUES (3, 'Mars', 560, 4, 'Phobos');
INSERT INTO public.moon VALUES (4, 'Jupiter', 416, 5, 'Adrastea');
INSERT INTO public.moon VALUES (5, 'Jupiter', 4800, 5, 'Callisto');
INSERT INTO public.moon VALUES (6, 'Jupiter', 3126, 5, 'Europa');
INSERT INTO public.moon VALUES (7, 'Jupiter', 2, 5, 'Kale');
INSERT INTO public.moon VALUES (8, 'Jupiter', 40, 5, 'Metis');
INSERT INTO public.moon VALUES (9, 'Saturn', 999, 6, 'Atlas');
INSERT INTO public.moon VALUES (10, 'Saturn', 7, 6, 'Bestla');
INSERT INTO public.moon VALUES (11, 'Saturn', 6820, 6, 'Pandora');
INSERT INTO public.moon VALUES (12, 'Saturn', 6, 6, 'Skoll');
INSERT INTO public.moon VALUES (13, 'Saturn', 16, 6, 'Tarvos');
INSERT INTO public.moon VALUES (14, 'Saturn', 5150, 6, 'Titan');
INSERT INTO public.moon VALUES (15, 'Uranus', 1160, 7, 'Ariel');
INSERT INTO public.moon VALUES (16, 'Uranus', 12, 7, 'Cupid');
INSERT INTO public.moon VALUES (17, 'Uranus', 472, 7, 'Miranda');
INSERT INTO public.moon VALUES (18, 'Uranus', 30, 7, 'Prospero');
INSERT INTO public.moon VALUES (19, 'Uranus', 84, 7, 'Juliet');
INSERT INTO public.moon VALUES (20, 'Neptune', 2705, 8, 'Triton');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terrestrial planet', true, 6378.1, 2, 'Earth');
INSERT INTO public.planet VALUES (2, 'Terrestrial planet', false, 2440, 2, 'Mercury');
INSERT INTO public.planet VALUES (3, 'Terrestrial planet', false, 6051, 2, 'Venus');
INSERT INTO public.planet VALUES (4, 'Terrestrial planet', false, 3396.1, 2, 'Mars');
INSERT INTO public.planet VALUES (5, 'Gas giant', false, 71492, 2, 'Jupiter');
INSERT INTO public.planet VALUES (6, 'Gas giant', false, 58232, 2, 'Saturn');
INSERT INTO public.planet VALUES (7, 'Ice Giant', false, 25362, 2, 'Uranus');
INSERT INTO public.planet VALUES (8, 'Ice Giant', false, 24622, 2, 'Neptune');
INSERT INTO public.planet VALUES (9, 'Minor Planet', false, 260, 2, 'Centaurs');
INSERT INTO public.planet VALUES (10, 'Super Earth exoplanet', false, 8929.34, 5, 'Proxima B');
INSERT INTO public.planet VALUES (11, 'Sub-Earth', false, 1849.64, 5, 'Proxima D');
INSERT INTO public.planet VALUES (12, 'Extrasolar Planet', false, 128685.6, 3, 'Saffar');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, true, 60, 1, 'Alpheratz');
INSERT INTO public.star VALUES (2, true, 4, 2, 'Sun');
INSERT INTO public.star VALUES (3, true, 2, 1, 'Mirach');
INSERT INTO public.star VALUES (4, true, 6, 1, 'Alamak');
INSERT INTO public.star VALUES (5, true, 4, 2, 'Proxima Centauri');
INSERT INTO public.star VALUES (6, false, 237, 2, 'Sirius');


--
-- Name: description_of_every_celestial_body_celestial_body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_of_every_celestial_body_celestial_body_id_seq', 8, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: description description_celestial_body_celestial_body_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_celestial_body_celestial_body_id_key UNIQUE (celestial_body_id);


--
-- Name: description description_of_every_celestial_body_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_of_every_celestial_body_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_celestial_body_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_celestial_body_id_key UNIQUE (celestial_body_id);


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
-- Name: galaxy galaxy_celestial_body_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_celestial_body_id_fkey FOREIGN KEY (celestial_body_id) REFERENCES public.description(celestial_body_id);


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

