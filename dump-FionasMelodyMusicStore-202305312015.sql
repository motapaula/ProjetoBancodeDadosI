--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-05-31 20:15:21

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16491)
-- Name: categoriainstrumentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoriainstrumentos (
    categoriaid integer NOT NULL,
    nomecategoria character varying(255)
);


ALTER TABLE public.categoriainstrumentos OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16475)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    clienteid integer NOT NULL,
    nomecliente character varying(255),
    cpfcliente character varying(11) NOT NULL,
    emailcliente character varying(255),
    telefonecliente bigint,
    enderecocliente text
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16501)
-- Name: fabricanteinstrumento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fabricanteinstrumento (
    fabricanteid integer NOT NULL,
    nomefabricante character varying(255),
    paisfabricanteid integer NOT NULL
);


ALTER TABLE public.fabricanteinstrumento OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16468)
-- Name: instrumento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instrumento (
    instrumentoid integer NOT NULL,
    nomeproduto character varying(255) NOT NULL,
    descricaoproduto character varying(255),
    categoriaproduto integer,
    nomefabricante integer
);


ALTER TABLE public.instrumento OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16496)
-- Name: paisinstrumento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paisinstrumento (
    paisid integer NOT NULL,
    paisorigem character varying(255)
);


ALTER TABLE public.paisinstrumento OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16533)
-- Name: peca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peca (
    pecaid integer NOT NULL,
    numeroserie bigint NOT NULL,
    identificacaoinstrumento integer NOT NULL,
    descricaopeca character varying(255),
    anoproducao integer NOT NULL,
    precopeca numeric(10,2) NOT NULL
);


