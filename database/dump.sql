--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
ALTER TABLE ONLY public."cartItems" DROP CONSTRAINT "cartItems_pkey";
ALTER TABLE public.products ALTER COLUMN "productId" DROP DEFAULT;
ALTER TABLE public.orders ALTER COLUMN "orderId" DROP DEFAULT;
ALTER TABLE public.carts ALTER COLUMN "cartId" DROP DEFAULT;
ALTER TABLE public."cartItems" ALTER COLUMN "cartItemId" DROP DEFAULT;
DROP SEQUENCE public."products_productId_seq";
DROP TABLE public.products;
DROP SEQUENCE public."orders_orderId_seq";
DROP TABLE public.orders;
DROP SEQUENCE public."carts_cartId_seq";
DROP TABLE public.carts;
DROP SEQUENCE public."cartItems_cartItemId_seq";
DROP TABLE public."cartItems";
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cartItems; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."cartItems" (
    "cartItemId" integer NOT NULL,
    "cartId" integer NOT NULL,
    "productId" integer NOT NULL,
    price integer NOT NULL
);


--
-- Name: cartItems_cartItemId_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."cartItems_cartItemId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cartItems_cartItemId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."cartItems_cartItemId_seq" OWNED BY public."cartItems"."cartItemId";


--
-- Name: carts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.carts (
    "cartId" integer NOT NULL,
    "createdAt" timestamp(6) with time zone DEFAULT now() NOT NULL
);


--
-- Name: carts_cartId_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."carts_cartId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: carts_cartId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."carts_cartId_seq" OWNED BY public.carts."cartId";


--
-- Name: orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orders (
    "orderId" integer NOT NULL,
    "cartId" integer NOT NULL,
    name text NOT NULL,
    "creditCard" text NOT NULL,
    "shippingAddress" text NOT NULL,
    "createdAt" timestamp(6) with time zone DEFAULT now() NOT NULL
);


--
-- Name: orders_orderId_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."orders_orderId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orders_orderId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."orders_orderId_seq" OWNED BY public.orders."orderId";


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products (
    "productId" integer NOT NULL,
    name text NOT NULL,
    price integer NOT NULL,
    image text NOT NULL,
    "shortDescription" text NOT NULL,
    "longDescription" text NOT NULL
);


--
-- Name: products_productId_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."products_productId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_productId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."products_productId_seq" OWNED BY public.products."productId";


--
-- Name: cartItems cartItemId; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."cartItems" ALTER COLUMN "cartItemId" SET DEFAULT nextval('public."cartItems_cartItemId_seq"'::regclass);


--
-- Name: carts cartId; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carts ALTER COLUMN "cartId" SET DEFAULT nextval('public."carts_cartId_seq"'::regclass);


--
-- Name: orders orderId; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders ALTER COLUMN "orderId" SET DEFAULT nextval('public."orders_orderId_seq"'::regclass);


--
-- Name: products productId; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products ALTER COLUMN "productId" SET DEFAULT nextval('public."products_productId_seq"'::regclass);


