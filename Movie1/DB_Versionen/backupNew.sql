PGDMP                         z            movies    14.5    14.5 (               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16443    movies    DATABASE     d   CREATE DATABASE movies WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Germany.1252';
    DROP DATABASE movies;
                postgres    false            ?            1259    16617    commentmock    TABLE     ?   CREATE TABLE public.commentmock (
    commentid integer NOT NULL,
    id integer,
    owner character varying(50),
    comment text
);
    DROP TABLE public.commentmock;
       public         heap    postgres    false            ?            1259    16445    genre    TABLE     ^   CREATE TABLE public.genre (
    id integer NOT NULL,
    genre_name character varying(128)
);
    DROP TABLE public.genre;
       public         heap    postgres    false            ?            1259    16444    genre_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.genre_id_seq;
       public          postgres    false    210                       0    0    genre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;
          public          postgres    false    209            ?            1259    16530 	   mock_data    TABLE     e   CREATE TABLE public.mock_data (
    id integer,
    owner character varying(50),
    comment text
);
    DROP TABLE public.mock_data;
       public         heap    postgres    false            ?            1259    16478 	   moviedata    TABLE     ?  CREATE TABLE public.moviedata (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    genre character varying(128) NOT NULL,
    released date NOT NULL,
    rated character varying(128),
    rating numeric,
    director character varying(128),
    writer character varying(128),
    actors character varying(500),
    plot character varying(1000),
    poster character varying(1000)
);
    DROP TABLE public.moviedata;
       public         heap    postgres    false            ?            1259    16477    moviedata_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.moviedata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.moviedata_id_seq;
       public          postgres    false    216                        0    0    moviedata_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.moviedata_id_seq OWNED BY public.moviedata.id;
          public          postgres    false    215            ?            1259    16459    tv_data    TABLE     :  CREATE TABLE public.tv_data (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    genre_id integer,
    type_id integer,
    director character varying(128) NOT NULL,
    actors character varying(500),
    plot character varying(1000),
    rating numeric,
    released date,
    poster text
);
    DROP TABLE public.tv_data;
       public         heap    postgres    false            ?            1259    16458    tv_data_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tv_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tv_data_id_seq;
       public          postgres    false    214            !           0    0    tv_data_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tv_data_id_seq OWNED BY public.tv_data.id;
          public          postgres    false    213            ?            1259    16452    tv_type    TABLE     Z   CREATE TABLE public.tv_type (
    id integer NOT NULL,
    type character varying(128)
);
    DROP TABLE public.tv_type;
       public         heap    postgres    false            ?            1259    16451    tv_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tv_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tv_type_id_seq;
       public          postgres    false    212            "           0    0    tv_type_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tv_type_id_seq OWNED BY public.tv_type.id;
          public          postgres    false    211            s           2604    16448    genre id    DEFAULT     d   ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);
 7   ALTER TABLE public.genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            v           2604    16481    moviedata id    DEFAULT     l   ALTER TABLE ONLY public.moviedata ALTER COLUMN id SET DEFAULT nextval('public.moviedata_id_seq'::regclass);
 ;   ALTER TABLE public.moviedata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            u           2604    16462 
   tv_data id    DEFAULT     h   ALTER TABLE ONLY public.tv_data ALTER COLUMN id SET DEFAULT nextval('public.tv_data_id_seq'::regclass);
 9   ALTER TABLE public.tv_data ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            t           2604    16455 
   tv_type id    DEFAULT     h   ALTER TABLE ONLY public.tv_type ALTER COLUMN id SET DEFAULT nextval('public.tv_type_id_seq'::regclass);
 9   ALTER TABLE public.tv_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212                      0    16617    commentmock 
   TABLE DATA           D   COPY public.commentmock (commentid, id, owner, comment) FROM stdin;
    public          postgres    false    218   /+                 0    16445    genre 
   TABLE DATA           /   COPY public.genre (id, genre_name) FROM stdin;
    public          postgres    false    210   ?6                 0    16530 	   mock_data 
   TABLE DATA           7   COPY public.mock_data (id, owner, comment) FROM stdin;
    public          postgres    false    217   U7                 0    16478 	   moviedata 
   TABLE DATA           v   COPY public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) FROM stdin;
    public          postgres    false    216   >;                 0    16459    tv_data 
   TABLE DATA           q   COPY public.tv_data (id, title, genre_id, type_id, director, actors, plot, rating, released, poster) FROM stdin;
    public          postgres    false    214   lE                 0    16452    tv_type 
   TABLE DATA           +   COPY public.tv_type (id, type) FROM stdin;
    public          postgres    false    212   IF       #           0    0    genre_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.genre_id_seq', 7, true);
          public          postgres    false    209            $           0    0    moviedata_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.moviedata_id_seq', 12, true);
          public          postgres    false    215            %           0    0    tv_data_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tv_data_id_seq', 1, true);
          public          postgres    false    213            &           0    0    tv_type_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tv_type_id_seq', 2, true);
          public          postgres    false    211            ?           2606    16623    commentmock commentmock_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.commentmock
    ADD CONSTRAINT commentmock_pkey PRIMARY KEY (commentid);
 F   ALTER TABLE ONLY public.commentmock DROP CONSTRAINT commentmock_pkey;
       public            postgres    false    218            x           2606    16450    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    210            ~           2606    16485    moviedata moviedata_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.moviedata
    ADD CONSTRAINT moviedata_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.moviedata DROP CONSTRAINT moviedata_pkey;
       public            postgres    false    216            |           2606    16466    tv_data tv_data_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tv_data
    ADD CONSTRAINT tv_data_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tv_data DROP CONSTRAINT tv_data_pkey;
       public            postgres    false    214            z           2606    16457    tv_type tv_type_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tv_type
    ADD CONSTRAINT tv_type_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tv_type DROP CONSTRAINT tv_type_pkey;
       public            postgres    false    212            ?           2606    16624    commentmock fk_movies    FK CONSTRAINT     s   ALTER TABLE ONLY public.commentmock
    ADD CONSTRAINT fk_movies FOREIGN KEY (id) REFERENCES public.moviedata(id);
 ?   ALTER TABLE ONLY public.commentmock DROP CONSTRAINT fk_movies;
       public          postgres    false    3198    218    216            ?           2606    16467    tv_data tv_data_genre_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.tv_data
    ADD CONSTRAINT tv_data_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id);
 G   ALTER TABLE ONLY public.tv_data DROP CONSTRAINT tv_data_genre_id_fkey;
       public          postgres    false    3192    214    210            ?           2606    16472    tv_data tv_data_type_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.tv_data
    ADD CONSTRAINT tv_data_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.tv_type(id);
 F   ALTER TABLE ONLY public.tv_data DROP CONSTRAINT tv_data_type_id_fkey;
       public          postgres    false    212    214    3194               ?  x??ZMs??=~??rA?,????I?????U???R???? Í???u?@o"+?핽:I$LO??ׯ{0?r??Nw???փ??O?t??~&???Q?R;5HS?Vygz????j?R7???????V??3??ת2???L?9???vr?3?NW?Åɳpѷ??L?+]??LW??w?lT?{	#?2;??|???ך???h??b?O??{=?????[?%w???V??͊?8??g/??p+έ[??????Wx?Z;|љՆ>˟?@?O?vb??؎mm???`?q???wX?:rg??7?3????a??F[ikcKYٮ6q[?.e??????lm???h?k\?]L?.wf??SpH???dmTC???]rJ??4?@??IMi?X???·???F9=`?V?;U?Z??׸8?V?ɽ????|W͊?8?U???5؞???Uq?L9?j???K]m:??i??k?G????Mc*3?? ?fP????!??????:???_#??a?G^8?{?)W??9)LgT@???}?|??bo! ?1?e?ж??r?{???|ڬ8'???m??J52Oűx??β;S??=?ك!;3_ P[??{n?q??GtD"?'y7?(*?\JZ???d????f6J?.?{eV??i???!?D۬?o?DL??j0̇?Z??c??/?5????}????%?x?[???p8ZT??Ԧ?D???fg:? ᆌH?/?????py?uz?6pl?+??o?S????z1A㕽)?δ?~?V???>???,K?I???
