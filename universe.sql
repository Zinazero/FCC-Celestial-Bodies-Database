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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_known_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_pc numeric
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
    description text,
    has_known_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_pc numeric,
    planet_id integer NOT NULL
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
    description text,
    has_known_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_pc numeric,
    star_id integer NOT NULL
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
    description text,
    has_known_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_pc numeric,
    galaxy_id integer NOT NULL
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A*', 1);
INSERT INTO public.blackhole VALUES (2, 'Messier 31', 2);
INSERT INTO public.blackhole VALUES (3, 'Messier 32', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy containing the Sun and its Solar System, and therefore Earth.', true, false, 13000, 7935);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way, where the Solar System resides.', false, false, 75000, 765000);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 'The Black Eye Galaxy is a relatively isolated spiral galaxy 17 million light-years away in the mildly northern constellation of Coma Berenices.', false, false, NULL, 5300000);
INSERT INTO public.galaxy VALUES (4, 'Tadpole', 'The Tadpole Galaxy is a disrupted barred spiral galaxy located 420 million light-years from Earth in the northern constellation Draco.', false, false, NULL, 122556614);
INSERT INTO public.galaxy VALUES (5, 'Peekaboo', 'The Peekaboo Galaxy is an irregular compact blue dwarf galaxy in the constellation Hydra.', false, false, NULL, 6800000);
INSERT INTO public.galaxy VALUES (6, 'LMC', 'The Large Magellanic Cloud is a satellite galaxy of the Milky Way', false, false, NULL, 49970);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Luna is Earths only natural satellite.', false, true, 4425, 0.00000001245752318, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Phobos is the innermost and larger of the two natural satellites of Mars.', false, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos is the smaller and outermost of the two natural satellites of Mars.', false, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (4, 'Io', 'Io is the innermost and third-largest of the four Galilean moons of the planet Jupiter.', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (5, 'Europa', 'Europa is the smallest of the four Galilean moons orbiting Jupiter.', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Ganymede is the largest and most massive natural satellite of Jupiter as well as in the Solar System.', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Callisto is the second-largest moon of Jupiter, and the third-largest in the Solar System.', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Titania', 'Titania is the largest of the moons of Uranus.', false, true, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Oberon', 'Oberon is the outermost major moon of the planet Uranus, as well as the second-largest.', false, true, NULL, NULL, 8);
INSERT INTO public.moon VALUES (10, 'Naiad', 'Naiad is the innermost satellite of Neptune and the nearest to the center of any gas giant with moons.', false, true, NULL, NULL, 9);
INSERT INTO public.moon VALUES (11, 'Thalassa', 'Thalassa is the second-innermost satellite of Neptune.', false, true, NULL, NULL, 9);
INSERT INTO public.moon VALUES (13, 'Galatea', 'Galatea is the fourth-closest inner moon of Neptune.', false, true, NULL, NULL, 9);
INSERT INTO public.moon VALUES (14, 'Titan', 'Titan is the largest moon of Saturn and the second-largest in the Solar System.', false, true, NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Tethys', 'Tethys is a mid-sized moon of Saturn.', false, true, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Dione', 'Dione is the fourth-largest moon of Saturn.', false, true, NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Rhea', 'Rhea is the second-largest moon of Saturn.', false, true, NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Iapetus', 'Iapetus is the third-largest moon of Saturn.', false, true, NULL, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Mimas', 'Mimas is a natural satellite of Saturn that has the second-largest crater on any moon in the Solar System.', false, true, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Enceladus', 'Enceladus is the sixth-largest moon of Saturn.', false, true, NULL, NULL, 7);
INSERT INTO public.moon VALUES (21, 'Phoebe', 'Phoebe is the most massive irregular satellite of Saturn.', false, false, NULL, NULL, 7);
INSERT INTO public.moon VALUES (12, 'Despina', 'Despina is the third-closest inner moon of Neptune.', false, true, NULL, NULL, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Mercury', 'Mercury is the first planet from the Sun.', false, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 'Venus is the second planet from the Sun.', false, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Mars', 'Mars is the fourth planet from the sun.', false, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'Jupiter is the fifth planet from the Sun.', false, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 'Saturn is the sixth planet from the Sun.', false, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'Uranus is the seventh planet from the Sun.', false, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 'Neptune is the eighth planet from the Sun.', false, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'Proxima Centauri b is the closest potentially habitable exoplanet known.', false, true, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'CT Chamaeleontis b', 'CT Chamaeleontis b is the most distant directly visible exoplanet.', false, true, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'COCONUTS-2b', 'COCONUTS-2b is a gas giant exoplanet that orbits the M-type star L 34-26.', false, true, NULL, NULL, 4);
INSERT INTO public.planet VALUES (13, 'Pollux b', 'Pollux b is an extrasolar planet approximately 34 light-years away.', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (14, 'SWEEPS-11', 'SWEEPS-11 is an extrasolar planet approximately 27 710 light-years away.', false, true, NULL, NULL, 6);
INSERT INTO public.planet VALUES (1, 'Earth', 'Earth is the third planet from the Sun and the home of Humanity.', true, true, 4540, 0, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Proxima Centauri is a small, low-mass star located 4.2465 light-years away from the Sun in the southern constellation of Centaurus.', false, true, NULL, 1.3030559237, 1);
INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System.', false, true, 4600, 0.0000048482058173, 1);
INSERT INTO public.star VALUES (3, 'CT Chamaeleontis', 'CT Chamaeleontis is a T Tauri star - a primary of the star system in the constellation of Chamaeleon.', false, true, NULL, 190.70606695, 1);
INSERT INTO public.star VALUES (4, 'COCONUTS-2', 'COCONUTS-2 is a M3-type dwarf star located 35 light-years away, in the constellation of Chamaeleon.', false, true, NULL, 10.88434948, 1);
INSERT INTO public.star VALUES (5, 'Pollux', 'Pollux is the brightest star in the constellation of Gemini.', false, true, NULL, 10.356995083, 1);
INSERT INTO public.star VALUES (6, 'SWEEPS J175902.67', NULL, false, true, NULL, 8496, 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_blackhole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_blackhole_id_key UNIQUE (blackhole_id);


--
-- Name: blackhole blackhole_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_id PRIMARY KEY (blackhole_id);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


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
-- Name: blackhole fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

