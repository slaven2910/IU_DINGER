PGDMP     !    9                z            SlyTV    15.0    15.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    SlyTV    DATABASE     {   CREATE DATABASE "SlyTV" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'German_Germany.1252';
    DROP DATABASE "SlyTV";
                postgres    false            �            1259    16409    Users    TABLE     �   CREATE TABLE public."Users" (
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
       public          postgres    false    215            �           0    0    Users_userID_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Users_userID_seq" OWNED BY public."Users"."userID";
          public          postgres    false    214            d           2604    16412    Users userID    DEFAULT     r   ALTER TABLE ONLY public."Users" ALTER COLUMN "userID" SET DEFAULT nextval('public."Users_userID_seq"'::regclass);
 ?   ALTER TABLE public."Users" ALTER COLUMN "userID" DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    16409    Users 
   TABLE DATA           F   COPY public."Users" ("userID", username, email, password) FROM stdin;
    public          postgres    false    215   �
       �           0    0    Users_userID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Users_userID_seq"', 10, true);
          public          postgres    false    214            f           2606    16416    Users Users_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("userID");
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    215            �   �  x�m�͒�@���s�̀��M@i��V���� ���<��l���de�!닜3&�0�S��*�K.�V�d�O~��;�^�gq��Dt5ó
����7����d�q�)[e���Er�Y�1q�p{x����ˬ�3���^��ͣY+�x��P��?F��O3���}���	>�\��._k�)G]���1��f�[/��a�_p=������b���LH��&��î
�J�ƲS�� +1n\S\n1ŭZ�q2�υ^�A�x��
�VZ���%�Rc�Lb���,3�BҁC�2��2c]/����)F��f�Zt�j
��,� �p��ج��p@�+@�=Z�gdrVٻ7��;nG�z��H���\�]�s�~Ժ���Ps:�9�4=�lA6�|�Tc�z��������5?��O�́W�\so[�D���.���T�+��7��e�`����C�S�ǲ�7O�o     