?B?3`?Y>'???UU??W?jV??2?h?????O??Fdr?}?(/?*?D|??b?3???sߙ?????Q+`??5%̠???~?}$?|G?'???p?qB??j??	8??P`n?w%(N???I?ј??"??b??[??vk?Z??????[??!?[h?IՈ?W Z?⽩??L??:??3??X?)yPM????h?A?1H2a??h?
?"?*\?T?L?	??uc?@??I??B?Sfz?????C(?oe?/???;?????Y?q??	??UZ!p??@aUp???&$??(~??y?DL? F?	?.?	y????ٵ!vw?&?Ȅ??g????W "m????@?<J?OZ?JН????Zh?PYX?jD?&?ҍv?2???#U?A*?CF???DF"E3D??&	G?@??[M??\?d???L??N9??7\}(?ĩ?oQR.L?f???ϋ??:?i???̈?Q?23o0?????#??GYZF??X?b~Pr,??=foM9?,1)?a?`&?B????T[?A>?yg!uGs?V??@?Ȓ??v???"?qb3j???????F????`?jX???'?>\?-????A!w??/?3???R????ģI-D?|??_9b??B(V??'??? Qd?N?L?B????=n?+?PF?Ka~NFB? 9?hk??x?4{???U?????rqp,hA;?"N?z?6?X??a/5?1W?_o?=?R̮?4?\[G!?????=?3?L?;??:??????<?y?֙?C?"Kg??	Z??P?%ę???a?Sq[;?3̃$x?5.?m???-?c?????oEhs??)cgU'A?;?2??Y=?q$kI??qH
?U??qd??ߙ?ӏ?ΰp"????!?b??fD?G??b>?b?4Tl/???G?~?|=_?%?A???~₅M????G?.-??F}??kߵv??b?E`JV쇄???q??\?W
??{64?	?#k?????????\?,>Mᔓ??A?b??ѳ?$??k?93?^??e????i,?KCN?hf}??o???R????T`??"??o??_?8??ѯ\Wb?S?i????w?7??ʩ??[*?1??GT?IX??p^?v[??_??Pr[?ou??)9,?(?W?lp?[??ioh$??~V?4P3b?㈌?GX̟???r??_4???ZJ?c??3?fP^???n?nu??<???><M???????P'???????l*EA?P?.??r?f??h?;B?^3'ma?Y>j?4_?d
?!???K??No?\?)?8???(g?f?IuH??OJ?1ϑ?h???X????YF1?p???y	z(W?/?]?1???n➯W????T???rU?/h?P#?? ?X ?礋5??'??4)s?4????g?4A???ȣ?????Y??@?aL?-.'?:!;#1??ކ?2?8??DfL7?TW}??V,?	_4H??9???V?M?ȣY??c??F7V?E?Xks?-????L???&I\BK??????{tR??X?7?9?v????MW7"D$?#?s?NȧX??<?y??ܯ???3]F9Lm,L;B%>??????*?d'a?x
{^@?t??U݈O?8Ʌ?W?M&?4k-????&n?>)ɱʤ?k	???\,??L?qE>SMwX?-????"hDю>?]????;:(?Oġ8??={O<????t?{?4~E???{?x???ܓ??99 ?l~?sV?s9????`K:)~??JӉ?r+_݈??????)????ϥ?"??x?????1?,????A?[]?i??8ڟ-?U5K???ނ?>r????y??C?bIӳ+??yil?F?#n<?T?Y????ӻ???????rrD????b:w6?C?22?74?+?G4+z???C6?l?U<????iW?`?????Œ?p_???h?@V????2e:??=DY??c??o\o3?''G$?ezҍ%?QNDAn\???o?0٦~??U ??{?񭮠?X?ݍ???F¡??N	?oz??????by??Ñ?&?5??%-??Y??9~?=?{?dU,Ox??x??N??????_J>??f?R???e-_?b?P???տ?9P??Q???(?xgtq8???w??^?????]?;??y??ΫO??z|?Փ???cVſ??9?         S   x?3?tL.????2???/*?/?2?t)J?M?2??(???I-?2?t??MM??2?tI?+I,??2?N?L?KNUp˄???? ??z         ?  x??UK??6>K?bz7?ڛ??qi???]???BQc{
?T????~$-?آ?R ??,???5?u?s2???{7?xl???B??1Jt???<?dd????)??? !09o?g????T$?:???;K"y	)?H%?KV?.ʧ?$?x?R? ???q?5c?n??e?Έ??m5ҟ)D?Q?0y???MiP˗8??4~{?*?????h@?e?????:y??.??ɘ??}2FQ??̠??Pќ̔"j٢j??4[?5v?e?;?OG?޼??@ RiU?#dp??%?A,??ɫ???{?}V˧血?c?)????S?eH???lH? ??????(?ϔ?ª?????ɠ,??=??6Y???9???y5?*6Kw3??՞???B?????pWeWG/??}??z??????(1?d??<??G???m_7o???C?a?e???r١=?ZJn????V?f?B?2b?Bਙ0)w?E???S??l/?;s??hut?|>9y?{5ˠ?J?????ρ?%3ھi?c?l??dM?g?*k0h?`?у???`?P3?I?BX#={׵?5??????????????šj????n???T?E?R?6Q2???1?+W?΂? @.3f襁Z??O?|֩???%?^?$??a$??C???y6???<?k??2?`??}??͝??;?p??#?B??h??.Ê??k?_????a?rNY???*L?q=?7;????eV?$?΄?Z???Ҥ?i?*??p?p?0??1??zmQ~?0??9?????װ??I)??????x???|??]?????P?^t????{?~D6??.A????????a?????|;????BQ(?????9Q?3Jv????FȪ???,y????\2?e?)??F??y?k??_?E1????qf??iכ??l6????޿z??vT.??͂???w??pq?U?qBPv??v?????&? |hŲ?]?yq?Ǯm? b?n         
  x??X?r?:}??B????d??'?\????qM?)d?-$F?8??gm??3휩:yI? @???ex?M%?X-?s??w??WRu^pz??`{wS????w^Zٰs??j?6޵)5???h??g?U?c??ZK}???`w????p-?b?NX??5?(ݠ??ʙ??](Q񵰬j?jk??+??Ҵ?`Kk*?Yͥef??-?۔B?R0,?Y&s?W?cJ,q9??Wc???ٲ3??V?????*ްW??I??^?\?????j?ZH>???xf?????h?F_???Y??\Ga??%?.ݮ?H?~>?ۗ??8?r1?œ"H?ԟO?????????O6?????.J???dΒ???>>?8????.??ބ?yG?D?????h??pX??w<?G?5?\??;???Z????' ???^?R?RX+?:`?k??K??8`?R眝s??????9{)??A?j3?5^?vTOgX!v?5N?Y)Un??+?*p??e?????b??Kj?u???ں?,7?Cؕ?/?Q???@??Ek?]:쾳=g]?|??ޟ%A???? ?????3??<)6?$͒?(^]??t?%?f??Q?`/?kN????5??S??{̌s?5^??7%??ٚ]?uî???]?m?R?y??Xc[و?`??Y,$Ay#???l
