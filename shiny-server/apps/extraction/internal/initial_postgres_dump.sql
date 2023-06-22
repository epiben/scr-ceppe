--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 14.4

-- Started on 2022-09-08 23:47:44 CEST

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
-- CLEAN UP DATABASE = REMOVE EXISTING DATABASES IF THEY EXIST
--

DROP TABLE IF EXISTS public.causal_inference_methods;
DROP TABLE IF EXISTS public.countries;
DROP TABLE IF EXISTS public.data_models;
DROP TABLE IF EXISTS public.data_types;
DROP TABLE IF EXISTS public.datasets;
DROP TABLE IF EXISTS public.estimation_techniques;
DROP TABLE IF EXISTS public.extractions;
DROP TABLE IF EXISTS public.journals;
DROP TABLE IF EXISTS public.populations;
DROP TABLE IF EXISTS public.provenance;
DROP TABLE IF EXISTS public.rcts;
DROP TABLE IF EXISTS public.software_languages;
DROP TABLE IF EXISTS public.software_libraries;
DROP TABLE IF EXISTS public.vocabs;


--
-- TOC entry 204 (class 1259 OID 26236)
-- Name: causal_inference_methods; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.causal_inference_methods (
    method_name text,
    method_id text
);


ALTER TABLE public.causal_inference_methods OWNER TO shiny;

--
-- TOC entry 211 (class 1259 OID 26278)
-- Name: countries; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.countries (
    country_name text
);


ALTER TABLE public.countries OWNER TO shiny;

--
-- TOC entry 208 (class 1259 OID 26260)
-- Name: data_models; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.data_models (
    data_model_name text
);


ALTER TABLE public.data_models OWNER TO shiny;

--
-- TOC entry 207 (class 1259 OID 26254)
-- Name: data_types; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.data_types (
    data_type_name text
);


ALTER TABLE public.data_types OWNER TO shiny;

--
-- TOC entry 205 (class 1259 OID 26242)
-- Name: datasets; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.datasets (
    dataset_name text,
    dataset_id text
);


ALTER TABLE public.datasets OWNER TO shiny;

--
-- TOC entry 213 (class 1259 OID 26290)
-- Name: estimation_techniques; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.estimation_techniques (
    technique_name text
);


ALTER TABLE public.estimation_techniques OWNER TO shiny;

--
-- TOC entry 203 (class 1259 OID 26230)
-- Name: extractions; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.extractions (
    rct_name text,
    extractor text,
    extracted_data text,
    extraction_done double precision
);


ALTER TABLE public.extractions OWNER TO shiny;

--
-- TOC entry 210 (class 1259 OID 26272)
-- Name: journals; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.journals (
    journal_name text
);


ALTER TABLE public.journals OWNER TO shiny;

--
-- TOC entry 212 (class 1259 OID 26284)
-- Name: populations; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.populations (
    population_name text
);


ALTER TABLE public.populations OWNER TO shiny;

--
-- TOC entry 206 (class 1259 OID 26248)
-- Name: provenance; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.provenance (
    provenance_name text
);


ALTER TABLE public.provenance OWNER TO shiny;

--
-- TOC entry 202 (class 1259 OID 26224)
-- Name: rcts; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.rcts (
    rct_name text,
    pending_bskh integer,
    pending_rest integer,
    status integer,
    corresponding_author_name text,
    corresponding_author_email text,
    corresponding_author_first_contact timestamp with time zone,
    corresponding_author_second_contact timestamp with time zone
);


ALTER TABLE public.rcts OWNER TO shiny;

--
-- TOC entry 214 (class 1259 OID 26296)
-- Name: software_languages; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.software_languages (
    language_name text
);


ALTER TABLE public.software_languages OWNER TO shiny;

--
-- TOC entry 215 (class 1259 OID 26302)
-- Name: software_libraries; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.software_libraries (
    library_name text
);


ALTER TABLE public.software_libraries OWNER TO shiny;

--
-- TOC entry 209 (class 1259 OID 26266)
-- Name: vocabs; Type: TABLE; Schema: public; Owner: shiny
--

CREATE TABLE public.vocabs (
    vocab_name text
);


