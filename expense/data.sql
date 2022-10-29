--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.24
-- Dumped by pg_dump version 9.6.22

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

SET default_with_oids = false;

--
-- Name: expenses; Type: TABLE; Schema: public; Owner: ec2-user
--

CREATE TABLE public.expenses (
    id integer NOT NULL,
    created_on date DEFAULT ('now'::text)::date NOT NULL,
    amount numeric(6,2) NOT NULL,
    memo text NOT NULL,
    CONSTRAINT expenses_amount_check CHECK ((amount > (0)::numeric))
);


ALTER TABLE public.expenses OWNER TO "ec2-user";

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: ec2-user
--

CREATE SEQUENCE public.expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expenses_id_seq OWNER TO "ec2-user";

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ec2-user
--

ALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;


--
-- Name: expenses id; Type: DEFAULT; Schema: public; Owner: ec2-user
--

ALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: ec2-user
--

COPY public.expenses (id, created_on, amount, memo) FROM stdin;
1	2022-10-20	14.56	Pencils
2	2022-10-20	3.29	Coffee
3	2022-10-20	49.99	Text Editor
4	2022-10-20	3.59	More Coffee
\.


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ec2-user
--

SELECT pg_catalog.setval('public.expenses_id_seq', 4, true);


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: ec2-user
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

