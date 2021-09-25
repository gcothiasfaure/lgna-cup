--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Ubuntu 13.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.3

-- Started on 2021-06-25 09:43:59

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
-- TOC entry 200 (class 1259 OID 17541496)
-- Name: players; Type: TABLE; Schema: public; Owner: wwgnyykgjefwie
--

CREATE TABLE public.players (
    id uuid NOT NULL,
    name character varying(80) NOT NULL,
    password character varying(200) NOT NULL
);


ALTER TABLE public.players OWNER TO wwgnyykgjefwie;

--
-- TOC entry 3980 (class 0 OID 17541496)
-- Dependencies: 200
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: wwgnyykgjefwie
--

INSERT INTO public.players VALUES ('49cbda27-ae6b-443b-b25a-7beac9137b88', 'Gaspard', 'sha256$nGgQ9KQmalZ4QYm7$0669009454f0aa5e2eee3ec8a1384a3bea2f8f2658a0d4ba3f819e85d9f98ecc');
INSERT INTO public.players VALUES ('62725253-8db1-46bf-98d4-8253b1939424', 'Quentin', 'sha256$qMJmGGnOyIyyap5W$47abb8bf5d265a44d86f88ccef766ef381a2d1698f841a3e672281dc9b30a7bc');
INSERT INTO public.players VALUES ('0ed882f6-2164-423b-a717-9eefb2f0527a', 'Walid', 'sha256$u22kAObDnjhnvqX5$74f7a2c54cf46bfb40bcc692b144b1138796f481e5f73753ee38fe887fa37d1e');
INSERT INTO public.players VALUES ('4d19bd5d-10fa-4fc2-a72e-4e6a2f5a3506', 'Ged', 'sha256$oCgyT9uJEivTqPhp$d396ea70420d48e0ec21e1c6394080338e011521d975d9d87149b6bd066d37de');
INSERT INTO public.players VALUES ('e0c360bf-f317-48a8-8fa6-b6b9b7c640ed', 'Florentin', 'sha256$hJwzmhONjWkrO8Hj$b1d05fb1bde34a32cf0d9917edc5cfbcdbe3a1a86a8ec9292bd3126f017b8b75');
INSERT INTO public.players VALUES ('dd02d027-4eb7-4a68-800a-bd1639dc8c08', 'Jules', 'sha256$mbAA2Pj5F3vvmavz$38fa3d6427145e1074f38c31655fded22453064b2325ee5212e767ab0f6d3769');
INSERT INTO public.players VALUES ('07867463-70e1-4704-810b-3857f6a816ee', 'Felix', 'sha256$UROS7BRx9hLaDC08$304401f9627cb22d8241de798d2693f162d56a65293424cbbefe741dcff731e1');


--
-- TOC entry 3847 (class 2606 OID 17541502)
-- Name: players players_name_key; Type: CONSTRAINT; Schema: public; Owner: wwgnyykgjefwie
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_name_key UNIQUE (name);


--
-- TOC entry 3849 (class 2606 OID 17541500)
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: wwgnyykgjefwie
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- TOC entry 3986 (class 0 OID 0)
-- Dependencies: 637
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO wwgnyykgjefwie;


-- Completed on 2021-06-25 09:44:02

--
-- PostgreSQL database dump complete
--