ALTER TABLE public.vocabs OWNER TO shiny;

--
-- TOC entry 3251 (class 0 OID 26236)
-- Dependencies: 204
-- Data for Name: causal_inference_methods; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.causal_inference_methods (method_name, method_id) FROM stdin;
Generalised linear model	4207b4b28a561165d39ccc6b356d063a
Propensity-score based	eb534997fe271c0703bfb43c6189a4df
Stratification-score based	284382ba4a203bbfc506446c390d96f0
Hierarchical modelling	c3e3dc97a7e1b12c29f1d6be1e0a8c51
Counterfactuals-as-missing	345cad85c22a64909fb13edf7bb15c23
Pre-specified DAG	5a00d343e43a009b51d7fd77988890b5
Causal discovery	9efb7d4f820ba903262c3cb87f868ebe
Causal structure learning	04d8e04933bb658b2d53421d0bb118b6
None	6adf97f83acf6453d4a6a4b1070f3754
\.


--
-- TOC entry 3258 (class 0 OID 26278)
-- Dependencies: 211
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.countries (country_name) FROM stdin;
Andorra
United Arab Emirates
Afghanistan
Antigua and Barbuda
Anguilla
Albania
Armenia
Angola
Antarctica
Argentina
American Samoa
Austria
Australia
Aruba
ï¿½land Islands
Azerbaijan
Bosnia and Herzegovina
Barbados
Bangladesh
Belgium
Burkina Faso
Bulgaria
Bahrain
Burundi
Benin
Saint Barthï¿½lemy
Bermuda
Brunei Darussalam
Bolivia
Caribbean Netherlands
Brazil
Bahamas
Bhutan
Bouvet Island
Botswana
Belarus
Belize
Canada
Cocos (Keeling) Islands
Congo, Democratic Republic of
Central African Republic
Congo
Switzerland
Cï¿½te d'Ivoire
Cook Islands
Chile
Cameroon
China
Colombia
Costa Rica
Cuba
Cape Verde
Curaï¿½ao
Christmas Island
Cyprus
Czech Republic
Germany
Djibouti
Denmark
Dominica
Dominican Republic
Algeria
Ecuador
Estonia
Egypt
Western Sahara
Eritrea
Spain
Ethiopia
Finland
Fiji
Falkland Islands
Micronesia, Federated States of
Faroe Islands
France
Gabon
United Kingdom
Grenada
Georgia
French Guiana
Guernsey
Ghana
Gibraltar
Greenland
Gambia
Guinea
Guadeloupe
Equatorial Guinea
Greece
South Georgia and the South Sandwich Islands
Guatemala
Guam
Guinea-Bissau
Guyana
Hong Kong
Heard and McDonald Islands
Honduras
Croatia
Haiti
Hungary
Indonesia
Ireland
Israel
Isle of Man
India
British Indian Ocean Territory
Iraq
Iran
Iceland
Italy
Jersey
Jamaica
Jordan
Japan
Kenya
Kyrgyzstan
Cambodia
Kiribati
Comoros
Saint Kitts and Nevis
North Korea
South Korea
Kuwait
Cayman Islands
Kazakhstan
Lao People's Democratic Republic
Lebanon
Saint Lucia
Liechtenstein
Sri Lanka
Liberia
Lesotho
Lithuania
Luxembourg
Latvia
Libya
Morocco
Monaco
Moldova
Montenegro
Saint-Martin (France)
Madagascar
Marshall Islands
Macedonia
Mali
Myanmar
Mongolia
Macau
Northern Mariana Islands
Martinique
Mauritania
Montserrat
Malta
Mauritius
Maldives
Malawi
Mexico
Malaysia
Mozambique
Namibia
New Caledonia
Niger
Norfolk Island
Nigeria
Nicaragua
The Netherlands
Norway
Nepal
Nauru
Niue
New Zealand
Oman
Panama
Peru
French Polynesia
Papua New Guinea
Philippines
Pakistan
Poland
St. Pierre and Miquelon
Pitcairn
Puerto Rico
Palestine, State of
Portugal
Palau
Paraguay
Qatar
Rï¿½union
Romania
Serbia
Russian Federation
Rwanda
Saudi Arabia
Solomon Islands
Seychelles
Sudan
Sweden
Singapore
Saint Helena
Slovenia
Svalbard and Jan Mayen Islands
Slovakia
Sierra Leone
San Marino
Senegal
Somalia
Suriname
South Sudan
Sao Tome and Principe
El Salvador
Sint Maarten (Dutch part)
Syria
Swaziland
Turks and Caicos Islands
Chad
French Southern Territories
Togo
Thailand
Tajikistan
Tokelau
Timor-Leste
Turkmenistan
Tunisia
Tonga
Turkey
Trinidad and Tobago
Tuvalu
Taiwan
Tanzania
Ukraine
Uganda
United States Minor Outlying Islands
United States of America
Uruguay
Uzbekistan
Vatican
Saint Vincent and the Grenadines
Venezuela
Virgin Islands (British)
Virgin Islands (U.S.)
Vietnam
Vanuatu
Wallis and Futuna Islands
Samoa
Yemen
Mayotte
South Africa
Zambia
Zimbabwe
Unreported
\.