? ????R?G%bOZ:??h܉????k?P8ƖD9 ??6(s???(??????$?R??f???I??yϖδ?[Ke??Qg4?Rl???????TԀس?m???
l?[?4?u???s?1??m??K???l?m???#????˵?O#%*
????U0???>????0?>? ?#/???&???wne%?B?[8??????C??r??s/?͡?um?Z????0??,?$10J?X3V??gR??
??s??m???^s>۬$?CY?- ?[????X?iN@=kpq?-?Jj@?s?j??????ZE7"¡?Ѕ?I`,?Zھ?4?q?v?S[4??0??U?WOHmb?c??o@??_R?\?&??<YΒK???z??G?6?GhԗfBru?????7?B?????ɻH???}9SY
? U??+ȼ^%(5DWt???^`????܀݊? 9s????%??{y?.V	?3?֚vCǮ)??
????W????????5?0????`??
??;???????
Z_?n?Ъ??)?tߺ????o~? _???#f???n-3????$??&?_?kh??c?r??>????
????g?w(??+d????c&??L/?ǃ??;??መ??a?zm???LX??;"?b"w???-.?^??p??{?P??id(ݙ????^????	R?GD???????h?+o/??Q?k0???A??%r?(W/Ջf?|??f?????hC??1V???l???J?.??[)5P?u[)??(N??
谥??C??VB????a??? M???텋??[|-M???I	?\???Vi?u?ꬌ?O??&W[2H??.?jU?.e꾔??K??x?}??e©?PÏG?? ?r???gb???{?8K??VD?G^???vػ,???h??w?*?@?]E???¼{9??!O?!?l???_????0??P????(v?4-??????Eh?E7?"??~.e?Ӹ?&W?y????L?{!}@ʼ\E???YF???t{5?Vj?	!=???ѻ^5d^?ћ??H?R?:???? 8?Q
Y?6??-??D???\?E?5?v+ ?8/??67l"?y_D??82?C;?????.???w?Yp::"$???\?lJ?L?W򩢏5??x?kA?????!???$?4s?A??L??Z#?*??.u???'?l??C?nK?A?$?*}??yr??%???]>???)??L??b????A?r?K?#??KAx??  ?7
??d11%z]84??[??F	?O-kA???c?KJ??nz?[R@??cX?Z^y?v?*?????,
"(???h??4??U??0m??Cc???@$d????8AX?x??/?.??>?XiBA?b?±?r^?*ݪU????#?GH??^?Wk??&6?????A??#??????????(?3?D??Ux??j?>&4??cɞ?ܡ?f7C![c9M`??Y##???F????C?/?3?o;?a????v??G?,?%:?? 
???F`"H?6?i
 ?~????fkN?!???(r?J6?㍴?
4??x;z???????*`?z:??W?t?^?o?r?(72???w??#?a??Nq?3??V?	????މ?R6?pU?8?aJ?,??|!J????_?4lD?C?(GY?=`?Y????|??%Y6[?Ѐ?C	Q
??j%?m?۸BH?폤????Æ/???>?%gr6??DI?a??H+????c5C?+?ji????,??Z?g????L^?o??{??kJ\w4??{^?j??v?YM?+tGV???yQƬ???VP??I?ْ??r?n??]v??5??n?N ???R???3?L=r?Z?T?	?i7K?oPl?7?s?&N? ??~??忁(?o         ?   x??;n?0Dk?s K??pi(? A??nV?J$Lr?%?@??z~o??Hd??$6?ƚѩ?%?8?l>i?h?X?ͧ>???y??S??SX?9'??\?w&?%,(*u
?ƊXs?]??\?ڂ???J?N^!+??[ ??s???H??N?B?xm?1=?1?ϲ??o?Rէ?%R?o?/^?`?????饷??o???]??????V            x?3???/?L?2?)S??/?????? J??     