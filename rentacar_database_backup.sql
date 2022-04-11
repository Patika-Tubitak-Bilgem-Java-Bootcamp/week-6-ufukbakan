--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)

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
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


--
-- Name: mpaa_rating; Type: TYPE; Schema: public; Owner: jxudvuzs
--

CREATE TYPE public.mpaa_rating AS ENUM (
    'G',
    'PG',
    'PG-13',
    'R',
    'NC-17'
);


ALTER TYPE public.mpaa_rating OWNER TO jxudvuzs;

--
-- Name: year; Type: DOMAIN; Schema: public; Owner: jxudvuzs
--

CREATE DOMAIN public.year AS integer
	CONSTRAINT year_check CHECK (((VALUE >= 1901) AND (VALUE <= 2155)));


ALTER DOMAIN public.year OWNER TO jxudvuzs;

--
-- Name: _group_concat(text, text); Type: FUNCTION; Schema: public; Owner: jxudvuzs
--

CREATE FUNCTION public._group_concat(text, text) RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $_$
SELECT CASE
  WHEN $2 IS NULL THEN $1
  WHEN $1 IS NULL THEN $2
  ELSE $1 || ', ' || $2
END
$_$;


ALTER FUNCTION public._group_concat(text, text) OWNER TO jxudvuzs;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: company; Type: TABLE; Schema: public; Owner: jxudvuzs
--

CREATE TABLE public.company (
    id bigint NOT NULL,
    city character varying(255),
    name character varying(255),
    password character varying(255)
);


ALTER TABLE public.company OWNER TO jxudvuzs;

--
-- Name: company_vehicle_ad_list; Type: TABLE; Schema: public; Owner: jxudvuzs
--

CREATE TABLE public.company_vehicle_ad_list (
    company_id bigint NOT NULL,
    vehicle_ad_list_id bigint NOT NULL
);


ALTER TABLE public.company_vehicle_ad_list OWNER TO jxudvuzs;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: jxudvuzs
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO jxudvuzs;

--
-- Name: vehicle; Type: TABLE; Schema: public; Owner: jxudvuzs
--

CREATE TABLE public.vehicle (
    id bigint NOT NULL,
    name character varying(255),
    type character varying(255)
);


ALTER TABLE public.vehicle OWNER TO jxudvuzs;

--
-- Name: vehicle_ad; Type: TABLE; Schema: public; Owner: jxudvuzs
--

CREATE TABLE public.vehicle_ad (
    id bigint NOT NULL,
    creation_time timestamp without time zone,
    price double precision NOT NULL,
    valid_for_duration bigint,
    owner_id bigint,
    vehicle_id bigint
);


ALTER TABLE public.vehicle_ad OWNER TO jxudvuzs;

--
-- Name: vehicle_ad_additional_service_list; Type: TABLE; Schema: public; Owner: jxudvuzs
--

CREATE TABLE public.vehicle_ad_additional_service_list (
    vehicle_ad_id bigint NOT NULL,
    description character varying(255),
    name character varying(255),
    price double precision NOT NULL
);


ALTER TABLE public.vehicle_ad_additional_service_list OWNER TO jxudvuzs;

--
-- Name: vehicle_ad_available_days; Type: TABLE; Schema: public; Owner: jxudvuzs
--

CREATE TABLE public.vehicle_ad_available_days (
    vehicle_ad_id bigint NOT NULL,
    available_days date
);


ALTER TABLE public.vehicle_ad_available_days OWNER TO jxudvuzs;

--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: jxudvuzs
--

COPY public.company (id, city, name, password) FROM stdin;
1	Ankara	ufukrentacar	123456
\.


--
-- Data for Name: company_vehicle_ad_list; Type: TABLE DATA; Schema: public; Owner: jxudvuzs
--

COPY public.company_vehicle_ad_list (company_id, vehicle_ad_list_id) FROM stdin;
1	3
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: vehicle; Type: TABLE DATA; Schema: public; Owner: jxudvuzs
--

COPY public.vehicle (id, name, type) FROM stdin;
2	Passat	BUSINESS
\.


--
-- Data for Name: vehicle_ad; Type: TABLE DATA; Schema: public; Owner: jxudvuzs
--