--
-- TOC entry 3255 (class 0 OID 26260)
-- Dependencies: 208
-- Data for Name: data_models; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.data_models (data_model_name) FROM stdin;
OMOP
FIHR
MIMIC-3
MIMIC-4
eICU
Unreported
\.


--
-- TOC entry 3254 (class 0 OID 26254)
-- Dependencies: 207
-- Data for Name: data_types; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.data_types (data_type_name) FROM stdin;
Diagnosis codes
Procedure codes
Free text
Biochemistry
Medication
Unreported
\.


--
-- TOC entry 3252 (class 0 OID 26242)
-- Dependencies: 205
-- Data for Name: datasets; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.datasets (dataset_name, dataset_id) FROM stdin;
MIMIC-3	64f645e9a85b03c6d5e6a5c5262e6fcc
MIMIC-4	cd8c8d6bce7993101f5ef715c3551c0f
eICU	38a817e4f89988ca216d028f78c9fe2d
None	6adf97f83acf6453d4a6a4b1070f3754
\.


--
-- TOC entry 3260 (class 0 OID 26290)
-- Dependencies: 213
-- Data for Name: estimation_techniques; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.estimation_techniques (technique_name) FROM stdin;
Frequentist
Bayesian
Unreported
\.


--
-- TOC entry 3257 (class 0 OID 26272)
-- Dependencies: 210
-- Data for Name: journals; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.journals (journal_name) FROM stdin;
Am J Respir Crit Care Med
BMJ
Chest
Circulation
Crit Care
Crit Care Med
Intensive Care Med
JAMA
JAMA Neurol
Lancet
Lancet Respir Med
NEJM
\.


--
-- TOC entry 3259 (class 0 OID 26284)
-- Dependencies: 212
-- Data for Name: populations; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.populations (population_name) FROM stdin;
Critically ill
In-hospital
Internal medicine
Surgical
Primary sector
Previous RCT(s)
Unreported
Other
\.


--
-- TOC entry 3253 (class 0 OID 26248)
-- Dependencies: 206
-- Data for Name: provenance; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.provenance (provenance_name) FROM stdin;
Clinical observations
ICU apparatus
National register(s)
Patient records
Unreported
\.


--
-- TOC entry 3261 (class 0 OID 26296)
-- Dependencies: 214
-- Data for Name: software_languages; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.software_languages (language_name) FROM stdin;
R
Python
SPSS
SAS
Stata
Matlab
Other
Unreported
\.


--
-- TOC entry 3262 (class 0 OID 26302)
-- Dependencies: 215
-- Data for Name: software_libraries; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.software_libraries (library_name) FROM stdin;
None
\.


--
-- TOC entry 3256 (class 0 OID 26266)
-- Dependencies: 209
-- Data for Name: vocabs; Type: TABLE DATA; Schema: public; Owner: shiny
--

COPY public.vocabs (vocab_name) FROM stdin;
ICD-8
ICD-9
ICD-10
ATC
RxNorm
SNOMED-CT
LOINC
Unreported
\.


-- Completed on 2022-09-08 23:47:44 CEST

--
-- PostgreSQL database dump complete
--

