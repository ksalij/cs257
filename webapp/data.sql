--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: passenger_info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.passenger_info (
    id integer,
    survived boolean,
    class integer,
    name text,
    sex text,
    age numeric,
    sibsp integer,
    parch integer,
    ticket text,
    fare numeric,
    cabin text,
    embarked text
);


--
-- Data for Name: passenger_info; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.passenger_info (id, survived, class, name, sex, age, sibsp, parch, ticket, fare, cabin, embarked) FROM stdin;
1	f	3	Braund, Mr. Owen Harris	male	22	1	0	A/5 21171	7.25	\N	S
2	t	1	Cumings, Mrs. John Bradley (Florence Briggs Thayer)	female	38	1	0	PC 17599	71.2833	C85	C
3	t	3	Heikkinen, Miss. Laina	female	26	0	0	STON/O2. 3101282	7.925	\N	S
4	t	1	Futrelle, Mrs. Jacques Heath (Lily May Peel)	female	35	1	0	113803	53.1	C123	S
5	f	3	Allen, Mr. William Henry	male	35	0	0	373450	8.05	\N	S
6	f	3	Moran, Mr. James	male	\N	0	0	330877	8.4583	\N	Q
7	f	1	McCarthy, Mr. Timothy J	male	54	0	0	17463	51.8625	E46	S
8	f	3	Palsson, Master. Gosta Leonard	male	2	3	1	349909	21.075	\N	S
9	t	3	Johnson, Mrs. Oscar W (Elisabeth Vilhelmina Berg)	female	27	0	2	347742	11.1333	\N	S
10	t	2	Nasser, Mrs. Nicholas (Adele Achem)	female	14	1	0	237736	30.0708	\N	C
11	t	3	Sandstrom, Miss. Marguerite Rut	female	4	1	1	PP 9549	16.7	G6	S
12	t	1	Bonnell, Miss. Elizabeth	female	58	0	0	113783	26.55	C103	S
13	f	3	Saundercock, Mr. William Henry	male	20	0	0	A/5. 2151	8.05	\N	S
14	f	3	Andersson, Mr. Anders Johan	male	39	1	5	347082	31.275	\N	S
15	f	3	Vestrom, Miss. Hulda Amanda Adolfina	female	14	0	0	350406	7.8542	\N	S
16	t	2	Hewlett, Mrs. (Mary D Kingcome) 	female	55	0	0	248706	16	\N	S
17	f	3	Rice, Master. Eugene	male	2	4	1	382652	29.125	\N	Q
18	t	2	Williams, Mr. Charles Eugene	male	\N	0	0	244373	13	\N	S
19	f	3	Vander Planke, Mrs. Julius (Emelia Maria Vandemoortele)	female	31	1	0	345763	18	\N	S
20	t	3	Masselmani, Mrs. Fatima	female	\N	0	0	2649	7.225	\N	C
21	f	2	Fynney, Mr. Joseph J	male	35	0	0	239865	26	\N	S
22	t	2	Beesley, Mr. Lawrence	male	34	0	0	248698	13	D56	S
23	t	3	McGowan, Miss. Anna "Annie"	female	15	0	0	330923	8.0292	\N	Q
24	t	1	Sloper, Mr. William Thompson	male	28	0	0	113788	35.5	A6	S
25	f	3	Palsson, Miss. Torborg Danira	female	8	3	1	349909	21.075	\N	S
26	t	3	Asplund, Mrs. Carl Oscar (Selma Augusta Emilia Johansson)	female	38	1	5	347077	31.3875	\N	S
27	f	3	Emir, Mr. Farred Chehab	male	\N	0	0	2631	7.225	\N	C
28	f	1	Fortune, Mr. Charles Alexander	male	19	3	2	19950	263	C23 C25 C27	S
29	t	3	O'Dwyer, Miss. Ellen "Nellie"	female	\N	0	0	330959	7.8792	\N	Q
30	f	3	Todoroff, Mr. Lalio	male	\N	0	0	349216	7.8958	\N	S
31	f	1	Uruchurtu, Don. Manuel E	male	40	0	0	PC 17601	27.7208	\N	C
32	t	1	Spencer, Mrs. William Augustus (Marie Eugenie)	female	\N	1	0	PC 17569	146.5208	B78	C
33	t	3	Glynn, Miss. Mary Agatha	female	\N	0	0	335677	7.75	\N	Q
34	f	2	Wheadon, Mr. Edward H	male	66	0	0	C.A. 24579	10.5	\N	S
35	f	1	Meyer, Mr. Edgar Joseph	male	28	1	0	PC 17604	82.1708	\N	C
36	f	1	Holverson, Mr. Alexander Oskar	male	42	1	0	113789	52	\N	S
37	t	3	Mamee, Mr. Hanna	male	\N	0	0	2677	7.2292	\N	C
38	f	3	Cann, Mr. Ernest Charles	male	21	0	0	A./5. 2152	8.05	\N	S
39	f	3	Vander Planke, Miss. Augusta Maria	female	18	2	0	345764	18	\N	S
40	t	3	Nicola-Yarred, Miss. Jamila	female	14	1	0	2651	11.2417	\N	C
41	f	3	Ahlin, Mrs. Johan (Johanna Persdotter Larsson)	female	40	1	0	7546	9.475	\N	S
42	f	2	Turpin, Mrs. William John Robert (Dorothy Ann Wonnacott)	female	27	1	0	11668	21	\N	S
43	f	3	Kraeff, Mr. Theodor	male	\N	0	0	349253	7.8958	\N	C
44	t	2	Laroche, Miss. Simonne Marie Anne Andree	female	3	1	2	SC/Paris 2123	41.5792	\N	C
45	t	3	Devaney, Miss. Margaret Delia	female	19	0	0	330958	7.8792	\N	Q
46	f	3	Rogers, Mr. William John	male	\N	0	0	S.C./A.4. 23567	8.05	\N	S
47	f	3	Lennon, Mr. Denis	male	\N	1	0	370371	15.5	\N	Q
48	t	3	O'Driscoll, Miss. Bridget	female	\N	0	0	14311	7.75	\N	Q
49	f	3	Samaan, Mr. Youssef	male	\N	2	0	2662	21.6792	\N	C
50	f	3	Arnold-Franchi, Mrs. Josef (Josefine Franchi)	female	18	1	0	349237	17.8	\N	S
51	f	3	Panula, Master. Juha Niilo	male	7	4	1	3101295	39.6875	\N	S
52	f	3	Nosworthy, Mr. Richard Cater	male	21	0	0	A/4. 39886	7.8	\N	S
53	t	1	Harper, Mrs. Henry Sleeper (Myna Haxtun)	female	49	1	0	PC 17572	76.7292	D33	C
54	t	2	Faunthorpe, Mrs. Lizzie (Elizabeth Anne Wilkinson)	female	29	1	0	2926	26	\N	S
55	f	1	Ostby, Mr. Engelhart Cornelius	male	65	0	1	113509	61.9792	B30	C
56	t	1	Woolner, Mr. Hugh	male	\N	0	0	19947	35.5	C52	S
57	t	2	Rugg, Miss. Emily	female	21	0	0	C.A. 31026	10.5	\N	S
58	f	3	Novel, Mr. Mansouer	male	28.5	0	0	2697	7.2292	\N	C
59	t	2	West, Miss. Constance Mirium	female	5	1	2	C.A. 34651	27.75	\N	S
60	f	3	Goodwin, Master. William Frederick	male	11	5	2	CA 2144	46.9	\N	S
61	f	3	Sirayanian, Mr. Orsen	male	22	0	0	2669	7.2292	\N	C
62	t	1	Icard, Miss. Amelie	female	38	0	0	113572	80	B28	\N
63	f	1	Harris, Mr. Henry Birkhardt	male	45	1	0	36973	83.475	C83	S
64	f	3	Skoog, Master. Harald	male	4	3	2	347088	27.9	\N	S
65	f	1	Stewart, Mr. Albert A	male	\N	0	0	PC 17605	27.7208	\N	C
66	t	3	Moubarek, Master. Gerios	male	\N	1	1	2661	15.2458	\N	C
67	t	2	Nye, Mrs. (Elizabeth Ramell)	female	29	0	0	C.A. 29395	10.5	F33	S
68	f	3	Crease, Mr. Ernest James	male	19	0	0	S.P. 3464	8.1583	\N	S
69	t	3	Andersson, Miss. Erna Alexandra	female	17	4	2	3101281	7.925	\N	S
70	f	3	Kink, Mr. Vincenz	male	26	2	0	315151	8.6625	\N	S
71	f	2	Jenkin, Mr. Stephen Curnow	male	32	0	0	C.A. 33111	10.5	\N	S
72	f	3	Goodwin, Miss. Lillian Amy	female	16	5	2	CA 2144	46.9	\N	S
73	f	2	Hood, Mr. Ambrose Jr	male	21	0	0	S.O.C. 14879	73.5	\N	S
74	f	3	Chronopoulos, Mr. Apostolos	male	26	1	0	2680	14.4542	\N	C
75	t	3	Bing, Mr. Lee	male	32	0	0	1601	56.4958	\N	S
76	f	3	Moen, Mr. Sigurd Hansen	male	25	0	0	348123	7.65	F G73	S
77	f	3	Staneff, Mr. Ivan	male	\N	0	0	349208	7.8958	\N	S
78	f	3	Moutal, Mr. Rahamin Haim	male	\N	0	0	374746	8.05	\N	S
79	t	2	Caldwell, Master. Alden Gates	male	0.83	0	2	248738	29	\N	S
80	t	3	Dowdell, Miss. Elizabeth	female	30	0	0	364516	12.475	\N	S
81	f	3	Waelens, Mr. Achille	male	22	0	0	345767	9	\N	S
82	t	3	Sheerlinck, Mr. Jan Baptist	male	29	0	0	345779	9.5	\N	S
83	t	3	McDermott, Miss. Brigdet Delia	female	\N	0	0	330932	7.7875	\N	Q
84	f	1	Carrau, Mr. Francisco M	male	28	0	0	113059	47.1	\N	S
85	t	2	Ilett, Miss. Bertha	female	17	0	0	SO/C 14885	10.5	\N	S
86	t	3	Backstrom, Mrs. Karl Alfred (Maria Mathilda Gustafsson)	female	33	3	0	3101278	15.85	\N	S
87	f	3	Ford, Mr. William Neal	male	16	1	3	W./C. 6608	34.375	\N	S
88	f	3	Slocovski, Mr. Selman Francis	male	\N	0	0	SOTON/OQ 392086	8.05	\N	S
89	t	1	Fortune, Miss. Mabel Helen	female	23	3	2	19950	263	C23 C25 C27	S
90	f	3	Celotti, Mr. Francesco	male	24	0	0	343275	8.05	\N	S
91	f	3	Christmann, Mr. Emil	male	29	0	0	343276	8.05	\N	S
92	f	3	Andreasson, Mr. Paul Edvin	male	20	0	0	347466	7.8542	\N	S
93	f	1	Chaffee, Mr. Herbert Fuller	male	46	1	0	W.E.P. 5734	61.175	E31	S
94	f	3	Dean, Mr. Bertram Frank	male	26	1	2	C.A. 2315	20.575	\N	S
95	f	3	Coxon, Mr. Daniel	male	59	0	0	364500	7.25	\N	S
96	f	3	Shorney, Mr. Charles Joseph	male	\N	0	0	374910	8.05	\N	S
97	f	1	Goldschmidt, Mr. George B	male	71	0	0	PC 17754	34.6542	A5	C
98	t	1	Greenfield, Mr. William Bertram	male	23	0	1	PC 17759	63.3583	D10 D12	C
99	t	2	Doling, Mrs. John T (Ada Julia Bone)	female	34	0	1	231919	23	\N	S
100	f	2	Kantor, Mr. Sinai	male	34	1	0	244367	26	\N	S
101	f	3	Petranec, Miss. Matilda	female	28	0	0	349245	7.8958	\N	S
102	f	3	Petroff, Mr. Pastcho ("Pentcho")	male	\N	0	0	349215	7.8958	\N	S
103	f	1	White, Mr. Richard Frasar	male	21	0	1	35281	77.2875	D26	S
104	f	3	Johansson, Mr. Gustaf Joel	male	33	0	0	7540	8.6542	\N	S
105	f	3	Gustafsson, Mr. Anders Vilhelm	male	37	2	0	3101276	7.925	\N	S
106	f	3	Mionoff, Mr. Stoytcho	male	28	0	0	349207	7.8958	\N	S
107	t	3	Salkjelsvik, Miss. Anna Kristine	female	21	0	0	343120	7.65	\N	S
108	t	3	Moss, Mr. Albert Johan	male	\N	0	0	312991	7.775	\N	S
109	f	3	Rekic, Mr. Tido	male	38	0	0	349249	7.8958	\N	S
110	t	3	Moran, Miss. Bertha	female	\N	1	0	371110	24.15	\N	Q
111	f	1	Porter, Mr. Walter Chamberlain	male	47	0	0	110465	52	C110	S
112	f	3	Zabour, Miss. Hileni	female	14.5	1	0	2665	14.4542	\N	C
113	f	3	Barton, Mr. David John	male	22	0	0	324669	8.05	\N	S
114	f	3	Jussila, Miss. Katriina	female	20	1	0	4136	9.825	\N	S
115	f	3	Attalah, Miss. Malake	female	17	0	0	2627	14.4583	\N	C
116	f	3	Pekoniemi, Mr. Edvard	male	21	0	0	STON/O 2. 3101294	7.925	\N	S
117	f	3	Connors, Mr. Patrick	male	70.5	0	0	370369	7.75	\N	Q
118	f	2	Turpin, Mr. William John Robert	male	29	1	0	11668	21	\N	S
119	f	1	Baxter, Mr. Quigg Edmond	male	24	0	1	PC 17558	247.5208	B58 B60	C
120	f	3	Andersson, Miss. Ellis Anna Maria	female	2	4	2	347082	31.275	\N	S
121	f	2	Hickman, Mr. Stanley George	male	21	2	0	S.O.C. 14879	73.5	\N	S
122	f	3	Moore, Mr. Leonard Charles	male	\N	0	0	A4. 54510	8.05	\N	S
123	f	2	Nasser, Mr. Nicholas	male	32.5	1	0	237736	30.0708	\N	C
124	t	2	Webber, Miss. Susan	female	32.5	0	0	27267	13	E101	S
125	f	1	White, Mr. Percival Wayland	male	54	0	1	35281	77.2875	D26	S
126	t	3	Nicola-Yarred, Master. Elias	male	12	1	0	2651	11.2417	\N	C
127	f	3	McMahon, Mr. Martin	male	\N	0	0	370372	7.75	\N	Q
128	t	3	Madsen, Mr. Fridtjof Arne	male	24	0	0	C 17369	7.1417	\N	S
129	t	3	Peter, Miss. Anna	female	\N	1	1	2668	22.3583	F E69	C
130	f	3	Ekstrom, Mr. Johan	male	45	0	0	347061	6.975	\N	S
131	f	3	Drazenoic, Mr. Jozef	male	33	0	0	349241	7.8958	\N	C
132	f	3	Coelho, Mr. Domingos Fernandeo	male	20	0	0	SOTON/O.Q. 3101307	7.05	\N	S
133	f	3	Robins, Mrs. Alexander A (Grace Charity Laury)	female	47	1	0	A/5. 3337	14.5	\N	S
134	t	2	Weisz, Mrs. Leopold (Mathilde Francoise Pede)	female	29	1	0	228414	26	\N	S
135	f	2	Sobey, Mr. Samuel James Hayden	male	25	0	0	C.A. 29178	13	\N	S
136	f	2	Richard, Mr. Emile	male	23	0	0	SC/PARIS 2133	15.0458	\N	C
137	t	1	Newsom, Miss. Helen Monypeny	female	19	0	2	11752	26.2833	D47	S
138	f	1	Futrelle, Mr. Jacques Heath	male	37	1	0	113803	53.1	C123	S
139	f	3	Osen, Mr. Olaf Elon	male	16	0	0	7534	9.2167	\N	S
140	f	1	Giglio, Mr. Victor	male	24	0	0	PC 17593	79.2	B86	C
141	f	3	Boulos, Mrs. Joseph (Sultana)	female	\N	0	2	2678	15.2458	\N	C
142	t	3	Nysten, Miss. Anna Sofia	female	22	0	0	347081	7.75	\N	S
143	t	3	Hakkarainen, Mrs. Pekka Pietari (Elin Matilda Dolck)	female	24	1	0	STON/O2. 3101279	15.85	\N	S
144	f	3	Burke, Mr. Jeremiah	male	19	0	0	365222	6.75	\N	Q
145	f	2	Andrew, Mr. Edgardo Samuel	male	18	0	0	231945	11.5	\N	S
146	f	2	Nicholls, Mr. Joseph Charles	male	19	1	1	C.A. 33112	36.75	\N	S
147	t	3	Andersson, Mr. August Edvard ("Wennerstrom")	male	27	0	0	350043	7.7958	\N	S
148	f	3	Ford, Miss. Robina Maggie "Ruby"	female	9	2	2	W./C. 6608	34.375	\N	S
149	f	2	Navratil, Mr. Michel ("Louis M Hoffman")	male	36.5	0	2	230080	26	F2	S
150	f	2	Byles, Rev. Thomas Roussel Davids	male	42	0	0	244310	13	\N	S
151	f	2	Bateman, Rev. Robert James	male	51	0	0	S.O.P. 1166	12.525	\N	S
152	t	1	Pears, Mrs. Thomas (Edith Wearne)	female	22	1	0	113776	66.6	C2	S
153	f	3	Meo, Mr. Alfonzo	male	55.5	0	0	A.5. 11206	8.05	\N	S
154	f	3	van Billiard, Mr. Austin Blyler	male	40.5	0	2	A/5. 851	14.5	\N	S
155	f	3	Olsen, Mr. Ole Martin	male	\N	0	0	Fa 265302	7.3125	\N	S
156	f	1	Williams, Mr. Charles Duane	male	51	0	1	PC 17597	61.3792	\N	C
157	t	3	Gilnagh, Miss. Katherine "Katie"	female	16	0	0	35851	7.7333	\N	Q
158	f	3	Corn, Mr. Harry	male	30	0	0	SOTON/OQ 392090	8.05	\N	S
159	f	3	Smiljanic, Mr. Mile	male	\N	0	0	315037	8.6625	\N	S
160	f	3	Sage, Master. Thomas Henry	male	\N	8	2	CA. 2343	69.55	\N	S
161	f	3	Cribb, Mr. John Hatfield	male	44	0	1	371362	16.1	\N	S
162	t	2	Watt, Mrs. James (Elizabeth "Bessie" Inglis Milne)	female	40	0	0	C.A. 33595	15.75	\N	S
163	f	3	Bengtsson, Mr. John Viktor	male	26	0	0	347068	7.775	\N	S
164	f	3	Calic, Mr. Jovo	male	17	0	0	315093	8.6625	\N	S
165	f	3	Panula, Master. Eino Viljami	male	1	4	1	3101295	39.6875	\N	S
166	t	3	Goldsmith, Master. Frank John William "Frankie"	male	9	0	2	363291	20.525	\N	S
167	t	1	Chibnall, Mrs. (Edith Martha Bowerman)	female	\N	0	1	113505	55	E33	S
168	f	3	Skoog, Mrs. William (Anna Bernhardina Karlsson)	female	45	1	4	347088	27.9	\N	S
169	f	1	Baumann, Mr. John D	male	\N	0	0	PC 17318	25.925	\N	S
170	f	3	Ling, Mr. Lee	male	28	0	0	1601	56.4958	\N	S
171	f	1	Van der hoef, Mr. Wyckoff	male	61	0	0	111240	33.5	B19	S
172	f	3	Rice, Master. Arthur	male	4	4	1	382652	29.125	\N	Q
173	t	3	Johnson, Miss. Eleanor Ileen	female	1	1	1	347742	11.1333	\N	S
174	f	3	Sivola, Mr. Antti Wilhelm	male	21	0	0	STON/O 2. 3101280	7.925	\N	S
175	f	1	Smith, Mr. James Clinch	male	56	0	0	17764	30.6958	A7	C
176	f	3	Klasen, Mr. Klas Albin	male	18	1	1	350404	7.8542	\N	S
177	f	3	Lefebre, Master. Henry Forbes	male	\N	3	1	4133	25.4667	\N	S
178	f	1	Isham, Miss. Ann Elizabeth	female	50	0	0	PC 17595	28.7125	C49	C
179	f	2	Hale, Mr. Reginald	male	30	0	0	250653	13	\N	S
180	f	3	Leonard, Mr. Lionel	male	36	0	0	LINE	0	\N	S
181	f	3	Sage, Miss. Constance Gladys	female	\N	8	2	CA. 2343	69.55	\N	S
182	f	2	Pernot, Mr. Rene	male	\N	0	0	SC/PARIS 2131	15.05	\N	C
183	f	3	Asplund, Master. Clarence Gustaf Hugo	male	9	4	2	347077	31.3875	\N	S
184	t	2	Becker, Master. Richard F	male	1	2	1	230136	39	F4	S
185	t	3	Kink-Heilmann, Miss. Luise Gretchen	female	4	0	2	315153	22.025	\N	S
186	f	1	Rood, Mr. Hugh Roscoe	male	\N	0	0	113767	50	A32	S
187	t	3	O'Brien, Mrs. Thomas (Johanna "Hannah" Godfrey)	female	\N	1	0	370365	15.5	\N	Q
188	t	1	Romaine, Mr. Charles Hallace ("Mr C Rolmane")	male	45	0	0	111428	26.55	\N	S
189	f	3	Bourke, Mr. John	male	40	1	1	364849	15.5	\N	Q
190	f	3	Turcin, Mr. Stjepan	male	36	0	0	349247	7.8958	\N	S
191	t	2	Pinsky, Mrs. (Rosa)	female	32	0	0	234604	13	\N	S
192	f	2	Carbines, Mr. William	male	19	0	0	28424	13	\N	S
193	t	3	Andersen-Jensen, Miss. Carla Christine Nielsine	female	19	1	0	350046	7.8542	\N	S
194	t	2	Navratil, Master. Michel M	male	3	1	1	230080	26	F2	S
195	t	1	Brown, Mrs. James Joseph (Margaret Tobin)	female	44	0	0	PC 17610	27.7208	B4	C
196	t	1	Lurette, Miss. Elise	female	58	0	0	PC 17569	146.5208	B80	C
197	f	3	Mernagh, Mr. Robert	male	\N	0	0	368703	7.75	\N	Q
198	f	3	Olsen, Mr. Karl Siegwart Andreas	male	42	0	1	4579	8.4042	\N	S
199	t	3	Madigan, Miss. Margaret "Maggie"	female	\N	0	0	370370	7.75	\N	Q
200	f	2	Yrois, Miss. Henriette ("Mrs Harbeck")	female	24	0	0	248747	13	\N	S
201	f	3	Vande Walle, Mr. Nestor Cyriel	male	28	0	0	345770	9.5	\N	S
202	f	3	Sage, Mr. Frederick	male	\N	8	2	CA. 2343	69.55	\N	S
203	f	3	Johanson, Mr. Jakob Alfred	male	34	0	0	3101264	6.4958	\N	S
204	f	3	Youseff, Mr. Gerious	male	45.5	0	0	2628	7.225	\N	C
205	t	3	Cohen, Mr. Gurshon "Gus"	male	18	0	0	A/5 3540	8.05	\N	S
206	f	3	Strom, Miss. Telma Matilda	female	2	0	1	347054	10.4625	G6	S
207	f	3	Backstrom, Mr. Karl Alfred	male	32	1	0	3101278	15.85	\N	S
208	t	3	Albimona, Mr. Nassef Cassem	male	26	0	0	2699	18.7875	\N	C
209	t	3	Carr, Miss. Helen "Ellen"	female	16	0	0	367231	7.75	\N	Q
210	t	1	Blank, Mr. Henry	male	40	0	0	112277	31	A31	C
211	f	3	Ali, Mr. Ahmed	male	24	0	0	SOTON/O.Q. 3101311	7.05	\N	S
212	t	2	Cameron, Miss. Clear Annie	female	35	0	0	F.C.C. 13528	21	\N	S
213	f	3	Perkin, Mr. John Henry	male	22	0	0	A/5 21174	7.25	\N	S
214	f	2	Givard, Mr. Hans Kristensen	male	30	0	0	250646	13	\N	S
215	f	3	Kiernan, Mr. Philip	male	\N	1	0	367229	7.75	\N	Q
216	t	1	Newell, Miss. Madeleine	female	31	1	0	35273	113.275	D36	C
217	t	3	Honkanen, Miss. Eliina	female	27	0	0	STON/O2. 3101283	7.925	\N	S
218	f	2	Jacobsohn, Mr. Sidney Samuel	male	42	1	0	243847	27	\N	S
219	t	1	Bazzani, Miss. Albina	female	32	0	0	11813	76.2917	D15	C
220	f	2	Harris, Mr. Walter	male	30	0	0	W/C 14208	10.5	\N	S
221	t	3	Sunderland, Mr. Victor Francis	male	16	0	0	SOTON/OQ 392089	8.05	\N	S
222	f	2	Bracken, Mr. James H	male	27	0	0	220367	13	\N	S
223	f	3	Green, Mr. George Henry	male	51	0	0	21440	8.05	\N	S
224	f	3	Nenkoff, Mr. Christo	male	\N	0	0	349234	7.8958	\N	S
225	t	1	Hoyt, Mr. Frederick Maxfield	male	38	1	0	19943	90	C93	S
226	f	3	Berglund, Mr. Karl Ivar Sven	male	22	0	0	PP 4348	9.35	\N	S
227	t	2	Mellors, Mr. William John	male	19	0	0	SW/PP 751	10.5	\N	S
228	f	3	Lovell, Mr. John Hall ("Henry")	male	20.5	0	0	A/5 21173	7.25	\N	S
229	f	2	Fahlstrom, Mr. Arne Jonas	male	18	0	0	236171	13	\N	S
230	f	3	Lefebre, Miss. Mathilde	female	\N	3	1	4133	25.4667	\N	S
231	t	1	Harris, Mrs. Henry Birkhardt (Irene Wallach)	female	35	1	0	36973	83.475	C83	S
232	f	3	Larsson, Mr. Bengt Edvin	male	29	0	0	347067	7.775	\N	S
233	f	2	Sjostedt, Mr. Ernst Adolf	male	59	0	0	237442	13.5	\N	S
234	t	3	Asplund, Miss. Lillian Gertrud	female	5	4	2	347077	31.3875	\N	S
235	f	2	Leyson, Mr. Robert William Norman	male	24	0	0	C.A. 29566	10.5	\N	S
236	f	3	Harknett, Miss. Alice Phoebe	female	\N	0	0	W./C. 6609	7.55	\N	S
237	f	2	Hold, Mr. Stephen	male	44	1	0	26707	26	\N	S
238	t	2	Collyer, Miss. Marjorie "Lottie"	female	8	0	2	C.A. 31921	26.25	\N	S
239	f	2	Pengelly, Mr. Frederick William	male	19	0	0	28665	10.5	\N	S
240	f	2	Hunt, Mr. George Henry	male	33	0	0	SCO/W 1585	12.275	\N	S
241	f	3	Zabour, Miss. Thamine	female	\N	1	0	2665	14.4542	\N	C
242	t	3	Murphy, Miss. Katherine "Kate"	female	\N	1	0	367230	15.5	\N	Q
243	f	2	Coleridge, Mr. Reginald Charles	male	29	0	0	W./C. 14263	10.5	\N	S
244	f	3	Maenpaa, Mr. Matti Alexanteri	male	22	0	0	STON/O 2. 3101275	7.125	\N	S
245	f	3	Attalah, Mr. Sleiman	male	30	0	0	2694	7.225	\N	C
246	f	1	Minahan, Dr. William Edward	male	44	2	0	19928	90	C78	Q
247	f	3	Lindahl, Miss. Agda Thorilda Viktoria	female	25	0	0	347071	7.775	\N	S
248	t	2	Hamalainen, Mrs. William (Anna)	female	24	0	2	250649	14.5	\N	S
249	t	1	Beckwith, Mr. Richard Leonard	male	37	1	1	11751	52.5542	D35	S
250	f	2	Carter, Rev. Ernest Courtenay	male	54	1	0	244252	26	\N	S
251	f	3	Reed, Mr. James George	male	\N	0	0	362316	7.25	\N	S
252	f	3	Strom, Mrs. Wilhelm (Elna Matilda Persson)	female	29	1	1	347054	10.4625	G6	S
253	f	1	Stead, Mr. William Thomas	male	62	0	0	113514	26.55	C87	S
254	f	3	Lobb, Mr. William Arthur	male	30	1	0	A/5. 3336	16.1	\N	S
255	f	3	Rosblom, Mrs. Viktor (Helena Wilhelmina)	female	41	0	2	370129	20.2125	\N	S
256	t	3	Touma, Mrs. Darwis (Hanne Youssef Razi)	female	29	0	2	2650	15.2458	\N	C
257	t	1	Thorne, Mrs. Gertrude Maybelle	female	\N	0	0	PC 17585	79.2	\N	C
258	t	1	Cherry, Miss. Gladys	female	30	0	0	110152	86.5	B77	S
259	t	1	Ward, Miss. Anna	female	35	0	0	PC 17755	512.3292	\N	C
260	t	2	Parrish, Mrs. (Lutie Davis)	female	50	0	1	230433	26	\N	S
261	f	3	Smith, Mr. Thomas	male	\N	0	0	384461	7.75	\N	Q
262	t	3	Asplund, Master. Edvin Rojj Felix	male	3	4	2	347077	31.3875	\N	S
263	f	1	Taussig, Mr. Emil	male	52	1	1	110413	79.65	E67	S
264	f	1	Harrison, Mr. William	male	40	0	0	112059	0	B94	S
265	f	3	Henry, Miss. Delia	female	\N	0	0	382649	7.75	\N	Q
266	f	2	Reeves, Mr. David	male	36	0	0	C.A. 17248	10.5	\N	S
267	f	3	Panula, Mr. Ernesti Arvid	male	16	4	1	3101295	39.6875	\N	S
268	t	3	Persson, Mr. Ernst Ulrik	male	25	1	0	347083	7.775	\N	S
269	t	1	Graham, Mrs. William Thompson (Edith Junkins)	female	58	0	1	PC 17582	153.4625	C125	S
270	t	1	Bissette, Miss. Amelia	female	35	0	0	PC 17760	135.6333	C99	S
271	f	1	Cairns, Mr. Alexander	male	\N	0	0	113798	31	\N	S
272	t	3	Tornquist, Mr. William Henry	male	25	0	0	LINE	0	\N	S
273	t	2	Mellinger, Mrs. (Elizabeth Anne Maidment)	female	41	0	1	250644	19.5	\N	S
274	f	1	Natsch, Mr. Charles H	male	37	0	1	PC 17596	29.7	C118	C
275	t	3	Healy, Miss. Hanora "Nora"	female	\N	0	0	370375	7.75	\N	Q
276	t	1	Andrews, Miss. Kornelia Theodosia	female	63	1	0	13502	77.9583	D7	S
277	f	3	Lindblom, Miss. Augusta Charlotta	female	45	0	0	347073	7.75	\N	S
278	f	2	Parkes, Mr. Francis "Frank"	male	\N	0	0	239853	0	\N	S
279	f	3	Rice, Master. Eric	male	7	4	1	382652	29.125	\N	Q
280	t	3	Abbott, Mrs. Stanton (Rosa Hunt)	female	35	1	1	C.A. 2673	20.25	\N	S
281	f	3	Duane, Mr. Frank	male	65	0	0	336439	7.75	\N	Q
282	f	3	Olsson, Mr. Nils Johan Goransson	male	28	0	0	347464	7.8542	\N	S
283	f	3	de Pelsmaeker, Mr. Alfons	male	16	0	0	345778	9.5	\N	S
284	t	3	Dorking, Mr. Edward Arthur	male	19	0	0	A/5. 10482	8.05	\N	S
285	f	1	Smith, Mr. Richard William	male	\N	0	0	113056	26	A19	S
286	f	3	Stankovic, Mr. Ivan	male	33	0	0	349239	8.6625	\N	C
287	t	3	de Mulder, Mr. Theodore	male	30	0	0	345774	9.5	\N	S
288	f	3	Naidenoff, Mr. Penko	male	22	0	0	349206	7.8958	\N	S
289	t	2	Hosono, Mr. Masabumi	male	42	0	0	237798	13	\N	S
290	t	3	Connolly, Miss. Kate	female	22	0	0	370373	7.75	\N	Q
291	t	1	Barber, Miss. Ellen "Nellie"	female	26	0	0	19877	78.85	\N	S
292	t	1	Bishop, Mrs. Dickinson H (Helen Walton)	female	19	1	0	11967	91.0792	B49	C
293	f	2	Levy, Mr. Rene Jacques	male	36	0	0	SC/Paris 2163	12.875	D	C
294	f	3	Haas, Miss. Aloisia	female	24	0	0	349236	8.85	\N	S
295	f	3	Mineff, Mr. Ivan	male	24	0	0	349233	7.8958	\N	S
296	f	1	Lewy, Mr. Ervin G	male	\N	0	0	PC 17612	27.7208	\N	C
297	f	3	Hanna, Mr. Mansour	male	23.5	0	0	2693	7.2292	\N	C
298	f	1	Allison, Miss. Helen Loraine	female	2	1	2	113781	151.55	C22 C26	S
299	t	1	Saalfeld, Mr. Adolphe	male	\N	0	0	19988	30.5	C106	S
300	t	1	Baxter, Mrs. James (Helene DeLaudeniere Chaput)	female	50	0	1	PC 17558	247.5208	B58 B60	C
301	t	3	Kelly, Miss. Anna Katherine "Annie Kate"	female	\N	0	0	9234	7.75	\N	Q
302	t	3	McCoy, Mr. Bernard	male	\N	2	0	367226	23.25	\N	Q
303	f	3	Johnson, Mr. William Cahoone Jr	male	19	0	0	LINE	0	\N	S
304	t	2	Keane, Miss. Nora A	female	\N	0	0	226593	12.35	E101	Q
305	f	3	Williams, Mr. Howard Hugh "Harry"	male	\N	0	0	A/5 2466	8.05	\N	S
306	t	1	Allison, Master. Hudson Trevor	male	0.92	1	2	113781	151.55	C22 C26	S
307	t	1	Fleming, Miss. Margaret	female	\N	0	0	17421	110.8833	\N	C
308	t	1	Penasco y Castellana, Mrs. Victor de Satode (Maria Josefa Perez de Soto y Vallejo)	female	17	1	0	PC 17758	108.9	C65	C
309	f	2	Abelson, Mr. Samuel	male	30	1	0	P/PP 3381	24	\N	C
310	t	1	Francatelli, Miss. Laura Mabel	female	30	0	0	PC 17485	56.9292	E36	C
311	t	1	Hays, Miss. Margaret Bechstein	female	24	0	0	11767	83.1583	C54	C
312	t	1	Ryerson, Miss. Emily Borie	female	18	2	2	PC 17608	262.375	B57 B59 B63 B66	C
313	f	2	Lahtinen, Mrs. William (Anna Sylfven)	female	26	1	1	250651	26	\N	S
314	f	3	Hendekovic, Mr. Ignjac	male	28	0	0	349243	7.8958	\N	S
315	f	2	Hart, Mr. Benjamin	male	43	1	1	F.C.C. 13529	26.25	\N	S
316	t	3	Nilsson, Miss. Helmina Josefina	female	26	0	0	347470	7.8542	\N	S
317	t	2	Kantor, Mrs. Sinai (Miriam Sternin)	female	24	1	0	244367	26	\N	S
318	f	2	Moraweck, Dr. Ernest	male	54	0	0	29011	14	\N	S
319	t	1	Wick, Miss. Mary Natalie	female	31	0	2	36928	164.8667	C7	S
320	t	1	Spedden, Mrs. Frederic Oakley (Margaretta Corning Stone)	female	40	1	1	16966	134.5	E34	C
321	f	3	Dennis, Mr. Samuel	male	22	0	0	A/5 21172	7.25	\N	S
322	f	3	Danoff, Mr. Yoto	male	27	0	0	349219	7.8958	\N	S
323	t	2	Slayter, Miss. Hilda Mary	female	30	0	0	234818	12.35	\N	Q
324	t	2	Caldwell, Mrs. Albert Francis (Sylvia Mae Harbaugh)	female	22	1	1	248738	29	\N	S
325	f	3	Sage, Mr. George John Jr	male	\N	8	2	CA. 2343	69.55	\N	S
326	t	1	Young, Miss. Marie Grice	female	36	0	0	PC 17760	135.6333	C32	C
327	f	3	Nysveen, Mr. Johan Hansen	male	61	0	0	345364	6.2375	\N	S
328	t	2	Ball, Mrs. (Ada E Hall)	female	36	0	0	28551	13	D	S
329	t	3	Goldsmith, Mrs. Frank John (Emily Alice Brown)	female	31	1	1	363291	20.525	\N	S
330	t	1	Hippach, Miss. Jean Gertrude	female	16	0	1	111361	57.9792	B18	C
331	t	3	McCoy, Miss. Agnes	female	\N	2	0	367226	23.25	\N	Q
332	f	1	Partner, Mr. Austen	male	45.5	0	0	113043	28.5	C124	S
333	f	1	Graham, Mr. George Edward	male	38	0	1	PC 17582	153.4625	C91	S
334	f	3	Vander Planke, Mr. Leo Edmondus	male	16	2	0	345764	18	\N	S
335	t	1	Frauenthal, Mrs. Henry William (Clara Heinsheimer)	female	\N	1	0	PC 17611	133.65	\N	S
336	f	3	Denkoff, Mr. Mitto	male	\N	0	0	349225	7.8958	\N	S
337	f	1	Pears, Mr. Thomas Clinton	male	29	1	0	113776	66.6	C2	S
338	t	1	Burns, Miss. Elizabeth Margaret	female	41	0	0	16966	134.5	E40	C
339	t	3	Dahl, Mr. Karl Edwart	male	45	0	0	7598	8.05	\N	S
340	f	1	Blackwell, Mr. Stephen Weart	male	45	0	0	113784	35.5	T	S
341	t	2	Navratil, Master. Edmond Roger	male	2	1	1	230080	26	F2	S
342	t	1	Fortune, Miss. Alice Elizabeth	female	24	3	2	19950	263	C23 C25 C27	S
343	f	2	Collander, Mr. Erik Gustaf	male	28	0	0	248740	13	\N	S
344	f	2	Sedgwick, Mr. Charles Frederick Waddington	male	25	0	0	244361	13	\N	S
345	f	2	Fox, Mr. Stanley Hubert	male	36	0	0	229236	13	\N	S
346	t	2	Brown, Miss. Amelia "Mildred"	female	24	0	0	248733	13	F33	S
347	t	2	Smith, Miss. Marion Elsie	female	40	0	0	31418	13	\N	S
348	t	3	Davison, Mrs. Thomas Henry (Mary E Finck)	female	\N	1	0	386525	16.1	\N	S
349	t	3	Coutts, Master. William Loch "William"	male	3	1	1	C.A. 37671	15.9	\N	S
350	f	3	Dimic, Mr. Jovan	male	42	0	0	315088	8.6625	\N	S
351	f	3	Odahl, Mr. Nils Martin	male	23	0	0	7267	9.225	\N	S
352	f	1	Williams-Lambert, Mr. Fletcher Fellows	male	\N	0	0	113510	35	C128	S
353	f	3	Elias, Mr. Tannous	male	15	1	1	2695	7.2292	\N	C
354	f	3	Arnold-Franchi, Mr. Josef	male	25	1	0	349237	17.8	\N	S
355	f	3	Yousif, Mr. Wazli	male	\N	0	0	2647	7.225	\N	C
356	f	3	Vanden Steen, Mr. Leo Peter	male	28	0	0	345783	9.5	\N	S
357	t	1	Bowerman, Miss. Elsie Edith	female	22	0	1	113505	55	E33	S
358	f	2	Funk, Miss. Annie Clemmer	female	38	0	0	237671	13	\N	S
359	t	3	McGovern, Miss. Mary	female	\N	0	0	330931	7.8792	\N	Q
360	t	3	Mockler, Miss. Helen Mary "Ellie"	female	\N	0	0	330980	7.8792	\N	Q
361	f	3	Skoog, Mr. Wilhelm	male	40	1	4	347088	27.9	\N	S
362	f	2	del Carlo, Mr. Sebastiano	male	29	1	0	SC/PARIS 2167	27.7208	\N	C
363	f	3	Barbara, Mrs. (Catherine David)	female	45	0	1	2691	14.4542	\N	C
364	f	3	Asim, Mr. Adola	male	35	0	0	SOTON/O.Q. 3101310	7.05	\N	S
365	f	3	O'Brien, Mr. Thomas	male	\N	1	0	370365	15.5	\N	Q
366	f	3	Adahl, Mr. Mauritz Nils Martin	male	30	0	0	C 7076	7.25	\N	S
367	t	1	Warren, Mrs. Frank Manley (Anna Sophia Atkinson)	female	60	1	0	110813	75.25	D37	C
368	t	3	Moussa, Mrs. (Mantoura Boulos)	female	\N	0	0	2626	7.2292	\N	C
369	t	3	Jermyn, Miss. Annie	female	\N	0	0	14313	7.75	\N	Q
370	t	1	Aubart, Mme. Leontine Pauline	female	24	0	0	PC 17477	69.3	B35	C
371	t	1	Harder, Mr. George Achilles	male	25	1	0	11765	55.4417	E50	C
372	f	3	Wiklund, Mr. Jakob Alfred	male	18	1	0	3101267	6.4958	\N	S
373	f	3	Beavan, Mr. William Thomas	male	19	0	0	323951	8.05	\N	S
374	f	1	Ringhini, Mr. Sante	male	22	0	0	PC 17760	135.6333	\N	C
375	f	3	Palsson, Miss. Stina Viola	female	3	3	1	349909	21.075	\N	S
376	t	1	Meyer, Mrs. Edgar Joseph (Leila Saks)	female	\N	1	0	PC 17604	82.1708	\N	C
377	t	3	Landergren, Miss. Aurora Adelia	female	22	0	0	C 7077	7.25	\N	S
378	f	1	Widener, Mr. Harry Elkins	male	27	0	2	113503	211.5	C82	C
379	f	3	Betros, Mr. Tannous	male	20	0	0	2648	4.0125	\N	C
380	f	3	Gustafsson, Mr. Karl Gideon	male	19	0	0	347069	7.775	\N	S
381	t	1	Bidois, Miss. Rosalie	female	42	0	0	PC 17757	227.525	\N	C
382	t	3	Nakid, Miss. Maria ("Mary")	female	1	0	2	2653	15.7417	\N	C
383	f	3	Tikkanen, Mr. Juho	male	32	0	0	STON/O 2. 3101293	7.925	\N	S
384	t	1	Holverson, Mrs. Alexander Oskar (Mary Aline Towner)	female	35	1	0	113789	52	\N	S
385	f	3	Plotcharsky, Mr. Vasil	male	\N	0	0	349227	7.8958	\N	S
386	f	2	Davies, Mr. Charles Henry	male	18	0	0	S.O.C. 14879	73.5	\N	S
387	f	3	Goodwin, Master. Sidney Leonard	male	1	5	2	CA 2144	46.9	\N	S
388	t	2	Buss, Miss. Kate	female	36	0	0	27849	13	\N	S
389	f	3	Sadlier, Mr. Matthew	male	\N	0	0	367655	7.7292	\N	Q
390	t	2	Lehmann, Miss. Bertha	female	17	0	0	SC 1748	12	\N	C
391	t	1	Carter, Mr. William Ernest	male	36	1	2	113760	120	B96 B98	S
392	t	3	Jansson, Mr. Carl Olof	male	21	0	0	350034	7.7958	\N	S
393	f	3	Gustafsson, Mr. Johan Birger	male	28	2	0	3101277	7.925	\N	S
394	t	1	Newell, Miss. Marjorie	female	23	1	0	35273	113.275	D36	C
395	t	3	Sandstrom, Mrs. Hjalmar (Agnes Charlotta Bengtsson)	female	24	0	2	PP 9549	16.7	G6	S
396	f	3	Johansson, Mr. Erik	male	22	0	0	350052	7.7958	\N	S
397	f	3	Olsson, Miss. Elina	female	31	0	0	350407	7.8542	\N	S
398	f	2	McKane, Mr. Peter David	male	46	0	0	28403	26	\N	S
399	f	2	Pain, Dr. Alfred	male	23	0	0	244278	10.5	\N	S
400	t	2	Trout, Mrs. William H (Jessie L)	female	28	0	0	240929	12.65	\N	S
401	t	3	Niskanen, Mr. Juha	male	39	0	0	STON/O 2. 3101289	7.925	\N	S
402	f	3	Adams, Mr. John	male	26	0	0	341826	8.05	\N	S
403	f	3	Jussila, Miss. Mari Aina	female	21	1	0	4137	9.825	\N	S
404	f	3	Hakkarainen, Mr. Pekka Pietari	male	28	1	0	STON/O2. 3101279	15.85	\N	S
405	f	3	Oreskovic, Miss. Marija	female	20	0	0	315096	8.6625	\N	S
406	f	2	Gale, Mr. Shadrach	male	34	1	0	28664	21	\N	S
407	f	3	Widegren, Mr. Carl/Charles Peter	male	51	0	0	347064	7.75	\N	S
408	t	2	Richards, Master. William Rowe	male	3	1	1	29106	18.75	\N	S
409	f	3	Birkeland, Mr. Hans Martin Monsen	male	21	0	0	312992	7.775	\N	S
410	f	3	Lefebre, Miss. Ida	female	\N	3	1	4133	25.4667	\N	S
411	f	3	Sdycoff, Mr. Todor	male	\N	0	0	349222	7.8958	\N	S
412	f	3	Hart, Mr. Henry	male	\N	0	0	394140	6.8583	\N	Q
413	t	1	Minahan, Miss. Daisy E	female	33	1	0	19928	90	C78	Q
414	f	2	Cunningham, Mr. Alfred Fleming	male	\N	0	0	239853	0	\N	S
415	t	3	Sundman, Mr. Johan Julian	male	44	0	0	STON/O 2. 3101269	7.925	\N	S
416	f	3	Meek, Mrs. Thomas (Annie Louise Rowley)	female	\N	0	0	343095	8.05	\N	S
417	t	2	Drew, Mrs. James Vivian (Lulu Thorne Christian)	female	34	1	1	28220	32.5	\N	S
418	t	2	Silven, Miss. Lyyli Karoliina	female	18	0	2	250652	13	\N	S
419	f	2	Matthews, Mr. William John	male	30	0	0	28228	13	\N	S
420	f	3	Van Impe, Miss. Catharina	female	10	0	2	345773	24.15	\N	S
421	f	3	Gheorgheff, Mr. Stanio	male	\N	0	0	349254	7.8958	\N	C
422	f	3	Charters, Mr. David	male	21	0	0	A/5. 13032	7.7333	\N	Q
423	f	3	Zimmerman, Mr. Leo	male	29	0	0	315082	7.875	\N	S
424	f	3	Danbom, Mrs. Ernst Gilbert (Anna Sigrid Maria Brogren)	female	28	1	1	347080	14.4	\N	S
425	f	3	Rosblom, Mr. Viktor Richard	male	18	1	1	370129	20.2125	\N	S
426	f	3	Wiseman, Mr. Phillippe	male	\N	0	0	A/4. 34244	7.25	\N	S
427	t	2	Clarke, Mrs. Charles V (Ada Maria Winfield)	female	28	1	0	2003	26	\N	S
428	t	2	Phillips, Miss. Kate Florence ("Mrs Kate Louise Phillips Marshall")	female	19	0	0	250655	26	\N	S
429	f	3	Flynn, Mr. James	male	\N	0	0	364851	7.75	\N	Q
430	t	3	Pickard, Mr. Berk (Berk Trembisky)	male	32	0	0	SOTON/O.Q. 392078	8.05	E10	S
431	t	1	Bjornstrom-Steffansson, Mr. Mauritz Hakan	male	28	0	0	110564	26.55	C52	S
432	t	3	Thorneycroft, Mrs. Percival (Florence Kate White)	female	\N	1	0	376564	16.1	\N	S
433	t	2	Louch, Mrs. Charles Alexander (Alice Adelaide Slow)	female	42	1	0	SC/AH 3085	26	\N	S
434	f	3	Kallio, Mr. Nikolai Erland	male	17	0	0	STON/O 2. 3101274	7.125	\N	S
435	f	1	Silvey, Mr. William Baird	male	50	1	0	13507	55.9	E44	S
436	t	1	Carter, Miss. Lucile Polk	female	14	1	2	113760	120	B96 B98	S
437	f	3	Ford, Miss. Doolina Margaret "Daisy"	female	21	2	2	W./C. 6608	34.375	\N	S
438	t	2	Richards, Mrs. Sidney (Emily Hocking)	female	24	2	3	29106	18.75	\N	S
439	f	1	Fortune, Mr. Mark	male	64	1	4	19950	263	C23 C25 C27	S
440	f	2	Kvillner, Mr. Johan Henrik Johannesson	male	31	0	0	C.A. 18723	10.5	\N	S
441	t	2	Hart, Mrs. Benjamin (Esther Ada Bloomfield)	female	45	1	1	F.C.C. 13529	26.25	\N	S
442	f	3	Hampe, Mr. Leon	male	20	0	0	345769	9.5	\N	S
443	f	3	Petterson, Mr. Johan Emil	male	25	1	0	347076	7.775	\N	S
444	t	2	Reynaldo, Ms. Encarnacion	female	28	0	0	230434	13	\N	S
445	t	3	Johannesen-Bratthammer, Mr. Bernt	male	\N	0	0	65306	8.1125	\N	S
446	t	1	Dodge, Master. Washington	male	4	0	2	33638	81.8583	A34	S
447	t	2	Mellinger, Miss. Madeleine Violet	female	13	0	1	250644	19.5	\N	S
448	t	1	Seward, Mr. Frederic Kimber	male	34	0	0	113794	26.55	\N	S
449	t	3	Baclini, Miss. Marie Catherine	female	5	2	1	2666	19.2583	\N	C
450	t	1	Peuchen, Major. Arthur Godfrey	male	52	0	0	113786	30.5	C104	S
451	f	2	West, Mr. Edwy Arthur	male	36	1	2	C.A. 34651	27.75	\N	S
452	f	3	Hagland, Mr. Ingvald Olai Olsen	male	\N	1	0	65303	19.9667	\N	S
453	f	1	Foreman, Mr. Benjamin Laventall	male	30	0	0	113051	27.75	C111	C
454	t	1	Goldenberg, Mr. Samuel L	male	49	1	0	17453	89.1042	C92	C
455	f	3	Peduzzi, Mr. Joseph	male	\N	0	0	A/5 2817	8.05	\N	S
456	t	3	Jalsevac, Mr. Ivan	male	29	0	0	349240	7.8958	\N	C
457	f	1	Millet, Mr. Francis Davis	male	65	0	0	13509	26.55	E38	S
458	t	1	Kenyon, Mrs. Frederick R (Marion)	female	\N	1	0	17464	51.8625	D21	S
459	t	2	Toomey, Miss. Ellen	female	50	0	0	F.C.C. 13531	10.5	\N	S
460	f	3	O'Connor, Mr. Maurice	male	\N	0	0	371060	7.75	\N	Q
461	t	1	Anderson, Mr. Harry	male	48	0	0	19952	26.55	E12	S
462	f	3	Morley, Mr. William	male	34	0	0	364506	8.05	\N	S
463	f	1	Gee, Mr. Arthur H	male	47	0	0	111320	38.5	E63	S
464	f	2	Milling, Mr. Jacob Christian	male	48	0	0	234360	13	\N	S
465	f	3	Maisner, Mr. Simon	male	\N	0	0	A/S 2816	8.05	\N	S
466	f	3	Goncalves, Mr. Manuel Estanslas	male	38	0	0	SOTON/O.Q. 3101306	7.05	\N	S
467	f	2	Campbell, Mr. William	male	\N	0	0	239853	0	\N	S
468	f	1	Smart, Mr. John Montgomery	male	56	0	0	113792	26.55	\N	S
469	f	3	Scanlan, Mr. James	male	\N	0	0	36209	7.725	\N	Q
470	t	3	Baclini, Miss. Helene Barbara	female	0.75	2	1	2666	19.2583	\N	C
471	f	3	Keefe, Mr. Arthur	male	\N	0	0	323592	7.25	\N	S
472	f	3	Cacic, Mr. Luka	male	38	0	0	315089	8.6625	\N	S
473	t	2	West, Mrs. Edwy Arthur (Ada Mary Worth)	female	33	1	2	C.A. 34651	27.75	\N	S
474	t	2	Jerwan, Mrs. Amin S (Marie Marthe Thuillard)	female	23	0	0	SC/AH Basle 541	13.7917	D	C
475	f	3	Strandberg, Miss. Ida Sofia	female	22	0	0	7553	9.8375	\N	S
476	f	1	Clifford, Mr. George Quincy	male	\N	0	0	110465	52	A14	S
477	f	2	Renouf, Mr. Peter Henry	male	34	1	0	31027	21	\N	S
478	f	3	Braund, Mr. Lewis Richard	male	29	1	0	3460	7.0458	\N	S
479	f	3	Karlsson, Mr. Nils August	male	22	0	0	350060	7.5208	\N	S
480	t	3	Hirvonen, Miss. Hildur E	female	2	0	1	3101298	12.2875	\N	S
481	f	3	Goodwin, Master. Harold Victor	male	9	5	2	CA 2144	46.9	\N	S
482	f	2	Frost, Mr. Anthony Wood "Archie"	male	\N	0	0	239854	0	\N	S
483	f	3	Rouse, Mr. Richard Henry	male	50	0	0	A/5 3594	8.05	\N	S
484	t	3	Turkula, Mrs. (Hedwig)	female	63	0	0	4134	9.5875	\N	S
485	t	1	Bishop, Mr. Dickinson H	male	25	1	0	11967	91.0792	B49	C
486	f	3	Lefebre, Miss. Jeannie	female	\N	3	1	4133	25.4667	\N	S
487	t	1	Hoyt, Mrs. Frederick Maxfield (Jane Anne Forby)	female	35	1	0	19943	90	C93	S
488	f	1	Kent, Mr. Edward Austin	male	58	0	0	11771	29.7	B37	C
489	f	3	Somerton, Mr. Francis William	male	30	0	0	A.5. 18509	8.05	\N	S
490	t	3	Coutts, Master. Eden Leslie "Neville"	male	9	1	1	C.A. 37671	15.9	\N	S
491	f	3	Hagland, Mr. Konrad Mathias Reiersen	male	\N	1	0	65304	19.9667	\N	S
492	f	3	Windelov, Mr. Einar	male	21	0	0	SOTON/OQ 3101317	7.25	\N	S
493	f	1	Molson, Mr. Harry Markland	male	55	0	0	113787	30.5	C30	S
494	f	1	Artagaveytia, Mr. Ramon	male	71	0	0	PC 17609	49.5042	\N	C
495	f	3	Stanley, Mr. Edward Roland	male	21	0	0	A/4 45380	8.05	\N	S
496	f	3	Yousseff, Mr. Gerious	male	\N	0	0	2627	14.4583	\N	C
497	t	1	Eustis, Miss. Elizabeth Mussey	female	54	1	0	36947	78.2667	D20	C
498	f	3	Shellard, Mr. Frederick William	male	\N	0	0	C.A. 6212	15.1	\N	S
499	f	1	Allison, Mrs. Hudson J C (Bessie Waldo Daniels)	female	25	1	2	113781	151.55	C22 C26	S
500	f	3	Svensson, Mr. Olof	male	24	0	0	350035	7.7958	\N	S
501	f	3	Calic, Mr. Petar	male	17	0	0	315086	8.6625	\N	S
502	f	3	Canavan, Miss. Mary	female	21	0	0	364846	7.75	\N	Q
503	f	3	O'Sullivan, Miss. Bridget Mary	female	\N	0	0	330909	7.6292	\N	Q
504	f	3	Laitinen, Miss. Kristina Sofia	female	37	0	0	4135	9.5875	\N	S
505	t	1	Maioni, Miss. Roberta	female	16	0	0	110152	86.5	B79	S
506	f	1	Penasco y Castellana, Mr. Victor de Satode	male	18	1	0	PC 17758	108.9	C65	C
507	t	2	Quick, Mrs. Frederick Charles (Jane Richards)	female	33	0	2	26360	26	\N	S
508	t	1	Bradley, Mr. George ("George Arthur Brayton")	male	\N	0	0	111427	26.55	\N	S
509	f	3	Olsen, Mr. Henry Margido	male	28	0	0	C 4001	22.525	\N	S
510	t	3	Lang, Mr. Fang	male	26	0	0	1601	56.4958	\N	S
511	t	3	Daly, Mr. Eugene Patrick	male	29	0	0	382651	7.75	\N	Q
512	f	3	Webber, Mr. James	male	\N	0	0	SOTON/OQ 3101316	8.05	\N	S
513	t	1	McGough, Mr. James Robert	male	36	0	0	PC 17473	26.2875	E25	S
514	t	1	Rothschild, Mrs. Martin (Elizabeth L. Barrett)	female	54	1	0	PC 17603	59.4	\N	C
515	f	3	Coleff, Mr. Satio	male	24	0	0	349209	7.4958	\N	S
516	f	1	Walker, Mr. William Anderson	male	47	0	0	36967	34.0208	D46	S
517	t	2	Lemore, Mrs. (Amelia Milley)	female	34	0	0	C.A. 34260	10.5	F33	S
518	f	3	Ryan, Mr. Patrick	male	\N	0	0	371110	24.15	\N	Q
519	t	2	Angle, Mrs. William A (Florence "Mary" Agnes Hughes)	female	36	1	0	226875	26	\N	S
520	f	3	Pavlovic, Mr. Stefo	male	32	0	0	349242	7.8958	\N	S
521	t	1	Perreault, Miss. Anne	female	30	0	0	12749	93.5	B73	S
522	f	3	Vovk, Mr. Janko	male	22	0	0	349252	7.8958	\N	S
523	f	3	Lahoud, Mr. Sarkis	male	\N	0	0	2624	7.225	\N	C
524	t	1	Hippach, Mrs. Louis Albert (Ida Sophia Fischer)	female	44	0	1	111361	57.9792	B18	C
525	f	3	Kassem, Mr. Fared	male	\N	0	0	2700	7.2292	\N	C
526	f	3	Farrell, Mr. James	male	40.5	0	0	367232	7.75	\N	Q
527	t	2	Ridsdale, Miss. Lucy	female	50	0	0	W./C. 14258	10.5	\N	S
528	f	1	Farthing, Mr. John	male	\N	0	0	PC 17483	221.7792	C95	S
529	f	3	Salonen, Mr. Johan Werner	male	39	0	0	3101296	7.925	\N	S
530	f	2	Hocking, Mr. Richard George	male	23	2	1	29104	11.5	\N	S
531	t	2	Quick, Miss. Phyllis May	female	2	1	1	26360	26	\N	S
532	f	3	Toufik, Mr. Nakli	male	\N	0	0	2641	7.2292	\N	C
533	f	3	Elias, Mr. Joseph Jr	male	17	1	1	2690	7.2292	\N	C
534	t	3	Peter, Mrs. Catherine (Catherine Rizk)	female	\N	0	2	2668	22.3583	\N	C
535	f	3	Cacic, Miss. Marija	female	30	0	0	315084	8.6625	\N	S
536	t	2	Hart, Miss. Eva Miriam	female	7	0	2	F.C.C. 13529	26.25	\N	S
537	f	1	Butt, Major. Archibald Willingham	male	45	0	0	113050	26.55	B38	S
538	t	1	LeRoy, Miss. Bertha	female	30	0	0	PC 17761	106.425	\N	C
539	f	3	Risien, Mr. Samuel Beard	male	\N	0	0	364498	14.5	\N	S
540	t	1	Frolicher, Miss. Hedwig Margaritha	female	22	0	2	13568	49.5	B39	C
541	t	1	Crosby, Miss. Harriet R	female	36	0	2	WE/P 5735	71	B22	S
542	f	3	Andersson, Miss. Ingeborg Constanzia	female	9	4	2	347082	31.275	\N	S
543	f	3	Andersson, Miss. Sigrid Elisabeth	female	11	4	2	347082	31.275	\N	S
544	t	2	Beane, Mr. Edward	male	32	1	0	2908	26	\N	S
545	f	1	Douglas, Mr. Walter Donald	male	50	1	0	PC 17761	106.425	C86	C
546	f	1	Nicholson, Mr. Arthur Ernest	male	64	0	0	693	26	\N	S
547	t	2	Beane, Mrs. Edward (Ethel Clarke)	female	19	1	0	2908	26	\N	S
548	t	2	Padro y Manent, Mr. Julian	male	\N	0	0	SC/PARIS 2146	13.8625	\N	C
549	f	3	Goldsmith, Mr. Frank John	male	33	1	1	363291	20.525	\N	S
550	t	2	Davies, Master. John Morgan Jr	male	8	1	1	C.A. 33112	36.75	\N	S
551	t	1	Thayer, Mr. John Borland Jr	male	17	0	2	17421	110.8833	C70	C
552	f	2	Sharp, Mr. Percival James R	male	27	0	0	244358	26	\N	S
553	f	3	O'Brien, Mr. Timothy	male	\N	0	0	330979	7.8292	\N	Q
554	t	3	Leeni, Mr. Fahim ("Philip Zenni")	male	22	0	0	2620	7.225	\N	C
555	t	3	Ohman, Miss. Velin	female	22	0	0	347085	7.775	\N	S
556	f	1	Wright, Mr. George	male	62	0	0	113807	26.55	\N	S
557	t	1	Duff Gordon, Lady. (Lucille Christiana Sutherland) ("Mrs Morgan")	female	48	1	0	11755	39.6	A16	C
558	f	1	Robbins, Mr. Victor	male	\N	0	0	PC 17757	227.525	\N	C
559	t	1	Taussig, Mrs. Emil (Tillie Mandelbaum)	female	39	1	1	110413	79.65	E67	S
560	t	3	de Messemaeker, Mrs. Guillaume Joseph (Emma)	female	36	1	0	345572	17.4	\N	S
561	f	3	Morrow, Mr. Thomas Rowan	male	\N	0	0	372622	7.75	\N	Q
562	f	3	Sivic, Mr. Husein	male	40	0	0	349251	7.8958	\N	S
563	f	2	Norman, Mr. Robert Douglas	male	28	0	0	218629	13.5	\N	S
564	f	3	Simmons, Mr. John	male	\N	0	0	SOTON/OQ 392082	8.05	\N	S
565	f	3	Meanwell, Miss. (Marion Ogden)	female	\N	0	0	SOTON/O.Q. 392087	8.05	\N	S
566	f	3	Davies, Mr. Alfred J	male	24	2	0	A/4 48871	24.15	\N	S
567	f	3	Stoytcheff, Mr. Ilia	male	19	0	0	349205	7.8958	\N	S
568	f	3	Palsson, Mrs. Nils (Alma Cornelia Berglund)	female	29	0	4	349909	21.075	\N	S
569	f	3	Doharr, Mr. Tannous	male	\N	0	0	2686	7.2292	\N	C
570	t	3	Jonsson, Mr. Carl	male	32	0	0	350417	7.8542	\N	S
571	t	2	Harris, Mr. George	male	62	0	0	S.W./PP 752	10.5	\N	S
572	t	1	Appleton, Mrs. Edward Dale (Charlotte Lamson)	female	53	2	0	11769	51.4792	C101	S
573	t	1	Flynn, Mr. John Irwin ("Irving")	male	36	0	0	PC 17474	26.3875	E25	S
574	t	3	Kelly, Miss. Mary	female	\N	0	0	14312	7.75	\N	Q
575	f	3	Rush, Mr. Alfred George John	male	16	0	0	A/4. 20589	8.05	\N	S
576	f	3	Patchett, Mr. George	male	19	0	0	358585	14.5	\N	S
577	t	2	Garside, Miss. Ethel	female	34	0	0	243880	13	\N	S
578	t	1	Silvey, Mrs. William Baird (Alice Munger)	female	39	1	0	13507	55.9	E44	S
579	f	3	Caram, Mrs. Joseph (Maria Elias)	female	\N	1	0	2689	14.4583	\N	C
580	t	3	Jussila, Mr. Eiriik	male	32	0	0	STON/O 2. 3101286	7.925	\N	S
581	t	2	Christy, Miss. Julie Rachel	female	25	1	1	237789	30	\N	S
582	t	1	Thayer, Mrs. John Borland (Marian Longstreth Morris)	female	39	1	1	17421	110.8833	C68	C
583	f	2	Downton, Mr. William James	male	54	0	0	28403	26	\N	S
584	f	1	Ross, Mr. John Hugo	male	36	0	0	13049	40.125	A10	C
585	f	3	Paulner, Mr. Uscher	male	\N	0	0	3411	8.7125	\N	C
586	t	1	Taussig, Miss. Ruth	female	18	0	2	110413	79.65	E68	S
587	f	2	Jarvis, Mr. John Denzil	male	47	0	0	237565	15	\N	S
588	t	1	Frolicher-Stehli, Mr. Maxmillian	male	60	1	1	13567	79.2	B41	C
589	f	3	Gilinski, Mr. Eliezer	male	22	0	0	14973	8.05	\N	S
590	f	3	Murdlin, Mr. Joseph	male	\N	0	0	A./5. 3235	8.05	\N	S
591	f	3	Rintamaki, Mr. Matti	male	35	0	0	STON/O 2. 3101273	7.125	\N	S
592	t	1	Stephenson, Mrs. Walter Bertram (Martha Eustis)	female	52	1	0	36947	78.2667	D20	C
593	f	3	Elsbury, Mr. William James	male	47	0	0	A/5 3902	7.25	\N	S
594	f	3	Bourke, Miss. Mary	female	\N	0	2	364848	7.75	\N	Q
595	f	2	Chapman, Mr. John Henry	male	37	1	0	SC/AH 29037	26	\N	S
596	f	3	Van Impe, Mr. Jean Baptiste	male	36	1	1	345773	24.15	\N	S
597	t	2	Leitch, Miss. Jessie Wills	female	\N	0	0	248727	33	\N	S
598	f	3	Johnson, Mr. Alfred	male	49	0	0	LINE	0	\N	S
599	f	3	Boulos, Mr. Hanna	male	\N	0	0	2664	7.225	\N	C
600	t	1	Duff Gordon, Sir. Cosmo Edmund ("Mr Morgan")	male	49	1	0	PC 17485	56.9292	A20	C
601	t	2	Jacobsohn, Mrs. Sidney Samuel (Amy Frances Christy)	female	24	2	1	243847	27	\N	S
602	f	3	Slabenoff, Mr. Petco	male	\N	0	0	349214	7.8958	\N	S
603	f	1	Harrington, Mr. Charles H	male	\N	0	0	113796	42.4	\N	S
604	f	3	Torber, Mr. Ernst William	male	44	0	0	364511	8.05	\N	S
605	t	1	Homer, Mr. Harry ("Mr E Haven")	male	35	0	0	111426	26.55	\N	C
606	f	3	Lindell, Mr. Edvard Bengtsson	male	36	1	0	349910	15.55	\N	S
607	f	3	Karaic, Mr. Milan	male	30	0	0	349246	7.8958	\N	S
608	t	1	Daniel, Mr. Robert Williams	male	27	0	0	113804	30.5	\N	S
609	t	2	Laroche, Mrs. Joseph (Juliette Marie Louise Lafargue)	female	22	1	2	SC/Paris 2123	41.5792	\N	C
610	t	1	Shutes, Miss. Elizabeth W	female	40	0	0	PC 17582	153.4625	C125	S
611	f	3	Andersson, Mrs. Anders Johan (Alfrida Konstantia Brogren)	female	39	1	5	347082	31.275	\N	S
612	f	3	Jardin, Mr. Jose Neto	male	\N	0	0	SOTON/O.Q. 3101305	7.05	\N	S
613	t	3	Murphy, Miss. Margaret Jane	female	\N	1	0	367230	15.5	\N	Q
614	f	3	Horgan, Mr. John	male	\N	0	0	370377	7.75	\N	Q
615	f	3	Brocklebank, Mr. William Alfred	male	35	0	0	364512	8.05	\N	S
616	t	2	Herman, Miss. Alice	female	24	1	2	220845	65	\N	S
617	f	3	Danbom, Mr. Ernst Gilbert	male	34	1	1	347080	14.4	\N	S
618	f	3	Lobb, Mrs. William Arthur (Cordelia K Stanlick)	female	26	1	0	A/5. 3336	16.1	\N	S
619	t	2	Becker, Miss. Marion Louise	female	4	2	1	230136	39	F4	S
620	f	2	Gavey, Mr. Lawrence	male	26	0	0	31028	10.5	\N	S
621	f	3	Yasbeck, Mr. Antoni	male	27	1	0	2659	14.4542	\N	C
622	t	1	Kimball, Mr. Edwin Nelson Jr	male	42	1	0	11753	52.5542	D19	S
623	t	3	Nakid, Mr. Sahid	male	20	1	1	2653	15.7417	\N	C
624	f	3	Hansen, Mr. Henry Damsgaard	male	21	0	0	350029	7.8542	\N	S
625	f	3	Bowen, Mr. David John "Dai"	male	21	0	0	54636	16.1	\N	S
626	f	1	Sutton, Mr. Frederick	male	61	0	0	36963	32.3208	D50	S
627	f	2	Kirkland, Rev. Charles Leonard	male	57	0	0	219533	12.35	\N	Q
628	t	1	Longley, Miss. Gretchen Fiske	female	21	0	0	13502	77.9583	D9	S
629	f	3	Bostandyeff, Mr. Guentcho	male	26	0	0	349224	7.8958	\N	S
630	f	3	O'Connell, Mr. Patrick D	male	\N	0	0	334912	7.7333	\N	Q
631	t	1	Barkworth, Mr. Algernon Henry Wilson	male	80	0	0	27042	30	A23	S
632	f	3	Lundahl, Mr. Johan Svensson	male	51	0	0	347743	7.0542	\N	S
633	t	1	Stahelin-Maeglin, Dr. Max	male	32	0	0	13214	30.5	B50	C
634	f	1	Parr, Mr. William Henry Marsh	male	\N	0	0	112052	0	\N	S
635	f	3	Skoog, Miss. Mabel	female	9	3	2	347088	27.9	\N	S
636	t	2	Davis, Miss. Mary	female	28	0	0	237668	13	\N	S
637	f	3	Leinonen, Mr. Antti Gustaf	male	32	0	0	STON/O 2. 3101292	7.925	\N	S
638	f	2	Collyer, Mr. Harvey	male	31	1	1	C.A. 31921	26.25	\N	S
639	f	3	Panula, Mrs. Juha (Maria Emilia Ojala)	female	41	0	5	3101295	39.6875	\N	S
640	f	3	Thorneycroft, Mr. Percival	male	\N	1	0	376564	16.1	\N	S
641	f	3	Jensen, Mr. Hans Peder	male	20	0	0	350050	7.8542	\N	S
642	t	1	Sagesser, Mlle. Emma	female	24	0	0	PC 17477	69.3	B35	C
643	f	3	Skoog, Miss. Margit Elizabeth	female	2	3	2	347088	27.9	\N	S
644	t	3	Foo, Mr. Choong	male	\N	0	0	1601	56.4958	\N	S
645	t	3	Baclini, Miss. Eugenie	female	0.75	2	1	2666	19.2583	\N	C
646	t	1	Harper, Mr. Henry Sleeper	male	48	1	0	PC 17572	76.7292	D33	C
647	f	3	Cor, Mr. Liudevit	male	19	0	0	349231	7.8958	\N	S
648	t	1	Simonius-Blumer, Col. Oberst Alfons	male	56	0	0	13213	35.5	A26	C
649	f	3	Willey, Mr. Edward	male	\N	0	0	S.O./P.P. 751	7.55	\N	S
650	t	3	Stanley, Miss. Amy Zillah Elsie	female	23	0	0	CA. 2314	7.55	\N	S
651	f	3	Mitkoff, Mr. Mito	male	\N	0	0	349221	7.8958	\N	S
652	t	2	Doling, Miss. Elsie	female	18	0	1	231919	23	\N	S
653	f	3	Kalvik, Mr. Johannes Halvorsen	male	21	0	0	8475	8.4333	\N	S
654	t	3	O'Leary, Miss. Hanora "Norah"	female	\N	0	0	330919	7.8292	\N	Q
655	f	3	Hegarty, Miss. Hanora "Nora"	female	18	0	0	365226	6.75	\N	Q
656	f	2	Hickman, Mr. Leonard Mark	male	24	2	0	S.O.C. 14879	73.5	\N	S
657	f	3	Radeff, Mr. Alexander	male	\N	0	0	349223	7.8958	\N	S
658	f	3	Bourke, Mrs. John (Catherine)	female	32	1	1	364849	15.5	\N	Q
659	f	2	Eitemiller, Mr. George Floyd	male	23	0	0	29751	13	\N	S
660	f	1	Newell, Mr. Arthur Webster	male	58	0	2	35273	113.275	D48	C
661	t	1	Frauenthal, Dr. Henry William	male	50	2	0	PC 17611	133.65	\N	S
662	f	3	Badt, Mr. Mohamed	male	40	0	0	2623	7.225	\N	C
663	f	1	Colley, Mr. Edward Pomeroy	male	47	0	0	5727	25.5875	E58	S
664	f	3	Coleff, Mr. Peju	male	36	0	0	349210	7.4958	\N	S
665	t	3	Lindqvist, Mr. Eino William	male	20	1	0	STON/O 2. 3101285	7.925	\N	S
666	f	2	Hickman, Mr. Lewis	male	32	2	0	S.O.C. 14879	73.5	\N	S
667	f	2	Butler, Mr. Reginald Fenton	male	25	0	0	234686	13	\N	S
668	f	3	Rommetvedt, Mr. Knud Paust	male	\N	0	0	312993	7.775	\N	S
669	f	3	Cook, Mr. Jacob	male	43	0	0	A/5 3536	8.05	\N	S
670	t	1	Taylor, Mrs. Elmer Zebley (Juliet Cummins Wright)	female	\N	1	0	19996	52	C126	S
671	t	2	Brown, Mrs. Thomas William Solomon (Elizabeth Catherine Ford)	female	40	1	1	29750	39	\N	S
672	f	1	Davidson, Mr. Thornton	male	31	1	0	F.C. 12750	52	B71	S
673	f	2	Mitchell, Mr. Henry Michael	male	70	0	0	C.A. 24580	10.5	\N	S
674	t	2	Wilhelms, Mr. Charles	male	31	0	0	244270	13	\N	S
675	f	2	Watson, Mr. Ennis Hastings	male	\N	0	0	239856	0	\N	S
676	f	3	Edvardsson, Mr. Gustaf Hjalmar	male	18	0	0	349912	7.775	\N	S
677	f	3	Sawyer, Mr. Frederick Charles	male	24.5	0	0	342826	8.05	\N	S
678	t	3	Turja, Miss. Anna Sofia	female	18	0	0	4138	9.8417	\N	S
679	f	3	Goodwin, Mrs. Frederick (Augusta Tyler)	female	43	1	6	CA 2144	46.9	\N	S
680	t	1	Cardeza, Mr. Thomas Drake Martinez	male	36	0	1	PC 17755	512.3292	B51 B53 B55	C
681	f	3	Peters, Miss. Katie	female	\N	0	0	330935	8.1375	\N	Q
682	t	1	Hassab, Mr. Hammad	male	27	0	0	PC 17572	76.7292	D49	C
683	f	3	Olsvigen, Mr. Thor Anderson	male	20	0	0	6563	9.225	\N	S
684	f	3	Goodwin, Mr. Charles Edward	male	14	5	2	CA 2144	46.9	\N	S
685	f	2	Brown, Mr. Thomas William Solomon	male	60	1	1	29750	39	\N	S
686	f	2	Laroche, Mr. Joseph Philippe Lemercier	male	25	1	2	SC/Paris 2123	41.5792	\N	C
687	f	3	Panula, Mr. Jaako Arnold	male	14	4	1	3101295	39.6875	\N	S
688	f	3	Dakic, Mr. Branko	male	19	0	0	349228	10.1708	\N	S
689	f	3	Fischer, Mr. Eberhard Thelander	male	18	0	0	350036	7.7958	\N	S
690	t	1	Madill, Miss. Georgette Alexandra	female	15	0	1	24160	211.3375	B5	S
691	t	1	Dick, Mr. Albert Adrian	male	31	1	0	17474	57	B20	S
692	t	3	Karun, Miss. Manca	female	4	0	1	349256	13.4167	\N	C
693	t	3	Lam, Mr. Ali	male	\N	0	0	1601	56.4958	\N	S
694	f	3	Saad, Mr. Khalil	male	25	0	0	2672	7.225	\N	C
695	f	1	Weir, Col. John	male	60	0	0	113800	26.55	\N	S
696	f	2	Chapman, Mr. Charles Henry	male	52	0	0	248731	13.5	\N	S
697	f	3	Kelly, Mr. James	male	44	0	0	363592	8.05	\N	S
698	t	3	Mullens, Miss. Katherine "Katie"	female	\N	0	0	35852	7.7333	\N	Q
699	f	1	Thayer, Mr. John Borland	male	49	1	1	17421	110.8833	C68	C
700	f	3	Humblen, Mr. Adolf Mathias Nicolai Olsen	male	42	0	0	348121	7.65	F G63	S
701	t	1	Astor, Mrs. John Jacob (Madeleine Talmadge Force)	female	18	1	0	PC 17757	227.525	C62 C64	C
702	t	1	Silverthorne, Mr. Spencer Victor	male	35	0	0	PC 17475	26.2875	E24	S
703	f	3	Barbara, Miss. Saiide	female	18	0	1	2691	14.4542	\N	C
704	f	3	Gallagher, Mr. Martin	male	25	0	0	36864	7.7417	\N	Q
705	f	3	Hansen, Mr. Henrik Juul	male	26	1	0	350025	7.8542	\N	S
706	f	2	Morley, Mr. Henry Samuel ("Mr Henry Marshall")	male	39	0	0	250655	26	\N	S
707	t	2	Kelly, Mrs. Florence "Fannie"	female	45	0	0	223596	13.5	\N	S
708	t	1	Calderhead, Mr. Edward Pennington	male	42	0	0	PC 17476	26.2875	E24	S
709	t	1	Cleaver, Miss. Alice	female	22	0	0	113781	151.55	\N	S
710	t	3	Moubarek, Master. Halim Gonios ("William George")	male	\N	1	1	2661	15.2458	\N	C
711	t	1	Mayne, Mlle. Berthe Antonine ("Mrs de Villiers")	female	24	0	0	PC 17482	49.5042	C90	C
712	f	1	Klaber, Mr. Herman	male	\N	0	0	113028	26.55	C124	S
713	t	1	Taylor, Mr. Elmer Zebley	male	48	1	0	19996	52	C126	S
714	f	3	Larsson, Mr. August Viktor	male	29	0	0	7545	9.4833	\N	S
715	f	2	Greenberg, Mr. Samuel	male	52	0	0	250647	13	\N	S
716	f	3	Soholt, Mr. Peter Andreas Lauritz Andersen	male	19	0	0	348124	7.65	F G73	S
717	t	1	Endres, Miss. Caroline Louise	female	38	0	0	PC 17757	227.525	C45	C
718	t	2	Troutt, Miss. Edwina Celia "Winnie"	female	27	0	0	34218	10.5	E101	S
719	f	3	McEvoy, Mr. Michael	male	\N	0	0	36568	15.5	\N	Q
720	f	3	Johnson, Mr. Malkolm Joackim	male	33	0	0	347062	7.775	\N	S
721	t	2	Harper, Miss. Annie Jessie "Nina"	female	6	0	1	248727	33	\N	S
722	f	3	Jensen, Mr. Svend Lauritz	male	17	1	0	350048	7.0542	\N	S
723	f	2	Gillespie, Mr. William Henry	male	34	0	0	12233	13	\N	S
724	f	2	Hodges, Mr. Henry Price	male	50	0	0	250643	13	\N	S
725	t	1	Chambers, Mr. Norman Campbell	male	27	1	0	113806	53.1	E8	S
726	f	3	Oreskovic, Mr. Luka	male	20	0	0	315094	8.6625	\N	S
727	t	2	Renouf, Mrs. Peter Henry (Lillian Jefferys)	female	30	3	0	31027	21	\N	S
728	t	3	Mannion, Miss. Margareth	female	\N	0	0	36866	7.7375	\N	Q
729	f	2	Bryhl, Mr. Kurt Arnold Gottfrid	male	25	1	0	236853	26	\N	S
730	f	3	Ilmakangas, Miss. Pieta Sofia	female	25	1	0	STON/O2. 3101271	7.925	\N	S
731	t	1	Allen, Miss. Elisabeth Walton	female	29	0	0	24160	211.3375	B5	S
732	f	3	Hassan, Mr. Houssein G N	male	11	0	0	2699	18.7875	\N	C
733	f	2	Knight, Mr. Robert J	male	\N	0	0	239855	0	\N	S
734	f	2	Berriman, Mr. William John	male	23	0	0	28425	13	\N	S
735	f	2	Troupiansky, Mr. Moses Aaron	male	23	0	0	233639	13	\N	S
736	f	3	Williams, Mr. Leslie	male	28.5	0	0	54636	16.1	\N	S
737	f	3	Ford, Mrs. Edward (Margaret Ann Watson)	female	48	1	3	W./C. 6608	34.375	\N	S
738	t	1	Lesurer, Mr. Gustave J	male	35	0	0	PC 17755	512.3292	B101	C
739	f	3	Ivanoff, Mr. Kanio	male	\N	0	0	349201	7.8958	\N	S
740	f	3	Nankoff, Mr. Minko	male	\N	0	0	349218	7.8958	\N	S
741	t	1	Hawksford, Mr. Walter James	male	\N	0	0	16988	30	D45	S
742	f	1	Cavendish, Mr. Tyrell William	male	36	1	0	19877	78.85	C46	S
743	t	1	Ryerson, Miss. Susan Parker "Suzette"	female	21	2	2	PC 17608	262.375	B57 B59 B63 B66	C
744	f	3	McNamee, Mr. Neal	male	24	1	0	376566	16.1	\N	S
745	t	3	Stranden, Mr. Juho	male	31	0	0	STON/O 2. 3101288	7.925	\N	S
746	f	1	Crosby, Capt. Edward Gifford	male	70	1	1	WE/P 5735	71	B22	S
747	f	3	Abbott, Mr. Rossmore Edward	male	16	1	1	C.A. 2673	20.25	\N	S
748	t	2	Sinkkonen, Miss. Anna	female	30	0	0	250648	13	\N	S
749	f	1	Marvin, Mr. Daniel Warner	male	19	1	0	113773	53.1	D30	S
750	f	3	Connaghton, Mr. Michael	male	31	0	0	335097	7.75	\N	Q
751	t	2	Wells, Miss. Joan	female	4	1	1	29103	23	\N	S
752	t	3	Moor, Master. Meier	male	6	0	1	392096	12.475	E121	S
753	f	3	Vande Velde, Mr. Johannes Joseph	male	33	0	0	345780	9.5	\N	S
754	f	3	Jonkoff, Mr. Lalio	male	23	0	0	349204	7.8958	\N	S
755	t	2	Herman, Mrs. Samuel (Jane Laver)	female	48	1	2	220845	65	\N	S
756	t	2	Hamalainen, Master. Viljo	male	0.67	1	1	250649	14.5	\N	S
757	f	3	Carlsson, Mr. August Sigfrid	male	28	0	0	350042	7.7958	\N	S
758	f	2	Bailey, Mr. Percy Andrew	male	18	0	0	29108	11.5	\N	S
759	f	3	Theobald, Mr. Thomas Leonard	male	34	0	0	363294	8.05	\N	S
760	t	1	Rothes, the Countess. of (Lucy Noel Martha Dyer-Edwards)	female	33	0	0	110152	86.5	B77	S
761	f	3	Garfirth, Mr. John	male	\N	0	0	358585	14.5	\N	S
762	f	3	Nirva, Mr. Iisakki Antino Aijo	male	41	0	0	SOTON/O2 3101272	7.125	\N	S
763	t	3	Barah, Mr. Hanna Assi	male	20	0	0	2663	7.2292	\N	C
764	t	1	Carter, Mrs. William Ernest (Lucile Polk)	female	36	1	2	113760	120	B96 B98	S
765	f	3	Eklund, Mr. Hans Linus	male	16	0	0	347074	7.775	\N	S
766	t	1	Hogeboom, Mrs. John C (Anna Andrews)	female	51	1	0	13502	77.9583	D11	S
767	f	1	Brewe, Dr. Arthur Jackson	male	\N	0	0	112379	39.6	\N	C
768	f	3	Mangan, Miss. Mary	female	30.5	0	0	364850	7.75	\N	Q
769	f	3	Moran, Mr. Daniel J	male	\N	1	0	371110	24.15	\N	Q
770	f	3	Gronnestad, Mr. Daniel Danielsen	male	32	0	0	8471	8.3625	\N	S
771	f	3	Lievens, Mr. Rene Aime	male	24	0	0	345781	9.5	\N	S
772	f	3	Jensen, Mr. Niels Peder	male	48	0	0	350047	7.8542	\N	S
773	f	2	Mack, Mrs. (Mary)	female	57	0	0	S.O./P.P. 3	10.5	E77	S
774	f	3	Elias, Mr. Dibo	male	\N	0	0	2674	7.225	\N	C
775	t	2	Hocking, Mrs. Elizabeth (Eliza Needs)	female	54	1	3	29105	23	\N	S
776	f	3	Myhrman, Mr. Pehr Fabian Oliver Malkolm	male	18	0	0	347078	7.75	\N	S
777	f	3	Tobin, Mr. Roger	male	\N	0	0	383121	7.75	F38	Q
778	t	3	Emanuel, Miss. Virginia Ethel	female	5	0	0	364516	12.475	\N	S
779	f	3	Kilgannon, Mr. Thomas J	male	\N	0	0	36865	7.7375	\N	Q
780	t	1	Robert, Mrs. Edward Scott (Elisabeth Walton McMillan)	female	43	0	1	24160	211.3375	B3	S
781	t	3	Ayoub, Miss. Banoura	female	13	0	0	2687	7.2292	\N	C
782	t	1	Dick, Mrs. Albert Adrian (Vera Gillespie)	female	17	1	0	17474	57	B20	S
783	f	1	Long, Mr. Milton Clyde	male	29	0	0	113501	30	D6	S
784	f	3	Johnston, Mr. Andrew G	male	\N	1	2	W./C. 6607	23.45	\N	S
785	f	3	Ali, Mr. William	male	25	0	0	SOTON/O.Q. 3101312	7.05	\N	S
786	f	3	Harmer, Mr. Abraham (David Lishin)	male	25	0	0	374887	7.25	\N	S
787	t	3	Sjoblom, Miss. Anna Sofia	female	18	0	0	3101265	7.4958	\N	S
788	f	3	Rice, Master. George Hugh	male	8	4	1	382652	29.125	\N	Q
789	t	3	Dean, Master. Bertram Vere	male	1	1	2	C.A. 2315	20.575	\N	S
790	f	1	Guggenheim, Mr. Benjamin	male	46	0	0	PC 17593	79.2	B82 B84	C
791	f	3	Keane, Mr. Andrew "Andy"	male	\N	0	0	12460	7.75	\N	Q
792	f	2	Gaskell, Mr. Alfred	male	16	0	0	239865	26	\N	S
793	f	3	Sage, Miss. Stella Anna	female	\N	8	2	CA. 2343	69.55	\N	S
794	f	1	Hoyt, Mr. William Fisher	male	\N	0	0	PC 17600	30.6958	\N	C
795	f	3	Dantcheff, Mr. Ristiu	male	25	0	0	349203	7.8958	\N	S
796	f	2	Otter, Mr. Richard	male	39	0	0	28213	13	\N	S
797	t	1	Leader, Dr. Alice (Farnham)	female	49	0	0	17465	25.9292	D17	S
798	t	3	Osman, Mrs. Mara	female	31	0	0	349244	8.6833	\N	S
799	f	3	Ibrahim Shawah, Mr. Yousseff	male	30	0	0	2685	7.2292	\N	C
800	f	3	Van Impe, Mrs. Jean Baptiste (Rosalie Paula Govaert)	female	30	1	1	345773	24.15	\N	S
801	f	2	Ponesell, Mr. Martin	male	34	0	0	250647	13	\N	S
802	t	2	Collyer, Mrs. Harvey (Charlotte Annie Tate)	female	31	1	1	C.A. 31921	26.25	\N	S
803	t	1	Carter, Master. William Thornton II	male	11	1	2	113760	120	B96 B98	S
804	t	3	Thomas, Master. Assad Alexander	male	0.42	0	1	2625	8.5167	\N	C
805	t	3	Hedman, Mr. Oskar Arvid	male	27	0	0	347089	6.975	\N	S
806	f	3	Johansson, Mr. Karl Johan	male	31	0	0	347063	7.775	\N	S
807	f	1	Andrews, Mr. Thomas Jr	male	39	0	0	112050	0	A36	S
808	f	3	Pettersson, Miss. Ellen Natalia	female	18	0	0	347087	7.775	\N	S
809	f	2	Meyer, Mr. August	male	39	0	0	248723	13	\N	S
810	t	1	Chambers, Mrs. Norman Campbell (Bertha Griggs)	female	33	1	0	113806	53.1	E8	S
811	f	3	Alexander, Mr. William	male	26	0	0	3474	7.8875	\N	S
812	f	3	Lester, Mr. James	male	39	0	0	A/4 48871	24.15	\N	S
813	f	2	Slemen, Mr. Richard James	male	35	0	0	28206	10.5	\N	S
814	f	3	Andersson, Miss. Ebba Iris Alfrida	female	6	4	2	347082	31.275	\N	S
815	f	3	Tomlin, Mr. Ernest Portage	male	30.5	0	0	364499	8.05	\N	S
816	f	1	Fry, Mr. Richard	male	\N	0	0	112058	0	B102	S
817	f	3	Heininen, Miss. Wendla Maria	female	23	0	0	STON/O2. 3101290	7.925	\N	S
818	f	2	Mallet, Mr. Albert	male	31	1	1	S.C./PARIS 2079	37.0042	\N	C
819	f	3	Holm, Mr. John Fredrik Alexander	male	43	0	0	C 7075	6.45	\N	S
820	f	3	Skoog, Master. Karl Thorsten	male	10	3	2	347088	27.9	\N	S
821	t	1	Hays, Mrs. Charles Melville (Clara Jennings Gregg)	female	52	1	1	12749	93.5	B69	S
822	t	3	Lulic, Mr. Nikola	male	27	0	0	315098	8.6625	\N	S
823	f	1	Reuchlin, Jonkheer. John George	male	38	0	0	19972	0	\N	S
824	t	3	Moor, Mrs. (Beila)	female	27	0	1	392096	12.475	E121	S
825	f	3	Panula, Master. Urho Abraham	male	2	4	1	3101295	39.6875	\N	S
826	f	3	Flynn, Mr. John	male	\N	0	0	368323	6.95	\N	Q
827	f	3	Lam, Mr. Len	male	\N	0	0	1601	56.4958	\N	S
828	t	2	Mallet, Master. Andre	male	1	0	2	S.C./PARIS 2079	37.0042	\N	C
829	t	3	McCormack, Mr. Thomas Joseph	male	\N	0	0	367228	7.75	\N	Q
830	t	1	Stone, Mrs. George Nelson (Martha Evelyn)	female	62	0	0	113572	80	B28	\N
831	t	3	Yasbeck, Mrs. Antoni (Selini Alexander)	female	15	1	0	2659	14.4542	\N	C
832	t	2	Richards, Master. George Sibley	male	0.83	1	1	29106	18.75	\N	S
833	f	3	Saad, Mr. Amin	male	\N	0	0	2671	7.2292	\N	C
834	f	3	Augustsson, Mr. Albert	male	23	0	0	347468	7.8542	\N	S
835	f	3	Allum, Mr. Owen George	male	18	0	0	2223	8.3	\N	S
836	t	1	Compton, Miss. Sara Rebecca	female	39	1	1	PC 17756	83.1583	E49	C
837	f	3	Pasic, Mr. Jakob	male	21	0	0	315097	8.6625	\N	S
838	f	3	Sirota, Mr. Maurice	male	\N	0	0	392092	8.05	\N	S
839	t	3	Chip, Mr. Chang	male	32	0	0	1601	56.4958	\N	S
840	t	1	Marechal, Mr. Pierre	male	\N	0	0	11774	29.7	C47	C
841	f	3	Alhomaki, Mr. Ilmari Rudolf	male	20	0	0	SOTON/O2 3101287	7.925	\N	S
842	f	2	Mudd, Mr. Thomas Charles	male	16	0	0	S.O./P.P. 3	10.5	\N	S
843	t	1	Serepeca, Miss. Augusta	female	30	0	0	113798	31	\N	C
844	f	3	Lemberopolous, Mr. Peter L	male	34.5	0	0	2683	6.4375	\N	C
845	f	3	Culumovic, Mr. Jeso	male	17	0	0	315090	8.6625	\N	S
846	f	3	Abbing, Mr. Anthony	male	42	0	0	C.A. 5547	7.55	\N	S
847	f	3	Sage, Mr. Douglas Bullen	male	\N	8	2	CA. 2343	69.55	\N	S
848	f	3	Markoff, Mr. Marin	male	35	0	0	349213	7.8958	\N	C
849	f	2	Harper, Rev. John	male	28	0	1	248727	33	\N	S
850	t	1	Goldenberg, Mrs. Samuel L (Edwiga Grabowska)	female	\N	1	0	17453	89.1042	C92	C
851	f	3	Andersson, Master. Sigvard Harald Elias	male	4	4	2	347082	31.275	\N	S
852	f	3	Svensson, Mr. Johan	male	74	0	0	347060	7.775	\N	S
853	f	3	Boulos, Miss. Nourelain	female	9	1	1	2678	15.2458	\N	C
854	t	1	Lines, Miss. Mary Conover	female	16	0	1	PC 17592	39.4	D28	S
855	f	2	Carter, Mrs. Ernest Courtenay (Lilian Hughes)	female	44	1	0	244252	26	\N	S
856	t	3	Aks, Mrs. Sam (Leah Rosen)	female	18	0	1	392091	9.35	\N	S
857	t	1	Wick, Mrs. George Dennick (Mary Hitchcock)	female	45	1	1	36928	164.8667	\N	S
858	t	1	Daly, Mr. Peter Denis 	male	51	0	0	113055	26.55	E17	S
859	t	3	Baclini, Mrs. Solomon (Latifa Qurban)	female	24	0	3	2666	19.2583	\N	C
860	f	3	Razi, Mr. Raihed	male	\N	0	0	2629	7.2292	\N	C
861	f	3	Hansen, Mr. Claus Peter	male	41	2	0	350026	14.1083	\N	S
862	f	2	Giles, Mr. Frederick Edward	male	21	1	0	28134	11.5	\N	S
863	t	1	Swift, Mrs. Frederick Joel (Margaret Welles Barron)	female	48	0	0	17466	25.9292	D17	S
864	f	3	Sage, Miss. Dorothy Edith "Dolly"	female	\N	8	2	CA. 2343	69.55	\N	S
865	f	2	Gill, Mr. John William	male	24	0	0	233866	13	\N	S
866	t	2	Bystrom, Mrs. (Karolina)	female	42	0	0	236852	13	\N	S
867	t	2	Duran y More, Miss. Asuncion	female	27	1	0	SC/PARIS 2149	13.8583	\N	C
868	f	1	Roebling, Mr. Washington Augustus II	male	31	0	0	PC 17590	50.4958	A24	S
869	f	3	van Melkebeke, Mr. Philemon	male	\N	0	0	345777	9.5	\N	S
870	t	3	Johnson, Master. Harold Theodor	male	4	1	1	347742	11.1333	\N	S
871	f	3	Balkic, Mr. Cerin	male	26	0	0	349248	7.8958	\N	S
872	t	1	Beckwith, Mrs. Richard Leonard (Sallie Monypeny)	female	47	1	1	11751	52.5542	D35	S
873	f	1	Carlsson, Mr. Frans Olof	male	33	0	0	695	5	B51 B53 B55	S
874	f	3	Vander Cruyssen, Mr. Victor	male	47	0	0	345765	9	\N	S
875	t	2	Abelson, Mrs. Samuel (Hannah Wizosky)	female	28	1	0	P/PP 3381	24	\N	C
876	t	3	Najib, Miss. Adele Kiamie "Jane"	female	15	0	0	2667	7.225	\N	C
877	f	3	Gustafsson, Mr. Alfred Ossian	male	20	0	0	7534	9.8458	\N	S
878	f	3	Petroff, Mr. Nedelio	male	19	0	0	349212	7.8958	\N	S
879	f	3	Laleff, Mr. Kristo	male	\N	0	0	349217	7.8958	\N	S
880	t	1	Potter, Mrs. Thomas Jr (Lily Alexenia Wilson)	female	56	0	1	11767	83.1583	C50	C
881	t	2	Shelley, Mrs. William (Imanita Parrish Hall)	female	25	0	1	230433	26	\N	S
882	f	3	Markun, Mr. Johann	male	33	0	0	349257	7.8958	\N	S
883	f	3	Dahlberg, Miss. Gerda Ulrika	female	22	0	0	7552	10.5167	\N	S
884	f	2	Banfield, Mr. Frederick James	male	28	0	0	C.A./SOTON 34068	10.5	\N	S
885	f	3	Sutehall, Mr. Henry Jr	male	25	0	0	SOTON/OQ 392076	7.05	\N	S
886	f	3	Rice, Mrs. William (Margaret Norton)	female	39	0	5	382652	29.125	\N	Q
887	f	2	Montvila, Rev. Juozas	male	27	0	0	211536	13	\N	S
888	t	1	Graham, Miss. Margaret Edith	female	19	0	0	112053	30	B42	S
889	f	3	Johnston, Miss. Catherine Helen "Carrie"	female	\N	1	2	W./C. 6607	23.45	\N	S
890	t	1	Behr, Mr. Karl Howell	male	26	0	0	111369	30	C148	C
891	f	3	Dooley, Mr. Patrick	male	32	0	0	370376	7.75	\N	Q
\.


--
-- PostgreSQL database dump complete
--

