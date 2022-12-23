PGDMP     &    +                z            SlyTV    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    SlyTV    DATABASE     {   CREATE DATABASE "SlyTV" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'German_Germany.1252';
    DROP DATABASE "SlyTV";
                postgres    false            �            1259    16502    Movies    TABLE     �   CREATE TABLE public."Movies" (
    "ID" integer NOT NULL,
    title character varying,
    genre character varying,
    publishingyear integer,
    plot character varying,
    image bytea
);
    DROP TABLE public."Movies";
       public         heap    postgres    false            �            1259    16501    Movies_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Movies_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Movies_ID_seq";
       public          postgres    false    217                       0    0    Movies_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Movies_ID_seq" OWNED BY public."Movies"."ID";
          public          postgres    false    216            �            1259    16511    Series    TABLE     �   CREATE TABLE public."Series" (
    "ID" integer NOT NULL,
    title character varying,
    seasons integer,
    episodes integer,
    genre character varying,
    publishingyear integer,
    plot character varying,
    image bytea
);
    DROP TABLE public."Series";
       public         heap    postgres    false            �            1259    16510    Series_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Series_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Series_ID_seq";
       public          postgres    false    219                       0    0    Series_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Series_ID_seq" OWNED BY public."Series"."ID";
          public          postgres    false    218            �            1259    16409    Users    TABLE     �   CREATE TABLE public."Users" (
    "userID" bigint NOT NULL,
    username character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    16408    Users_userID_seq    SEQUENCE     {   CREATE SEQUENCE public."Users_userID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Users_userID_seq";
       public          postgres    false    215                       0    0    Users_userID_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Users_userID_seq" OWNED BY public."Users"."userID";
          public          postgres    false    214            p           2604    16505 	   Movies ID    DEFAULT     l   ALTER TABLE ONLY public."Movies" ALTER COLUMN "ID" SET DEFAULT nextval('public."Movies_ID_seq"'::regclass);
 <   ALTER TABLE public."Movies" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    216    217    217            q           2604    16514 	   Series ID    DEFAULT     l   ALTER TABLE ONLY public."Series" ALTER COLUMN "ID" SET DEFAULT nextval('public."Series_ID_seq"'::regclass);
 <   ALTER TABLE public."Series" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    218    219    219            o           2604    16412    Users userID    DEFAULT     r   ALTER TABLE ONLY public."Users" ALTER COLUMN "userID" SET DEFAULT nextval('public."Users_userID_seq"'::regclass);
 ?   ALTER TABLE public."Users" ALTER COLUMN "userID" DROP DEFAULT;
       public          postgres    false    214    215    215            	          0    16502    Movies 
   TABLE DATA           S   COPY public."Movies" ("ID", title, genre, publishingyear, plot, image) FROM stdin;
    public          postgres    false    217   /                 0    16511    Series 
   TABLE DATA           f   COPY public."Series" ("ID", title, seasons, episodes, genre, publishingyear, plot, image) FROM stdin;
    public          postgres    false    219   R                 0    16409    Users 
   TABLE DATA           F   COPY public."Users" ("userID", username, email, password) FROM stdin;
    public          postgres    false    215   �%                  0    0    Movies_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Movies_ID_seq"', 1, false);
          public          postgres    false    216                       0    0    Series_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Series_ID_seq"', 1, false);
          public          postgres    false    218                       0    0    Users_userID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Users_userID_seq"', 10, true);
          public          postgres    false    214            u           2606    16509    Movies Movies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Movies"
    ADD CONSTRAINT "Movies_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."Movies" DROP CONSTRAINT "Movies_pkey";
       public            postgres    false    217            w           2606    16518    Series Series_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Series"
    ADD CONSTRAINT "Series_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."Series" DROP CONSTRAINT "Series_pkey";
       public            postgres    false    219            s           2606    16416    Users Users_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("userID");
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    215            	     x��VKv�6\ӧ�.[�&����������l�i�M0�HVVy�G6Y��ɜ$ՠ43�� �J$�����7�i��+�m��W�}.�����Ys�zK>���S��W}ąZ�Y%Cq�2�����"������V-��Q9�����8勳s}��4w�խA]C~�>p��(���B����n��hS�ܪ��Z�VQȗa��ЩSL�����)8Ҭ �fȩ����&��E:'y[�a��5{���m�*�eñy���;�S�KՑr��/�$�B�Ƀ�ViyI�O)oT��S�1���18Yo,n�2N�����`����E0��"x'��[m������x	��X��2���q������V�D��,�
��>8V���k�=Y����S�#;kn���-�}�.'�ήx���@����"<p���'��&������"�m��P--�P�X��y-oJT��Tceц���Q��_�y�_w�������顿��L� f$Q�g:"]:rN�T�B�R��J����@s�X�h(�՚�<�hC�ֹ#�?���ngj�e�es\���f�x������h���!��	Cq@�dz��+��Q�!�$E�����B�Q`����i�����R��tY�d[&1t�+i^�S�^��߆ \Q��U <99� )�踷9E��&�B��?�i7�])\�*��R�pJb�Î�����5�Ä9�X�b+�{�1���JM�!0.:f6��>jeI0�`ٹmh~*g��~]�R�]��<BRr0��B��^�V�Y�M�f�$�L�?�wHܯ��#T�4=���ɻ���D+�'L?m~2[YRp�q�)J��� ٻ�-��VAW����T��9@'i�UȆ���T�Xg�$�j(��hQ��8�i@E�L�G4V�i����jD�<J�����!�M:i	�����~,�t��)<��ҰHͮ���|�l�!�&��r���z�-�h���[!��%�uL�
Qa,_��e�X�Eğ<��a) K�y�9	�BD�۽Uq1�l%�O��z+�~���+o��~�W�$���~��"(}J��n����U�r.H���mgML�y6-���VA��l����K��ޕ�U�n&$�vX|U}H��ƣVϚ��G��c��H��+&Y]�o�Z>�M��_�k&K�G��>�X��4Wm�i�l�-FV�#���/���������ئ~jJ8�;������k�r�7bhh�3�kv�P"m���~vpp��h�T           x�uV]s�6|F~���ȉ%�r��邏��n3���IT ��R�_�=Pj,����{{�{X�W�[͍��"��cu}�^RȔ�G�#��V�˥z�Ձ+ouC���&ݸ�˺���k�٨sgu?����S���٦l#���w�P��q6dm��'mcH��ӕu��5�X���1w�,��P}����^_���<X�[|�C��I���z]oe,7��zo��w���*J��o2yG��Io# �s%@�-�鸛�-���.wz��P��!rcSr�Ki+.��%�qo˚jL�.%�]cO!_����[9�C�I]�Օ�Z�v&c�G�9F�҇���Y�'AOœ�]�a:�ܞ�\`���a�9�,
��9H�ǔ�o��5*�����4��@hj�f��c-�e�ڌ�z]�ٞ�s��FK[��)��J�W'X��?VO�r��d:�`Lg{�r����%�j�?�������Q�4��ؐ�w9V�L�{����Q?t6C����5c�3���|�ɽ]M}&_�znQ���Z��'?r�n��5Vc��'g���T�����s���I`x�-��9�
�qtb�Rz�E5�i#cH?�q�vK�)Ӥ���=�k�r���� 9֓��R�d�y����/gٴx-�o:�a�IN��c���`�L�x�@T^�P�;
�L��ua�Cӈ<���7�
�!�+Ȥg�{KP���i(��� okcI����֠O�W�ö����Y,u�����l�6���&��n�O1?.��:�6����s�Vכ;��|��`�8yW��$��Y
��~��6.Z�{�Ut^b(#-�Nly���{��K7%gJ�;t�G���uξ�<�m��;H�h|H�.�.�x�+R���6��g��A]��s�q,�Gy�OE�d�eAt;�Q���rSN�c���}�
B�o��bѺ6�c��!��;?�7Y��|s��:������I?��an����{���@WZ���lxm!!��E���r��F�D��X����U�ʹ�U}Рt_z�0I"}G+O�����h��&#iq,�g��Hn�[�1����_.E�2~.G�ad^;��3o58��V:q��6xv��羂��ϱ�zH�#"���d�"�=B
�)��&�2H�W$�I%�|�Ԏ�f̡�ހ3"����f��f}yq����������]�1"˱2vu�{	�M������O`N���(Ӷ������8��(h��o�J H*��������2+��$��/X���,������O�\����(xfs�A�%� ǀЯ%`fHR#�{�Nގ@r��5xNKB��ؗ�v�ɵZʴ����|/S��u�-�ς�TQtr쿲)¨���\1$sth�a�A�f�Z$��;,���f8�C��ANĞC$���L�������B!y�HF��Rm!�
�~�l<��l|Z�a�,��R�E���zW(�R�F��E�g��	#�D%I�JH�A ���PZ�;�ض �;���)|�a"�e�<x�H�;8��|�_� kU��ϧؿ>|���?� �         �  x�m�͒�@���s�̀��M@i��V���� ���<��l���de�!닜3&�0�S��*�K.�V�d�O~��;�^�gq��Dt5ó
����7����d�q�)[e���Er�Y�1q�p{x����ˬ�3���^��ͣY+�x��P��?F��O3���}���	>�\��._k�)G]���1��f�[/��a�_p=������b���LH��&��î
�J�ƲS�� +1n\S\n1ŭZ�q2�υ^�A�x��
�VZ���%�Rc�Lb���,3�BҁC�2��2c]/����)F��f�Zt�j
��,� �p��ج��p@�+@�=Z�gdrVٻ7��;nG�z��H���\�]�s�~Ժ���Ps:�9�4=�lA6�|�Tc�z��������5?��O�́W�\so[�D���.���T�+��7��e�`����C�S�ǲ�7O�o     