PGDMP                          z            movies    14.5    14.5 "               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16443    movies    DATABASE     d   CREATE DATABASE movies WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Germany.1252';
    DROP DATABASE movies;
                postgres    false            �            1259    16445    genre    TABLE     ^   CREATE TABLE public.genre (
    id integer NOT NULL,
    genre_name character varying(128)
);
    DROP TABLE public.genre;
       public         heap    postgres    false            �            1259    16444    genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.genre_id_seq;
       public          postgres    false    210                       0    0    genre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;
          public          postgres    false    209            �            1259    16478 	   moviedata    TABLE     �  CREATE TABLE public.moviedata (
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
       public         heap    postgres    false            �            1259    16477    moviedata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.moviedata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.moviedata_id_seq;
       public          postgres    false    216                       0    0    moviedata_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.moviedata_id_seq OWNED BY public.moviedata.id;
          public          postgres    false    215            �            1259    16459    tv_data    TABLE     :  CREATE TABLE public.tv_data (
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
       public         heap    postgres    false            �            1259    16458    tv_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tv_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tv_data_id_seq;
       public          postgres    false    214                       0    0    tv_data_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tv_data_id_seq OWNED BY public.tv_data.id;
          public          postgres    false    213            �            1259    16452    tv_type    TABLE     Z   CREATE TABLE public.tv_type (
    id integer NOT NULL,
    type character varying(128)
);
    DROP TABLE public.tv_type;
       public         heap    postgres    false            �            1259    16451    tv_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tv_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tv_type_id_seq;
       public          postgres    false    212                       0    0    tv_type_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tv_type_id_seq OWNED BY public.tv_type.id;
          public          postgres    false    211            k           2604    16448    genre id    DEFAULT     d   ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);
 7   ALTER TABLE public.genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            n           2604    16481    moviedata id    DEFAULT     l   ALTER TABLE ONLY public.moviedata ALTER COLUMN id SET DEFAULT nextval('public.moviedata_id_seq'::regclass);
 ;   ALTER TABLE public.moviedata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            m           2604    16462 
   tv_data id    DEFAULT     h   ALTER TABLE ONLY public.tv_data ALTER COLUMN id SET DEFAULT nextval('public.tv_data_id_seq'::regclass);
 9   ALTER TABLE public.tv_data ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            l           2604    16455 
   tv_type id    DEFAULT     h   ALTER TABLE ONLY public.tv_type ALTER COLUMN id SET DEFAULT nextval('public.tv_type_id_seq'::regclass);
 9   ALTER TABLE public.tv_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212                      0    16445    genre 
   TABLE DATA           /   COPY public.genre (id, genre_name) FROM stdin;
    public          postgres    false    210   �$                 0    16478 	   moviedata 
   TABLE DATA           v   COPY public.moviedata (id, title, genre, released, rated, rating, director, writer, actors, plot, poster) FROM stdin;
    public          postgres    false    216   %       	          0    16459    tv_data 
   TABLE DATA           q   COPY public.tv_data (id, title, genre_id, type_id, director, actors, plot, rating, released, poster) FROM stdin;
    public          postgres    false    214   E/                 0    16452    tv_type 
   TABLE DATA           +   COPY public.tv_type (id, type) FROM stdin;
    public          postgres    false    212   "0                  0    0    genre_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.genre_id_seq', 7, true);
          public          postgres    false    209                       0    0    moviedata_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.moviedata_id_seq', 12, true);
          public          postgres    false    215                       0    0    tv_data_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tv_data_id_seq', 1, true);
          public          postgres    false    213                       0    0    tv_type_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tv_type_id_seq', 2, true);
          public          postgres    false    211            p           2606    16450    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    210            v           2606    16485    moviedata moviedata_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.moviedata
    ADD CONSTRAINT moviedata_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.moviedata DROP CONSTRAINT moviedata_pkey;
       public            postgres    false    216            t           2606    16466    tv_data tv_data_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tv_data
    ADD CONSTRAINT tv_data_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tv_data DROP CONSTRAINT tv_data_pkey;
       public            postgres    false    214            r           2606    16457    tv_type tv_type_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tv_type
    ADD CONSTRAINT tv_type_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tv_type DROP CONSTRAINT tv_type_pkey;
       public            postgres    false    212            w           2606    16467    tv_data tv_data_genre_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.tv_data
    ADD CONSTRAINT tv_data_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id);
 G   ALTER TABLE ONLY public.tv_data DROP CONSTRAINT tv_data_genre_id_fkey;
       public          postgres    false    214    3184    210            x           2606    16472    tv_data tv_data_type_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.tv_data
    ADD CONSTRAINT tv_data_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.tv_type(id);
 F   ALTER TABLE ONLY public.tv_data DROP CONSTRAINT tv_data_type_id_fkey;
       public          postgres    false    212    3186    214               S   x�3�tL.����2���/*�/�2�t)J�M�2��(���I-�2�t��MM��2�tI�+I,��2�N�L�KNUp˄���� ��z         
  x��X�r�:}��B����d��'�\����qM�)d�-$F�8��gm��3휩:yI� @��ex�M%�X-�s��w�WRu^pz��`{wS���w^Zٰs��j�6޵)5���h��g�U�c�ZK}���`w����p-�b�NX�5�(ݠ��ʙ��](Q񵰬j�jk��+�Ҵ�`Kk*�Yͥef��-�۔B�R0,�Y&s�W�cJ,q9��Wc���ٲ3��V����*ްW��I��^�\�����j�ZH>���xf����h�F_���Y��\Ga��%�.ݮ�H�~>�ۗ��8�r1�œ"H�ԟO���������O6�����.J���dΒ�?�>>�8���.��ބ�yG�D�����h��pX��w<�G�5�\��;�?�Z���?' ���^�R�RX+�:`�k��K��8`�R眝s�����9{)��A�j3�5^�vTOgX!v�5N�Y)Un��+�*p�e�����b��Kj�u���ں�,7�Cؕ�/�Q���@�Ek�]:쾳=g]�|��ޟ%A���� ����3��<)6�$͒�(^]�t�%�f��Q�`/�kN���5��S��{̌s�5^��7%��ٚ]�uî���]�m�R�y��Xc[و�`��Y,$Ay#���l
� ����R�G%bOZ:��h܉����k�P8ƖD9 ��6(s���(������$�R��f���I��yϖδ�[Ke��Qg4�Rl������TԀس�m��
l�[�4�u���s�1�?m��K���l�m���#���˵�O#%*
����U0���>����0�>� �#/���&���wne%�B�[8�����C��r��s/�͡�um�Z���0��,�$10J�X3V�gR�
��s��m���^s>۬$�CY�- �[����X�iN@=kpq�-�Jj@�s�j��?���ZE7"¡�Ѕ�I`,�Zھ�4�q�v�S[4��0��U�WOHmb�c��o@��_R�\�&��<YΒK���z��G�6�GhԗfBru�����7�B�?���ɻH���}9SY
� U��+ȼ^%(5DWt���^`���܀݊� 9s����%��{y�.V	�3�֚vCǮ)��
����W�������5�0����`��
��;������
Z_�n�Ъ��)�tߺ���o~� _���#f��n-3����$��&�_�kh��c�r��>����
����g�w(��+d����c&��L/�ǃ��;��መ��a�zm���LX��;"�b"w���-.�^��p��{�P��id(ݙ����^����	R�GD�������h�+o/��Q�k0���A��%r�(W/Ջf�|��f�����hC�1V���l���J�.��[)5P�u[)��(N��
谥��C��VB���?a��� M���텋��[|-M���I	�\���Vi�u�ꬌ�O��&W[2H��.�jU�.e꾔��K��x�}��e©�PÏG�� �r���gb���{�8K��VD�G^���vػ,���h��w�*�@�]E���¼{9��!O�!�l���_����0��P���(v�4-���?��Eh�E7�"��~.e�Ӹ�&W�y����L�{!}@ʼ\E���YF���t{5�Vj�	!=���ѻ^5d^�ћ��H�R�:���� 8�Q
Y�6��-��D���\�E�5�v+ �8/��67l"�y_D��82�C;�����.���w�Yp::"$���\�lJ�L�W򩢏5��x�kA�����!���$�4s�A��L��Z#�*��.u���'�l��C�nK�A�$�*}��yr��%���]>���)��L�b����A�r�K�#��KAx��  �7
��d11%z]84��[��F	�O-kA���c�KJ��nz�[R@��cX�Z^y�v�*����,
"(���h��4��U��0m��Cc���@$d����8AX�x��/�.��>�XiBA�b�±�r^�*ݪU����#�GH��^�Wk��&6�����A��#����������(�3�D��Ux��j�>&4��cɞ�ܡ�f7C![c9M`��Y##���F����C�/�3�o;�a����v��G�,�%:�� 
���F`"H�6�i
 �~����fkN�!���(r�J6�㍴�
4��x;z������*`�z:��W�t�^�o�r�(72���w��#�a��Nq�3��V�	����މ�R6�pU�8�aJ�,��|!J����_�4lD�C�(GY�=`�Y����|��%Y6[�Ѐ�C	Q
��j%�m�۸BH�폤����Æ/���>�%gr6��DI�a��H+����c5C�+�ji����,��Z�g����L^�o��{��kJ\w4��{^�j��v�YM�+tGV���yQƬ���VP��I�ْ��r�n��]v��5�n�N ��R���3�L=r�Z�T�	�i7K�oPl�7�s�&N� ��~��忁(�o      	   �   x��;n�0Dk�s K��pi(� A��nV�J$Lr�%�@��z~o��Hd��$6�ƚѩ�%�8�l>i�h�X�ͧ>���y��S��SX�9'��\�w&�%,(*u
�ƊXs�]��\�ڂ���J�N^!+��[ ��s���H��N�B�xm�1=�1�ϲ��o�Rէ�%R�o�/^�`�����饷��o���]������V            x�3���/�L�2�)S��/����� J��     