ALTER TABLE public.peca OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16484)
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido (
    pedidoid bigint NOT NULL,
    clienteid bigint,
    instrumentoid integer,
    statuspedido character varying(255),
    formapagamento character varying(255),
    datapedido date,
    horapedido time without time zone,
    valorpedido numeric(10,2)
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- TOC entry 3365 (class 0 OID 16491)
-- Dependencies: 217
-- Data for Name: categoriainstrumentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoriainstrumentos (categoriaid, nomecategoria) FROM stdin;
1	Cordas
2	Instrumentos de Madeiras
3	Instrumentos de Metais
4	Percussão
5	Teclados
6	Eletrônicos
7	Sopro
8	Cordas Tradicionais
\.


--
-- TOC entry 3363 (class 0 OID 16475)
-- Dependencies: 215
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (clienteid, nomecliente, cpfcliente, emailcliente, telefonecliente, enderecocliente) FROM stdin;
50	Maegan Starrs	49178976504	mstarrs1d@friendfeed.com	9044622700	8681 Commercial Way
1	Mercedes Jagiello	90140997814	mjagiello0@google.com.hk	2083591348	030 Oneill Place
2	Kinsley Annett	26912158624	kannett1@icio.us	6179754873	7044 Sachs Parkway
3	Essie Markwick	26742186016	emarkwick2@alexa.com	6087365299	9526 Bay Park
4	Drusilla Ende	19904676243	dende3@qq.com	8199921433	435 Acker Place
5	Joane Hasney	78047860948	jhasney4@indiegogo.com	3409075324	51 Fairview Pass
6	Justine Rillett	10901062434	jrillett5@drupal.org	9112382350	1348 Crowley Hill
7	Waylon Housiaux	76577121575	whousiaux6@slate.com	4711751671	753 Kim Pass
8	Theodoric McCane	6006559505	tmccane7@globo.com	4494456951	4741 Russell Street
9	Gayle Beric	54125642433	gberic8@xrea.com	3947044948	53 Thierer Place
10	Merridie Marwood	24855763949	mmarwood9@cbslocal.com	7128746904	78800 David Way
11	Dawna Lettley	84219470277	dlettleya@qq.com	6623223201	59 Marcy Court
12	Orly Ivanisov	17605100088	oivanisovb@google.de	4885950394	179 Hintze Circle
13	Reggie Eirwin	84445621982	reirwinc@netvibes.com	7419822811	9 Rockefeller Park
14	Bartholomew Werner	91299078133	bwernerd@cloudflare.com	2579812376	9 Delaware Avenue
15	Carson Ziemen	95624787595	cziemene@ask.com	7827617254	2 International Point
16	Ari Babonau	86370121110	ababonauf@amazon.de	7461995048	46 Main Avenue
17	Clerkclaude Leyban	37071047898	cleybang@amazonaws.com	6093496806	9890 Muir Park
18	Kort Belli	72453471880	kbellih@phpbb.com	2323924652	5 Huxley Way
19	Beaufort Goldbourn	50750913110	bgoldbourni@mapquest.com	9645012441	02056 Thompson Court
20	Clemmy Shouler	25033807349	cshoulerj@wordpress.org	2192398826	83154 Del Sol Avenue
21	Tresa Laxe	48849755980	tlaxek@1und1.de	3244438340	1 Waywood Parkway
22	Theodosia Maypother	57728347211	tmaypotherl@sina.com.cn	3958776741	7020 Becker Crossing
23	Elnar Snozzwell	15566472127	esnozzwellm@twitter.com	2047890869	7012 Northport Parkway
24	Claire Sterricker	99582078436	csterrickern@soundcloud.com	9917397481	7 Loeprich Terrace
25	Tawsha Rounsefell	82737541151	trounsefello@mtv.com	3963699393	596 Canary Circle
26	Bax O'Griffin	82634288392	bogriffinp@uiuc.edu	1701391112	67039 Logan Crossing
27	Brinn McGilben	18299214496	bmcgilbenq@cargocollective.com	3973011806	22635 Cody Pass
28	Lowrance Counter	62009808506	lcounterr@uiuc.edu	5457542567	1 Hollow Ridge Trail
29	Clement O'Tuohy	80732354287	cotuohys@craigslist.org	6716559337	4784 Luster Junction
30	Ara Vennart	50177186762	avennartt@w3.org	5904312169	4 Melrose Parkway
31	Edvard Bunning	84269882200	ebunningu@alibaba.com	2326367365	8 Menomonie Way
32	Durand Course	62559190744	dcoursev@gnu.org	6484010053	5 Clove Court
33	Jess Ormonde	24764812594	jormondew@usda.gov	8799399688	67 Delladonna Street
34	Tabbi Du Hamel	57473981980	tdux@google.pl	6298111268	13558 Bultman Terrace
35	Beulah Meltetal	34962469566	bmeltetaly@uiuc.edu	6582366757	5 Parkside Pass
36	Kalila Renyard	78874522754	krenyardz@google.fr	6378166978	4646 Northland Hill
37	Shantee Bellinger	19931929116	sbellinger10@redcross.org	9704706833	58259 Maywood Center
38	Kristina McVie	8226653256	kmcvie11@is.gd	6634424700	1051 Cambridge Park
39	Donavon Kasher	32918505594	dkasher12@aboutads.info	1693003940	00 Menomonie Avenue
40	Berty Burker	73991781729	bburker13@home.pl	4083190301	60 Esker Terrace
41	Raddie Van de Vlies	42578655290	rvan14@1688.com	7752414818	45556 Mandrake Road
42	Timmi Finn	10821416317	tfinn15@google.es	6406047781	11141 Duke Trail
43	Raymond Goldsbrough	63205139038	rgoldsbrough16@stumbleupon.com	6742410976	5 Bartelt Way
44	Bella Frizzell	45351681759	bfrizzell17@reuters.com	5532625686	97 Truax Place
45	Pennie Gaiford	84980019283	pgaiford18@hc360.com	6734097842	98837 Grim Pass
46	Bailey Bossingham	20203422076	bbossingham19@acquirethisname.com	2394093223	266 Macpherson Court
47	Allissa Figge	14875879289	afigge1a@google.co.jp	5343922529	59437 Buell Lane
48	Amity Pursehouse	70027378475	apursehouse1b@liveinternet.ru	1853094952	4687 Sage Terrace
49	Penny Ridgway	38765761676	pridgway1c@intel.com	2543223505	7245 Summer Ridge Crossing
\.


--
-- TOC entry 3367 (class 0 OID 16501)
-- Dependencies: 219
-- Data for Name: fabricanteinstrumento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fabricanteinstrumento (fabricanteid, nomefabricante, paisfabricanteid) FROM stdin;
10	Fender	2
12	Gibson	2
13	Ibanez	3
14	PRS	2
15	Gretsch	2
16	ESP	3
17	Jackson	2
18	Music Man	2
20	Steinway and Sons	2
21	Yamaha	3
22	Bosendorfer	9
23	Bechstein	8
24	Bluthner	8
25	Kawai	3
26	Fazioli	6
27	Petrof	10
28	Grotrian	8
29	Mason and Hamlin	2
30	Pearl	3
31	DW Drums	2
32	Ludwig	2
33	Tama	3
34	Sonor	8
35	Premier	5
36	Roland	3
37	Selmer	12
\.


--
-- TOC entry 3362 (class 0 OID 16468)
-- Dependencies: 214
-- Data for Name: instrumento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instrumento (instrumentoid, nomeproduto, descricaoproduto, categoriaproduto, nomefabricante) FROM stdin;
1001	Guitarra Elétrica	Instrumento de cordas com captadores que podem ser amplificados eletronicamente.	1	10
1002	Piano	Instrumento de teclas que produz som através de cordas percutidas por martelos.	5	21
1003	Bateria	Conjunto de tambores e pratos que são tocados com baquetas.	4	30
1004	Saxofone	Instrumento de sopro com palheta simples e bocal cônico.	7	37
1005	Guitarra Elétrica	Instrumento de cordas com captadores que podem ser amplificados eletronicamente.	1	12
1006	Piano	Instrumento de teclas que produz som através de cordas percutidas por martelos.	5	20
1007	Bateria	Conjunto de tambores e pratos que são tocados com baquetas.	4	31
1008	Flauta	Instrumento de sopro de madeira com orifícios e embocadura de bico.	7	21
1009	Baixo Elétrico	Instrumento de cordas tocado com os dedos ou palheta, com captadores que podem ser amplificados eletronicamente.	1	10
1010	Violino	Instrumento de cordas tocado com um arco, com sonoridade aguda e doce.	1	20
1011	Teclado	Instrumento eletrônico com teclas que reproduz sons de vários instrumentos musicais.	5	36
1012	Bateria Eletrônica	Versão eletrônica da bateria acústica, com pads sensíveis ao toque.	4	31
1013	Saxofone Tenor	Instrumento de sopro com palheta simples e bocal cônico, de tamanho médio.	7	33
1014	Guitarra Acústica	Instrumento de cordas sem captação eletrônica, produz som amplificado naturalmente.	1	14
1015	Órgão	Instrumento de teclas que produz som através de tubos eletropneumáticos.	5	22
1016	Bateria de Jazz	Conjunto de tambores e pratos com configuração voltada para o estilo musical do jazz.	4	34
1017	Trompete	Instrumento de sopro com bocal cônico, utilizado em diversos gêneros musicais.	7	37
1018	Guitarra Clássica	Instrumento de cordas com corpo oco, utilizado em música clássica e flamenco.	1	18
1019	Acordeão	Instrumento de teclas e fole, utilizado em música folclórica e popular.	5	24
1020	Bateria Infantil	Versão em tamanho reduzido da bateria acústica, adequada para crianças.	4	32
1021	Clarinete	Instrumento de sopro com palheta simples e bocal estreito, utilizado em bandas e orquestras.	7	37
1022	Violão	Instrumento de cordas tocado com os dedos ou palheta, com caixa de ressonância.	1	13
1023	Teclado Sintetizador	Instrumento eletrônico com teclas e recursos de síntese sonora.	6	25
1024	Cajón	Instrumento de percussão em formato de caixa, tocado com as mãos.	2	34
1025	Trombone	Instrumento de sopro com vara deslizante, utilizado em bandas e orquestras.	7	37
1026	Violoncelo	Instrumento de cordas tocado com um arco, com sonoridade grave e profunda.	1	26
1027	Guitarra de 7 Cordas	Versão estendida da guitarra elétrica com uma corda adicional para notas graves.	1	13
1028	Saxofone Alto	Instrumento de sopro com palheta simples e bocal cônico, de tamanho médio-agudo.	7	37
1029	Piano de Cauda	Variação do piano com corpo em formato de cauda, utilizado em apresentações de concerto.	5	22
1030	Congas	Par de tambores afunilados tocados com as mãos, utilizado em música latina.	4	31
1031	Trompa	Instrumento de sopro com tubo em espiral, utilizado em bandas e orquestras.	7	34
1032	Guitarra de 12 Cordas	Versão estendida da guitarra elétrica com doze cordas para sonoridade mais rica.	1	18
1033	Harpa	Instrumento de cordas tocado com as mãos, com sonoridade delicada e ressonante.	1	24
1034	Bateria de Marcha	Conjunto de tambores e pratos utilizado em desfiles e apresentações de bandas marciais.	4	36
1035	Trompete Piccolo	Versão menor do trompete com som agudo e brilhante, utilizado em música clássica e jazz.	7	37
\.


--
-- TOC entry 3366 (class 0 OID 16496)
-- Dependencies: 218
-- Data for Name: paisinstrumento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paisinstrumento (paisid, paisorigem) FROM stdin;
1	Brasil
2	Estados Unidos
3	Japão
4	Espanha
5	Inglaterra
6	Itália
7	China
8	Alemanha
9	Áustria
10	República Tcheca
12	França
\.


--
-- TOC entry 3368 (class 0 OID 16533)
-- Dependencies: 220
-- Data for Name: peca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peca (pecaid, numeroserie, identificacaoinstrumento, descricaopeca, anoproducao, precopeca) FROM stdin;
1002	87654321	1002	Instrumento de teclas que produz som através de cordas percutidas por martelos.	2005	13874.89
1003	23456789	1003	Conjunto de tambores e pratos que são tocados com baquetas.	2018	5684.96
1004	98765432	1004	Instrumento de sopro de madeira com orifícios e embocadura de bico.	2015	542.10
1005	45678901	1005	Instrumento de cordas tocado com os dedos ou palheta, com captadores que podem ser amplificados eletronicamente.	2019	4800.50
1006	89012345	1006	Instrumento de teclas que produz som através de cordas percutidas por martelos.	2008	16458.63
1007	56789012	1007	Conjunto de tambores e pratos que são tocados com baquetas.	2021	6859.99
1008	90672116	1008	Instrumento de sopro de madeira com orifícios e embocadura de bico.	2013	152.60
1009	34567890	1009	Instrumento de cordas tocado com os dedos ou palheta, com captadores que podem ser amplificados eletronicamente.	2017	3950.99
1010	67890123	1010	Instrumento de cordas tocado com um arco, com sonoridade aguda e doce.	2010	4852.41
1011	12346741	1011	Instrumento eletrônico com teclas que reproduz sons de vários instrumentos musicais.	2016	3150.52
1012	76543210	1012	Versão eletrônica da bateria acústica, com pads sensíveis ao toque.	2014	2365.52
1013	54321098	1013	Instrumento de sopro com palheta simples e bocal cônico, de tamanho médio.	2020	14899.60
1014	85747412	1014	Instrumento de cordas sem captação eletrônica, produz som amplificado naturalmente.	2007	3508.00
1015	56784512	1015	Instrumento de teclas que produz som através de tubos eletropneumáticos.	2021	21548.63
1001	12345678	1001	Instrumento de cordas com captadores que podem ser amplificados eletronicamente.	2020	3599.99
1016	90155456	1016	Conjunto de tambores e pratos com configuração voltada para o estilo musical do jazz.	2012	8547.40
1017	68567890	1017	Instrumento de sopro com bocal cônico, utilizado em diversos gêneros musicais.	2018	9654.63
1018	74896123	1018	Instrumento de cordas com corpo oco, utilizado em música clássica e flamenco.	2011	4563.63
1019	74417857	1019	Instrumento de teclas e fole, utilizado em música folclórica e popular.	2017	7896.52
1020	76584120	1020	Versão em tamanho reduzido da bateria acústica, adequada para crianças.	2013	3587.63
1021	57571098	1021	Instrumento de sopro com palheta simples e bocal estreito, utilizado em bandas e orquestras.	2019	4941.00
1022	74851474	1022	Instrumento de cordas tocado com os dedos ou palheta, com caixa de ressonância.	2006	1250.52
1023	56751512	1023	Instrumento eletrônico com teclas e recursos de síntese sonora.	2022	31482.00
1024	90123456	1024	Instrumento de percussão em formato de caixa, tocado com as mãos.	2014	854.63
1025	77767890	1025	Instrumento de sopro com vara deslizante, utilizado em bandas e orquestras.	2017	2457.00
1026	89740123	1026	Instrumento de cordas tocado com um arco, com sonoridade grave e profunda.	2009	5625.00
1027	54565127	1027	Versão estendida da guitarra elétrica com uma corda adicional para notas graves.	2018	25920.00
1028	76584210	1028	Instrumento de sopro com palheta simples e bocal cônico, de tamanho médio-agudo.	2015	14586.32
1029	54989098	1029	Variação do piano com corpo em formato de cauda, utilizado em apresentações de concerto.	2021	32415.00
1030	89017963	1030	Par de tambores afunilados tocados com as mãos, utilizado em música latina.	2008	2654.63
1031	56450912	1031	Instrumento de sopro com tubo em espiral, utilizado em bandas e orquestras.	2020	7485.63
1032	90127456	1032	Versão estendida da guitarra elétrica com doze cordas para sonoridade mais rica.	2013	21541.60
1033	77517890	1033	Instrumento de cordas tocado com as mãos, com sonoridade delicada e ressonante.	2016	45000.00
1034	32579823	1034	Conjunto de tambores e pratos utilizado em desfiles e apresentações de bandas marciais.	2010	9654.00
1035	75451167	1035	Versão menor do trompete com som agudo e brilhante, utilizado em música clássica e jazz.	2019	4500.60
\.


--
-- TOC entry 3364 (class 0 OID 16484)
-- Dependencies: 216
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedido (pedidoid, clienteid, instrumentoid, statuspedido, formapagamento, datapedido, horapedido, valorpedido) FROM stdin;
6541	1	1001	em processamento	cartao de credito	2021-05-13	08:30:00	2799.99
7458	2	1002	concluído	cartao de credito	2021-05-14	10:45:00	3250.50
5742	3	1003	em processamento	cartao de credito	2021-05-15	14:20:00	2100.00
8236	4	1004	concluído	cartao de credito	2021-05-16	16:55:00	3999.99
3685	5	1005	concluído	cartao de credito	2021-05-17	09:10:00	2900.00
1577	6	1006	em processamento	boleto bancário	2021-05-18	11:35:00	4200.75
9885	7	1007	concluído	cartao de credito	2021-05-19	15:00:00	3800.00
4851	8	1008	em processamento	cartao de credito	2021-05-20	17:25:00	2500.00
6985	9	1009	cancelado	cartao de credito	2021-05-21	10:40:00	2899.99
2368	10	1010	concluído	cartao de credito	2021-05-22	13:05:00	3700.00
4564	11	1011	concluído	cartao de credito	2021-05-23	16:30:00	2999.99
8656	12	1012	concluído	cartao de credito	2021-05-24	08:45:00	3200.50
2435	13	1013	concluído	boleto bancário	2021-05-25	11:10:00	2650.00
8786	14	1014	em processamento	cartao de credito	2021-05-26	13:35:00	3800.00
2884	15	1015	cancelado	cartao de credito	2021-05-27	16:00:00	4300.99
9845	16	1016	em processamento	cartao de credito	2021-05-28	09:15:00	2899.99
8745	17	1017	concluído	cartao de credito	2021-05-29	11:40:00	3500.00
6545	18	1018	em processamento	cartao de credito	2021-05-30	14:05:00	2499.99
9658	19	1019	concluído	cartao de credito	2021-05-31	16:30:00	3100.50
3652	20	1020	em processamento	cartao de credito	2021-06-01	08:55:00	2750.00
8845	21	1021	concluído	cartao de credito	2021-06-02	11:20:00	3899.99
9542	22	1022	em processamento	cartao de credito	2021-06-03	13:45:00	3999.00
3674	23	1023	concluído	boleto bancário	2021-06-04	16:10:00	3200.00
4587	24	1024	em processamento	boleto bancário	2021-06-05	09:25:00	2499.99
6845	25	1025	concluído	cartao de credito	2021-06-06	11:50:00	2750.50
2584	26	1026	em processamento	cartao de credito	2021-06-07	14:15:00	2950.00
9654	27	1027	cancelado	cartao de credito	2021-06-08	16:40:00	4199.99
1452	28	1028	em processamento	cartao de credito	2021-06-09	09:55:00	3599.00
9888	29	1029	concluído	cartao de credito	2021-06-10	12:20:00	2750.00
1887	30	1030	em processamento	cartao de credito	2021-06-11	14:45:00	3200.99
6523	31	1031	concluído	cartao de credito	2021-06-12	17:10:00	2300.00
9884	32	1032	em processamento	boleto bancário	2021-06-13	10:25:00	2899.99
8787	33	1033	concluído	cartao de credito	2021-06-14	12:50:00	3150.50
3687	34	1034	em processamento	boleto bancário	2021-06-15	15:15:00	2700.00
1821	35	1035	cancelado	boleto bancário	2021-06-16	17:40:00	3999.99
\.


--
-- TOC entry 3205 (class 2606 OID 16495)
-- Name: categoriainstrumentos categoriaid_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoriainstrumentos
    ADD CONSTRAINT categoriaid_pk PRIMARY KEY (categoriaid);


--
-- TOC entry 3199 (class 2606 OID 16565)
-- Name: cliente cliente_cpfcliente_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cpfcliente_key UNIQUE (cpfcliente);


--
-- TOC entry 3201 (class 2606 OID 16481)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (clienteid);


--
-- TOC entry 3209 (class 2606 OID 16505)
-- Name: fabricanteinstrumento fabricanteid_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fabricanteinstrumento
    ADD CONSTRAINT fabricanteid_pk PRIMARY KEY (fabricanteid);


--
-- TOC entry 3197 (class 2606 OID 16474)
-- Name: instrumento instrumento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrumento
    ADD CONSTRAINT instrumento_pkey PRIMARY KEY (instrumentoid);


--
-- TOC entry 3207 (class 2606 OID 16500)
-- Name: paisinstrumento paisid_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paisinstrumento
    ADD CONSTRAINT paisid_pk PRIMARY KEY (paisid);


--
-- TOC entry 3211 (class 2606 OID 16581)
-- Name: peca peca_numeroserie_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peca
    ADD CONSTRAINT peca_numeroserie_key UNIQUE (numeroserie);


--
-- TOC entry 3213 (class 2606 OID 16537)
-- Name: peca pecaid_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peca
    ADD CONSTRAINT pecaid_pk PRIMARY KEY (pecaid);


--
-- TOC entry 3203 (class 2606 OID 16602)
-- Name: pedido pedido_pedidoid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pedidoid_key UNIQUE (pedidoid);


--
-- TOC entry 3218 (class 2606 OID 16506)
-- Name: fabricanteinstrumento fabricanteinstrumento_paisfabricanteid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fabricanteinstrumento
    ADD CONSTRAINT fabricanteinstrumento_paisfabricanteid_fkey FOREIGN KEY (paisfabricanteid) REFERENCES public.paisinstrumento(paisid);


--
-- TOC entry 3214 (class 2606 OID 16517)
-- Name: instrumento instrumento_categoriaproduto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrumento
    ADD CONSTRAINT instrumento_categoriaproduto_fkey FOREIGN KEY (categoriaproduto) REFERENCES public.categoriainstrumentos(categoriaid);


--
-- TOC entry 3215 (class 2606 OID 16528)
-- Name: instrumento instrumento_nomefabricante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrumento
    ADD CONSTRAINT instrumento_nomefabricante_fkey FOREIGN KEY (nomefabricante) REFERENCES public.fabricanteinstrumento(fabricanteid);


--
-- TOC entry 3219 (class 2606 OID 16540)
-- Name: peca peca_instrumento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peca
    ADD CONSTRAINT peca_instrumento_fkey FOREIGN KEY (identificacaoinstrumento) REFERENCES public.instrumento(instrumentoid);


--
-- TOC entry 3216 (class 2606 OID 16609)
-- Name: pedido pedido_clienteid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_clienteid_fkey FOREIGN KEY (clienteid) REFERENCES public.cliente(clienteid);


--
-- TOC entry 3217 (class 2606 OID 16545)
-- Name: pedido pedido_instrumentoid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_instrumentoid_fkey FOREIGN KEY (instrumentoid) REFERENCES public.peca(pecaid);


-- Completed on 2023-05-31 20:15:21

--
-- PostgreSQL database dump complete
--