COPY public.vehicle_ad (id, creation_time, price, valid_for_duration, owner_id, vehicle_id) FROM stdin;
3	2022-04-11 23:24:28.329946	1000	604800000000000	1	2
\.


--
-- Data for Name: vehicle_ad_additional_service_list; Type: TABLE DATA; Schema: public; Owner: jxudvuzs
--

COPY public.vehicle_ad_additional_service_list (vehicle_ad_id, description, name, price) FROM stdin;
\.


--
-- Data for Name: vehicle_ad_available_days; Type: TABLE DATA; Schema: public; Owner: jxudvuzs
--

COPY public.vehicle_ad_available_days (vehicle_ad_id, available_days) FROM stdin;
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: jxudvuzs
--

SELECT pg_catalog.setval('public.hibernate_sequence', 3, true);


--
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: jxudvuzs
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);


--
-- Name: company_vehicle_ad_list uk_fe6v9apv8vdokse7jxx1hgo68; Type: CONSTRAINT; Schema: public; Owner: jxudvuzs
--

ALTER TABLE ONLY public.company_vehicle_ad_list
    ADD CONSTRAINT uk_fe6v9apv8vdokse7jxx1hgo68 UNIQUE (vehicle_ad_list_id);


--
-- Name: company uk_niu8sfil2gxywcru9ah3r4ec5; Type: CONSTRAINT; Schema: public; Owner: jxudvuzs
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT uk_niu8sfil2gxywcru9ah3r4ec5 UNIQUE (name);


--
-- Name: vehicle_ad vehicle_ad_pkey; Type: CONSTRAINT; Schema: public; Owner: jxudvuzs
--

ALTER TABLE ONLY public.vehicle_ad
    ADD CONSTRAINT vehicle_ad_pkey PRIMARY KEY (id);


--
-- Name: vehicle vehicle_pkey; Type: CONSTRAINT; Schema: public; Owner: jxudvuzs
--

ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (id);


--
-- Name: company_vehicle_ad_list fkb7hjx11vswlo9egtrmd1t108p; Type: FK CONSTRAINT; Schema: public; Owner: jxudvuzs
--

ALTER TABLE ONLY public.company_vehicle_ad_list
    ADD CONSTRAINT fkb7hjx11vswlo9egtrmd1t108p FOREIGN KEY (company_id) REFERENCES public.company(id);


--
-- Name: company_vehicle_ad_list fkkif2a3yq22oci34f5vr8l46mi; Type: FK CONSTRAINT; Schema: public; Owner: jxudvuzs
--

ALTER TABLE ONLY public.company_vehicle_ad_list
    ADD CONSTRAINT fkkif2a3yq22oci34f5vr8l46mi FOREIGN KEY (vehicle_ad_list_id) REFERENCES public.vehicle_ad(id);


--
-- Name: vehicle_ad fkkjbce9a6hgup1pco6kbd1wwo1; Type: FK CONSTRAINT; Schema: public; Owner: jxudvuzs
--

ALTER TABLE ONLY public.vehicle_ad
    ADD CONSTRAINT fkkjbce9a6hgup1pco6kbd1wwo1 FOREIGN KEY (owner_id) REFERENCES public.company(id);


--
-- Name: vehicle_ad fkn3ciu0667023twjh0idlnet2i; Type: FK CONSTRAINT; Schema: public; Owner: jxudvuzs
--

ALTER TABLE ONLY public.vehicle_ad
    ADD CONSTRAINT fkn3ciu0667023twjh0idlnet2i FOREIGN KEY (vehicle_id) REFERENCES public.vehicle(id);


--
-- Name: vehicle_ad_additional_service_list fkq6c333p71380qyx5qv6s7t04t; Type: FK CONSTRAINT; Schema: public; Owner: jxudvuzs
--

ALTER TABLE ONLY public.vehicle_ad_additional_service_list
    ADD CONSTRAINT fkq6c333p71380qyx5qv6s7t04t FOREIGN KEY (vehicle_ad_id) REFERENCES public.vehicle_ad(id);


--
-- PostgreSQL database dump complete
--

