PGDMP                       |            new_project_db    16.3    16.3 .               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    26948    new_project_db    DATABASE     �   CREATE DATABASE new_project_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE new_project_db;
                postgres    false            �            1259    27000 
   excel_data    TABLE     �  CREATE TABLE public.excel_data (
    id bigint NOT NULL,
    scheme_code character varying(255) NOT NULL,
    scheme_name character varying(255) NOT NULL,
    central_state_scheme character varying(255) NOT NULL,
    fin_year character varying(255) NOT NULL,
    state_disbursement double precision,
    central_disbursement double precision,
    total_disbursement double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.excel_data;
       public         heap    postgres    false            �            1259    26999    excel_data_id_seq    SEQUENCE     z   CREATE SEQUENCE public.excel_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.excel_data_id_seq;
       public          postgres    false    225            "           0    0    excel_data_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.excel_data_id_seq OWNED BY public.excel_data.id;
          public          postgres    false    224            �            1259    26976    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    26975    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    221            #           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    220            �            1259    26950 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    26949    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216            $           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            �            1259    26968    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    26988    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    26987    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    223            %           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    222            �            1259    26957    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    type boolean DEFAULT false NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    26956    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218            &           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217            n           2604    27003    excel_data id    DEFAULT     n   ALTER TABLE ONLY public.excel_data ALTER COLUMN id SET DEFAULT nextval('public.excel_data_id_seq'::regclass);
 <   ALTER TABLE public.excel_data ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            k           2604    26979    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            h           2604    26953    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            m           2604    26991    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            i           2604    26960    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218                      0    27000 
   excel_data 
   TABLE DATA           �   COPY public.excel_data (id, scheme_code, scheme_name, central_state_scheme, fin_year, state_disbursement, central_disbursement, total_disbursement, created_at, updated_at) FROM stdin;
    public          postgres    false    225   �7                 0    26976    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    221   �9                 0    26950 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    216   �9                 0    26968    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    219   O:                 0    26988    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    223   l:                 0    26957    users 
   TABLE DATA           {   COPY public.users (id, name, email, email_verified_at, password, type, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    218   �:       '           0    0    excel_data_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.excel_data_id_seq', 1, true);
          public          postgres    false    224            (           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    220            )           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 5, true);
          public          postgres    false    215            *           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    222            +           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    217            �           2606    27007    excel_data excel_data_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.excel_data
    ADD CONSTRAINT excel_data_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.excel_data DROP CONSTRAINT excel_data_pkey;
       public            postgres    false    225            x           2606    26984    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    221            z           2606    26986 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    221            p           2606    26955    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    216            v           2606    26974 $   password_resets password_resets_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.password_resets
    ADD CONSTRAINT password_resets_pkey PRIMARY KEY (email);
 N   ALTER TABLE ONLY public.password_resets DROP CONSTRAINT password_resets_pkey;
       public            postgres    false    219            |           2606    26995 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    223            ~           2606    26998 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    223            r           2606    26967    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    218            t           2606    26965    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218                       1259    26996 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    223    223               �  x����j�0���)��ɇ�e��4�+��(���mkߟ%ե�͋1�豅�����j�)�%���U�7�km�p��n;��xY�����ߣ��x=?_N/�3��OA"�&��o�J���� �B�ҲgF7C�+�9z���������v�Ϋ���׏����q ��}_�l��mZd]f�+�X�u�)oZ��lV��D2�')XB���{�3
ٕ1+㲵�q����4,P�Zs�$dT�P24�DS�`\�q�Sr&*�!�6�׵gD`|�&�﹛�°<����'K 㠹�$�@L���Ȅb�
B,�ҡ䚰��8*��v
���S�ߝ���?@!�ٴ��֤����/�%����b�ϩŀRJ�H�>�U���'��@X            x������ � �         �   x�U�M� ��u9�a��s�/S�4z|�&bg��}���h� 2�߁K�E�dI�� )��&|rί�<�d)��9C�����-��=N=�k޾�kN���8s ;'�����˱JS�4�����v�p.;���vGC            x������ � �            x������ � �         .  x�mλr�@ ��zy
[qw!\�BD���D��Yp��,��ϥ�͙9�!�y%_3�!m^�3=n�	�߿��������5��8Gp�t�)�ꘌFD����p�F�_��d��Q�nc=�����`Zk�@@��xbSX�������`NG�lw���"-������L�v���v�*bq��fH\	�
�W��@�RR��w_�[���~�u��w),o�@����+ۭi����]N����gř�|�&�T��V�<��uZ�N��snz�;�a%ǝt/Y���GOQ�<���p�S�|q��oS�yK     