--
-- Data for Name: cartItems; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."cartItems" ("cartItemId", "cartId", "productId", price) FROM stdin;
1	14	2	2595
2	14	2	2595
3	14	2	2595
4	1	2	2595
5	1	2	2595
6	2	1	2999
7	2	1	2999
8	2	1	2999
9	2	1	2999
10	2	1	2999
11	2	1	2999
12	2	1	2999
13	2	1	2999
14	2	1	2999
15	2	1	2999
16	2	1	2999
17	2	1	2999
18	2	1	2999
19	2	1	2999
20	2	1	2999
21	2	1	2999
22	2	1	2999
23	2	1	2999
24	2	1	2999
25	2	1	2999
26	2	1	2999
27	2	1	2999
28	2	1	2999
29	2	1	2999
30	2	1	2999
31	2	1	2999
32	2	1	2999
33	2	1	2999
34	2	1	2999
35	2	1	2999
36	2	1	2999
37	2	1	2999
38	2	1	2999
39	2	1	2999
40	2	1	2999
41	2	1	2999
42	2	1	2999
43	2	1	2999
44	2	1	2999
45	2	1	2999
46	2	1	2999
47	2	1	2999
48	2	1	2999
49	2	1	2999
50	2	1	2999
51	2	1	2999
52	2	1	2999
53	2	1	2999
54	2	1	2999
55	2	1	2999
56	2	1	2999
57	2	1	2999
58	2	1	2999
59	2	1	2999
60	2	1	2999
61	2	1	2999
62	2	1	2999
63	2	1	2999
64	2	1	2999
65	2	1	2999
66	2	1	2999
67	2	1	2999
68	2	1	2999
69	2	1	2999
70	2	1	2999
71	2	1	2999
72	2	1	2999
73	2	1	2999
74	2	1	2999
75	2	1	2999
76	2	1	2999
77	2	1	2999
78	2	1	2999
79	2	1	2999
80	2	1	2999
81	2	1	2999
82	2	1	2999
83	2	1	2999
84	2	1	2999
85	2	1	2999
86	2	1	2999
87	2	1	2999
88	2	1	2999
89	2	1	2999
90	2	1	2999
91	2	1	2999
92	2	1	2999
93	2	1	2999
94	2	1	2999
95	2	1	2999
96	2	1	2999
97	2	1	2999
98	2	1	2999
99	2	1	2999
100	2	1	2999
101	2	1	2999
102	2	1	2999
103	2	1	2999
104	2	1	2999
105	2	1	2999
106	2	1	2999
107	2	1	2999
108	2	1	2999
109	2	1	2999
110	2	1	2999
111	2	1	2999
112	2	1	2999
113	2	1	2999
114	2	1	2999
115	2	1	2999
116	2	1	2999
117	2	1	2999
118	2	1	2999
119	2	1	2999
120	2	1	2999
121	2	1	2999
122	2	1	2999
123	2	1	2999
124	2	1	2999
125	2	1	2999
126	2	1	2999
127	2	1	2999
128	2	1	2999
129	2	1	2999
130	2	1	2999
131	2	1	2999
132	2	1	2999
133	2	1	2999
134	2	1	2999
135	2	1	2999
136	2	1	2999
137	2	1	2999
138	2	1	2999
139	2	1	2999
140	2	1	2999
141	2	1	2999
142	2	1	2999
143	2	1	2999
144	2	1	2999
145	2	1	2999
146	2	1	2999
147	2	1	2999
148	2	1	2999
149	2	1	2999
150	2	1	2999
151	2	1	2999
152	2	1	2999
153	2	1	2999
154	2	1	2999
155	2	1	2999
156	2	1	2999
157	2	1	2999
158	2	1	2999
159	2	1	2999
160	2	1	2999
161	2	1	2999
162	2	1	2999
163	2	1	2999
164	2	1	2999
165	2	1	2999
166	2	1	2999
167	2	1	2999
168	2	1	2999
169	2	1	2999
170	2	1	2999
171	2	1	2999
172	2	1	2999
173	2	1	2999
174	2	1	2999
175	2	1	2999
176	2	1	2999
177	2	1	2999
178	2	1	2999
179	2	1	2999
180	2	1	2999
181	2	1	2999
182	2	1	2999
183	2	1	2999
184	2	1	2999
185	2	1	2999
186	2	1	2999
187	2	1	2999
188	2	1	2999
189	2	1	2999
190	2	1	2999
191	2	1	2999
192	2	1	2999
193	2	1	2999
194	2	1	2999
195	2	1	2999
196	2	1	2999
197	2	1	2999
198	2	1	2999
199	2	1	2999
200	2	1	2999
201	2	1	2999
202	2	1	2999
203	2	1	2999
204	2	1	2999
205	2	1	2999
206	2	1	2999
207	2	1	2999
208	2	1	2999
209	2	1	2999
210	2	1	2999
211	2	1	2999
212	2	1	2999
213	2	1	2999
214	2	1	2999
215	2	1	2999
216	2	1	2999
217	2	1	2999
218	2	1	2999
219	2	1	2999
220	2	1	2999
221	2	1	2999
222	2	1	2999
223	2	1	2999
224	2	1	2999
225	2	1	2999
226	2	1	2999
227	2	1	2999
228	2	1	2999
229	2	1	2999
230	2	1	2999
231	2	1	2999
232	2	1	2999
233	2	1	2999
234	2	1	2999
235	2	1	2999
236	2	1	2999
237	2	1	2999
238	2	1	2999
239	2	1	2999
240	2	1	2999
241	2	1	2999
242	2	1	2999
243	2	1	2999
244	2	1	2999
245	2	1	2999
246	2	1	2999
247	2	1	2999
248	2	1	2999
249	2	1	2999
250	2	1	2999
251	2	1	2999
252	2	1	2999
253	2	1	2999
254	2	1	2999
255	2	1	2999
256	2	1	2999
257	2	1	2999
258	2	1	2999
259	2	1	2999
260	2	1	2999
261	2	1	2999
262	2	1	2999
263	2	1	2999
264	2	1	2999
265	2	1	2999
266	2	1	2999
267	2	1	2999
268	2	1	2999
269	2	1	2999
270	2	1	2999
271	2	1	2999
272	2	1	2999
273	2	1	2999
274	2	1	2999
275	2	1	2999
276	2	1	2999
277	2	1	2999
278	2	1	2999
279	2	1	2999
280	2	1	2999
281	2	1	2999
282	2	1	2999
283	2	1	2999
284	2	1	2999
285	2	1	2999
286	2	1	2999
287	2	1	2999
288	2	1	2999
289	2	1	2999
290	2	1	2999
291	2	1	2999
292	2	1	2999
293	2	1	2999
294	2	1	2999
295	2	1	2999
296	2	1	2999
297	2	1	2999
298	2	1	2999
299	2	1	2999
300	2	1	2999
301	2	1	2999
302	2	1	2999
303	2	1	2999
304	2	1	2999
305	2	1	2999
306	2	1	2999
307	2	1	2999
308	2	1	2999
309	2	1	2999
310	2	1	2999
311	2	1	2999
312	2	1	2999
313	2	1	2999
314	2	1	2999
315	2	1	2999
316	2	1	2999
317	2	1	2999
318	2	1	2999
319	2	1	2999
320	2	1	2999
321	2	1	2999
322	2	1	2999
323	2	1	2999
324	2	1	2999
325	2	1	2999
326	2	1	2999
327	2	1	2999
328	2	1	2999
329	2	1	2999
330	2	1	2999
331	2	1	2999
332	2	1	2999
333	2	1	2999
334	2	1	2999
335	2	1	2999
336	2	1	2999
337	2	1	2999
338	2	1	2999
339	2	1	2999
340	2	1	2999
341	2	1	2999
342	2	1	2999
343	2	1	2999
344	2	1	2999
345	2	1	2999
346	2	1	2999
347	2	1	2999
348	2	1	2999
349	2	1	2999
350	2	1	2999
351	2	1	2999
352	2	1	2999
353	2	1	2999
354	2	1	2999
355	2	1	2999
356	2	1	2999
357	2	1	2999
358	2	1	2999
359	2	1	2999
360	2	1	2999
361	2	1	2999
362	2	1	2999
363	2	1	2999
364	2	1	2999
365	2	1	2999
366	2	1	2999
367	2	1	2999
368	2	1	2999
369	2	1	2999
370	2	1	2999
371	2	1	2999
372	2	1	2999
373	2	1	2999
374	2	1	2999
375	2	1	2999
376	2	1	2999
377	2	1	2999
378	2	1	2999
379	2	1	2999
380	2	1	2999
381	2	1	2999
382	2	1	2999
383	2	1	2999
384	2	1	2999
385	2	1	2999
386	2	1	2999
387	2	1	2999
388	2	1	2999
389	2	1	2999
390	2	1	2999
391	2	1	2999
392	2	1	2999
393	2	1	2999
394	2	1	2999
395	2	1	2999
396	2	1	2999
397	2	1	2999
398	2	1	2999
399	2	1	2999
400	2	1	2999
401	2	1	2999
402	2	1	2999
403	2	1	2999
404	2	1	2999
405	2	1	2999
406	2	1	2999
407	2	1	2999
408	2	1	2999
409	2	1	2999
410	2	1	2999
411	2	1	2999
412	2	1	2999
413	2	1	2999
414	2	1	2999
415	2	1	2999
416	2	1	2999
417	2	1	2999
418	2	1	2999
419	2	1	2999
420	2	1	2999
421	2	1	2999
422	2	1	2999
423	2	1	2999
424	2	1	2999
425	2	1	2999
426	2	1	2999
427	2	1	2999
428	2	1	2999
429	2	1	2999
430	2	1	2999
431	2	1	2999
432	2	1	2999
433	2	1	2999
434	2	1	2999
435	2	1	2999
436	2	1	2999
437	2	1	2999
438	2	1	2999
439	2	1	2999
440	2	1	2999
441	2	1	2999
442	2	1	2999
443	2	1	2999
444	2	1	2999
445	2	1	2999
446	2	1	2999
447	2	1	2999
448	2	1	2999
449	2	1	2999
450	2	1	2999
451	2	1	2999
452	2	1	2999
453	2	1	2999
454	2	1	2999
455	2	1	2999
456	2	1	2999
457	2	1	2999
458	2	1	2999
459	2	1	2999
460	2	1	2999
461	2	1	2999
462	2	1	2999
463	2	1	2999
464	2	1	2999
465	2	1	2999
466	2	1	2999
467	2	1	2999
468	2	1	2999
469	2	1	2999
470	2	1	2999
471	2	1	2999
472	2	1	2999
473	2	1	2999
474	2	1	2999
475	2	1	2999
476	2	1	2999
477	2	1	2999
478	2	1	2999
479	2	1	2999
480	2	1	2999
481	2	1	2999
482	2	1	2999
483	2	1	2999
484	2	1	2999
485	2	1	2999
486	2	1	2999
487	2	1	2999
488	2	1	2999
489	2	1	2999
490	2	1	2999
491	2	1	2999
492	2	1	2999
493	2	1	2999
494	2	1	2999
495	2	1	2999
496	2	1	2999
497	2	1	2999
498	2	1	2999
499	2	1	2999
500	2	1	2999
501	2	1	2999
502	2	1	2999
503	2	1	2999
504	2	1	2999
505	2	1	2999
506	2	1	2999
507	2	1	2999
508	2	1	2999
509	2	1	2999
510	2	1	2999
511	2	1	2999
512	2	1	2999
513	2	1	2999
514	2	1	2999
515	2	1	2999
516	2	1	2999
517	2	1	2999
518	2	1	2999
519	2	1	2999
520	2	1	2999
521	2	1	2999
522	2	1	2999
523	2	1	2999
524	2	1	2999
525	2	1	2999
526	2	1	2999
527	2	1	2999
528	2	1	2999
529	2	1	2999
530	2	1	2999
531	2	1	2999
532	2	1	2999
533	2	1	2999
534	2	1	2999
535	2	1	2999
536	2	1	2999
537	2	1	2999
538	2	1	2999
539	2	1	2999
540	2	1	2999
541	2	1	2999
542	2	1	2999
543	2	1	2999
544	2	1	2999
545	2	1	2999
546	2	1	2999
547	2	1	2999
548	2	1	2999
549	2	1	2999
550	2	1	2999
551	2	1	2999
552	2	1	2999
553	2	1	2999
554	2	1	2999
555	2	1	2999
556	2	1	2999
557	2	1	2999
558	2	1	2999
559	2	1	2999
560	2	1	2999
561	2	1	2999
562	2	1	2999
563	2	1	2999
564	2	1	2999
565	2	1	2999
566	2	1	2999
567	2	1	2999
568	2	1	2999
569	2	1	2999
570	2	1	2999
571	2	1	2999
572	2	1	2999
573	2	1	2999
574	2	1	2999
575	2	1	2999
576	2	1	2999
577	2	1	2999
578	2	1	2999
579	2	1	2999
580	2	1	2999
581	2	1	2999
582	2	1	2999
583	2	1	2999
584	2	1	2999
585	2	1	2999
586	2	1	2999
587	2	1	2999
588	2	1	2999
589	2	1	2999
590	2	1	2999
591	2	1	2999
592	2	1	2999
593	2	1	2999
594	2	1	2999
595	2	1	2999
596	2	1	2999
597	2	1	2999
598	2	1	2999
599	2	1	2999
600	2	1	2999
601	2	1	2999
602	2	1	2999
603	2	1	2999
604	2	1	2999
605	2	1	2999
606	2	1	2999
607	2	1	2999
608	2	1	2999
609	2	1	2999
610	2	1	2999
611	2	1	2999
612	2	1	2999
613	2	1	2999
614	2	1	2999
615	2	1	2999
616	2	1	2999
617	2	1	2999
618	2	1	2999
619	2	1	2999
620	2	1	2999
621	2	1	2999
622	2	1	2999
623	2	1	2999
624	2	1	2999
625	2	1	2999
626	2	1	2999
627	2	1	2999
628	2	1	2999
629	2	1	2999
630	2	1	2999
631	2	1	2999
632	2	1	2999
633	2	1	2999
634	2	1	2999
635	2	1	2999
636	2	1	2999
637	2	1	2999
638	2	1	2999
639	2	1	2999
640	2	1	2999
641	2	1	2999
642	2	1	2999
643	2	1	2999
644	2	1	2999
645	2	1	2999
646	2	1	2999
647	2	1	2999
648	2	1	2999
649	2	1	2999
650	2	1	2999
651	2	1	2999
652	2	1	2999
653	2	1	2999
654	2	1	2999
655	2	1	2999
656	2	1	2999
657	2	1	2999
658	2	1	2999
659	2	1	2999
660	2	1	2999
661	2	1	2999
662	2	1	2999
663	2	1	2999
664	2	1	2999
665	2	1	2999
666	2	1	2999
667	2	1	2999
668	2	1	2999
669	2	1	2999
670	2	1	2999
671	2	1	2999
672	2	1	2999
673	2	1	2999
674	2	1	2999
675	2	1	2999
676	2	1	2999
677	2	1	2999
678	2	1	2999
679	2	1	2999
680	2	1	2999
681	2	1	2999
682	2	1	2999
683	2	1	2999
684	2	1	2999
685	2	1	2999
686	2	1	2999
687	2	1	2999
688	2	1	2999
689	2	1	2999
690	2	1	2999
691	2	1	2999
692	2	1	2999
693	2	1	2999
694	2	1	2999
695	2	1	2999
696	2	1	2999
697	2	1	2999
698	2	1	2999
699	2	1	2999
700	2	1	2999
701	2	1	2999
702	2	1	2999
703	2	1	2999
704	2	1	2999
705	2	1	2999
706	2	1	2999
707	2	1	2999
708	2	1	2999
709	2	1	2999
710	2	1	2999
711	2	1	2999
712	2	1	2999
713	2	1	2999
714	2	1	2999
715	2	1	2999
716	2	1	2999
717	2	1	2999
718	2	1	2999
719	2	1	2999
720	2	1	2999
721	2	1	2999
722	2	1	2999
723	2	1	2999
724	2	1	2999
725	2	1	2999
726	2	1	2999
727	2	1	2999
728	2	1	2999
729	2	1	2999
730	2	1	2999
731	2	1	2999
732	2	1	2999
733	2	1	2999
734	2	1	2999
735	2	1	2999
736	2	1	2999
737	2	1	2999
738	2	1	2999
739	2	1	2999
740	2	1	2999
741	2	1	2999
742	2	1	2999
743	2	1	2999
744	2	1	2999
745	2	1	2999
746	2	1	2999
747	2	1	2999
748	2	1	2999
749	2	1	2999
750	2	1	2999
751	2	1	2999
752	2	1	2999
753	2	1	2999
754	2	1	2999
755	2	1	2999
756	2	1	2999
757	2	1	2999
758	2	1	2999
759	2	1	2999
760	2	1	2999
761	2	1	2999
762	2	1	2999
763	2	1	2999
764	2	1	2999
765	2	1	2999
766	2	1	2999
767	2	1	2999
768	2	1	2999
769	2	1	2999
770	2	1	2999
771	2	1	2999
772	2	1	2999
773	2	1	2999
774	2	1	2999
775	2	1	2999
776	2	1	2999
777	2	1	2999
778	2	1	2999
779	2	1	2999
780	2	1	2999
781	2	1	2999
782	2	1	2999
783	2	1	2999
784	2	1	2999
785	2	1	2999
786	2	1	2999
787	2	1	2999
788	2	1	2999
789	2	1	2999
790	2	1	2999
791	2	1	2999
792	2	1	2999
793	2	1	2999
794	2	1	2999
795	2	1	2999
796	2	1	2999
797	2	1	2999
798	2	1	2999
799	2	1	2999
800	2	1	2999
801	2	1	2999
802	2	1	2999
803	2	1	2999
804	2	1	2999
805	2	1	2999
806	2	1	2999
807	2	1	2999
808	2	1	2999
809	2	1	2999
810	2	1	2999
811	2	1	2999
812	2	1	2999
813	2	1	2999
814	2	1	2999
815	2	1	2999
816	2	1	2999
817	2	1	2999
818	2	1	2999
819	2	1	2999
820	2	1	2999
821	2	1	2999
822	2	1	2999
823	2	1	2999
824	2	1	2999
825	2	1	2999
826	2	1	2999
827	2	1	2999
828	2	1	2999
829	2	1	2999
830	2	1	2999
831	2	1	2999
832	2	1	2999
833	2	1	2999
834	2	1	2999
835	2	1	2999
836	2	1	2999
837	2	1	2999
838	2	1	2999
839	2	1	2999
840	2	1	2999
841	2	1	2999
842	2	1	2999
843	2	1	2999
844	2	1	2999
845	2	1	2999
846	2	1	2999
847	2	1	2999
848	2	1	2999
849	2	1	2999
850	2	1	2999
851	2	1	2999
852	2	1	2999
853	2	1	2999
854	2	1	2999
855	2	1	2999
856	2	1	2999
857	2	1	2999
858	2	1	2999
859	2	1	2999
860	2	1	2999
861	2	1	2999
862	2	1	2999
863	2	1	2999
864	2	1	2999
865	2	1	2999
866	2	1	2999
867	2	1	2999
868	2	1	2999
869	2	1	2999
870	2	1	2999
871	2	1	2999
872	2	1	2999
873	2	1	2999
874	2	1	2999
875	2	1	2999
876	2	1	2999
877	2	1	2999
878	2	1	2999
879	2	1	2999
880	2	1	2999
881	2	1	2999
882	2	1	2999
883	2	1	2999
884	2	1	2999
885	2	1	2999
886	2	1	2999
887	2	1	2999
888	2	1	2999
889	2	1	2999
890	2	1	2999
891	2	1	2999
892	2	1	2999
893	2	1	2999
894	2	1	2999
895	2	1	2999
896	2	1	2999
897	2	1	2999
898	2	1	2999
899	2	1	2999
900	2	1	2999
901	2	1	2999
902	2	1	2999
903	2	1	2999
904	2	1	2999
905	2	1	2999
906	2	1	2999
907	2	1	2999
908	2	1	2999
909	2	1	2999
910	2	1	2999
911	2	1	2999
912	2	1	2999
913	2	1	2999
914	2	1	2999
915	2	1	2999
916	2	1	2999
917	2	1	2999
918	2	1	2999
919	2	1	2999
920	2	1	2999
921	2	1	2999
922	2	1	2999
923	2	1	2999
924	2	1	2999
925	2	1	2999
926	2	1	2999
927	2	1	2999
928	2	1	2999
929	2	1	2999
930	2	1	2999
931	2	1	2999
932	2	1	2999
933	2	1	2999
934	2	1	2999
935	2	1	2999
936	2	1	2999
937	2	1	2999
938	2	1	2999
939	2	1	2999
940	2	1	2999
941	2	1	2999
942	2	1	2999
943	2	1	2999
944	2	1	2999
945	2	1	2999
946	2	1	2999
947	2	1	2999
948	2	1	2999
949	2	1	2999
950	2	1	2999
951	2	1	2999
952	2	1	2999
953	2	1	2999
954	2	1	2999
955	2	1	2999
956	2	1	2999
957	2	1	2999
958	2	1	2999
959	2	1	2999
960	2	1	2999
961	2	1	2999
962	2	1	2999
963	2	1	2999
964	2	1	2999
965	2	1	2999
966	2	1	2999
967	2	1	2999
968	2	1	2999
969	2	1	2999
970	2	1	2999
971	2	1	2999
972	2	1	2999
973	2	1	2999
974	2	1	2999
975	2	1	2999
976	2	1	2999
977	2	1	2999
978	2	1	2999
979	2	1	2999
980	2	1	2999
981	2	1	2999
982	2	1	2999
983	2	1	2999
984	2	1	2999
985	2	1	2999
986	2	1	2999
987	2	1	2999
988	2	1	2999
989	2	1	2999
990	2	1	2999
991	2	1	2999
992	2	1	2999
993	2	1	2999
994	2	1	2999
995	2	1	2999
996	2	1	2999
997	2	1	2999
998	2	1	2999
999	2	1	2999
1000	2	1	2999
1001	2	1	2999
1002	2	1	2999
1003	2	1	2999
1004	2	1	2999
1005	2	1	2999
1006	2	1	2999
1007	2	1	2999
1008	2	1	2999
1009	2	1	2999
1010	2	1	2999
1011	2	1	2999
1012	2	1	2999
1013	2	1	2999
1014	2	1	2999
1015	2	1	2999
1016	2	1	2999
1017	2	1	2999
1018	2	1	2999
1019	2	1	2999
1020	2	1	2999
1021	2	1	2999
1022	2	1	2999
1023	2	1	2999
1024	2	1	2999
1025	2	1	2999
1026	2	1	2999
1027	2	1	2999
1028	2	1	2999
1029	2	1	2999
1030	2	1	2999
1031	2	1	2999
1032	2	1	2999
1033	2	1	2999
1034	2	1	2999
1035	2	1	2999
1036	2	1	2999
1037	2	1	2999
1038	2	1	2999
1039	2	1	2999
1040	2	1	2999
1041	2	1	2999
1042	2	1	2999
1043	2	1	2999
1044	2	1	2999
1045	2	1	2999
1046	2	1	2999
1047	2	1	2999
1048	2	1	2999
1049	2	1	2999
1050	2	1	2999
1051	2	1	2999
1052	2	1	2999
1053	2	1	2999
1054	2	1	2999
1055	2	1	2999
1056	2	1	2999
1057	2	1	2999
1058	2	1	2999
1059	2	1	2999
1060	2	1	2999
1061	2	1	2999
1062	2	1	2999
1063	2	1	2999
1064	2	1	2999
1065	2	1	2999
1066	2	1	2999
1067	2	1	2999
1068	2	1	2999
1069	2	1	2999
1070	2	1	2999
1071	2	1	2999
1072	2	1	2999
1073	2	1	2999
1074	2	1	2999
1075	2	1	2999
1076	2	1	2999
1077	2	1	2999
1078	2	1	2999
1079	2	1	2999
1080	2	1	2999
1081	2	1	2999
1082	2	1	2999
1083	2	1	2999
1084	2	1	2999
1085	2	1	2999
1086	2	1	2999
1087	2	1	2999
1088	2	1	2999
1089	2	1	2999
1090	2	1	2999
1091	2	1	2999
1092	2	1	2999
1093	2	1	2999
1094	2	1	2999
1095	2	1	2999
1096	2	1	2999
1097	2	1	2999
1098	2	1	2999
1099	2	1	2999
1100	2	1	2999
1101	2	1	2999
1102	2	1	2999
1103	2	1	2999
1104	2	1	2999
1105	2	1	2999
1106	2	1	2999
1107	2	1	2999
1108	2	1	2999
1109	2	1	2999
1110	2	1	2999
1111	2	1	2999
1112	2	1	2999
1113	2	1	2999
1114	2	1	2999
1115	2	1	2999
1116	2	1	2999
1117	2	1	2999
1118	2	1	2999
1119	2	1	2999
1120	2	1	2999
1121	2	1	2999
1122	2	1	2999
1123	2	1	2999
1124	2	1	2999
1125	2	1	2999
1126	2	1	2999
1127	2	1	2999
1128	2	1	2999
1129	2	1	2999
1130	2	1	2999
1131	2	1	2999
1132	2	1	2999
1133	2	1	2999
1134	2	1	2999
1135	2	1	2999
1136	2	1	2999
1137	2	1	2999
1138	2	1	2999
1139	2	1	2999
1140	2	1	2999
1141	2	1	2999
1142	2	1	2999
1143	2	1	2999
1144	2	1	2999
1145	2	1	2999
1146	2	1	2999
1147	2	1	2999
1148	2	1	2999
1149	2	1	2999
1150	2	1	2999
1151	2	1	2999
1152	2	1	2999
1153	2	1	2999
1154	2	1	2999
1155	2	1	2999
1156	2	1	2999
1157	2	1	2999
1158	2	1	2999
1159	2	1	2999
1160	2	1	2999
1161	2	1	2999
1162	2	1	2999
1163	2	1	2999
1164	2	1	2999
1165	2	1	2999
1166	2	1	2999
1167	2	1	2999
1168	2	1	2999
1169	2	1	2999
1170	2	1	2999
1171	2	1	2999
1172	2	1	2999
1173	2	1	2999
1174	2	1	2999
1175	2	1	2999
1176	2	1	2999
1177	2	1	2999
1178	2	1	2999
1179	2	1	2999
1180	2	1	2999
1181	2	1	2999
1182	2	1	2999
1183	2	1	2999
1184	2	1	2999
1185	2	1	2999
1186	2	1	2999
1187	2	1	2999
1188	2	1	2999
1189	2	1	2999
1190	2	1	2999
1191	2	1	2999
1192	2	1	2999
1193	2	1	2999
1194	2	1	2999
1195	2	1	2999
1196	2	1	2999
1197	2	1	2999
1198	2	1	2999
1199	2	1	2999
1200	2	1	2999
1201	2	1	2999
1202	2	1	2999
1203	2	1	2999
1204	2	1	2999
1205	2	1	2999
1206	2	1	2999
1207	2	1	2999
1208	2	1	2999
1209	2	1	2999
1210	2	1	2999
1211	2	1	2999
1212	2	1	2999
1213	2	1	2999
1214	2	1	2999
1215	2	1	2999
1216	2	1	2999
1217	2	1	2999
1218	2	1	2999
1219	2	1	2999
1220	2	1	2999
1221	2	1	2999
1222	2	1	2999
1223	2	1	2999
1224	2	1	2999
1225	2	1	2999
1226	2	1	2999
1227	2	1	2999
1228	2	1	2999
1229	2	1	2999
1230	2	1	2999
1231	2	1	2999
1232	2	1	2999
1233	2	1	2999
1234	2	1	2999
1235	2	1	2999
1236	2	1	2999
1237	2	1	2999
1238	2	1	2999
1239	2	1	2999
1240	2	1	2999
1241	2	1	2999
1242	2	1	2999
1243	2	1	2999
1244	2	1	2999
1245	2	1	2999
1246	2	1	2999
1247	2	1	2999
1248	2	1	2999
1249	2	1	2999
1250	2	1	2999
1251	2	1	2999
1252	2	1	2999
1253	2	1	2999
1254	2	1	2999
1255	2	1	2999
1256	2	1	2999
1257	2	1	2999
1258	2	1	2999
1259	2	1	2999
1260	2	1	2999
1261	2	1	2999
1262	2	1	2999
1263	2	1	2999
1264	2	1	2999
1265	2	1	2999
1266	2	1	2999
1267	2	1	2999
1268	2	1	2999
1269	2	1	2999
1270	2	1	2999
1271	2	1	2999
1272	2	1	2999
1273	2	1	2999
1274	2	1	2999
1275	2	1	2999
1276	2	1	2999
1277	2	1	2999
1278	2	1	2999
1279	2	1	2999
1280	2	1	2999
1281	2	1	2999
1282	2	1	2999
1283	2	1	2999
1284	2	1	2999
1285	2	1	2999
1286	2	1	2999
1287	2	1	2999
1288	2	1	2999
1289	2	1	2999
1290	2	1	2999
1291	2	1	2999
1292	2	1	2999
1293	2	1	2999
1294	2	1	2999
1295	2	1	2999
1296	2	1	2999
1297	2	1	2999
1298	2	1	2999
1299	2	1	2999
1300	2	1	2999
1301	2	1	2999
1302	2	1	2999
1303	2	1	2999
1304	2	1	2999
1305	2	1	2999
1306	2	1	2999
1307	2	1	2999
1308	2	1	2999
1309	2	1	2999
1310	2	1	2999
1311	2	1	2999
1312	2	1	2999
1313	2	1	2999
1314	2	1	2999
1315	2	1	2999
1316	2	1	2999
1317	2	1	2999
1318	2	1	2999
1319	2	1	2999
1320	2	1	2999
1321	2	1	2999
1322	2	1	2999
1323	2	1	2999
1324	2	1	2999
1325	2	1	2999
1326	2	1	2999
1327	2	1	2999
1328	2	1	2999
1329	2	1	2999
1330	2	1	2999
1331	2	1	2999
1332	2	1	2999
1333	2	1	2999
1334	2	1	2999
1335	2	1	2999
1336	2	1	2999
1337	2	1	2999
1338	2	1	2999
1339	2	1	2999
1340	2	1	2999
1341	2	1	2999
1342	2	1	2999
1343	2	1	2999
1344	2	1	2999
1345	2	1	2999
1346	2	1	2999
1347	2	1	2999
1348	2	1	2999
1349	2	1	2999
1350	2	1	2999
1351	2	1	2999
1352	2	1	2999
1353	2	1	2999
1354	2	1	2999
1355	2	1	2999
1356	2	1	2999
1357	2	1	2999
1358	2	1	2999
1359	2	1	2999
1360	2	1	2999
1361	2	1	2999
1362	2	1	2999
1363	2	1	2999
1364	2	1	2999
1365	2	1	2999
1366	2	1	2999
1367	2	1	2999
1368	2	1	2999
1369	2	1	2999
1370	2	1	2999
1371	2	1	2999
1372	2	1	2999
1373	2	1	2999
1374	2	1	2999
1375	2	1	2999
1376	2	1	2999
1377	2	1	2999
1378	2	1	2999
1379	2	1	2999
1380	2	1	2999
1381	2	1	2999
1382	2	1	2999
1383	2	1	2999
1384	2	1	2999
1385	2	1	2999
1386	2	1	2999
1387	2	1	2999
1388	2	1	2999
1389	2	1	2999
1390	2	1	2999
1391	2	1	2999
1392	2	1	2999
1393	2	1	2999
1394	2	1	2999
1395	2	1	2999
1396	2	1	2999
1397	2	1	2999
1398	2	1	2999
1399	2	3	2900
1400	2	2	2595
1401	2	1	2999
1402	2	1	2999
1403	2	1	2999
1404	2	2	2595
1405	2	1	2999
1406	2	1	2999
1407	2	2	2595
1408	2	2	2595
1409	2	2	2595
1410	2	2	2595
1411	2	2	2595
1412	2	2	2595
1413	2	2	2595
1414	2	2	2595
1415	2	2	2595
1416	2	2	2595
1417	2	2	2595
1418	2	2	2595
1419	2	2	2595
1420	2	1	2999
1421	3	2	2595
1422	3	1	2999
1423	3	1	2999
1424	3	1	2999
1425	3	3	2900
1426	3	4	999
1427	3	5	9900
1428	3	6	830
1429	4	1	2999
1430	4	2	2595
\.


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.carts ("cartId", "createdAt") FROM stdin;
1	2020-05-20 18:57:18.421191-05
2	2020-05-27 13:53:32.47788-05
3	2020-05-28 13:46:42.492813-05
4	2020-05-28 21:31:50.912014-05
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orders ("orderId", "cartId", name, "creditCard", "shippingAddress", "createdAt") FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products ("productId", name, price, image, "shortDescription", "longDescription") FROM stdin;
1	Shake Weight	2999	/images/shake-weight.jpg	Dynamic Inertia technology ignites muscles in arms, shoulders, and chest.	Lorem ipsum dolor amet fashion axe pour-over jianbing, adaptogen waistcoat tacos master cleanse pitchfork next level. Thundercats pour-over chartreuse 90's. Master cleanse hot chicken ennui offal. Freegan slow-carb offal hell of. Umami polaroid wolf slow-carb next level. Gentrify cardigan seitan, kombucha tacos chambray roof party typewriter man braid. Tote bag lo-fi hell of chia fam hammock\\n.Aesthetic photo booth la croix, vaporware leggings biodiesel man braid tumeric skateboard tousled slow-carb four dollar toast synth pabst pickled. Typewriter church-key chia slow-carb vice gochujang actually. Shoreditch austin woke hot chicken, single-origin coffee ugh affogato four loko green juice. Migas iPhone four dollar toast mustache.
2	ShamWow	2595	/images/shamwow.jpg	It's like a chamois, towel, and sponge, all in one! Soaks up to 10x it's weight in any liquid!	Lorem ipsum dolor amet fashion axe pour-over jianbing, adaptogen waistcoat tacos master cleanse pitchfork next level. Thundercats pour-over chartreuse 90's. Master cleanse hot chicken ennui offal. Freegan slow-carb offal hell of. Umami polaroid wolf slow-carb next level. Gentrify cardigan seitan, kombucha tacos chambray roof party typewriter man braid. Tote bag lo-fi hell of chia fam hammock\\n.Aesthetic photo booth la croix, vaporware leggings biodiesel man braid tumeric skateboard tousled slow-carb four dollar toast synth pabst pickled. Typewriter church-key chia slow-carb vice gochujang actually. Shoreditch austin woke hot chicken, single-origin coffee ugh affogato four loko green juice. Migas iPhone four dollar toast mustache.
3	Snuggie	2900	/images/snuggie.jpg	Super-Soft Fleece with pockets! One Size fits all Adults! Keeps you Warm & Your Hands-Free!	Lorem ipsum dolor amet fashion axe pour-over jianbing, adaptogen waistcoat tacos master cleanse pitchfork next level. Thundercats pour-over chartreuse 90's. Master cleanse hot chicken ennui offal. Freegan slow-carb offal hell of. Umami polaroid wolf slow-carb next level. Gentrify cardigan seitan, kombucha tacos chambray roof party typewriter man braid. Tote bag lo-fi hell of chia fam hammock\\n.Aesthetic photo booth la croix, vaporware leggings biodiesel man braid tumeric skateboard tousled slow-carb four dollar toast synth pabst pickled. Typewriter church-key chia slow-carb vice gochujang actually. Shoreditch austin woke hot chicken, single-origin coffee ugh affogato four loko green juice. Migas iPhone four dollar toast mustache.
4	Wax Vac	999	/images/wax-vac.jpg	Gentle way to remove ear wax. Safe and hygienic. Reduces the risk of painful infections.	Lorem ipsum dolor amet fashion axe pour-over jianbing, adaptogen waistcoat tacos master cleanse pitchfork next level. Thundercats pour-over chartreuse 90's. Master cleanse hot chicken ennui offal. Freegan slow-carb offal hell of. Umami polaroid wolf slow-carb next level. Gentrify cardigan seitan, kombucha tacos chambray roof party typewriter man braid. Tote bag lo-fi hell of chia fam hammock\\n.Aesthetic photo booth la croix, vaporware leggings biodiesel man braid tumeric skateboard tousled slow-carb four dollar toast synth pabst pickled. Typewriter church-key chia slow-carb vice gochujang actually. Shoreditch austin woke hot chicken, single-origin coffee ugh affogato four loko green juice. Migas iPhone four dollar toast mustache.
5	Ostrich Pillow	9900	/images/ostrich-pillow.jpg	Create your own snugly space in the world and feel-good anywhere with the ultimate cocoon pillow.	Lorem ipsum dolor amet fashion axe pour-over jianbing, adaptogen waistcoat tacos master cleanse pitchfork next level. Thundercats pour-over chartreuse 90's. Master cleanse hot chicken ennui offal. Freegan slow-carb offal hell of. Umami polaroid wolf slow-carb next level. Gentrify cardigan seitan, kombucha tacos chambray roof party typewriter man braid. Tote bag lo-fi hell of chia fam hammock\\n.Aesthetic photo booth la croix, vaporware leggings biodiesel man braid tumeric skateboard tousled slow-carb four dollar toast synth pabst pickled. Typewriter church-key chia slow-carb vice gochujang actually. Shoreditch austin woke hot chicken, single-origin coffee ugh affogato four loko green juice. Migas iPhone four dollar toast mustache.
6	Tater Mitts	830	/images/tater-mitts.jpg	8 Seconds is all you need with Tater Mitts. Quickly and easily prepare all your favorite potato dishes with Tater Mitts.	Lorem ipsum dolor amet fashion axe pour-over jianbing, adaptogen waistcoat tacos master cleanse pitchfork next level. Thundercats pour-over chartreuse 90's. Master cleanse hot chicken ennui offal. Freegan slow-carb offal hell of. Umami polaroid wolf slow-carb next level. Gentrify cardigan seitan, kombucha tacos chambray roof party typewriter man braid. Tote bag lo-fi hell of chia fam hammock\\n.Aesthetic photo booth la croix, vaporware leggings biodiesel man braid tumeric skateboard tousled slow-carb four dollar toast synth pabst pickled. Typewriter church-key chia slow-carb vice gochujang actually. Shoreditch austin woke hot chicken, single-origin coffee ugh affogato four loko green juice. Migas iPhone four dollar toast mustache.
\.


--
-- Name: cartItems_cartItemId_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."cartItems_cartItemId_seq"', 1430, true);


--
-- Name: carts_cartId_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."carts_cartId_seq"', 4, true);


--
-- Name: orders_orderId_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."orders_orderId_seq"', 1, false);


--
-- Name: products_productId_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."products_productId_seq"', 1, false);


--
-- Name: cartItems cartItems_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."cartItems"
    ADD CONSTRAINT "cartItems_pkey" PRIMARY KEY ("cartItemId");


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY ("cartId");


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY ("orderId");


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY ("productId");


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

