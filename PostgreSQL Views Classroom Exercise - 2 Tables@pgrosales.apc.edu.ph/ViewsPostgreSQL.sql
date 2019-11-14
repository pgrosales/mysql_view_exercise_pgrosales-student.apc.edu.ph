PGDMP         :            
    w            guru99    12.0    12.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    guru99    DATABASE     �   CREATE DATABASE guru99 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE guru99;
                postgres    false            �            1259    32774    client    TABLE     �   CREATE TABLE public.client (
    id integer[] NOT NULL,
    client_fname text[] NOT NULL,
    client_lname text[] NOT NULL,
    client_address text[] NOT NULL,
    client_number integer[]
);
    DROP TABLE public.client;
       public         heap    postgres    false            �            1259    32768    client_has_shipment    TABLE     �   CREATE TABLE public.client_has_shipment (
    client_fname text,
    client_lname text,
    client_address text,
    client_number integer,
    id integer
);
 '   DROP TABLE public.client_has_shipment;
       public         heap    postgres    false            �            1259    32782    shipment    TABLE     V   CREATE TABLE public.shipment (
    id integer[] NOT NULL,
    delivery_date date[]
);
    DROP TABLE public.shipment;
       public         heap    postgres    false            �            1259    32790    client_x_shipment    VIEW       CREATE VIEW public.client_x_shipment AS
 SELECT shipment.delivery_date,
    client.id,
    client.client_fname,
    client.client_lname,
    client.client_address,
    client.client_number
   FROM (public.client
     JOIN public.shipment ON ((client.id = shipment.id)));
 $   DROP VIEW public.client_x_shipment;
       public          postgres    false    203    203    203    204    203    204    203                      0    32774    client 
   TABLE DATA           _   COPY public.client (id, client_fname, client_lname, client_address, client_number) FROM stdin;
    public          postgres    false    203   �                 0    32768    client_has_shipment 
   TABLE DATA           l   COPY public.client_has_shipment (client_fname, client_lname, client_address, client_number, id) FROM stdin;
    public          postgres    false    202   7                 0    32782    shipment 
   TABLE DATA           5   COPY public.shipment (id, delivery_date) FROM stdin;
    public          postgres    false    204   T       �
           2606    32781    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    203            �
           2606    32789    shipment shipment_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.shipment
    ADD CONSTRAINT shipment_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.shipment DROP CONSTRAINT shipment_pkey;
       public            postgres    false    204               0   x��6���/N�I-�K�2���,�Ԣ�̜�T Ӱ�+F��� m��            x������ � �            x��6��620��54�54������ @#�     