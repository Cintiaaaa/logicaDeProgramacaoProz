PGDMP  5                    |            ESCOLA    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    221680    ESCOLA    DATABASE        CREATE DATABASE "ESCOLA" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "ESCOLA";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    221682    aluno    TABLE     �   CREATE TABLE public.aluno (
    aluno_id integer NOT NULL,
    nome character varying(100),
    email character varying(100),
    endereco character varying(255)
);
    DROP TABLE public.aluno;
       public         heap    postgres    false    4            �            1259    221681    aluno_aluno_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aluno_aluno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.aluno_aluno_id_seq;
       public          postgres    false    216    4            �           0    0    aluno_aluno_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.aluno_aluno_id_seq OWNED BY public.aluno.aluno_id;
          public          postgres    false    215            P           2604    221685    aluno aluno_id    DEFAULT     p   ALTER TABLE ONLY public.aluno ALTER COLUMN aluno_id SET DEFAULT nextval('public.aluno_aluno_id_seq'::regclass);
 =   ALTER TABLE public.aluno ALTER COLUMN aluno_id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    221682    aluno 
   TABLE DATA           @   COPY public.aluno (aluno_id, nome, email, endereco) FROM stdin;
    public          postgres    false    216   9       �           0    0    aluno_aluno_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.aluno_aluno_id_seq', 3, true);
          public          postgres    false    215            R           2606    221687    aluno aluno_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (aluno_id);
 :   ALTER TABLE ONLY public.aluno DROP CONSTRAINT aluno_pkey;
       public            postgres    false    216            �   �   x�M�;�0E�z��Y�e	ȷ!�&I��	#d	liSd�����܌�����6���7M�[�,�Ҽ��4��D_TN��B����M�{��4}5���TA������)V�-��w�E�-�>F)���5�     