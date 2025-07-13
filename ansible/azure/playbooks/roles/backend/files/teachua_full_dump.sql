--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
--SET transaction_timeout = 0;
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
-- Name: about_us_items; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.about_us_items (
    id bigint NOT NULL,
    number bigint NOT NULL,
    picture character varying(255),
    text character varying(6000),
    type bigint NOT NULL,
    video character varying(255)
);


ALTER TABLE public.about_us_items OWNER TO pmp2025;

--
-- Name: about_us_items_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.about_us_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.about_us_items_id_seq OWNER TO pmp2025;

--
-- Name: about_us_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.about_us_items_id_seq OWNED BY public.about_us_items.id;


--
-- Name: answers; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.answers (
    id bigint NOT NULL,
    correct boolean NOT NULL,
    text character varying(255) NOT NULL,
    value integer NOT NULL,
    question_id bigint NOT NULL
);


ALTER TABLE public.answers OWNER TO pmp2025;

--
-- Name: answers_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.answers_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.answers_seq OWNER TO pmp2025;

--
-- Name: archive; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.archive (
    id bigint NOT NULL,
    class_name character varying(255) NOT NULL,
    data text NOT NULL
);


ALTER TABLE public.archive OWNER TO pmp2025;

--
-- Name: archive_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.archive_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.archive_id_seq OWNER TO pmp2025;

--
-- Name: archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.archive_id_seq OWNED BY public.archive.id;


--
-- Name: banner_items; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.banner_items (
    id bigint NOT NULL,
    link character varying(255),
    picture character varying(255) NOT NULL,
    sequence_number integer NOT NULL,
    subtitle character varying(255),
    title character varying(255) NOT NULL
);


ALTER TABLE public.banner_items OWNER TO pmp2025;

--
-- Name: banner_items_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.banner_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banner_items_id_seq OWNER TO pmp2025;

--
-- Name: banner_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.banner_items_id_seq OWNED BY public.banner_items.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    background_color character varying(255),
    description character varying(255),
    name character varying(255) NOT NULL,
    sortby integer NOT NULL,
    tag_background_color character varying(255),
    tag_text_color character varying(255),
    url_logo character varying(255)
);


ALTER TABLE public.categories OWNER TO pmp2025;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO pmp2025;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: centers; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.centers (
    id bigint NOT NULL,
    center_external_id bigint,
    club_count bigint DEFAULT 0,
    contacts character varying(3000),
    description text,
    feedback_count bigint DEFAULT 0,
    name character varying(255) NOT NULL,
    rating double precision DEFAULT 0,
    url_background_picture character varying(255),
    url_logo character varying(255),
    url_web character varying(255),
    user_id bigint
);


ALTER TABLE public.centers OWNER TO pmp2025;

--
-- Name: centers_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.centers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.centers_id_seq OWNER TO pmp2025;

--
-- Name: centers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.centers_id_seq OWNED BY public.centers.id;


--
-- Name: certificate_dates; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.certificate_dates (
    id bigint NOT NULL,
    course_number character varying(255),
    date character varying(255),
    duration character varying(255),
    hours integer,
    study_form character varying(255)
);


ALTER TABLE public.certificate_dates OWNER TO pmp2025;

--
-- Name: certificate_dates_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.certificate_dates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.certificate_dates_id_seq OWNER TO pmp2025;

--
-- Name: certificate_dates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.certificate_dates_id_seq OWNED BY public.certificate_dates.id;


--
-- Name: certificate_templates; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.certificate_templates (
    id integer NOT NULL,
    course_description character varying(255),
    file_path character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    picture_path character varying(255),
    project_description character varying(255),
    properties character varying(255),
    certificate_type integer
);


ALTER TABLE public.certificate_templates OWNER TO pmp2025;

--
-- Name: certificate_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.certificate_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.certificate_templates_id_seq OWNER TO pmp2025;

--
-- Name: certificate_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.certificate_templates_id_seq OWNED BY public.certificate_templates.id;


--
-- Name: certificate_types; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.certificate_types (
    id integer NOT NULL,
    code_number integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.certificate_types OWNER TO pmp2025;

--
-- Name: certificate_types_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.certificate_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.certificate_types_id_seq OWNER TO pmp2025;

--
-- Name: certificate_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.certificate_types_id_seq OWNED BY public.certificate_types.id;


--
-- Name: certificates; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.certificates (
    id bigint NOT NULL,
    messenger_name character varying(255),
    send_status boolean,
    user_email character varying(255),
    serial_number bigint,
    update_status date,
    user_name character varying(255),
    "values" character varying(255),
    dates_id bigint,
    messenger_id integer,
    template_id integer,
    user_id bigint
);


ALTER TABLE public.certificates OWNER TO pmp2025;

--
-- Name: certificates_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.certificates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.certificates_id_seq OWNER TO pmp2025;

--
-- Name: certificates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.certificates_id_seq OWNED BY public.certificates.id;


--
-- Name: challenge_registrations; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.challenge_registrations (
    id bigint NOT NULL,
    comment character varying(255),
    is_active boolean NOT NULL,
    is_approved boolean NOT NULL,
    registration_date timestamp(6) without time zone NOT NULL,
    challenge_id bigint NOT NULL,
    child_id bigint,
    user_id bigint
);


ALTER TABLE public.challenge_registrations OWNER TO pmp2025;

--
-- Name: challenge_registrations_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.challenge_registrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.challenge_registrations_id_seq OWNER TO pmp2025;

--
-- Name: challenge_registrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.challenge_registrations_id_seq OWNED BY public.challenge_registrations.id;


--
-- Name: challenges; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.challenges (
    id bigint NOT NULL,
    description character varying(30000) NOT NULL,
    is_active boolean NOT NULL,
    name character varying(255) NOT NULL,
    picture character varying(255) NOT NULL,
    registration_link character varying(255),
    sort_number bigint NOT NULL,
    title character varying(255) NOT NULL,
    user_id bigint
);


ALTER TABLE public.challenges OWNER TO pmp2025;

--
-- Name: challenges_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.challenges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.challenges_id_seq OWNER TO pmp2025;

--
-- Name: challenges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.challenges_id_seq OWNED BY public.challenges.id;


--
-- Name: children; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.children (
    id bigint NOT NULL,
    age smallint NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    gender_id bigint NOT NULL,
    parent_id bigint NOT NULL
);


ALTER TABLE public.children OWNER TO pmp2025;

--
-- Name: children_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.children_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.children_id_seq OWNER TO pmp2025;

--
-- Name: children_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.children_id_seq OWNED BY public.children.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.cities (
    id bigint NOT NULL,
    latitude double precision,
    longitude double precision,
    name character varying(255) NOT NULL
);


ALTER TABLE public.cities OWNER TO pmp2025;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cities_id_seq OWNER TO pmp2025;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: club_category; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.club_category (
    club_id bigint NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.club_category OWNER TO pmp2025;

--
-- Name: club_registrations; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.club_registrations (
    id bigint NOT NULL,
    comment character varying(255),
    is_active boolean NOT NULL,
    is_approved boolean NOT NULL,
    registration_date timestamp(0) without time zone NOT NULL,
    child_id bigint,
    club_id bigint NOT NULL,
    user_id bigint
);


ALTER TABLE public.club_registrations OWNER TO pmp2025;

--
-- Name: club_registrations_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.club_registrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.club_registrations_id_seq OWNER TO pmp2025;

--
-- Name: club_registrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.club_registrations_id_seq OWNED BY public.club_registrations.id;


--
-- Name: clubs; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.clubs (
    id bigint NOT NULL,
    age_from integer,
    age_to integer,
    center_external_id bigint,
    club_external_id bigint,
    contacts character varying(3000),
    description text,
    feedback_count bigint DEFAULT 0,
    is_approved boolean,
    is_online boolean,
    name character varying(255) NOT NULL,
    rating double precision DEFAULT 0,
    url_background character varying(255),
    url_logo character varying(255),
    url_web character varying(255),
    center_id bigint,
    user_id bigint
);


ALTER TABLE public.clubs OWNER TO pmp2025;

--
-- Name: clubs_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.clubs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clubs_id_seq OWNER TO pmp2025;

--
-- Name: clubs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.clubs_id_seq OWNED BY public.clubs.id;


--
-- Name: complaints; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.complaints (
    id bigint NOT NULL,
    answer_text character varying(255),
    date date,
    has_answer boolean DEFAULT false NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    text character varying(255) NOT NULL,
    club_id bigint NOT NULL,
    recipient_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.complaints OWNER TO pmp2025;

--
-- Name: complaints_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.complaints_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.complaints_id_seq OWNER TO pmp2025;

--
-- Name: complaints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.complaints_id_seq OWNED BY public.complaints.id;


--
-- Name: contact_type; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.contact_type (
    id bigint NOT NULL,
    name character varying(255),
    url_logo character varying(255)
);


ALTER TABLE public.contact_type OWNER TO pmp2025;

--
-- Name: contact_type_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.contact_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contact_type_id_seq OWNER TO pmp2025;

--
-- Name: contact_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.contact_type_id_seq OWNED BY public.contact_type.id;


--
-- Name: districts; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.districts (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    city_id bigint NOT NULL
);


ALTER TABLE public.districts OWNER TO pmp2025;

--
-- Name: districts_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.districts_id_seq OWNER TO pmp2025;

--
-- Name: districts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.districts_id_seq OWNED BY public.districts.id;


--
-- Name: excel_center_entity; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.excel_center_entity (
    autogenerated_id bigint NOT NULL,
    address character varying(255),
    center_external_id bigint,
    city_name character varying(255),
    coordinates character varying(255),
    description character varying(3000),
    district character varying(255),
    name character varying(255),
    phone character varying(255),
    station character varying(255),
    web_contact character varying(3000)
);


ALTER TABLE public.excel_center_entity OWNER TO pmp2025;

--
-- Name: excel_center_entity_autogenerated_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.excel_center_entity_autogenerated_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.excel_center_entity_autogenerated_id_seq OWNER TO pmp2025;

--
-- Name: excel_center_entity_autogenerated_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.excel_center_entity_autogenerated_id_seq OWNED BY public.excel_center_entity.autogenerated_id;


--
-- Name: excel_club_entity; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.excel_club_entity (
    autogenerated_id bigint NOT NULL,
    address character varying(255),
    ages character varying(255),
    categories character varying(3000),
    center_external_id bigint,
    city_name character varying(255),
    club_external_id bigint,
    coordinates character varying(255),
    description character varying(3000),
    district character varying(255),
    name character varying(255),
    phone character varying(255),
    station character varying(255),
    web_contact character varying(3000)
);


ALTER TABLE public.excel_club_entity OWNER TO pmp2025;

--
-- Name: excel_club_entity_autogenerated_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.excel_club_entity_autogenerated_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.excel_club_entity_autogenerated_id_seq OWNER TO pmp2025;

--
-- Name: excel_club_entity_autogenerated_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.excel_club_entity_autogenerated_id_seq OWNED BY public.excel_club_entity.autogenerated_id;


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.feedbacks (
    id bigint NOT NULL,
    date timestamp without time zone,
    rate real,
    text character varying(1500),
    club_id bigint,
    parent_comment_id bigint,
    user_id bigint
);


ALTER TABLE public.feedbacks OWNER TO pmp2025;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.feedbacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.feedbacks_id_seq OWNER TO pmp2025;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;


--
-- Name: galleries; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.galleries (
    id bigint NOT NULL,
    url character varying(255),
    club_id bigint NOT NULL
);


ALTER TABLE public.galleries OWNER TO pmp2025;

--
-- Name: galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.galleries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.galleries_id_seq OWNER TO pmp2025;

--
-- Name: galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.galleries_id_seq OWNED BY public.galleries.id;


--
-- Name: gender; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.gender (
    id bigint NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.gender OWNER TO pmp2025;

--
-- Name: gender_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.gender_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gender_id_seq OWNER TO pmp2025;

--
-- Name: gender_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.gender_id_seq OWNED BY public.gender.id;


--
-- Name: group_cohort; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.group_cohort (
    id bigint NOT NULL,
    end_date date NOT NULL,
    enrollment_key character varying(255) NOT NULL,
    start_date date NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.group_cohort OWNER TO pmp2025;

--
-- Name: group_cohort_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.group_cohort_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.group_cohort_seq OWNER TO pmp2025;

--
-- Name: group_test; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.group_test (
    id bigint NOT NULL,
    group_id bigint NOT NULL,
    test_id bigint NOT NULL
);


ALTER TABLE public.group_test OWNER TO pmp2025;

--
-- Name: group_test_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.group_test_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.group_test_seq OWNER TO pmp2025;

--
-- Name: locations; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.locations (
    id bigint NOT NULL,
    address character varying(255),
    latitude double precision,
    longitude double precision,
    name character varying(255),
    phone character varying(255),
    center_id bigint,
    city_id bigint,
    club_id bigint,
    district_id bigint,
    station_id bigint
);


ALTER TABLE public.locations OWNER TO pmp2025;

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.locations_id_seq OWNER TO pmp2025;

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    date timestamp without time zone,
    is_active boolean,
    is_answered boolean DEFAULT false NOT NULL,
    text character varying(1500),
    club_id bigint,
    recipient_id bigint,
    sender_id bigint
);


ALTER TABLE public.messages OWNER TO pmp2025;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.messages_id_seq OWNER TO pmp2025;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: messengers; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.messengers (
    id integer NOT NULL,
    access_key character varying(255),
    name character varying(255)
);


ALTER TABLE public.messengers OWNER TO pmp2025;

--
-- Name: messengers_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.messengers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.messengers_id_seq OWNER TO pmp2025;

--
-- Name: messengers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.messengers_id_seq OWNED BY public.messengers.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.news (
    id bigint NOT NULL,
    date date,
    description character varying(10000),
    is_active boolean,
    title character varying(255) NOT NULL,
    url_title_logo character varying(255),
    user_id bigint
);


ALTER TABLE public.news OWNER TO pmp2025;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_id_seq OWNER TO pmp2025;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: question; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.question (
    id bigint NOT NULL,
    text character varying(255),
    title character varying(255)
);


ALTER TABLE public.question OWNER TO pmp2025;

--
-- Name: question_categories; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.question_categories (
    id bigint NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.question_categories OWNER TO pmp2025;

--
-- Name: question_categories_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.question_categories_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.question_categories_seq OWNER TO pmp2025;

--
-- Name: question_histories; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.question_histories (
    id bigint NOT NULL,
    answer_id bigint NOT NULL,
    result_id bigint NOT NULL
);


ALTER TABLE public.question_histories OWNER TO pmp2025;

--
-- Name: question_histories_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.question_histories_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.question_histories_seq OWNER TO pmp2025;

--
-- Name: question_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.question_id_seq OWNER TO pmp2025;

--
-- Name: question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.question_id_seq OWNED BY public.question.id;


--
-- Name: question_test; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.question_test (
    id bigint NOT NULL,
    question_id bigint NOT NULL,
    test_id bigint NOT NULL
);


ALTER TABLE public.question_test OWNER TO pmp2025;

--
-- Name: question_test_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.question_test_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.question_test_seq OWNER TO pmp2025;

--
-- Name: question_types; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.question_types (
    id bigint NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.question_types OWNER TO pmp2025;

--
-- Name: question_types_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.question_types_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.question_types_seq OWNER TO pmp2025;

--
-- Name: questions; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.questions (
    id bigint NOT NULL,
    description character varying(1000) NOT NULL,
    title character varying(255) NOT NULL,
    creator_id bigint,
    category_id bigint NOT NULL,
    type_id bigint NOT NULL
);


ALTER TABLE public.questions OWNER TO pmp2025;

--
-- Name: questions_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.questions_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_seq OWNER TO pmp2025;

--
-- Name: refresh_tokens; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.refresh_tokens (
    user_id bigint NOT NULL,
    token character varying(255) NOT NULL
);


ALTER TABLE public.refresh_tokens OWNER TO pmp2025;

--
-- Name: results; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.results (
    id bigint NOT NULL,
    grade integer NOT NULL,
    test_finish_time timestamp(6) without time zone,
    test_start_time timestamp(6) without time zone,
    test_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.results OWNER TO pmp2025;

--
-- Name: results_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.results_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.results_seq OWNER TO pmp2025;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.roles OWNER TO pmp2025;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO pmp2025;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: search_statistics; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.search_statistics (
    id bigint NOT NULL,
    search_string character varying(255) NOT NULL,
    search_count bigint,
    search_date timestamp(6) without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.search_statistics OWNER TO pmp2025;

--
-- Name: search_statistics_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.search_statistics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.search_statistics_id_seq OWNER TO pmp2025;

--
-- Name: search_statistics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.search_statistics_id_seq OWNED BY public.search_statistics.id;


--
-- Name: stations; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.stations (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    city_id bigint NOT NULL,
    district_id bigint
);


ALTER TABLE public.stations OWNER TO pmp2025;

--
-- Name: stations_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.stations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stations_id_seq OWNER TO pmp2025;

--
-- Name: stations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.stations_id_seq OWNED BY public.stations.id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.subscriptions (
    id bigint NOT NULL,
    expiration_date date NOT NULL,
    group_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.subscriptions OWNER TO pmp2025;

--
-- Name: subscriptions_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.subscriptions_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subscriptions_seq OWNER TO pmp2025;

--
-- Name: tasks; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.tasks (
    id bigint NOT NULL,
    description character varying(10000),
    header_text character varying(10000) NOT NULL,
    is_active boolean,
    name character varying(255) NOT NULL,
    picture character varying(255) NOT NULL,
    start_date date,
    challenge_id bigint
);


ALTER TABLE public.tasks OWNER TO pmp2025;

--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tasks_id_seq OWNER TO pmp2025;

--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- Name: tests; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.tests (
    id bigint NOT NULL,
    active boolean NOT NULL,
    archived boolean NOT NULL,
    counter integer NOT NULL,
    date_of_creation date,
    description character varying(1000) NOT NULL,
    difficulty integer NOT NULL,
    duration integer NOT NULL,
    grade integer NOT NULL,
    title character varying(255) NOT NULL,
    creator_id bigint NOT NULL,
    topic_id bigint
);


ALTER TABLE public.tests OWNER TO pmp2025;

--
-- Name: tests_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.tests_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tests_seq OWNER TO pmp2025;

--
-- Name: topics; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.topics (
    id bigint NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.topics OWNER TO pmp2025;

--
-- Name: topics_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.topics_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.topics_seq OWNER TO pmp2025;

--
-- Name: users; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    password character varying(255),
    phone character varying(255),
    provider character varying(255),
    provider_id character varying(255),
    status boolean,
    url_logo character varying(255),
    verification_code character varying(255),
    role_id integer,
    CONSTRAINT users_provider_check CHECK (((provider)::text = ANY ((ARRAY['local'::character varying, 'facebook'::character varying, 'google'::character varying])::text[])))
);


ALTER TABLE public.users OWNER TO pmp2025;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO pmp2025;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pmp2025
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: work_times; Type: TABLE; Schema: public; Owner: pmp2025
--

CREATE TABLE public.work_times (
    id bigint NOT NULL,
    day smallint,
    end_time character varying(255),
    start_time character varying(255),
    club_id bigint NOT NULL,
    CONSTRAINT work_times_day_check CHECK (((day >= 0) AND (day <= 6)))
);


ALTER TABLE public.work_times OWNER TO pmp2025;

--
-- Name: work_times_seq; Type: SEQUENCE; Schema: public; Owner: pmp2025
--

CREATE SEQUENCE public.work_times_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.work_times_seq OWNER TO pmp2025;

--
-- Name: about_us_items id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.about_us_items ALTER COLUMN id SET DEFAULT nextval('public.about_us_items_id_seq'::regclass);


--
-- Name: archive id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.archive ALTER COLUMN id SET DEFAULT nextval('public.archive_id_seq'::regclass);


--
-- Name: banner_items id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.banner_items ALTER COLUMN id SET DEFAULT nextval('public.banner_items_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: centers id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.centers ALTER COLUMN id SET DEFAULT nextval('public.centers_id_seq'::regclass);


--
-- Name: certificate_dates id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificate_dates ALTER COLUMN id SET DEFAULT nextval('public.certificate_dates_id_seq'::regclass);


--
-- Name: certificate_templates id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificate_templates ALTER COLUMN id SET DEFAULT nextval('public.certificate_templates_id_seq'::regclass);


--
-- Name: certificate_types id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificate_types ALTER COLUMN id SET DEFAULT nextval('public.certificate_types_id_seq'::regclass);


--
-- Name: certificates id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificates ALTER COLUMN id SET DEFAULT nextval('public.certificates_id_seq'::regclass);


--
-- Name: challenge_registrations id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.challenge_registrations ALTER COLUMN id SET DEFAULT nextval('public.challenge_registrations_id_seq'::regclass);


--
-- Name: challenges id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.challenges ALTER COLUMN id SET DEFAULT nextval('public.challenges_id_seq'::regclass);


--
-- Name: children id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.children ALTER COLUMN id SET DEFAULT nextval('public.children_id_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: club_registrations id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.club_registrations ALTER COLUMN id SET DEFAULT nextval('public.club_registrations_id_seq'::regclass);


--
-- Name: clubs id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.clubs ALTER COLUMN id SET DEFAULT nextval('public.clubs_id_seq'::regclass);


--
-- Name: complaints id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.complaints ALTER COLUMN id SET DEFAULT nextval('public.complaints_id_seq'::regclass);


--
-- Name: contact_type id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.contact_type ALTER COLUMN id SET DEFAULT nextval('public.contact_type_id_seq'::regclass);


--
-- Name: districts id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.districts ALTER COLUMN id SET DEFAULT nextval('public.districts_id_seq'::regclass);


--
-- Name: excel_center_entity autogenerated_id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.excel_center_entity ALTER COLUMN autogenerated_id SET DEFAULT nextval('public.excel_center_entity_autogenerated_id_seq'::regclass);


--
-- Name: excel_club_entity autogenerated_id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.excel_club_entity ALTER COLUMN autogenerated_id SET DEFAULT nextval('public.excel_club_entity_autogenerated_id_seq'::regclass);


--
-- Name: feedbacks id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);


--
-- Name: galleries id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.galleries ALTER COLUMN id SET DEFAULT nextval('public.galleries_id_seq'::regclass);


--
-- Name: gender id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.gender ALTER COLUMN id SET DEFAULT nextval('public.gender_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: messengers id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.messengers ALTER COLUMN id SET DEFAULT nextval('public.messengers_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: question id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question ALTER COLUMN id SET DEFAULT nextval('public.question_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: search_statistics id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.search_statistics ALTER COLUMN id SET DEFAULT nextval('public.search_statistics_id_seq'::regclass);


--
-- Name: stations id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.stations ALTER COLUMN id SET DEFAULT nextval('public.stations_id_seq'::regclass);


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: about_us_items; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.about_us_items (id, number, picture, text, type, video) FROM stdin;
\.


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.answers (id, correct, text, value, question_id) FROM stdin;
\.


--
-- Data for Name: archive; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.archive (id, class_name, data) FROM stdin;
\.


--
-- Data for Name: banner_items; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.banner_items (id, link, picture, sequence_number, subtitle, title) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.categories (id, background_color, description, name, sortby, tag_background_color, tag_text_color, url_logo) FROM stdin;
1	#1890FF	Футбол, бокс, хокей, гімнастика, плавання, бойові мистецтва тощо	Спортивні секції	1	#1890FF	#fff	/static/images/categories/sport.svg
2	#531DAB	Класичні і народні танці, брейк-данс, степ, контемп, балет та ін.	Танці, хореографія	5	#F9F0FF	#531DAB	/static/images/categories/dance.svg
3	#73D13D	Центри раннього розвитку, заняття для малюків, розвиток мовлення	Студії раннього розвитку	10	#73D13D	#fff	/static/images/categories/improvement.svg
4	#597EF7	Вивчення природничих наук, технологій, інженерії та математики, STEM-освіта	Програмування, робототехніка, STEM	15	#597EF7	#fff	/static/images/categories/programming.svg
5	#9254DE	Образотворче мистецтво, дизайн, комп’ютерна графіка	Художня студія, мистецтво, дизайн	20	#9254DE	#fff	/static/images/categories/art.svg
6	#FF7A45	Музична школа, хор, ансамбль, гра на музичних інструментах, звукорежисерський гурток та ін.	Вокальна студія, музика, музичні інструменти	25	#FF7A45	#fff	/static/images/categories/music.svg
7	#FF4D4F	Театральна студія, ляльковий театр, акторська майстерність	Акторська майстерність, театр	30	#FF4D4F	#fff	/static/images/categories/theatre.svg
8	#FADB14	Розвиток лідерських якостей, підприємництво для підлітків, фінансова грамотність	Особистісний розвиток	35	#FFF9D4	#D46B08	/static/images/categories/self-improvement.svg
9	#13C2C2	Курси журналістики, дитяче телебачення і радіомовлення, монтаж відео, школа блогінгу	Журналістика, дитяче телебачення, монтаж відео	40	#13C2C2	#fff	/static/images/categories/tv.svg
10	#F759AB	підприємництво для підлітків, фінансова грамотність	Центр розвитку	45	#F759AB	#fff	/static/images/categories/center.svg
11	#FFA940	Тут є цікаві гуртки, які не потрапили в інші категорії	Інше	50	#FFA940	#fff	/static/images/categories/other.svg
\.


--
-- Data for Name: centers; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.centers (id, center_external_id, club_count, contacts, description, feedback_count, name, rating, url_background_picture, url_logo, url_web, user_id) FROM stdin;
1	2	0	2::https://www.facebook.com/Jerome-InfoTech-School-103163044985320, 1::3.8068371311E11, 	Комп'ютерна грамотність, графіка, айдентика	\N	Jerome IT School	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
2	3	0	2::https://www.facebook.com/mystetska.shkola, 1::38097-706-55-04, 1::38063-735-26-53, 	Основним видом діяльності Закладу є освітня і мистецька\nдіяльність, яка включає організацію, забезпечення та реалізацію мистецько-\nосвітнього процесу з метою формування у здобувачів початкової музичної\nосвіти, компетентностей, передбачених освітніми програмами. У школі присутні напрямки: танці, хореографія, вокальна студія, музика, музичні інструменти, академічний та народний вокал, композиція	\N	КЗПСО "Мистецька школа №4 м. Одеси"	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
3	4	0	6::https://it-stat.zp.ua/, 1::380972841437, 	Курси програмування ( html,css, JavaScript, Python,Scratch,Roblox), веб-дизайну, відеоблогерів. 	\N	Курси програмування IT-stat 	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
4	5	0	6::http://www.srvo.od.ua/school/sint_tonika, 1::38048755755, 	Художній, декоративний, туристичний, спортивний, військово-патріотичний, гуманітарний заклад.	\N	Комунальний позашкільний навчальний заклад "Одеський будинок дитячої та юнацької творчості "Тоніка"	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
5	6	0	6::bit.ly/3fJaNvs, 1::3.80974404988E11, 	Школа мистецтв імені Миколи Дмитровича Леонтовича Деснянського району міста Києва. Всі відділення школи - хореографічне, музичне, театральне, художнє - проводять уроки тільки державною мовою! 	\N	Школа мистецтв імені Миколи Дмитровича  Леонтовича 	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
6	7	0	2::https://centr-polet.jimdofree.comhttps://www.facebook.com/126344401393412/, 1::3.80505254546E11, 	ПНЗ «ЦНТТМ «Політ» – це профільний заклад позашкільної освіти, місцевого органу влади ,основними напрямами діяльності якого є: \n−        науково-технічний;\n−        STREAM-освіта (як форма реалізації проектної та науково-дослідної діяльності молоді). \nЗаклад здійснює навчання і виховання молоді у позаурочний та позанавчальний час, надає додаткові знання з робототехніки, сучасних інформаційних технологій, авімоделювання, автомоделювання, декоративно-ужиткового мистецтва, формуючи вміння та навички за інтересами у вихованців, учнів, слухачів; здійснює інклюзивне онлайн-навчання; забезпечує потреби дітей, підлітків та молоді у творчій самореалізації та інтелектуальному, духовному і фізичному розвитку, здійснює підготовку до активної професійної та громадської діяльності; проводить освітню, інформаційно-методичну, організаційно-масову роботу, створює безпечні умови освітньої діяльності.	\N	Позашкільний навчальний заклад "Центр науково-техічної творчості молоді "Політ" Запорізької міської ради Запорізької області	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
7	8	0	6::https://www.children.kiev.ua/, 1::0445392332, 1::0445016022, 1::097274641, 	Академія дитинства вже 20 років працює над створенням цікавих навчальних програм в поєднанні з головною діяльністю дітей цього віку – грою. Ми використовуємо новітні досягнення в педагогіці, різні методики - намагаємося врахувати задатки та здібності кожної дитини, її  індивідуальні психічні особливості. Ми пропонуємо комплексну програму навчання. Вона включає заняття з іноземних мов, вивчення грамоти, розвиток мовлення, пам’яті, уваги, знайомство з математикою, навколишнім світом, ритмікою, світом музики та різними видами образотворчого мистецтва.	\N	Академія талановитих дітей	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
8	9	0	6::http://release.ua/, 1::3.80672330705E11, 	Release Education — це комплекс інноваційної позашкільної освіти у Києві. Тут створені всі умови для того, щоб процес навчання приносив не лише гарні результати, але й радість. 400 вихованців, 25 гуртків, 500 занять на місяць,\n 50 викладачів. Запрошуємо Вас стати частиною нашої великої та дружньої сім’ї. Тут Ви навчатиметесь у колі однодумців, зможете обрати для себе різні напрями, братимете участь у різноманітних чемпіонатах, змаганнях, виставах, концертах, урочистих заходах та конференціях.	\N	Комплекс інноваційної освіти для дітей "Release Education"	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
9	10	0	6::https://academyua.com/ua/, 1::3.80661477107E11, 	\nАкадемія Професій Майбутнього - це прогресивна ІТ освіта для дітей від 4 до 16 років.\nПропонуємо більше 20 напрямків на будь-який смак:\n📌 Робототехніка Lego для кмітливих конструкторів-винахідників\n📌 Робототехніка Arduino для юних програмістів та IT-спеціалістів\n📌 IT-start - початковий комп'ютерний курс\n📌 Дизайн та розробка комп’ютерних ігор на Unity\n📌 Програмування С++, Python, Java\n📌 Відеоблогінг YouTube та відеомонтаж\n📌 Анімація та 3D графіка\n\nЗаняття проводяться оффлайн та онлайн	\N	Академія професій майбутнього	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
10	11	0	6::http://artschool-turchak.kiev.ua/, 1::(044)4273229(044)3600106, 	Дитяча музична школа №18 (з 1995 року дитяча школа мистецтв ім. Стефана Турчака) відкрита в липні 1968 року на житловому масиві Сирець в Шевченківському районі м. Києва. З введенням в дію нового будинку школи з концертним залом на 240 місць, дитяча школа мистецтв ім. С.Турчака стала культурно-освітнім філармонічним центром міста і району. 22 концертних сезони – це більше 650 концертів для учнів, батьків та жителів району. Щорічно відбувалось 30-35 концертів провідних мистецьких колективів України, студентів Національної музичної академії ім.П.Чайковського, КДВМУ ім.Р.Глієра, КССМШ ім.М.Лисенко, Київського хореографічного училища, Коледжу естрадно-циркового мистецтва, Української академії танцю та ін. Сьогодні тут навчаються більше 480 учнів, які опановують мистецтво гри на музичних інструментах, навчаються вокалу, хореографії, живопису, театральному мистецтву. Активно працюють групи загально-естетичного виховання та підготовки до школи, в яких навчаються діти 3-6 років.	\N	Київська дитяча школа мистецтв ім. Стефана Турчака	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
11	12	0	6::http://inventor.com.ua/, 1::38(044)4909080, 	Ми розвиваємо у дітях вміння вирішувати конкретні задачі на уроці. Природничі науки, технології, інженерія, математика поєднуються в одному занятті для дітей уже з 3 років. Учні досліджують проблему, шукають шляхи її розв’язання, конструюють, програмують, проводять розрахунки та експерименти, роблять висновки та презентують отримані результати. Мета STEM-школи INVENTOR — допомогти кожному учневі знайти і розвинути власні таланти та нахили. Професійні педагоги не вирішують за дитину, а стимулюють її самостійно обрати заняття до душі сьогодні, завтра або в майбутньому. Заняття у STEM-школі IVENTOR містять чотири освітні складові: взаємозв’язок, конструювання, рефлексія та розвиток. Кожен курс у STEM-школі INVENTOR розвиває основні компетенції: креативність, критичне мислення, комунікабельність та науково-технічну грамотність.	\N	INVENTOR СТЕМ-Школа	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
12	14	0	6::https://www.shturm.dp.ua/, 1::0504515728, 	Центр "Штурм" намагається, щоби його вихованці на повну потужність розкрили свій потенціал в суспільстві. Центр охоплює такі напрями: фізкультурно - спортивний, художньо-естетичний, військово-патріотичний, та оздоровчий. Це 14 гуртків: національний рукопаш, «Джура», тхеквондо, самбо, кікбоксинг, бокс, атлетична гімнастика, акробатика, повітряна гімнастика, оздоровча гімнастика, валеологія, аеробіка, сучасна хореографія, рукопашний бій. Всі колективи беруть участь у змаганнях та фестивалях міського, всеукраїнського та міжнародного рівня. Заняття проводять з понеділка до п'ятниці 09:00 до 18:00, субота та неділя - вихідні дні.	\N	Комунальний позашкільний заклад «Дитячо-юнацький центр «Штурм» Дніпровської міської ради	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
13	24	0	6::https://itfuture.com.ua/, 1::0689124040, 1::0739124040, 	IT FUTURE SCHOOL – школа інформаційних технологій (ІТ школа) для дітей від 8 до 16 років, головною ідеєю якою є спрямування інтересу до комп’ютера та інформаційних технологій у правильне русло. Ми розробили послідовні програми навчання, починаючи з азів та закінчуючи професійними інструментами, які використовуються у всьому світі. Наші учні створюють власних роботів, мобільні ігри та додатки, веб-сайти, 2D графіку та анімацію, 3D дизайн у шоломі віртуальної реальності, 3D анімацію доповненої реальності тощо. Також ми розробили курс Кібербезпеки дітей в інтернеті та соцмережах. Навчання в нашій IT школі - це не нудна теорія, а максимум цікавої практики, створення власних проектів, які обмежені тільки фантазією вашої дитини. 	\N	IT Future School	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
14	28	0	6::http://www.dyvotsvit.com.ua/, 1::0445622306, 1::0445620684, 	Будинок дитячої та юнацької творчості «Дивоцвіт» - комплексний заклад позашкільної освіти на Харківському масиві, де розвивають свої здібності та таланти діти віком від 4 до 20 років з декоративно-ужиткового та образотворчого мистецтва, художньо-естетичного, туристсько-краєзнавчого, соціально-гуманітарного напрямків.	\N	Будинок дитячої та юнацької творчості Дивоцвіт	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
21	43	0	2::https://www.facebook.com/kpnzsun, 1::0666356309, 1::0999585090, 1::0676300680, 1::0507698178, 1::0964211410, 	Гуртки: юні знавці лікарських рослин, юні акваріумісти, основи біології, юні охоронці природи, юні екологи, юні друзі природи молодшого шкільного віку, основи гідробіології, юні садівники, основи біоетики, аматори зеленої архітектури, біологія людини, основи екологічних знань	\N	 КПНЗ «Станція юних натуралістів» Дніпровської міської ради	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
15	29	0	2::https://www.facebook.com/folkstudiya.Pravytsya, 1::380969099242, 	Фольк-заняття\nмузичні заняття для дітей віком від 6 місяців до 12 років, максимально зосереджені на гармонійному вокальному розвитку дитини та зануренню її у традиційну культуру.\nІнструментальні заняття\nДіти можуть обрати інструмент на свій смак (сопілка, фортепіано, бубон чи цимбали) та займатися індивідуально чи в групах. Мотиваційними етапами у навчанні є концерти, на яких діти демонструють вивчене. Ми радо організовуємо колаборації юних музикантів та креативимо на кожному занятті.\nІсторія України\nЗаняття познайомлять дітей з історією нашого краю від початку існування цивілізації на території сучасної України і до сьогодення. Діти в ігровій формі вчаться вбачати взаємозв‘язки в історичних подіях, робити власні висновки та аналізувати. Цікаві факти та живий виклад матеріалу не дають учням занудьгувати.\n	\N	Фольк-студія "Правиця"	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
16	31	0	6::https://dniprorada.gov.ua/uk/page/komunalnij-pozashkilnij-navchalnij-zaklad-miska-specializovana-dityacho-yunacka-sportivna-shkola-olimpijskogo-rezervu-dniprovskoi-miskoi-radi, 1::0973652750, 	Заклад забезпечує розвиток здібностей вихованців в обраному виді спорту, визнаному в Україні, створює необхідні умови для гармонійного виховання, фізичного розвитку, повноцінного оздоровлення, змістовного відпочинку і дозвілля дітей та молоді, самореалізації, набуття навичок здорового способу життя, підготовки спортсменів для резервного спорту.	\N	Комунальний позашкільний навчальний заклад "Міська спеціалізована дитячо-юнацька спортивна школа олімпійського резерву" Дніпровської міської ради	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
17	35	0	6::http://zernyatko.com/, 1::0444344166, 1::0672324579, 1::0673232441, 	\nГуртки: природознавство для дошкільників, основи дендрології з елементами озеленення; юні аматори зеленої архітектури; юні друзі природи; юні екологи; біологія людини; петриківський розпис; флористика; любителі декоративних та свійських тварин; основи біоетики; екологічний відео лекторій; юні квітникарі\n	\N	Будинок дітей та юнацтва «Вітряні гори» (Зернятко)	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
18	36	0	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	З 1973 року веде свій родовід комплексний позашкільний навчальний заклад – Центр позашкільної роботи Святошинського району міста Києва.Кожний навчальний заклад, як і людина, має свою історію, свої традиції, свою життєву палітру. ЦПР завжди відчуває пульс часу і нині заклад має багате минуле, творче сьогодення та широку перспективу розвитку у майбутньому. Про це свідчать постійна динаміка мережі та родинні династії, які протягом десятиліть довіряють виховання своїх дітей педагогам нашого Центру. Для більшості вихованців ЦПР – це другий дім, в якому дехто, відвідуючи 3,4 і, навіть, більше творчих об’єднань проводить, абсолютно, весь свій вільний час! Діапазон напрямів навчання закладу охоплює всі сфери сучасного життя: науку, мистецтво, культуру, спорт, економіку, інформаційні технології. Серед педагогічних працівників Центру є Заслужені діячі мистецтв, Заслужені артисти України, доктори педагогічних наук, кандидати педагогічних наук, Майстри народної творчості, Відмінники освіти України, керівники гуртка-методисти. 	\N	Центр позашкільної роботи Святошинського району	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
19	37	0	6::https://ctdu-kiev.com.ua/, 1::0444008614, 	"Центр творчості дітей та юнацтва – багатопрофільний навчальний заклад, що є складовою частиною системи освіти Святошинського району м. Києва. \nВ центрі працює 32 гуртки під керівництвом 49 педагогів. Гуртки ЦТДЮ працюють за напрямками: науково-технічним; вокально-хореографічним; декоративно-прикладного та образотворчого мистецтва; театральним; спортивним і студія розвитку “Дошколярик”. Пошукова діяльність, допрофільна та профільна підготовка вихованців ведеться на базі майстерень – слюсарної та столярної, 2 художніх майстерень та 3 лабораторій – авіамодельної, судномодельної та фотолабораторії. У Центрі працюють 8 навчальних кабінетів, 3 хореографічні зали а також виставкова зала. Пріоритетні напрямки розвитку закладу: розробка та реалізація інноваційної моделі навчально-виховної діяльності закладу; впровадження у навчально-виховний процес інклюзивної освіти та технологій роботи з обдарованими дітьми; упровадження інформаційних технологій у діяльність позашкільного навчального закладу."	\N	Центр творчості дітей та юнацтва	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
20	42	0	6::, 1::0669670606, 1::0993591880, 1::0506045431, 1::0950446155, 1::0957105295, 	Гуртки: природознавство для дошкільників, основи дендрології з елементами озеленення; юні аматори зеленої архітектури; юні друзі природи; юні екологи; біологія людини; петриківський розпис; флористика; любителі декоративних та свійських тварин; основи біоетики; екологічний відео лекторій; юні квітникарі	\N	КПНЗ «Станція юних натуралістів №2» Дніпровської міської ради	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
22	44	0	6::https://kvyycvr1dmr.dnepredu.com//, 1::0567650024, 1::0954687342, 	У Центрі навчальна, виховна та масова  робота ведеться у 59 гуртках, що складаються  з 179 групи, де навчається більше 2000 дітей, які можуть займатися улюбленою справою, розвивати свої творчі здібності, а саме: навчитися співати й танцювати, працювати з глиною та лозою, займатися конструюванням одягу, вишивкою і в’язанням, поринути в чарівний світ музики, дизайну, петриківського розпису, графіки та живопису,  вивчати англійську мову, театральне та циркове мистецтво, оволодіти прийомами кунг-фу, козацького двобою та джиу-джитсу, проявити милосердя, дбаючи про домашніх та безпритульних тварин, підготувати малюка до школи тощо. 	\N	КПНЗ «Центр позашкільної роботи № 1» Дніпровської міської ради	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
23	45	0	6::http://www.oduvan.od.ua/, 1::0987485805, 1::0682732735, 	У центрі передбачені різні форми адаптаціі малюків. Діти до трьох років відвідують заняття виключно з дорослими до яких в дитини є довіра( мама, тато, бабуся і т.д). Заняття у Одуванчику – це комплексна система навчання. Вони складаються з наступних частин: розвивайка, англійська мова, та логоримика або творчість.Також розроблена спеціальна розвиваюча програма – 4 годинна програма (для дітей віком 3-4 років). На занятті «Ритміка» діти освоюють основи хореографії. Крім того, у Центрі сімейного розвитку «Одуванчик» працюють курси для майбутніх татусів і мамусь і сімейна психологія, дитячий психолог, логопед, програма вихідного дня. На заняттях педагоги працюють над розвитком у дитини пам’яті, мислення, уваги, збагачення дитячого словника. Щоб дітям було цікаво вчитися, навчальний процес наповнений віршами, піснями, танцями, рухами.	\N	Центр дитячого та сімейного розвитку Одуванчик	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
24	46	0	2::https://www.facebook.com/vulykidej, 1::0679410468, 	ВУЛИК ІДЕЙ клуб розумних дітей - затишний простір для розвитку дітей та батьків. Ми спільно створюємо атмосферу, де панують любов, довіра та прийняття. Простір в якому хочется бути та розкривати власні таланти.	\N	ВУЛИК ІДЕЙ клуб розумних дітей	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
25	49	0	6::https://sport.zp.ua/pages/dityacho-yunacka-sportivna-shkola-salyut-z-plavannya-, 1::0504548650, 1::0612365937, 	ДЮСШ "Салют"	\N	ДЮСШ "Салют"	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
26	50	0	6::http://ai-da-ya.dp.ua/, 1::0500120702, 1::0953335408, 	Приватний дитячий садок, підготовка до школи, англійська для малюків, розвиваючі заняття. В групі не більше 10 дітей; затишні та просторі приміщення; комплексне і здорове харчування; унікальні програми з розвитку та навчання; уважні і кваліфіковані педагоги; індивідуальний підхід;\nвсебічний розвиток і зростання малюка.	\N	Дитячий клуб "Ай да Я!"	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
27	51	0	6::https://bit.ly/2Sv4e7W, 1::0567455184, 1::0567445022, 1::0563788000, 1::0567455184, 1::0567445022, 1::0567455184, 1::0567441319, 	Гуртки: зразковий колектив Дитячий класичний балет, танц-клуб «А-Стиль» (спортивні вуличні  танці), зразковий колектив «Школа забутих мистецтв», петриківський розпис, туристичний ансамбль «Посмішка» (народні танці), ансамбль «Зірочка» (сучасна хореографія), «SHAFFALI» естрадний танок, зразковий колектив Театральна студія «Інженю», театр моди «Графіті», гурток бісероплетіння, студія «Мереживниця», АРТ-майстерня, студія образотворчого мистецтва «Чарівна палітра», зразкова студія образотворчого мистецтва «Веселка», ансамбль «Кабріоль» (хореографія), театр пісні «Біс», вокальний ансамбль Студія «Витоки», комп’ютерна графіка та анімація, літературний, рада лідерів «Олімп», студія комплексного естетичного виховання «Сонечко», скаутінг	\N	КПНЗ «Центр позашкільної роботи № 2» Дніпровської міської ради	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
28	53	0	6::https://www.palace.dp.ua/, 1::0567901826, 1::0567909753, 1::0567909752, 	Гуртки: Молодіжне-творче об’єднання  «Метроном», Дитячий музичний театр «Браво», Циркова студія «Трюк», Театральна студія «Інтермедія», Народний ансамбль танцю «Цвітень», Зразковий дитячий театр моди «Креатив», Зразковий ансамбль сучасної пісні  «Співаночки», Зразкова школа-студія сучасного танцю «Грандіс», Зразковий колектив сучасної хореографії «Пірует», Група брейк дансу «Чилаут», Хореографічний колектив "Калейдоскоп», Театр танцю  «Бриз», Зразковий гурток «Декоративний розпис», Гурток «Батик», Народна вишивка, Бісероплетіння, Гончарство, \nНародознавство, Народні ремесла, Петриківський розпис, Студія комплексного-естетичного виховання (для дошкільнят), Юні друзі природи,\nЮний еколог, Школа юного ветеринара, Радіоелектронне конструювання,\nЮний конструктор, Авіамодельний, Основи інформатики та програмування,\nДизайн студія, Дитяча студія анімації, Графічний дизайн, Виготовлення сувенірів та аксесуарів, Гурток образотворчого мистецтва «Дивограй», \nГурток образотворчого мистецтва «СемиСветик», Гурток дизайну «Фабрика ідеї», Студія образотворчого мистецтва «Палітра», Зразкова арт-школа студія, \nЛітературно-творча студія, Дитячий Парламент, Школа лідера, Конструювання та моделювання одягу, Студія англійської мови, Творча ізостудія, Пішохідний  туризм, Гурток «Пізнай себе»	\N	КПНЗ «Міський палац дітей та юнацтва» Дніпровської міської ради	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
29	57	0	6::http://www.chance4all.com.ua/, 1::380634390890+380637855893+380637463827+380637876912+380637577527, 		\N	Освітньо-мистецький центр "Шанс"	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
30	54	0	6::http://brigantinadnepr.at.ua/, 1::6.72762564E8, 	Гуртки, що належать до КПНЗ «Міський дитячо-юнацький центр «Бригантина» ДМР: Юні туристи-краєзнавці, Географічне краєзнавство, Козацько - лицарське виховання «Джура», Юні судді спортивного туризму, Спортивний туризм, Природа крізь призму англійської мови, Спортивна гімнастика («Акробатика»), Юні туристи, Спортивний туризм, «Екологічне краєзнавство», \n«Спортивне орієнтування», «Пішохідний туризм», «Водний туризм» на"	\N	КПНЗ «Міський дитячо-юнацький центр «Бригантина» ДМР	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
31	55	0	6::https://btdu.dp.ua/, 1::0968478559, 1::0963699148, 1::0671898796, 		\N	КПНЗ "Будинок творчості дітей та юнацтва" Дніпровської міської ради	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
32	52	0	6::https://dniprorada.gov.ua/uk/page/komunalnij-pozashkilnij-navchalnij-zaklad-budinok-dityachoi-tvorchosti-dniprovskoi-miskoi-radi, 1::06612229642, 1::056270023, 	Гуртки: ракетомодельний, картинг, радіоконструкторський, математика і логіка, початковий творчий розвиток – математика, початкове технічне моделювання, початковий творчий розвиток, Брейн-ринг  математичний, паперопластика, комп"ютерний світ, "Майстриня", М`яка іграшка, Ниткові візерунки, Дизайн, Образотворче мистецтво, Художнє різьблення, Декоративний розпис, Живий куток, Психологія, "Патріот"	\N	КПНЗ «Будинок дитячої творчості» Дніпровської міської ради	0	\N	https://www.logodesign.net/images/illustration-logo.png	#	1
\.


--
-- Data for Name: certificate_dates; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.certificate_dates (id, course_number, date, duration, hours, study_form) FROM stdin;
\.


--
-- Data for Name: certificate_templates; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.certificate_templates (id, course_description, file_path, name, picture_path, project_description, properties, certificate_type) FROM stdin;
1	Всеукраїнський курс “Єдині. 28 днів підтримки в переході на українську мову”	/certificates/templates/jedyni_participant_template.jrxml	Єдині учасник	/static/images/certificate/validation/jedyni_banner.png	Курс створений та реалізований у межах проєкту “Єдині” ініціативи “Навчай українською”, до якої належить “Українська гуманітарна платформа”.	\N	3
2	Всеукраїнський курс “Єдині. 28 днів підтримки в переході на українську мову”	/certificates/templates/trainer_certificate.jrxml	Єдині тренер	/static/images/certificate/validation/jedyni_banner.png	Курс створений та реалізований у межах проєкту “Єдині” ініціативи “Навчай українською”, до якої належить “Українська гуманітарна платформа”.	\N	1
3	Всеукраїнський курс “Єдині. 28 днів підтримки в переході на українську мову”	/certificates/templates/moderator_certificate.jrxml	Єдині модератор	/static/images/certificate/validation/jedyni_banner.png	Курс створений та реалізований у межах проєкту “Єдині” ініціативи “Навчай українською”, до якої належить “Українська гуманітарна платформа”.	\N	2
4	Вивчення української мови базового рівня.	/certificates/templates/jedyni_basic_participant_template.jrxml	Учасник базового рівня	/static/images/certificate/validation/jedyni_banner.png	Курс створений та реалізований у межах проєкту “Єдині” ініціативи “Навчай українською”, до якої належить “Українська гуманітарна платформа”.	\N	4
5	Бізнес-курс української мови.	/certificates/templates/jedyni_business_participant_template.jrxml	Учасник бізнес-курсу	/static/images/certificate/validation/jedyni_banner.png	Курс створений та реалізований у межах проєкту “Єдині” ініціативи “Навчай українською”, до якої належить “Українська гуманітарна платформа”.	\N	5
\.


--
-- Data for Name: certificate_types; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.certificate_types (id, code_number, name) FROM stdin;
1	1	Тренер
2	2	Модератор
3	3	Учасник
4	4	Учасник
5	5	Учасник
\.


--
-- Data for Name: certificates; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.certificates (id, messenger_name, send_status, user_email, serial_number, update_status, user_name, "values", dates_id, messenger_id, template_id, user_id) FROM stdin;
\.


--
-- Data for Name: challenge_registrations; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.challenge_registrations (id, comment, is_active, is_approved, registration_date, challenge_id, child_id, user_id) FROM stdin;
\.


--
-- Data for Name: challenges; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.challenges (id, description, is_active, name, picture, registration_link, sort_number, title, user_id) FROM stdin;
\.


--
-- Data for Name: children; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.children (id, age, first_name, last_name, gender_id, parent_id) FROM stdin;
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.cities (id, latitude, longitude, name) FROM stdin;
1	50.4501	30.5234	Київ
2	49.9935	36.2304	Харків
3	48.479512881488375	35.00721554865378	Дніпро
4	46.4825	30.7233	Одеса
5	47.82289	35.19031	Запоріжжя
\.


--
-- Data for Name: club_category; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.club_category (club_id, category_id) FROM stdin;
1	4
3	6
4	6
5	9
6	4
7	11
7	1
7	5
7	2
8	11
8	6
9	2
10	7
11	5
12	11
12	4
13	11
13	4
14	11
14	4
15	11
15	4
16	11
16	4
17	11
17	4
18	11
18	4
19	11
19	4
20	11
20	4
21	11
21	4
22	11
22	4
23	11
23	4
24	11
24	4
25	11
25	4
26	1
27	4
28	7
29	7
29	6
29	5
29	2
30	1
31	1
32	11
33	7
34	2
35	1
36	1
37	9
38	4
40	6
40	5
41	4
41	5
42	7
42	6
42	5
42	2
43	2
44	2
45	11
45	1
45	9
45	7
45	6
45	4
45	5
45	2
46	4
47	9
48	4
49	9
49	4
50	4
51	11
51	4
52	7
52	6
52	5
52	2
53	7
53	6
53	5
53	2
54	7
54	6
54	5
54	2
55	7
55	6
55	5
55	2
56	6
56	5
56	2
57	6
58	1
58	6
58	5
58	2
59	4
59	5
60	1
60	7
60	6
60	5
60	2
61	7
61	6
61	5
61	2
62	11
63	11
63	4
64	11
64	4
65	4
66	4
67	4
68	4
69	4
70	4
71	4
72	4
73	4
74	4
75	4
76	4
78	11
78	8
79	1
80	1
81	1
82	1
83	1
84	1
85	1
86	1
87	1
88	2
89	2
91	7
91	6
92	7
92	6
93	7
93	6
93	2
94	9
96	5
97	4
99	4
100	5
101	2
102	5
103	1
104	11
105	1
105	7
105	6
105	5
105	2
106	7
106	6
106	5
106	2
107	6
107	2
108	6
108	5
108	2
109	6
109	5
109	2
110	5
111	9
111	4
111	5
112	11
112	7
112	6
113	11
113	7
113	6
114	11
114	7
114	6
115	7
115	2
116	1
118	2
119	1
120	1
121	1
122	1
123	1
123	7
123	6
123	4
123	5
123	2
124	6
125	1
126	1
127	1
127	5
127	2
128	7
128	6
128	4
128	5
128	2
129	4
129	5
130	1
130	9
130	7
130	6
130	4
130	5
130	2
131	4
131	5
132	1
134	9
134	7
134	6
134	4
134	5
134	2
135	7
135	6
135	5
135	2
136	1
136	6
136	5
136	2
137	1
137	5
137	2
138	5
139	1
140	4
140	5
141	1
141	7
141	6
141	4
141	5
141	2
142	7
142	6
142	4
142	5
142	2
143	1
144	1
144	2
145	1
145	9
145	7
145	6
145	5
145	2
146	1
146	6
146	5
146	2
147	2
148	1
148	7
148	4
148	5
149	7
149	6
149	5
149	2
150	9
150	7
150	6
150	4
150	5
150	2
151	4
152	1
152	9
152	7
152	6
152	4
152	5
152	2
153	1
153	9
153	7
153	6
153	4
153	5
153	2
154	1
154	9
154	7
154	6
154	4
154	5
154	2
155	5
156	1
156	7
156	6
156	4
156	5
156	2
157	1
158	4
158	5
159	4
159	5
160	11
161	1
162	7
162	6
162	5
162	2
163	6
163	5
163	2
164	1
164	7
164	6
164	4
164	5
164	2
165	1
166	1
167	9
167	7
167	6
167	4
167	5
167	2
168	9
168	7
168	6
168	5
168	2
169	7
169	6
169	5
169	2
170	9
170	7
170	6
170	4
170	5
170	2
171	6
171	2
172	7
172	6
172	2
173	7
173	6
173	2
174	5
175	5
176	5
177	1
178	5
179	5
180	5
181	7
182	7
182	6
182	4
182	5
182	2
183	7
183	6
183	5
183	2
184	1
184	9
184	7
184	6
184	4
184	5
184	2
185	1
185	7
185	6
185	4
185	5
185	2
186	1
186	9
186	7
186	4
187	6
187	4
187	2
188	4
188	5
189	1
190	1
190	7
190	6
190	4
190	5
190	2
191	1
192	7
192	2
193	1
193	7
193	6
193	5
193	2
194	1
195	1
195	4
195	5
196	7
196	6
196	4
196	5
196	2
197	1
198	1
199	7
199	5
199	2
201	5
202	1
203	7
204	6
205	6
206	6
207	6
208	1
209	1
210	1
211	1
212	1
213	1
214	1
215	1
216	1
217	1
218	1
219	6
223	7
223	6
223	5
223	2
224	1
225	4
226	4
227	4
228	4
229	4
230	5
231	5
232	4
233	4
234	4
235	4
236	4
242	1
243	5
244	6
244	2
246	1
246	7
246	2
247	1
248	1
249	1
251	11
251	5
251	2
252	2
253	1
253	7
253	6
253	5
253	2
254	7
254	6
255	7
256	1
257	5
264	4
265	1
265	7
265	6
265	4
265	5
265	2
266	7
266	6
266	5
266	2
267	1
269	1
270	1
270	9
270	7
270	6
270	4
270	5
270	2
271	1
272	1
272	7
272	6
272	4
272	5
272	2
273	1
274	1
274	9
274	7
274	6
274	4
274	5
274	2
275	1
276	1
276	9
276	7
276	6
276	4
276	5
276	2
277	1
278	9
278	4
278	5
278	2
279	1
280	1
281	7
283	1
284	5
285	6
285	5
285	2
286	5
287	5
289	1
290	1
291	1
292	1
293	1
294	1
295	1
296	1
297	1
298	1
299	1
300	1
301	1
302	1
305	11
305	4
306	7
306	2
307	5
308	9
308	4
308	5
309	4
309	5
310	1
310	7
310	6
310	4
310	5
310	2
311	9
311	7
311	6
311	4
311	5
311	2
312	11
313	11
314	9
314	7
314	6
314	4
314	5
314	2
315	9
315	7
315	6
315	4
315	5
315	2
316	9
316	7
316	6
316	4
316	5
316	2
317	1
317	7
317	6
317	5
317	2
318	1
318	6
318	4
318	2
319	1
319	5
320	9
320	7
320	5
322	2
323	1
323	7
323	6
323	4
323	5
323	2
325	1
326	1
327	7
327	5
327	2
328	1
328	7
328	6
328	5
328	2
329	7
329	6
329	4
329	5
329	2
330	1
330	4
330	5
331	1
332	1
333	1
334	1
335	1
336	1
337	1
338	1
339	1
340	11
341	11
342	4
343	4
344	4
345	4
346	11
347	6
347	4
347	5
347	2
348	1
349	1
\.


--
-- Data for Name: club_registrations; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.club_registrations (id, comment, is_active, is_approved, registration_date, child_id, club_id, user_id) FROM stdin;
\.


--
-- Data for Name: clubs; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.clubs (id, age_from, age_to, center_external_id, club_external_id, contacts, description, feedback_count, is_approved, is_online, name, rating, url_background, url_logo, url_web, center_id, user_id) FROM stdin;
1	2	18	2	1	2::https://www.facebook.com/Jerome-InfoTech-School-103163044985320, 1::380683713110, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Jerome IT School	\N	/static/images/club/bg_2.png	#	\N	1	\N
2	2	18	2	2	2::https://www.facebook.com/JeromeSchool, 1::380683713110, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Jerome English School	\N	/static/images/club/bg_2.png	#	\N	1	\N
3	6	16	3	3	2::https://www.facebook.com/mystetska.shkola, 1::097-706-55-04, 1::063-735-26-53, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Зразковий фольклорний ансамбль ''Цветень''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Зразковий фольклорний ансамбль "Цветень"	\N	/static/images/club/bg_2.png	#	\N	2	\N
4	6	16	3	4	2::https://www.facebook.com/mystetska.shkola, 1::097-706-55-04, 1::063-735-26-54, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Зразковий оркестр народних інструментів","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Зразковий оркестр народних інструментів	\N	/static/images/club/bg_2.png	#	\N	2	\N
5	6	16	4	5	6::https://it-stat.zp.ua, 1::3.80972841437E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Відеоблогінг","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Відеоблогінг IT-stat 	\N	/static/images/club/bg_2.png	#	\N	3	\N
6	6	16	4	6	6::https://it-stat.zp.ua, 1::3.80972841437E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Програмування HTML/CSS, JavaScript","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Програмування IT-stat 	\N	/static/images/club/bg_2.png	#	\N	3	\N
7	4	16	5	7	6::http://www.srvo.od.ua/school/sint_tonika, 1::3.8048755755E10, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Позашкільний заклад, всі види діяльності","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад "Одеський будинок дитячої та юнацької творчості "Тоніка"	\N	/static/images/club/bg_2.png	#	\N	4	\N
8	6	16	6	8	6::, 1::3.80974404988E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Музичне відділення. Вокал (академічний, народний, естрадний), хор, народні інструменти (бандура, гітара, сопілка, баян, акордеон, домра, мандоліна), духові та ударні інструменти (труба, флейта, гобой, саксофон, кларнет), скрипка","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Музичне відділення	\N	/static/images/club/bg_2.png	#	\N	5	\N
9	6	16	6	9	6::, 1::3.80974404988E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Хореографічне відділення. Народний та класичний танець.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Хореографічне відділення	\N	/static/images/club/bg_2.png	#	\N	5	\N
10	6	16	6	10	6::, 1::3.80974404988E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Театральне відділення. Акторська майстерність, сценічна мова та практика, пантоміма  ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Театральне відділення	\N	/static/images/club/bg_2.png	#	\N	5	\N
11	6	16	6	11	6::, 1::3.80974404988E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Художнє відділення. Рисунок, живопис, композиція, скульптура, декоративно - прикладне мистецтво  ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Художнє відділення	\N	/static/images/club/bg_2.png	#	\N	5	\N
12	6	16	7	12	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гурток ''Основи науково-дослідницької діяльності'' - розробка сучасних проєктів, знайомство зі світом StartUp, написання проєктів, захист проєктів, дослідження та багато іншого","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Основи науково-дослідницької діяльності	\N	/static/images/club/bg_2.png	#	\N	6	\N
13	6	16	7	13	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Конструювання, програмування роботів, розумних пристроїв, впровадження та вивчення технологій розумного міста та багато іншого.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Технічне конструювання	\N	/static/images/club/bg_2.png	#	\N	6	\N
14	6	16	7	14	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Предметно-інтегрована Іноземна мова (Content and Language Integrated Learning) CLIL. У навчальному процесі дає можливість педагогам інтегрувати вивчення іноземної мови з іншими навчальними предметами, а цікавий зміст мотивує вихованців до вивчення англійської мови та надає лінгвістичну базу, з якою вони зможуть самостійно працювати надалі, наприклад, під час навчання","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Предметно-інтегрована іноземна мова	\N	/static/images/club/bg_2.png	#	\N	6	\N
15	6	16	7	15	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Діти знайомляться зі світом 3D, опановують навички володіння програмами для 3D-моделювання, друкують на 3D принтері та багато іншого","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	3D-моделювання	\N	/static/images/club/bg_2.png	#	\N	6	\N
16	6	16	7	16	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гурток ''STREAM-лабораторія'' - це  наукові досліди, фізичні явища, будова світу для дітей 4-7 класів","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	STREAM-лабораторія	\N	/static/images/club/bg_2.png	#	\N	6	\N
17	2	18	7	17	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гурток ''Проста наука'' - це наукові досліди, фізичні явища, будова світу для дітей 1-3 класу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Проста наука	\N	/static/images/club/bg_2.png	#	\N	6	\N
18	6	16	7	18	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гурток ''Німецька мова у технічному світі'' - вивчення німецької мови.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Німецька мова у технічному світі	\N	/static/images/club/bg_2.png	#	\N	6	\N
19	6	16	7	19	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гурток ''Європейський клуб'' - діти оволодівають навичками комунікації, дискусії, залучаються до участі у заходах","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Європейський клуб	\N	/static/images/club/bg_2.png	#	\N	6	\N
20	2	18	7	20	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Підготовка дітей старшого дошкільного віку до навчання у школі, шляхом інтелектуального та особистісного розвитку.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Розумні дошкільнята	\N	/static/images/club/bg_2.png	#	\N	6	\N
21	6	16	7	21	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Навчаються керувати, конструювати мехатронні системи, вивчають електроніку, електротехніку, механіку та багато іншого.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Мехатроніка	\N	/static/images/club/bg_2.png	#	\N	6	\N
22	6	16	7	22	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Діти знайомляться з новими сучасними тенденціями робототехніки, навчаються програмувати, конструювати робототехнічні елементи, готуються до змагань з Arduino, Lego, Micro:bit та інші","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Основи робототехніки та комп'ютерного моделюваня	\N	/static/images/club/bg_2.png	#	\N	6	\N
23	6	16	7	23	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Діти навчаються пілотувати, конструювати, програмувати безпілотні літаючі апарати","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Школа операторів дронів	\N	/static/images/club/bg_2.png	#	\N	6	\N
24	6	16	7	24	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гурток ''Основи Web-технологій'' спрямований на формування у гутківців знань про роботу мережі та сервісів Internet; програмне забезпечення необхідного для роботи в мережі Internet; основ розробки Web-документів на основі мови, застосування прикладних програм, які використовуються у розробці Web-документів,про роботу з програмами-броузерами, редакторами для роботи HTML, HTML; графічного та музичного оздоблення Web-документів; розробку динамічних Web-документів на основі HTML та JavaScript.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Основи Web-технологій	\N	/static/images/club/bg_2.png	#	\N	6	\N
25	6	16	7	25	6::, 1::3.80505254546E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Робота гуртка «Природа і фантазія у технічній творчості» спрямована на формування компетентностей особистості у процесі розкриття сенсу головних ідей, що висловлюють сутність та перспективи взаємодії людини і природи. На заняттях гуртка діти вчаться ознайомлення з основами технічної творчості, декоративно-ужиткового мистецтва, моделювання й конструювання, формування вмінь і навичок роботи з різними матеріалами й інструментами","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Природа і фантазія у технічній творчості	\N	/static/images/club/bg_2.png	#	\N	6	\N
26	0	16	\N	26	6::https://agclub.com.ua/, 1::3.80443337101E11, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Американський гімнастичний клуб (American Gymnastics Club) – перша та єдина в країні мережа унікальних спортивних клубів, яка базується на Розвивальній Гімнастиці. Крім щоденних занять, в Американському гімнастичному Клубі проходять «Показові виступи» та різноманітні тематичні вечірки, які допомагають зібрати активних однодумців і популяризувати та прививати любов до спорту, перетворюючи його в стиль життя.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	American Gymnastics Club 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
27	12	16	\N	27	6::https://itosvita.com/, 1::(095)099-35-45(093)138-46-16(063)288-12-02(095)811-42-77, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Ми вивчаємо все, що можна уявити в ІТ і навіть більше. Загалом ми вчимо 20 тем.  Всі ці теми ми вивчаємо в одному курсі, бо всі сучасні грамотні люди мають це знати. Ми набираємо учнів 5-10 класів. Окремі диференційовані групи для молодших і старших учнів. Повірте, такі речі треба знати всім, незалежно від професії. Ви будете вигідно відрізнятися від інших – це ключ до успіху. Прийдіть і переконайтеся – Ви будете приємно здивовані. Ви зможете робити проекти і творити свої історії успіху.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	IT освіта: курси "ГРАНД"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
28	2	18	8	28	6::https://www.children.kiev.ua/teatralnaya-studiya, 1::0445392332, 1::0445016022, 1::0972746417, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дитяча театральна студія ''Театрум''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитяча театральна студія "Театрум"	\N	/static/images/club/bg_2.png	#	\N	7	\N
29	2	18	8	29	6::https://www.children.kiev.ua/akademiya-detstva, 1::0445392332, 1::0445016022, 1::0972746417, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Академія дитинства","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Академія дитинства	\N	/static/images/club/bg_2.png	#	\N	7	\N
30	6	16	\N	30	6::, 1::0987656626, 1::0979383794, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Напрями навчання: - слов'янський рукопашний бій (напрямок-пластуни). Різні техніки бою (ударна, кидальна, заломна), робота з / проти різних видів зброї; Основи акробатики; Навики групування; Ведення бою проти 2 і більше супротивників; індивідуальний підхід","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Козацький клуб "Пластун-Характер"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
31	2	18	\N	31	2::https://www.facebook.com/search/top/?q=%D0%B1%D0%BE%D0%B9%D0%BE%D0%B2%D0%B8%D0%B9%20%D0%B3%D0%BE%D0%BF%D0%B0%D0%BA%20%D0%BE%D0%B4%D0%B5%D1%81%D0%B0%20%D1%88%D0%B1%D0%B3%20%D0%BC%D0%B5%D1%87%20%D1%94%D0%B4%D0%BD%D0%BE%D1%81%D1%82%D1%96, 1::6.75560887E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Козацька бойова культура, козацькі пісні, історія України, Бойовий Гопак в Одесі, комплексна система розвитку дитячої особистості","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	"Козачата"(Міжнародна федерація Бойового Гопака)	\N	/static/images/club/bg_2.png	#	\N	\N	\N
32	6	16	\N	32	6::https://youstud.herokuapp.com/, 1::5.08517001E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"YOUSTUD - це перша в Україні онлайн-школа точних наук. Ми допомагаємо дітям зрозуміти, що точні науки - це не страшно, а навіть дуже цікаво. Таким чином діти набагато краще сприймають інформацію. Підготовка до ЗНО/ДПА, підвищення рівня знань з точних наук","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Онлайн-школа точних наук YOUSTUD	\N	/static/images/club/bg_2.png	#	\N	\N	\N
33	6	16	\N	33	6::https://instagram.com/zorianatsvyk_studio?igshid=9oo3u265cl5e, 2::https://www.facebook.com/starkidstheatre/, 1::6.77382177E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Кожна людина талановита, але страхи та зажими блокують розвиток особистості! Наші заняття спрямовані на підвищення самооцінки. Мотивують до відкритості та самодисципліни. Психофізичний тренінг допоможе звільнитись від внутрішніх зажимів, а вправи на розвиток уваги та фантазії, розкриють внутрішній світ вашої дитини!","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Театральна Студія "Зоряні Діти'' 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
34	0	11	\N	34	6::http://nesamovyti.tilda.ws/, 1::0996074824, 1::0971112338, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Студія сучасного танцю «Несамовиті» для дітей віком від 3-х років. Наша велика місія — дати кожній дитині змогу знайти свій талант та розкритись як особистість.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Студія танцю "Несамовиті"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
35	6	16	\N	35	6::http://leskiv.com.ua/, 1::6.74059945E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Спорт - гірські та водні лижі, водні лижі та вейкборд, ролики, петанк","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	LESKIV-SCHOOL 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
36	4	16	\N	36	6::https://aikido.ua/, 1::6.61020888E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Філософія Айкідо — відсутність агресії, відновлення гармонії в навколишньому світі. Це єдина техніка східних єдиноборств, спрямована виключно на самозахист. Клуб MISOGI пропонує: найбільш інтелектуальний вид східних єдиноборств без обмежень за віком і рівнем фізичної підготовки; фізичний розвиток, що загартовує, зміцнює організм та стимулює вести здоровий спосіб життя. Заняття айкідо покращують реакцію, координацію, спритність, а також вдосконалюють духовно, знайомлять з елементами японської культури, вчать відчувати, що відбувається навколо, розвивають інтелектуально та знайомлять з практичною анатомією людини, біомеханікою.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Професійний клуб Айкідо Йошинкан в Києві - MISOGI	\N	/static/images/club/bg_2.png	#	\N	\N	\N
37	6	16	\N	37	6::https://www.voopty.com.ua/studio/NovyKadr, 1::380664090294, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Новий кадр — це справжній творчий  майданчик, а ще перший крок в отриманні професії у світі медіа для підлітків від 10 до 16 років. В нашій школі можна спробувати себе справжнім журналістом, оператором, блогером, режисером, ведучим телепроекту.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Новий Кадр	\N	/static/images/club/bg_2.png	#	\N	\N	\N
38	6	16	\N	38	6::https://boteon.com/, 1::0800752572, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Навчальний центр ''Boteon Education'' має філії і представництва в 6 містах України, а також навчальні центри в Росії та Ізраїлі. Наша навчальна програма відточена роками, а кількість випускників за три роки роботи перевищила 1000 осіб. Попит на наших випускників зростає з кожним днем - ми даємо не просто IT-освіту, ми формуємо інженерний спосіб мислення з глибоким розумінням фізичних і логічних процесів сучасної електронної та комп'ютерної техніки. Навчальний курс ''Boteon Education'' розрахований на навчання дітей від 8 років. Програми навчання: робототехніка; початкова фізика; конструювання; моделювання; автоматика; електроніка; IT-сфера (програмування)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр робототехніки "Boteon"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
44	4	16	\N	44	2::https://www.facebook.com/papadanceschool/, 1::6.74666162E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Школа танців","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Танцювальна школа Андріса Капіньша PAPA DANCE	\N	/static/images/club/bg_2.png	#	\N	\N	\N
39	4	16	\N	39	6::http://apslogos.com/, 1::0503082119, 1::0487859096, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Наш центр надає дітям високоякісне навчання з різних загальноосвітніх предметів, спеціальні курси поглибленого вивчення іноземних мов, а також спеціальні курси з відновлення здібностей у навчанні та спілкуванні. Програми навчання: репетитори з математики;  англійської; фізики; хімії;  біології; німецької мови; географії; російської; української; російської та української літератури; підготовка до школи; підготовка до ЗНО; математика для дітей від 3 до 6 років ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр прикладної освіти "Логос" 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
40	6	16	\N	40	6::, 1::0487243319, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Програми навчання: класи:  фортепіано;  струнно-смичкових інструментів (віолончель, скрипка); класичної гітари, баяна, композиції; хорового співу; ІЗО: вивчаються рисунок, композиція, живопис, практика на пленері, декоративно-прикладне мистецтв. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитяча музична школа №15 ім. Т. І. Бойового	\N	/static/images/club/bg_2.png	#	\N	\N	\N
41	4	16	\N	41	6::, 1::0482528633, 1::0482528591, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний позашкільний навчальний заклад дитяча художня №2 м.Одеси. У школі є відділення образотворчого мистецтва і класи комп'ютерної графіки, де учні вивчають сучасні графічні комп'ютерні програми. Вісімнадцять висококваліфікованих викладачів дають базові знання образотворчого мистецтва - це графіка, живопис, композиція, декоративно-прикладне мистецтво, історія мистецтв. На уроках живопису діти вивчають техніку роботи гуашшю, аквареллю, олійними фарбами. Велике значення на уроках приділяється роботі з натури - натюрморти, портрети, пейзажі - як у графіці, так і в живописі. На предметах ''Декоративне мистецтво'' проводиться робота з глиною (кераміка), тканиною (батик, колаж), з папером (витинанка, паперопластика), розпис по дереву та інше. Учні школи вивчають теоретичний предмет ''Історія мистецтв'', на уроках якого знайомляться з розвитком образотворчого мистецтва і архітектури, його стилями і напрямами.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитяча художня школа №2 м.Одеси	\N	/static/images/club/bg_2.png	#	\N	\N	\N
42	4	26	\N	42	6::Курс«Архітектура»(рівень1)років, 6::Курс«Архітектура»(рівень2)9-16років, 1::0482641061, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний заклад початкової спеціалізованої освіти ''Мистецька школа № 10 м.Одеси''. Гуртки музичного, танцювального, художнього напрямків","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Мистецька школа № 10 м.Одеси	\N	/static/images/club/bg_2.png	#	\N	\N	\N
43	11	16	\N	43	6::https://dance-school.kiev.ua/, 1::0637395921, 1::0979731323, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Професійні хореографи у різних танцювальних стилях завжди готові передати свій досвід нашим учням будь-якої вікової категорії та рівня підготовки. У нас Ви знайдете більше двадцяти найпопулярніших стилів танцю. Комфортні умови, дружня та драйвова атмосфера, грандіозні концерти, виступи, змагання, майстер-класи, зустрічі зі знаменитостями, дискотеки, фотосесії, участь у зйомках відеокліпів та ще безліч усього цікавого чекає на Вас у “Dream Team”!","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Школа танців Dream Team	\N	/static/images/club/bg_2.png	#	\N	\N	\N
45	4	16	9	45	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Release Education — це комплекс інноваційної позашкільної освіти у Києві. Тут створені всі умови для того, щоб процес навчання приносив не лише гарні результати, але й радість. 400 вихованців, 25 гуртків, 500 занять на місяць, 50 викладачів. Запрошуємо Вас стати частиною нашої великої та дружньої сім’ї. Тут Ви навчатиметесь у колі однодумців, зможете обрати для себе різні напрями, братимете участь у різноманітних чемпіонатах, змаганнях,  виставах, концертах, урочистих заходах та конференціях.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комплекс інноваційної освіти для дітей "Release Education"	\N	/static/images/club/bg_2.png	#	\N	8	\N
46	2	18	10	46	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"IT-start - початковий комп'ютерний курс. Курс «IT-Start» дає школярам нові знання, які знадобляться їм у майбутньому. Заняття допоможуть дитині краще вчитися в школі і відчувати себе більш впевнено. Діти дізнаються, яку користь може приносити комп'ютер і як дотримуватися безпеки в інтернеті. А ще вони будуть розвивати свою пам'ять, увагу, концентрацію, інтелект, логічне та аналітичне мислення. На курсі школярі вивчатимуть шість предметів, за якими наприкінці навчального року здадуть підсумкові практичні роботи. Діти вчаться в невеликих групах під керівництвом досвідчених викладачів Академії Професій Майбутнього.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Курс «IT-Start» 	\N	/static/images/club/bg_2.png	#	\N	9	\N
47	12	16	10	47	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Як стати відеоблогером. Ретельно розроблений курс розрахований на підлітків у віці старше 12 років, які точно впевнені, чого вони хочуть, а значить, напевно зможуть домогтися успіху. А ми в цьому допоможемо:  відкриємо головні секрети відеоблогінга - як домогтися десятків тисяч підписників і мільйонів лайків; навчимо говорити так, щоб глядач не міг відірватися від відео; познайомимо з основними правилами того, як догодити вибагливій аудиторії Youtube; покажемо, як правильно реалізувати свій творчий потенціал і направити його в потрібне русло; підкажемо, як працювати у відповідності зі строгими правилами соціальних мереж; відкриємо секрети - як заробити на ютубі. Напевно, переглядаючи ролики своїх улюблених Ютуберов ти не раз задавався (-лась) питанням: звідки у них взялася ця популярність? Насправді, для багатьох відомих блогерів шлях розвитку каналу був довгим і нелегким. Він вимагав великої віддачі: аналізу контенту і аудиторії, відпрацювання мови, роботи зі світлом і камерою і багато іншого. Для тебе ця дорога може початися набагато простіше за допомогою наших досвідчених фахівців, які не з чуток знають свою справу!","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Як стати відеоблогером. Академія майбутнього	\N	/static/images/club/bg_2.png	#	\N	9	\N
48	12	16	10	48	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дизайн та розробка комп'ютерних ігор. В ході захоплюючих і пізнавальних занять курсу ''Дизайн і розробка комп'ютерних ігор'' наші викладачі - справжні професіонали, присвячують своїх учнів в секрети майстерності не тільки професії програміста, але і дизайнера.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дизайн та розробка комп'ютерних ігор	\N	/static/images/club/bg_2.png	#	\N	9	\N
54	6	16	\N	54	6::, 1::(048)454851, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний заклад початкової спеціалізованої освіти ''Мистецька школа № 8 м. Одеси''. Гуртки музичного, танцювального та художнього напрямків","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Мистецька школа № 8 м. Одеси	\N	/static/images/club/bg_2.png	#	\N	\N	\N
49	10	16	10	49	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Анімація та 3Д моделювання.Комп'ютерна графіка MAYA сьогодні дуже затребувана в кіно і телеіндустрії. Саме за допомогою системи MAYA знімаються фільми в 3D-форматі, що створює ілюзію безпосередньої присутності глядача в сюжеті. MAYA в перекладі з древнього санскриту так і перекладається - ілюзія. Хочете вміти створювати уявний простір, що межує з реальним? Приходьте до нас, на курси MAYA в Києві!","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Анімація та 3Д моделювання	\N	/static/images/club/bg_2.png	#	\N	9	\N
50	10	16	10	50	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Основи програмування на Python» розрахований на початківців, які тільки знайомляться з даними мовою програмування. Головним завданням курсу є ознайомлення учнів з основними темами даного мови програмування і його ключовими аспектами.  В процесі навчання весь матеріал підкріплюється і розглядається в ході вирішення практичних завдань. В кінці курсу учні презентують власні міні-проекти, робота над якими проходить протягом всього навчання.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Курс «Основи програмування на Python» 	\N	/static/images/club/bg_2.png	#	\N	9	\N
51	6	16	\N	51	6::https://www.kidbi.com.ua/, 1::9.81610101E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"За 6 років ми створили нове бачення освіти для підлітків в Україні і наша місія — створювати покоління за поколінням успішних і щасливих дітей.  Школа Програмування: вивчення основ конструювання та програмування, мови С++ та C#, онлайн та офлайн групи. Бізнес-школа: трирічний навчальний курс з розвитку лідерських навичок, фінансової грамотності, впевненості і харизми. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Школа лідерства і бізнесу KIDBI	\N	/static/images/club/bg_2.png	#	\N	\N	\N
52	0	16	11	52	6::http://artschool-turchak.kiev.ua/, 1::(044)4273229(044)3600106, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дитяча музична школа №18 (з 1995 року дитяча школа мистецтв ім. Стефана Турчака) відкрита в липні 1968 року на житловому масиві Сирець в Шевченківському районі м. Києва. З введенням в дію нового будинку школи з концертним залом на 240 місць, дитяча школа мистецтв ім. С.Турчака стала культурно-освітнім філармонічним центром міста і району. 22 концертних сезони – це більше 650 концертів для учнів, батьків та жителів району. Щорічно відбувалось 30-35 концертів провідних мистецьких колективів України, студентів Національної музичної академії ім.П.Чайковського, КДВМУ ім.Р.Глієра, КССМШ ім.М.Лисенко, Київського хореографічного училища, Коледжу естрадно-циркового мистецтва, Української академії танцю та ін. Сьогодні тут навчаються більше 480 учнів, які опановують мистецтво гри на музичних інструментах, навчаються вокалу, хореографії, живопису, театральному мистецтву. Активно працюють групи загально-естетичного виховання та підготовки до школи, в яких навчаються діти 3-6 років.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Київська дитяча школа мистецтв ім. Стефана Турчака	\N	/static/images/club/bg_2.png	#	\N	10	\N
53	4	16	\N	53	6::, 1::0482523363, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний позашкільний навчальний заклад ''Дитяча школа мистецтв №16 м.Одеси''. Гуртки музичного, танцювального та художнього напрямків","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитяча школа мистецтв №16 м.Одеси	\N	/static/images/club/bg_2.png	#	\N	\N	\N
55	4	16	\N	55	6::http://art-school-12.com/, 1::0487322633, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"КЗПСО ''Мистецька школа N12 м. Одеси''. Напрямки: музичний, вокальний, хореографічний, театральний, декоративно-ужитковий. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Мистецька школа N12 м. Одеси	\N	/static/images/club/bg_2.png	#	\N	\N	\N
56	4	16	\N	56	2::https://www.facebook.com/artschool9/, 1::0487223033, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний заклад початкової спеціалізованої освіти ''Мистецька школа № 9 м.Одеси''. Гуртки танцювального, музичного та художнього мистецтва. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Мистецька школа № 9 м.Одеси	\N	/static/images/club/bg_2.png	#	\N	\N	\N
57	6	16	\N	57	6::http://muzshkola11.com.ua/, 1::0487655291, 1::0487655442, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний заклад початкової спеціалізованої освіти ''Мистецька школа № 11 м.Одеса''. Контингент школи складає 366 учнів, що навчаються на 6 відділах: фортепіанному, струнно-смичкових інструментів, народному, естрадно-духовому, вокальному та теоретичному. Учні опановують мистецтво гри на фортепіано, скрипці, віолончелі, акордеоні, баяні, домрі, балалайці, гітарі, бандурі, флейті, кларнеті, саксофоні, ударних інструментах, синтезаторі; вивчають мистецтво вокалу, теорію та історію музики. Допомагають їм в цьому 45 викладачів, які мають відповідну професійну освіту.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Мистецька школа № 11 м.Одеса	\N	/static/images/club/bg_2.png	#	\N	\N	\N
58	4	16	\N	58	6::http://www.srvo.od.ua/school/sint_zoresvit/, 1::0487786202, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний позашкільний навчальний заклад «Одеський центр дитячої та юнацької творчості «Зоресвіт». В центрі навчається більш ніж 1500 дітей за напрямками: хореографічний, декоративно-ужитковий, образотворчий та гуманітарний. У закладі працюють лише висококваліфіковані викладачі. Заняття проводяться за зручним часовим графіком для дітей. Діяльність закладу спрямована на створення умов для реалізації творчого потенціалу кожної дитини, забезпечення рівного доступу дітей різних категорій і соціальних верств населення до здобуття якісної позашкільної освіти.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Одеський центр дитячої та юнацької творчості «Зоресвіт»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
59	4	16	\N	59	6::http://www.srvo.od.ua/school/sint_sigma/, 1::0487017275, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний позашкільний навчальний заклад «Одеська станція юних техніків «Сігма». У гуртках можуть займатися діти у віці від 5-ти до 18-ти років. Щорічно навчаються і здобувають додаткові знання, вміння і навички в роботі понад 900 дітей. Заняття в гуртках проводять досвідчені педагоги з багаторічним практичним стажем роботи. Щорічно проводяться семінари та майстер-класи для вихователів дитячих садків, вчителів початкових класів та батьків з питань організації і розвитку технічної творчості дітей. Філії станції юних техніків працюють на базі шкіл району: № 12, № 48, № 67, гімназія №7.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Одеська станція юних техніків «Сігма»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
60	4	16	\N	60	6::http://krvo.od.ua/school/lic_evrika/, 1::0487666841, 1::0487668485, 1::0482645202, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний позашкільний навчальний заклад ''Одеський центр дитячої та юнацької творчості «Еврика»''. Заклад відвідують 1447 дітей, які займаються  у 38 гуртках (97 груп) за напрямками: художньо-естетичний, еколого-натуралістичний, науково-технічний, військово-патріотичний,  гуманітарний, соціально-реабілітаційний. Гуртки закладу працюють не тільки  на базі Центру, але й в 7 загальноосвітніх закладах району, в центрі соціально-психологічної реабілітації дітей, в обласному Гуманітарному центрі позашкільної освіти.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Одеський центр дитячої та юнацької творчості «Еврика»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
61	4	16	\N	61	6::http://www.prvo.od.ua/school/lic_samocvit/, 1::0487221932, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний позашкільний навчальний заклад ''Одеський центр дитячої та юнацької творчості ''Самоцвіт'' Приморського району'' працює на площі 600 метрів у восьми робочих кабінетах, а також на базах шкіл. Це близько півсотні гуртків, в яких займаються 1785 дітей. Напрями центру - художньо-естетичний, туристсько-краєзнавчий, соціально-реабілітаційний і гуманітарний. У приміщенні дитячого центру постійно проходять виставки виробів з бісеру та глини, мереживні серветки, вишивки, малюнки учнів. А також протягом року силами центру організовані тематичні програми і концерти для дітей та дорослих.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Одеський центр дитячої та юнацької творчості “Самоцвіт”	\N	/static/images/club/bg_2.png	#	\N	\N	\N
62	2	18	12	62	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс призначений для наймолодших дослідників та дослідниць. На заняттях діти знаходять відповіді на всі свої запитання, вчаться поєднувати цеглинки LEGO Duplo та конструюють свої перші моделі. Вигадуючи веселі ігри із сконструйованими моделями, діти взаємодіють з однолітками, розвивають мовлення й дрібну моторику. А також набувають початкових уявлень про колір, величину, форму предметів.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Курс "Ранній розвиток" 	\N	/static/images/club/bg_2.png	#	\N	11	\N
63	4	16	12	63	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Наука про світ» створено для дітей, які активно пізнають світ, ставлять безмежну кількість запитань та хочуть все знати. Під час занять курсу учні та учениці отримують нові знання про природу, нашу планету, облаштування сучасного міста, розмаїття професій. Конструюють яскраві моделі з LEGO Systems, досліджують їх та навчаються граючи.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Наука про світ»  	\N	/static/images/club/bg_2.png	#	\N	11	\N
77	4	16	14	77	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"- заняття з єдиноборств на основі національних бойових традицій. Підготовка козаків-воїнів та спортсменів високої кваліфікації","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Гурток «Національний рукопаш» 	\N	/static/images/club/bg_2.png	#	\N	12	\N
64	4	16	12	64	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Програмування та англійська мова» допоможе маленьким дослідникам та дослідницям оволодіти початковими навичками англомовного спілкування за допомогою додатку Scratch Junior. Програма курсу розроблена для дітей, які тільки розпочинають вивчати іноземну мову. Засвоєння англійської мови відбувається одночасно із вивченням основ програмування у середовищі Scratch Junior. Діти закріплюють нові мовленнєві навички під час створення власних інтерактивних історій, ігор на планшеті, проектів у графічному редакторі.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Програмування та англійська мова» 	\N	/static/images/club/bg_2.png	#	\N	11	\N
65	5	6	12	65	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Цікава інженерія» (5-6 років) допоможе здійснити дитячу LEGO-мрію. Юні інженери та інженерки на заняттях дізнаватимуться про технічні винаходи людства та їх вплив на майбутнє. Зрозуміють походження і роботу технічних пристроїв, які нас оточують (фотоапарат, пароплав, розвідний міст, баштовий кран). Діти конструюватимуть, різні види транспорту, космічні апарати, будівлі і споруди, проводитимуть експерименти та робитимуть прості узагальнення.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Цікава інженерія» 	\N	/static/images/club/bg_2.png	#	\N	11	\N
66	5	7	12	66	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Підготовка до школи» (5-7 років) містить інтерактивні заняття з математики, логіки, комунікації, читання, підготовки руки до письма. Курс спрямований на полегшення адаптації дітей до шкільного навчання. З допомогою конструктора LEGO майбутні школярі та школярки знайомляться з буквами, вчаться рахувати, додавати та віднімати, розгадувати ребуси і кросворди. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	  «Підготовка до школи»	\N	/static/images/club/bg_2.png	#	\N	11	\N
67	5	7	12	67	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Початкова механіка» легко та цікаво допомагає зрозуміти юним дослідникам та дослідницям прості закономірності облаштування світу та знайомить із механізмами, які існують у реальному житті. Конструюючи прототипи механізмів з конструктора LEGO учні та учениці дізнаються про види механічного руху, типи передач, встановлюють зв’язки між причинами і наслідками щоденних явищ.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	 «Початкова механіка» 	\N	/static/images/club/bg_2.png	#	\N	11	\N
68	2	18	12	68	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Наш курс «Програмування зі SPIKE Prime» (3-4 клас) переконає, що програмувати не лише просто і цікаво, а й під силу кожному юному інноватору та інноваторці","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	 «Програмування зі SPIKE Prime»	\N	/static/images/club/bg_2.png	#	\N	11	\N
69	2	18	12	69	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"На заняттях курсу «Основи робототехніки» (1-2 клас) учні та учениці конструюють і програмують автономних роботів, вивчають їх різноманітність, створюють наукові проєкти, досліджують тваринний світ та дізнаються про новітні технології. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	 «Основи робототехніки»	\N	/static/images/club/bg_2.png	#	\N	11	\N
70	2	18	12	70	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Завдання курсу «Захоплююча математика. Рівень 1» (1 клас) – зацікавити першокласників та першокласниць вивченням математики та дати зрозуміти, що ця наука не нудна, а важлива та дуже цікава. Курс «Захоплююча математика» (рівень 2) 2-й клас;","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Захоплююча математика	\N	/static/images/club/bg_2.png	#	\N	11	\N
71	2	18	12	71	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Робототехніка Scratch» 2-3 клас;   ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Курс «Робототехніка Scratch» 	\N	/static/images/club/bg_2.png	#	\N	11	\N
72	8	16	12	72	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Архітектура» (рівень 1)  років;Курс «Архітектура» (рівень 2) 9-16 років; ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Курс «Архітектура»	\N	/static/images/club/bg_2.png	#	\N	11	\N
73	2	18	12	73	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Пізнаю світ з Minecraft: EE» 2-3 клас, Курс «Програмування з Minecraft: EE» 3-4 клас","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Курс «Пізнаю світ з Minecraft: EE», Курс «Програмування з Minecraft: EE»	\N	/static/images/club/bg_2.png	#	\N	11	\N
74	2	18	12	74	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Science» 4-5 клас","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Курс «Science»	\N	/static/images/club/bg_2.png	#	\N	11	\N
75	2	18	12	75	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":" Курс «Практична механіка» 3-й клас;","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	 Курс «Практична механіка»	\N	/static/images/club/bg_2.png	#	\N	11	\N
76	2	18	12	76	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Курс «Kid’s Project» (рівень 1) 2-3 клас; Курс «Kid’s project» (Рівень 2) 3-й клас;","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Курс «Kid’s Project»	\N	/static/images/club/bg_2.png	#	\N	11	\N
78	6	16	14	78	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"заняття з командами всеукраїнської дитячо-юнацької військово-патріотичної гри «Сокіл» («Джура»). Є системною формою військово -патріотичного виховання","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Гурток «Джура» 	\N	/static/images/club/bg_2.png	#	\N	12	\N
79	4	16	14	79	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"- заняття з олімпійського виду одноборств. Підготовка спортсменів міжнародного класу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Гурток "Тхеквондо" 	\N	/static/images/club/bg_2.png	#	\N	12	\N
80	4	16	14	80	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"- заняття зі спортивного єдиноборства, розвиток навичок самооборони без зброї. Підготовка спортсменів високої кваліфікації","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Гурток «Самбо» 	\N	/static/images/club/bg_2.png	#	\N	12	\N
81	4	16	14	81	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"заняття з контактного виду спортивного єдиноборства","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Гурток «Кікбоксинг» 	\N	/static/images/club/bg_2.png	#	\N	12	\N
82	4	16	14	82	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":" заняття з олімпійського виду спорту ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Гурток «Бокс» 	\N	/static/images/club/bg_2.png	#	\N	12	\N
83	4	16	14	83	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"комплексні заняття з використанням різноманітних видів силових вправ ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Гурток «Атлетична гімнастика»	\N	/static/images/club/bg_2.png	#	\N	12	\N
84	4	16	14	84	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"складно-координаційний вид спорту","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Акробатика» 	\N	/static/images/club/bg_2.png	#	\N	12	\N
85	4	16	14	85	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"заняття на гамаках, повітряному кільці. Розвиток гнучкості та координації  дітей ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Повітряна гімнастика» 	\N	/static/images/club/bg_2.png	#	\N	12	\N
86	4	16	14	86	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"заняття для дітей з особливими  фізичними потребами","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Оздоровча гімнастика» 	\N	/static/images/club/bg_2.png	#	\N	12	\N
87	4	16	14	87	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"комплекс занять направлені на збереження та зміцнення здоров’я","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	 комплекс занять направлені на збереження та зміцнення здоров’я	\N	/static/images/club/bg_2.png	#	\N	12	\N
88	4	16	14	88	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"комплексна система в якій поєднанні силові і танцювальні  вправи, функціональний тренінг  ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Аеробіка» 	\N	/static/images/club/bg_2.png	#	\N	12	\N
89	4	16	14	89	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"заняття з різних напрямів хореографії направлені на естетичний, фізичний та особистісний розвиток дитини ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Сучасна хореографія»	\N	/static/images/club/bg_2.png	#	\N	12	\N
90	4	16	14	90	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":" комплексна система самозахисту","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Рукопашний бій»	\N	/static/images/club/bg_2.png	#	\N	12	\N
91	4	16	\N	91	6::https://musicland.com.ua/, 1::0689124040, 1::0739124040, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Наша школа одна з небагатьох, в якій впроваджено повний цикл навчання, де можна не тільки навчитися грати й співати улюблені пісні, а й складати свої власні та грати їх в групі, виступаючи на концертах! Це й сольні виступи, концерти, участь у конкурсах та фестивалях, домашній звукозапис та аранжування своїх творів, онлайн заняття з улюбленими вчителями. Ми пропонуємо широкий вибір музичних інструментів та стилів: гітара (акустична, електро, бас, укулеле); клавіші (фортепіано, електропіаніно, синтезатор); вокал (академічний, естрадний, рок, екстрім, джаз); духові (саксофон, альт, труба); барабани (джембе, перкусія, ударна установка); струнні (скрипка, віолончель, альт). Якщо Ви не маєте власного інструменту, його для заняття у приміщенні школи надасть «Music Land». Наші викладачі – професіональні музиканти, які мають багатий досвід виступів на сцені, роботи в студіях, працюють за кращими методиками викладання. Вони мають фундаментальну фахову освіту ідобре знаються на сучасних напрямках в музиці: Pop, Rock, Soul, Funk, R & B, Jazz, електронна та альтернативна музика тощо. Всі працюють також в Online режимі та мають великий досвід проведення таких занять.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Music Land - музична школа для дітей і дорослих	\N	/static/images/club/bg_2.png	#	\N	\N	\N
97	12	16	\N	97	6::https://robocode.ua/, 1::0931706445, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Онлайн-школа RobocodeНавчання онлайн, яке дозволить познайомитися з веб-програмуванням, навчитися розробці ігор та ПЗ. Напрямки: робототехніка, розробка програмного забезпечення, розробка ігор, веб-програмування","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Школа робототехніки та програмування для дітей ROBOCODE	\N	/static/images/club/bg_2.png	#	\N	\N	\N
92	4	16	\N	92	6::https://dagi.kyiv.ua/, 1::6.33514223E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":" Ми - команда професіоналів з великим досвідом роботи. Ми знаємо і розуміємо потреби кожного, незалежно від віку та навичок. Ми розкриваємо таланти, крок за кроком розвиваємо музичні здібності. Ми пропонуємо уроки вокалу, гри на фортепіано та гри на гітарі, запис у студії. Ми готуємо наших вихованців до конкурсів, різноманітних фестивалів та концертів.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Музична студія DAGI	\N	/static/images/club/bg_2.png	#	\N	\N	\N
93	0	16	\N	93	6::http://js.kiev.ua/, 1::(044)517-69-97(044)517-61-88(044)517-82-79, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Відділення Школи: джазово-естрадне (джазово-естрадних інструментів, джазово-естрадного вокалу, бас-гітара, саксофон, синтезатор); академічне відділення (фортепіанний відділ, струнно-смичковий відділ (скрипка), духових та ударних інструментів (флейта, ударні, сопілка); відділення народних інструментів (баян, домра, бандура); хореографічне відділення (студія танцю ''Крила''); групи естетичного виховання (школа розвитку дитини ''Малятко'', дитячий театр пісні ''Нотки'', театральна студія мюзиклу «Окей», школа степу ''Status Tap''). ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Школа джазового та естрадного мистецтв	\N	/static/images/club/bg_2.png	#	\N	\N	\N
94	6	16	\N	94	6::https://cinema-kids.com.ua/, 1::0957852656, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Денний освітньо-розважальний проектний табір для дітей 8-14 р. на території кіностустудії FILM.UA. Мета табору - познайомити дітей з процесом кіновиробництва. Учасники Кіноканікул отримують можливість зняти свій власний фільм, взявши участь у всіх етапах знімального процесу: від написання сценарію до фінального монтажу.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Cinema Kids	\N	/static/images/club/bg_2.png	#	\N	\N	\N
95	6	16	\N	95	6::https://mbakids.ua/, 1::4.45996123096403E18, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Більше 7 років ми допомагаємо нашим учням відчути комфортну роль в бізнесі, визначитися з майбутньою професією і знайти своє місце в команді.  Кращі викладачі-практики з топових бізнес-шкіл і підприємств України допомагають дітям і підліткам натренувати свої soft skills, опанувати hard skills і пройти унікальний шлях саморозвитку в сфері підприємництва. Адаптовані для дітей MBA-програми формують у наших учнів комплексне розуміння бізнесу як процесу. А профорієнтаційне тестування в процесі навчання дозволяє поглянути на розвинуті навички і сховані таланти дітей та підлітків з нового, часом несподіваного боку. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	MBA Kids International	\N	/static/images/club/bg_2.png	#	\N	\N	\N
96	4	16	\N	96	6::http://center-kyl.com/, 1::0982140822, 1::0631427048, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Навчально-розвитковий центр ''Клуб успішних людей'' пропонує: вивчення іноземних мов для дітей та батьків; школу раннього розвитку для малят; розвиток творчих здібностей; мистецькі уроки та майстер-класи (пісочна анімація, живопис, кераміка). ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Навчально-розвитковий центр К.У.Л.	\N	/static/images/club/bg_2.png	#	\N	\N	\N
98	2	18	\N	98	2::https://www.facebook.com/bbrightpreschool, 1::0636687475, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Креативний Дитячий Простір ''B-Bright'' (Позняки-Осокорки) вчить дітей думати і надихає знати більше. Групи розвитку для дітей 3-7 років (повний та неповний день). У Просторі дитина буде: розвивати пам'ять і увагу, уявляти і мислити на заняттях з ейдетики та TRIZ; створювати перші шедеври на заняттях з живопису та кераміки, отримувати перші математичні уявлення, навички читання, знання про навколишній світ - на інтегрованих проектних заняттях; вчитися спілкуватися англійською мовою; розвивати гнучкість, спритність та вміння орієнтуватися в просторі на заняттях з ЛФК, гімнастики і нейрогімнастики; розширювати світогляд на заняттях з архітектури та програмування.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Креативний дитячий простір "b-Bright!"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
99	6	16	24	99	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"IT FUTURE SCHOOL – школа інформаційних технологій (ІТ школа) для дітей від 8 до 16 років, головною ідеєю якою є спрямування інтересу до комп’ютера та інформаційних технологій у правильне русло. Ми розробили послідовні програми навчання, починаючи з азів та закінчуючи професійними інструментами, які використовуються у всьому світі. Наші учні створюють власних роботів, мобільні ігри та додатки, веб-сайти, 2D графіку та анімацію, 3D дизайн у шоломі віртуальної реальності, 3D анімацію доповненої реальності тощо. Також ми розробили курс Кібербезпеки дітей в інтернеті та соцмережах. Навчання в нашій IT школі - це не нудна теорія, а максимум цікавої практики, створення власних проектів, які обмежені тільки фантазією вашої дитини. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	IT Future School	\N	/static/images/club/bg_2.png	#	\N	13	\N
100	4	16	28	100	6::http://www.dyvotsvit.com.ua/rus/left/decor, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Відділ декоративно-ужиткового та образотворчого мистецтва	\N	/static/images/club/bg_2.png	#	\N	14	\N
101	4	16	28	101	6::http://www.dyvotsvit.com.ua/rus/left/content1802, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Відділ хореографічного мистецтва	\N	/static/images/club/bg_2.png	#	\N	14	\N
102	4	16	28	102	6::http://www.dyvotsvit.com.ua/rus/left/painting, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	 Відділ художньої творчості	\N	/static/images/club/bg_2.png	#	\N	14	\N
103	4	16	28	103	6::http://www.dyvotsvit.com.ua/rus/left/content444, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	відділ туризму і спорту	\N	/static/images/club/bg_2.png	#	\N	14	\N
104	4	16	28	104	6::http://www.dyvotsvit.com.ua/rus/left/content618, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	гуманітарний відділ	\N	/static/images/club/bg_2.png	#	\N	14	\N
210	6	16	\N	226	6::https://sport.zp.ua/pages/duss-orbita, 1::0990907293, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Секції волейболу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ "Орбіта" з волейболу	\N	/static/images/club/bg_2.png	#	\N	\N	\N
105	0	16	\N	105	6::http://dk-darnica.kiev.ua/, 1::0445660605, 1::0445662068, 1::0445660705, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Палац культури „Дарниця” (в минулому Будинок культури залізничників Дарницького залізничного вузла м. Києва) був заснований 4-го квітня 1951 року на лівому березі, в Дарницькому районі м. Києва і збудований на кошти Південно-Західної залізниці архітектором В.Д.Єлізаровим. Заклад пропонує заняття у танцювальних, вокальних, інструментальних, циркових, спортивних (бойові мистецтва), фольклорних, образотворчих гуртках та вивчення англійської мови. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Палац культури "Дарниця"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
106	4	16	\N	106	6::http://kmcdr.kiev.ua/, 1::4.4564999304457498E18, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр пропонує заняття у: студії образотворчого та прикладного мистецтва  ''Палітра'', студії  декоративно-прикладного мистецтва  ''Інфанта'', студії східного танцю ''Рахат Лукум'', гуртку ''Основи хореографії'', гуртку вокального мистецтва ''МК-Студія''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Культурно-мистецький центр Дарницького району	\N	/static/images/club/bg_2.png	#	\N	\N	\N
107	4	16	\N	107	6::http://mus.art.co.ua/dytyacha-muzychna-shkola-21-mista-kyjeva/, 1::04456462130445608993, 1::0445640372, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дитячу музичну школу №21 було відкрито у 1971 році. Сьогодні у школі навчаються учні за фахом: фортепіано, синтезатор, скрипка, віолончель, гітара, бандура, домра, баян, акордеон, балалайка, кларнет, гобой, флейта, саксофон, ударні інструменти, вокал (академічний та естрадний). В школі діють учнівські колективи: хори молодших, середніх та старших класів, оркестр народних інструментів, ансамблі скрипалів та бандуристів, танцювальні та балетні групи ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитяча музична школа № 21 м.Києва	\N	/static/images/club/bg_2.png	#	\N	\N	\N
108	4	16	\N	108	2::https://www.facebook.com/dshm4/, 1::4.4562549404456402E18, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"ДШМ №4 Управління культури Дарницької районної в м.Києві державної адміністрації пропонує навчання музиці (фортепіанний відділ, вокальний відділ, відділ народних інструментів (домра, бандура, акордеон, баян, гітара, скрипка), хореографії (класичний танець); художньому мистецтву  ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитяча школа мистецтв №4 м.Києва	\N	/static/images/club/bg_2.png	#	\N	\N	\N
109	0	16	\N	109	2::https://www.facebook.com/DSHM2008, 1::0445648402, 1::0446548401, 1::0445648559, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дитяча школа мистецтв № 9 Дарницького району м. Києва існує 10 років. Викладацький склад налічує 30 викладачів. Навчається у школі понад 500 учнів. З метою підтримки та музично-естетичного розвитку дітей із соціально незахищених родин у школі безкоштовно навчаються 83 учні. Це переважно діти з малозабезпечених сімей, діти-сироти, діти-інваліди. У школі створено та успішно працюють три відділення: музичне, що складається з двох відділів (фортепіанного та відділу народних інструментів (гітара, скрипка, баян, акордеон), хореографічне та  художнє. До того ж,  учні школи мають можливість займатися англійською мовою, підготовкою до школи та відвідувати заняття груп раннього розвитку. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитяча школа мистецтв №9 м.Києва	\N	/static/images/club/bg_2.png	#	\N	\N	\N
110	4	16	\N	110	2::https://www.facebook.com/shkola11Kyiv, 1::0445665390, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Позашкільна мистецька освіта у сфері культури пропонує спеціальні предмети: малюнок, живопис, композиція, скульптура, історія мистецтв, предмет за вибором. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитяча художня школа №11 м.Києва	\N	/static/images/club/bg_2.png	#	\N	\N	\N
111	4	16	\N	111	6::http://cttm.inet.ua, 1::0930575480, 1::0506422920, 1::0445666006, 1::0445662187, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр технічної творчости та професійної орієнтації шкільної молоді Дарницького району має такі відділи: відділ початково технічного моделювання (“Моделювання та пошив одягу”, “Художнє випалювання на деревині”, “Юний моделіст”, ЗХК “Орігамі та паперопластика”, ЗХК “Паперова майстерня”, “Юний еколог”, ТО “Світлячок”, ТО “Бджілка”, ТО “Зіроньки”, ТО “АБВГДейка”, ТО “Талановита малеча”, “Арт-інтелект”, “Ліплення”, Дитяча творча студія “SMARTIK”) Науково-технічний відділ (“Основи Web-дизайну”,  “Основи сайтобудівництва”, Фізико-математична студія, Відеостудія “Веселка”, “Різьблення деревини”, “Комп`ютерна анімація”, “Програмування”,  “Авіамоделювання”, “Цікава математика”, “Електрорадіоконструювання”, “Стендове моделювання”, Відділ художньо-технічної творчості, художній колектив ТО “Берегиня”, художній колектив ТО “Світ іграшки”, художній колектив “М’яка іграшка”, “Декоративне мистецтво”, “Писанкарство”, “Дизайн одягу”, “Креативне рукоділля”, “Гончари”, “Вишивка стрічками”, “Образотворче мистецтво”, “Юний скульптор”), Гуманітарний відділ (“Майбутній журналіст”,  “Розмовляємо англійською”, “Англійська малюкам”, “SMART ENGLISH”, “Креативний інтелект”, “Логіка”, “Музична скарбничка”, “Театральний”). Центр працює 7 днів на тиждень з 9:00 до 20:00 . Режим роботи адміністрації: 9:00-18:00, заняття у гуртках проводяться згідно затвердженого розкладу з 13:00 до 20:00.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр технічної творчости та професійної орієнтації	\N	/static/images/club/bg_2.png	#	\N	\N	\N
112	0	11	29	112	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"музичні заняття для дітей віком від 6 місяців до 12 років, максимально зосереджені на гармонійному вокальному розвитку дитини та зануренню її у традиційну культуру.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Фольк-заняття	\N	/static/images/club/bg_2.png	#	\N	15	\N
113	0	11	29	113	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Діти можуть обрати інструмент на свій смак (сопілка, фортепіано, бубон чи цимбали) та займатися індивідуально чи в групах. Мотиваційними етапами у навчанні є концерти, на яких діти демонструють вивчене. Ми радо організовуємо колаборації юних музикантів та креативимо на кожному занятті.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Інструментальні заняття	\N	/static/images/club/bg_2.png	#	\N	15	\N
114	0	11	29	114	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заняття познайомлять дітей з історією нашого краю від початку існування цивілізації на території сучасної України і до сьогодення. Діти в ігровій формі вчаться вбачати взаємозв‘язки в історичних подіях, робити власні висновки та аналізувати. Цікаві факти та живий виклад матеріалу не дають учням занудьгувати.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Історія України	\N	/static/images/club/bg_2.png	#	\N	15	\N
115	6	16	\N	115	6::https://puls-ua.com, 1::38(044)486-31-40, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Спортивно-танцювальна студія, циркова студія, є заняття з акторської майстерності, вокалу, макіяжу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Ансамбль танцю "Пульс"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
116	6	16	\N	116	2::https://www.facebook.com/groups/487476604748610, 1::380677516583, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Тренування з ушу, кікбоксингу, участь у змаганнях","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Клуб "Кунь Лунь"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
117	0	16	\N	118	6::Www.meandmyschool.org.ua, 1::380661889975, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Надаємо сучасну підготовку до школи віком 3-6 років, якісні сертифіковані курси підвищення кваліфікації педагогів, освітні курси для батьків і молоді. Усі курси ведуться українською мовою.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Освітній центр для педагогів, батьків і ідітей «Я І МОЯ ШКОЛА»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
118	4	16	\N	119	6::www.melnichuk.kiev.ua, 2::www.instagram.com/melnichuk.kiev.ua/www.facebook.com/melnichuk.kiev.ua, 1::6.75106E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Ми викладаємо балет за авторськими програмами Ірини Мельничук окремо для кожної вікової групи. Підґрунтям для розробки навчальних курсів була система навчання початкових класів хореографічного училища за методикою Агріппіни Ваганової, що вважається найбільш професійною у сфері балетної педагогіки. Заняття здійснюються у світлих просторах, що є повноцінно обладнаними відповідно до потреб кожної вікової групи. Основними пріоритетами нашої викладацької практики є комфорт і здоров’я вихованців студії, тож ми принципово дотримуємось охайності, вентиляції та опалення наших приміщень. Балет зміцнює здоров’я, сприяє фізичному розвитку та здатності концентрувати увагу тривалий час, допомагає усвідомити потреби свого тіла і прищеплює навички планування. Балетна практика є лікувальною фізичною культурою (ЛФК) для очей та значно сприяє покращенню зору завдяки зміні його фокусу; забезпечує правильну поставу, ходу та підтримку м’язів, є профілактикою та лікуванням викривлення хребта. На відміну від танцювальних шкіл, що орієнтуються на велику кількість поширених танцювальних напрямів, Балетна студія Ірини Мельничук дає учням гарантію — навчитися танцювати через певний час. Після опанування базових технік танцю, наші вихованці з легкістю виступають на сцені як у сольному, так і в груповому форматах. І, безперечно, отримують за це нагороди — наші учні є лауреатами та дипломантами всеукраїнських і міжнародних конкурсів-фестивалів в Україні та за кордоном.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Балетна студія Ірини Мельничук	\N	/static/images/club/bg_2.png	#	\N	\N	\N
119	6	16	\N	120	2::https://m.facebook.com/kozaksportcentr/, 1::380677395468, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Виховуємо козаків воїнів, патріотів української землі. Тренування з Українського рукопашу ''Спас'', військово- патріотичне виховання, вивчення народних традицій.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Козацький спортивний центр "Спас Яр"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
120	6	16	31	121	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Відділення волейболу. Бази на яких проводяться тренувальні заняття:                                     КПНЗ ''МСДЮСШОР'' ДМР, КЗО ''СЗШ №1'' ДМР, КЗО ''СШ №31'' ДМР, КЗ ''ДФКС'' ДОР, КЗО ''НВК №122'' ДМР","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Відділення волейболу пляжного.	\N	/static/images/club/bg_2.png	#	\N	16	\N
121	6	16	31	122	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Відділення сучасного п'ятиборства. Бази на яких прводяться тренувальні заняття: КПНЗ ''МСДЮСШОР'' ДМР, КЗ ''ДФКС'' ДОР, КПНЗ ''СДЮСШОР з кінного спорту'' ДМР","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Відділення сучасного п'ятиборства.	\N	/static/images/club/bg_2.png	#	\N	16	\N
122	6	16	31	123	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Відділення тхеквондо. Бази на яких проводяться тренувальні заняття : КПНЗ ''МСДЮСШОР'' ДМР,  КЗО ''СЗШ № 112'' ДМР,  КЗО ''ССЗШ №126'' ДМР,  КЗО ''СЗШ № 88'' ДМР, КЗО '' СЗШ № 140'' ДМР, КЗО ''СЗШ №49'' ДМР,  КЗО ''СЗШ №94'' ДМР,  КЗО ''СЗШ №20'' ДМР,  КЗО ''НВК №138'' ДМР, ДДУ ''Днпровський гуманітарний універсітет'', КЗО ''ЛПВФП при УМСФ'' ДМР","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Відділення тхеквондо.	\N	/static/images/club/bg_2.png	#	\N	16	\N
123	0	16	\N	124	6::https://cvrdneprind.dnepredu.com/, 1::0567474843, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр охоплює до 30-ти гуртків в таких напрямках роботи: художньо-естетичний, соціально-реабілітаційний, гуманітарний, туристсько-краєзнавчий","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад "Центр позашкільної роботи №3" Дніпровської міської ради	\N	/static/images/club/bg_2.png	#	\N	\N	\N
124	4	16	\N	125	6::http://musicschool6.dp.ua/, 1::6.67389865E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Ціль навчання в музичній школі - створення умов для розвитку творчих, інтелектуальних здібностей учнів, підтримка талановитих та обдарованих дітей, надання можливостей реалізувати свої здібності на рівні міста, області, країни. В музичній школі для дітей створені чудові програми естетичного розвитку. З ними працюють досвідчені викладачі, які володіють сучасними методиками та які виховали не одне покоління професіоналів та любителів музики. Учні школи  виступають в кращих концертних залах міста Дніпропетровська, гастролюють по Україні та  за її межами.  Структура ДМШ №6 включає 6 відділень по спеціальностям: фортепіано; струнні інструменти (скрипка, віолончель); духові та  ударні інструменти (флейта, кларнет, труба, тромбон, туба, ударні інструменти); народні інструменті( баян, акордеон, домра, гітара); музично- теоретичний (теорія музики, сольфеджіо, музична література,  історія мистецтв, ритміка); підготовче відділення для всіх спеціальностей (діти 5-6 років). Крім навчання  по 14 спеціальностям, можливі також факультативні заняття вокалом. Учні школи відвідують  три оркестри, хори, ансамблі за різними напрямками, музичний театр.  В Дитячій музичній школі №6 імені В. І. Скуратовського поєднанні 2 рівня навчання: професійний та загальноестетичний. Загальна тривалість повного курса навчання становить 8 років та 6 років в залежності від віку. По закінченню 8-го (6-го) класу учні отримують свідоцтво державного зразка. Прийом у школу здійснюється за результатами конкурсного відбору. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дніпровська дитяча музична школа №6 імені В.І.Скуратовського	\N	/static/images/club/bg_2.png	#	\N	\N	\N
125	4	16	\N	126	2::https://www.facebook.com/%D0%9A%D0%B8%D1%97%D0%B2%D1%81%D1%8C%D0%BA%D0%B0-%D1%84%D0%B5%D0%B4%D0%B5%D1%80%D0%B0%D1%86%D1%96%D1%8F-%D0%A1%D0%BF%D0%B0%D1%81-444104875793230, 1::0939167234, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Бойовий Звичай Спас об’єднує Коло друзів, основною метою якого є виховання молоді на засадах козацького Звичаю і бойової традиції вільних воїнів-козаків.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Київська федерація "Спас". Аматорська спортивна команда	\N	/static/images/club/bg_2.png	#	\N	\N	\N
126	6	16	\N	128	6::http://kyivhopak.wix.com/hopakkyiv?fb_ref=Default, 1::0939939440, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Бойовий гопак — українське бойове мистецтво, відтворене на основі елементів традиційного козацького бою, що збереглися в народних танцях та власного досвіду дослідника бойових мистецтв львів'янина Володимира Пилата. Бойовий Гопак - це шлях українського лицаря -захисника свого народу, мови, звичаїв, обрядів, традицій, історії та української правди. У Бойовому Гопаку 7 рівнів майстерності, з них три учнівських: Жовтяк, Сокіл, Яструб; проміжний - Джура та три мистецькі: Козак, Характерник, Волхв.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Школа бойового гопака «ШАБЛЕЗУБ»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
127	0	16	\N	131	6::https://zs.zp.ua/, 1::0612268543, 1::0612268544, 1::0612268545, 1::0612268546, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Запорізький навчально-виховний комплекс “Запорізька Січ” військово-спортивного профілю Запорізької міської ради Запорізької області. З 2003 року комплекс є базовим навчальним закладом Головного управління ДСНС України в Запорізькій області. На базі комплексу працює обласне відділення Всеукраїнського громадського дитячого руху “Школа безпеки”. З 2007 року розпочалася співпраця із Всеукраїнською федерацією “СПАС” та засновано осередок “Спас Січ”. Ми спрямовуємо свою діяльність на формування активної громадянської позиції школярів та успішної самореалізації їх у життєвому просторі. Приміщення закладу освіти доступні для навчання дітей з особливими освітніми потребами за виключенням здобувачів освіти з порушенням опорно-рухового апарату для пересування яких необхідні пандуси та підйомники.  Головною метою дошкільного підрозділу є забезпечення реалізації права громадян на здобуття дошкільної освіти, задоволення потреб громадян у нагляді, догляді та оздоровленні дітей, створення умов для їх фізичного, розумового і духовного розвитку.  В дошкільному підрозділі комплексу надання освітніх послуг для дітей дошкільного віку безкоштовне.Приміщення підрозділу доступні для навчання дітей з особливими освітніми потребами за виключенням здобувачів освіти з порушенням опорно – рухового апарату для пересування яких необхідні пандуси, підйомники між поверхами. Позашкільний підрозділ охоплює напрямки: художньо-естетичний (Умілі руки, Художнє моделювання,  Берегиня, Спортивна хореографія), військово-патріотичний (Школа безпеки та Прикладна фізпідготовка), фізкультурно-спортивний (Аеробіка, Спортивні ігри, Східні єдиноборства, Спас, Академічне веслування).  ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Запорізький навчально-виховний комплекс  "Запорізька січ"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
128	4	16	\N	132	6::https://pnzbdyut3.wixsite.com/zavodskiy, 1::06127070462, 1::0974985202, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"ПНЗ «БДЮТ Заводського району» розташований в індустріальному районі міста Запоріжжя. Основна ідея діяльності закладу – створити творче середовище для компетентнісного розвитку кожного вихованця. З 2018–2019 н.р. у закладі працює 23 гуртки, 72 групи, навчається 1065 вихованців.  Заклад пристосований до потреб для осіб з інвалідністю. Пропонується навчання у гуртках таких напрямів: декоративно-ужиткового, хореографічного, екологічного, у вокальному ансамблі ''Маленька країна'', музичному ансамблі ''Срібний дзвін'', гуртку англійської мови, театральному колективі ''Синій птах'', гуртку ''Кмітливий технік''. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад "Будинок дитячої та юнацької творчості Заводського району" Запорізької міської ради Запорізької області	\N	/static/images/club/bg_2.png	#	\N	\N	\N
129	6	16	\N	134	6::http://www.ocntt.dp.ua/, 1::0567671886, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр пропонує позашкільне навчання на таких гуртках: Авіамоделювання, Автомоделювання, Ракетомоделювання, Ракетно-космічне моделювання, Судномоделювання, ''Юний хімік'', Оригамі, Юні фотоаматори, Прикладна економіка, Повітряні змії, Юний психолог, Робототехніка,Радіоконструювання, Астрономія, Інформаційні технології, Дизайн","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад  "Дніпропетровський обласний центр наукової–технічної творчості та інформаційних технологій учнівської молоді"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
130	4	16	\N	135	6::http://palats.dp.ua/, 1::0563708810, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр пропонує навчання на гуртках за такими напрямками: художньо-естетичний (хореографічний, музичний, вокальний, театральний, декоративно-ужитковий, образотворчий), фізкультурно-спортивний (оздоровчий), туристсько-краєзнавчий, науково-технічний (інформаційно-технічний, художньо-технічний), соціально-реабілітаційний, гуманітарний (мова та спілкування, суспільний) ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад "Палац творчості дітей та юнацтва" 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
131	6	16	\N	136	2::https://www.facebook.com/1modelisty/, 1::0678475399, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Позашкільна технічна освіта Дніпра. Дитячі технічні гуртки всіх профілів науково-технічного напряму позашкільної освіти.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад "Міська станція юних техніків"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
132	6	16	\N	137	6::https://www.hopak.com.ua/ua/category/cat_14/, 1::+38067254-51-52, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"вивчення технічних елементів козацького мистецтва бою ''Гопак'' та основ самозахисту","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Тренування з мистецтва бою "Гопак"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
133	4	16	\N	138	6::https://domyroom.com.ua/, 1::0977584450, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Науковий клуб для дітей, де ми знайомимося з законами і принципами фізики, хімії, біології, екології, з важливими фізичними процесами та хімічними речовинами і реакціями які оточують нас у житті. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	DoMyRoom	\N	/static/images/club/bg_2.png	#	\N	\N	\N
134	4	16	\N	139	6::\thttp://deticentr.zp.ua/, 1::0617010562, 1::0612397537, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"У 2020 — 2021 навчальному році у ПНЗ «ЦДЮТ Шевченківського району» навчається 1990 вихованець віком від 4 до 18 років. Всього в закладі працює 61 дитячий колектив та 130 навчальних груп. Напрямки: художньо-естетичний (гуртки «Перлина», «Вихиляс», «Едельвейс», «Дивосвіт'', «Секрет»,  «Гра», гурток сценічної майстерності, «Терниця», «Акцент», «Візерунок», ''Троянда», «FANCY», «IRIS», Оркестр народних інструментів, Фортепіано, Гітара, музичний гурт «СІНГЛ», «Чарівна сопілка», «СІ-ДЖЕМ-БЛЮЗ»); науково-технічний (авіамодельний гурток, гурток комп’ютерного дизайну «ГРАДІЄНТ»), гуманітарний («Краплинки», «Майстерня гри», гурток журналістики «Проба пера»), соціально-реабілітаційний (гурток лідерів дитячого самоврядування, «Психолог і Я»)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад "Центр дитячої та юнацької творчості Шевченківського району" Запорізької міської ради Запорізької області	\N	/static/images/club/bg_2.png	#	\N	\N	\N
135	4	16	\N	140	6::http://www.estetika-centr.in.ua, 1::0669658605, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує навчання за напрямками: художньо-естетичний, декоративно-прикладний, музична студія, соціально-реабілітаційний, гуманітарний, туристсько-краєзнавчий","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад "Центр естетичного виховання Хортицького району" Запорізької міської ради Запорізької області	\N	/static/images/club/bg_2.png	#	\N	\N	\N
136	0	16	\N	141	6::\thttp://tstv.at.ua, 1::0617644768, 1::0685821912, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує заняття в 34-х гуртках за напрямками: художньо-естетичний, фізкультурно-спортивний та оздоровчий, соціально-реабілітаційний, дослідницько-експериментальний","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	\tПозашкільний навчальний заклад "Центр творчості дітей та юнацтва Олександрівського району" Запорізької міської ради Запорізької області	\N	/static/images/club/bg_2.png	#	\N	\N	\N
137	6	16	\N	142	6::http://www.centrfenix.zp.ua, 1::0617699102, 1::0503222668, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує 3 гуртки (20 груп): класичний танець, акробатика та образотворче мистецтво. На базі закладу створено дитячий хореографічний колектив ''Народний театр сучасної хореографії Фенікс''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад «Центр по роботі з обдарованою молоддю на базі закладів освіти Шевченківського району» Запорізької міської ради Запорізької області	\N	/static/images/club/bg_2.png	#	\N	\N	\N
138	4	16	\N	143	6::botsad.zp.ua, 1::0617070181, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"У 2019-2020 н.р у закладі працюють 23 гуртки та творчі об’єднання за напрями: еколого-натуралістичний (учні формують, розвивають та засвоюють знання з природознавства, країнознавства, основ біології, зоології, екології та опановують практичними уміннями та навичками. Також, їх залучають до догляду за рослинами та тваринами, природоохоронної діяльності, формування екологічної культури та активізації пізнавальної активності); художньо-естетичний (на заняттях студій та творчих об’єднань учні самостійно складають план роботи над виробом, працюють з ескізами, кресленнями, поглиблюють й удосконалюють знання за розділами шкільних програм трудового навчання та образотворчого мистецтва. На заняттях гуртків та творчих об’єднань художньо-естетичного напряму вищого рівня вихованці опановують ускладнені методи й прийоми зображення форми, кольору, способи композиційного зображення площини, засвоюють головні теми: простір, об‘єм, колір, форма і закони композиції); та соціально-реабілітаційний (на заняттях вихованці вчаться створювати проекти та знаходити шляхи їх реалізації, оволодівають вміннями організовувати і планувати роботу будь-якого органу дитячого самоврядування, розвивають аналітичні та творчі здібності, критичне мислення, вчаться самостійно складати сценарії, проекти заходів, розподіляти доручення в учнівському колективі, співпрацювати з іншими організаціями, орієнтуватися в інформаційному матеріалі, опановують знання і практичні уміння у просторі сучасної медіа культури) ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад "Дитячий парк " Запорізький міський ботанічний сад" Запорізької міської ради Запорізької області	\N	/static/images/club/bg_2.png	#	\N	\N	\N
139	6	16	\N	144	6::https://school-djur.jimdofree.com/, 1::0612950072, 1::0660236160, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Запорізький центр козацького військово-патріотичного виховання «Школа джур» – це позашкільний навчальний заклад освіти, метою якого є відродження козацьких традицій, патріотичне виховання молоді, кваліфікована підготовка підлітків та юнаків до служби у Збройних Силах України. «Школа джур» має свої певні традиції, обряди, символи, внутрішній статут та єдині вимоги до вихованців. Кожна сотня для козацьких урочистостей має своє знамено, емблему, які виготовляють самотужки, спільними зусиллями дорослі і діти. Заклад пропонує такі гуртки: єдиноборства - ''Рукопаш'', тхеквондо, греко-римська боротьба, загальна фізична підготовка, основи туристичної підготовки, початкова військова підготовка, ''Козачата'', спортивні танці, основи долікарської допомоги, українське народознавство, відродження народних мистецьких традицій.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад "Запорізький центр козацького військово-патріотичного виховання "Школа Джур"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
140	6	16	\N	145	6::http://zapsut.wix.com/zapsut, 1::06127095370, 1::06127095370, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"ПНЗ ''СЮТ'' ЗМР ЗО пропонує навчання за напрямками: науково-технічний, художньо-естетичний, соціально-реабілітаційний, гуманітарний","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад "Станція юних техників" Запорізької міської ради Запорізької області	\N	/static/images/club/bg_2.png	#	\N	\N	\N
141	0	16	\N	146	6::https://dosugzp.jimdofree.com/, 1::0668588101, 1::0677004693, 1::0673862999, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує навчання у сорока гуртках за такими напрямками: художньо-естетичний, фізкультурно-спортивний, науково-технічний, соціально-реабілітаційний, туристсько-краєзнавчий, військово-патріотичний, гуманітарний, дослідницько-експериментальний, еколого-натуралістичний, дитяче самоврядування","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад "Центр дозвіллі дітей та юнацтва Вознесенівського району"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
142	4	16	\N	147	6::https://zposvita39.wixsite.com/m\nysite, 1::0612862666, 1::0612862666, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Це єдиний заклад позашкільної освіти на Правому березі м. Запоріжжя. Освітній процес у закладі організований за 5 напрямами позашкільної діяльності, а саме: художньо-естетичний, науково-технічний, фізкультурно-спортивний або спортивний, соціально-реабілітаційний, гуманітарний ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад "Центр дитячої та юнацької творчості Дніпровського району" Запорізької міської ради Запорізької області	\N	/static/images/club/bg_2.png	#	\N	\N	\N
143	4	16	\N	148	6::tp://dush1.edu.kh.ua/, 1::0577251833, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Спортивна школа пропонує заняття такими видами спорту: стрибки на акробатичній доріжці (ЗЗСО №№ 25,128 у        Московському р-ні міста), Стрибки на акробатичній доріжці (ЗЗСО №100        у Київському р-ні міста), Футбол (ЗНЗ №№ 17, 37, 55, 107,158,164, 166,172        у Київському та ЗЗСО № 51 у         Шевченківському р-ні міста), гімнастика художня (ЗЗСО №№ 16, 17, 36, 165,166        у Київському р-ні, ЗЗСО №№ 51,109 у        Шевченківському, ЗЗСО №№ 143        у Московському р-ні) Сумо (ЗЗСО №№ 127 у Новобаварському, КДЮСШ№7        у Немишлянському, ) Гандбол (ЗЗСО №№ 36,96,172 у Київському р-ні), вільна боротьба («Спортивний клуб ім.Синявського»        у Московському р-ні, спортивний клуб «Феромон» у        Київському р-ні), стрибки на батуті (КСК «Комунар» у        Київському р-ні)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Комплексна дитячо-юнацька спортивна школа № 1 Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
144	4	16	\N	149	6::http://kdush2.klasna.com, 1::0577251391, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"В КДЮСШ №2 культивуються такі види спорту: баскетбол, веслування на байдарках та каное, дзюдо, тхеквондо ВТФ, самбо, спортивні танці","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	"Комплексна дитячо-юнацька спортивна школа №2  Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
145	4	16	\N	150	6::http://cdut1.edu.kh.ua/, 1::0573368797, 1::0573367630, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр працює за такими напрямками: художньо-естетичний, науково-технічний, туристсько-краєзнавчий, фізкультурно-оздоровчий, гуманітарний, еколого-натуралістичний, соціально-реабілітаційний, дослідницько-експериментальний","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Центр дитячої та юнацької творчості № 1 Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
146	6	16	\N	151	6::http://dkum.edu.kh.ua/, 1::0577251532, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний заклад ''Харківський дитячо-юнацький клуб моряків Харківської міської ради'' існує в сухопутному місті Харкові вже 41 років (дата заснування 9 серпня 1978 року). У 54 навчальних групах навчається більше восьмисот курсантів. Працівники клубу навчають усіх курсантів плаванню, вмінню ходити на шлюпках під вітрилом і на веслах; проходять курсанти і стрілкову підготовку, юнаки професійно орієнтуються до служби в лавах військово-морського флоту. На береговій базі закладу в Журавлівському гідропарку (вул. Шевченко, 264) курсанти влітку мають можливість проходити практику на навчальному судні і одночасно оздоровлюватись. За час існування заклад підготував чимало спортсменів-розрядників,майстрів спорту та майстрів спорту міжнародного класу. Курсанти постійно беруть участь у різноманітних змаганнях від першості району до чемпіонатів України та посідають призові місця. Заклад пропонує: гуртки морського відділення, морський десант, підводний спорт, судомоделісти, краєзнавчий гурток, вокальний гурток, танцювальний гурток, англійська мова","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Харківський дитячо-юнацький клуб моряків Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
147	4	16	\N	152	6::http://ukraine-dance.com.ua, 1::0445924821, 1::0445924820, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дитячо-юнацька хореографічна студія імені Миколи Коломійця «Щасливе дитинство» — однопрофільний заклад позашкільної освіти художньо-естетичного спрямування. Основним напрямом освітньої діяльності закладу є вивчення українського народно-сценічного танцю, ознайомлення вихованців з кращими зразками світового мистецтва хореографії, оволодіння практичними уміннями та навичками у галузі танцювального мистецтва, організація змістовного дозвілля дітей та учнівської молоді Дніпровського району міста Києва. Студія налічує понад 1250 вихованців віком від 4 до 21 року, які відвідують такі гуртки: класичний танець, український танець, основи хореографії, ансамбль, сучасний танець, віртуозні рухи, історія українського костюма, історія хореографічного мистецтва","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитячо-юнацька хореографічна студія „Щасливе дитинство”	\N	/static/images/club/bg_2.png	#	\N	\N	\N
211	6	16	\N	227	6::https://sport.zp.ua/pages/duss-no-8, 1::0617208534, 1::0973969381, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Секції з шахів та шашок","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ № 8 (шахи, шашки)	\N	/static/images/club/bg_2.png	#	\N	\N	\N
148	4	16	\N	153	6::sut-cnttmkiev.webnode.com.ua, 1::0442231795, 1::0442231798, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Станція юних техніків - Центр науково-технічної творчості молоді - комплексний позашкільний навчальний заклад, що віднесений до найбільших позашкільних закладів освіти України.  Гордістю закладу є  Народні художні  колективи: ''Конструювання м'якої іграшки'', ''Чарівні візерунки'', ''Декоративно ужиткове і образотворче мистецтво ''Оранта'' і  Зразкові художні колективи: ''Ліпка із солоного тіста'', ''Бісер чарівний'', ''Керамічна майстерня: декор'' і ''Художня кераміка''. Гуртковою роботою охоплено близько 1300 вихованців, які навчаються в понад 90 гуртках за такими напрямами: науково-технічний, художньо-естетичний, еколого-натуралістичний, соціально-реабілітаційний. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Станція юних техніків – Центр науково-технічної творчості молоді	\N	/static/images/club/bg_2.png	#	\N	\N	\N
149	4	16	\N	154	6::http://dniprovskyi-cdut.edukit.kiev.ua/, 1::0445926241, 1::0445926240, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	 Центр дитячо-юнацької творчості	\N	/static/images/club/bg_2.png	#	\N	\N	\N
150	4	16	\N	155	6::zmina.com.ua, 1::0442924035, 1::0442924038, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"танці, хореографія, студія раннього розвитку, програмування, робототехніка, STEM, художня студія, мистецтво, дизайн, вокальна студія, музика, музичні інструменти, акторська майстерність, театр, розвивальні (розвиток лідерських якостей, підприємництво для підлітків тощо), журналістика, дитяче телебачення, монтаж відео, влогів, школа автограмоти, шахи, англійська мова","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад «Центр технічної і художньо-естетичної творчості для дітей та юнацтва «Зміна» м. Києва»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
151	4	16	\N	156	6::http://www.ortlyceum.kiev.ua/, 1::0443623650, 1::0443624140, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Навчально-виховний комплекс №141 «ОРТ» м.Києва – це заклад з поглибленим вивченням інформаційних технологій та іноземних мов. Заклад було відкрито у 2015 році. Цей масштабний соціальний проект був реалізований завдяки плідному співробітництву міської і районної влади та Всесвітнього ОРТ, який запропонував проект відновлення існуючої школи, надавши благодійну допомогу та перетворивши її в сучасний навчальний комплекс. Комплекс пропонує такі сучасні напрями спеціалізації як веб-дизайн, архітектурне та ландшафтне проектування, інформаційні технології в економіці та бізнесі, тривимірне проектування, програмування, робототехніка та мікроелектроніка дають можливість учням отримати найсучаснішу освіту в області технологій.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Навчально-виховний комплекс №141 «ОРТ»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
152	4	16	\N	157	6::https://score.palace.kiev.ua/, 1::0952126960, 1::0985092206, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр має такі напрями: гуманітарний, дослідницько-експериментальний, дошкільна освіта, еколого-натуралістичний, науково-технічний, соціально-реабілітаційний, спортивний, туристсько-краєзнавчий, художньо-естетичний. Пропонується навчання у відділах: відділ STEM-освіти, відділ художньої творчості, відділ соціальних ініціатив і партнерства, відділ народної творчості, відділ туризму, краєзнавства та спорту, відділ івент-менеджменту та арт-проектів, інформаційно-творче агентство «ЮН-ПРЕС», відділ біології, відділ PR-технологій та медіавиробництва, авіаційно-космічний центр, Центр розвитку дошкільнят “Джерельце''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Київський палац дітей та юнацтва 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
153	4	16	\N	158	6::https://samaracdtut.klasna.com/, 1::0567901092, 1::0567901091, 1::0667136759, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Колективи  КПНЗ «Центр дитячої та юнацької творчості» ДМР активно розвивають творчі здібності дітей за такими напрямами роботи: науково-технічний, дослідницько-експериментальний, художньо-естетичний, туристсько-краєзнавчий, соціально-реабілітаційний, гуманітарний, військово-патріотичний, еколого-натуралістичний.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад "Центр дитячої та юнацької творчості" ДМР	\N	/static/images/club/bg_2.png	#	\N	\N	\N
154	4	16	\N	160	6::http://gordiy.zp.ua, 1::0612364838, 1::0503415031, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Позашкільний навчальний заклад  «Міський Палац дитячої та юнацької творчості» занесений до Переліку найбільших навчальних закладів України за кількістю вихованців та за високими результатами навчально-виховної роботи. У 2019-2020 навчальному році у закладі 2 205 дітей здобувають позашкільну освіту у 63 гуртках, 147 групах за 8 напрямами діяльності. Художньо-естетичний напрям позашкільної освіти у закладі представлений такими жанрами: хореографічний (народний, бальний, естрадний), музичний, вокальний, цирковий, образотворчий, театральний, декоративно-ужитковий, модельно – театральний. Еколого-натуралістичний напрям представлений гуртками акваріумістів та натуралістів. Науково-технічний напрям представлений гуртками історичного моделювання, інформатики, аудіо – відео технології, «Журналістика та видавнича справа», гурток астрономії та лего – конструювання,  гуртком фотоаматорів «Образ». Дослідницько-експериментальний напрям включає до себе гурток «Квітникарі-аранжувальники». Фізкультурно-спортивний напрям представлений гуртками тайського боксу. Оздоровчий напрям – це гуртки фітнесу. Соціально-реабілітаційний напрям – це кулінарний гурток, Центр дитячих соціальних ініціатив. Гуманітарний напрям представлено гуртками іноземних мов, школами раннього розвитку дитини «Перші кроки»,  «Барвінок», «Логостимулон». Аматорські об’єднання «Палітра» та «Рампа» включають до себе  творчі колективи, які представлені гуртками художньо – естетичного напряму, в яких здобувають позашкільну освіту з дизайну, образотворчого, циркового, хореографічного, вокального, театрального та музичного мистецтва   вихованці віком від 5 до 18 років. Це: студія образотворчого мистецтва, «Народний художній колектив»; циркова студія «Арлекін», «Народний художній колектив»; ансамбль спортивного бального танцю «Фієста», «Народний художній колектив»; гурток авторської (бардівської пісні); гурток образотворчого мистецтва; гурток дизайну; гурток ударних інструментів; гурток «Мистецтво конферансу»; гурток «Організатори дозвілля», «Зразковий художній колектив»; Театр моди таланту та успіху; Талант – студія «Фріда»","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Позашкільний навчальний заклад "Міський Палац дитячої та юнацької творчості" Запорізької міської ради Запорізької області	\N	/static/images/club/bg_2.png	#	\N	\N	\N
155	6	16	\N	161	6::http://www.foxschool.com.ua/, 1::9.3579821E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"школа шитття для дітей та підлітків","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Лисиччина Школа	\N	/static/images/club/bg_2.png	#	\N	\N	\N
156	4	16	\N	162	6::http://cdut-frunzenskiy.edu.kh.ua, 1::0577251734, 1::0577117530, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує заняття у таких гуртках: підготовка до школи, авіамоделювання, ансамбль народного танцю ''Сонячне світло'', зразковий колектив ''Ансамбль танцю ''Ассоль'', виготовлення іграшок-сувенірів, вироби з бісеру, вокальний, дитячий театр ''Звичайне чудо'', карате, клуб спортивного танцю ''Міріданс'', моделювання верхнього легкого одягу, інформатика та обчислювальна техніка, початкове технічне моделювання, художня вишивка ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Центр дитячої та юнацької творчості №6 Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
157	6	16	\N	163	6::http://dush16.kh.sch.in.ua, 1::0577251736, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Спортивна школа пропонує заняття з боксу, спортивної та художньої гімнастики, футболу, тхеквондо, гирьового спорту ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Комплексна дитячо-юнацька спортивна школа № 16 Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
158	4	16	\N	164	6::http://vektor.klasna.com/, 1::0577251857, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр пропонує заняття у гуртках: авіамоделювання, початкове технічне моделювання, моделювання іграшок-сувенірів, образотворче мистецтво, технічний дизайн, декоративно-ужиткове мистецтво, інформатика та обчислювальна техніка, комплексний розвиток дитини, Ерудит.         ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр позашкільної освіти "ВЕКТОР" Харківської міської ради	\N	/static/images/club/bg_2.png	#	\N	\N	\N
235	4	16	42	258	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Екологічний відео лекторій","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Екологічний відео лекторій	\N	/static/images/club/bg_2.png	#	\N	20	\N
159	6	16	\N	165	6::https://school_art.klasna.com/, 1::0577251838, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"В 27 навчальних групах  закладу займаються 622 учні. З них 21 група – дослідно–експериментального профілю та 6 груп художньо-естетичного.          У школі працює 27 педагогів, з яких 4 мають звання «керівник гуртка – методист»,  6 кандидатів наук. Діяльність школи базується на особистісно – орієнтованому підході, який передбачає співавторство всіх учасників навчально-виховного процесу. В закладі діють Школа майбутніх вчених та Школа культури. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Школа мистецтв Харківської міської ради	\N	/static/images/club/bg_2.png	#	\N	\N	\N
160	6	16	\N	166	6::https://greencountry.com.ua, 1::8.00758979E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Мережа шкіл англійської мови для дітей, навчання за концепцією ''Перевернутий Урок'', унікальна система мотивація учнів (шкільна валюта та крамничка), власна освітня платформа. Поза англійською використовується лише українська мова.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Грін Кантрі	\N	/static/images/club/bg_2.png	#	\N	\N	\N
161	6	16	\N	176	6::http://www.uacenter.info/, 1::0445293455, 1::0445293118, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний позашкільний навчальний заклад «Київський центр дитячо-юнацького туризму, краєзнавства та військово-патріотичного виховання» - профільний позашкільний навчальний заклад, основними напрямами діяльності якого є національно-патріотичний та туристсько-краєзнавчий, що передбачають активну діяльність з виховання патріотизму підростаючого покоління, вивчення історії рідного краю та довкілля, географічних, етнографічних, історичних об’єктів і явищ соціального життя, оволодіння практичними уміннями та навичками зі спортивного туризму та краєзнавства, організацію змістовного дозвілля учнівської молоді.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Київський центр дитячо-юнацького туризму, краєзнавства та військово-патріотичного виховання	\N	/static/images/club/bg_2.png	#	\N	\N	\N
162	4	16	\N	177	6::http://bdutgolosievo.inet.ua/, 1::0445251544, 1::0445255554, 1::0445253345, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Будинок дитячої та юнацької творчості Голосіївського району міста Києва - державний комплексний багатопрофільний навчальний заклад, віднесений до найбільшого позашкільного навчального закладу України. Естрадний вокал, хорове мистецтво, бальний та народний танець, спортивний рок-н-рол, гра на музичних інструментах, інтелектуальна та технічна творчість, образотворче та декоративно-прикладне мистецтво у всіх його проявах - все це гармонійно живе під дахом нашого дому творчості, який об`єднав понад 100 гуртків різних напрямків, більше 2500 дітей та 80 педагогів. Усі гуртки поєднані в 3 тематичні (хореографії та вокально-інструментального мистецтва; декоративно-прикладного мистецтва та технічної творчості; туристсько-краєзнавчого напряму, гуманітарного навчання та інтелектуальної творчості) відділи, роботу БДЮТ забезпечують відділ організаційно-масової та методичної роботи.    ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Будинок дитячої та юнацької творчості	\N	/static/images/club/bg_2.png	#	\N	\N	\N
163	4	16	\N	178	6::https://cdut-dar.kiev.ua/, 1::0443333333, 1::0637181974, 1::0634154496, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує навчання за такими напрямками: туристсько-краєзнавчий відділ (туризм), науково-технічний відділ (тут завжди чекають на небайдужих до національної культури, традиційних ремесел, на тих, хто прагне доторкнутися до витоків, до багатого і таємничого духовного світу наших предків), художньо-естетичний відділ (хореографічний та вокальний, театральний та інструментальний напрями)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр дитячої та юнацької творчості Дарницького району м. Києва	\N	/static/images/club/bg_2.png	#	\N	\N	\N
164	4	16	\N	179	6::https://cdutdesn.kiev.ua/, 1::0445132228, 1::0445132249, 1::0445472796, 1::0445136431, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр дитячої та юнацької творчості (ЦДЮТ) Деснянського району – заклад освіти комунальної форми власності. В закладі працює близько 100 педагогів і 30 технічних та допоміжних працівників. Середня наповнюваність груп (гуртків) становить 10-15 вихованців. В гуртках ЦДЮТ щороку навчаються близько 3 000 дітей. Гуртки та колективи (Лісовий): дівочий танцювальний ансамбль «Слов’яночка», танцювальний ансамбль «Маргаритка», «Англійська мова», «Веселка знань», інструментальний ансамбль «Гармонія», «Моя чарівна лялька», «Оригамі», «Різьблення по дереву», ліплення «Дивоколо», народного співу «Десняночка», студія образотворчого мистецтва «Мальви», танцювальний ансамбль «VізеруноК», хоровий гурток «Струмочок», «Умілі руки». Гуртки та колективи (Троєщина): ансамбль танцю «Радосинь», ансамбль танцю «Росинка», арт-студія  «Мальовничий Коктейль», вокальна студія «Елегія», вокальний ансамбль «Viva la Voce», «Домашній майстер», «Креативна майстерня», «Основи робототехніки», «Радіоелектронне конструювання», «Чарівна глина», студія танцю «КаприZ», виготовлення сувенірів та іграшок «Ладонька», гурток образотворчого мистецтва «Акварель», спортивний гурток «Український рукопаш «Спас», спортивний гурток «Художня гімнастика», спортивно-хореографічний ансамбль «Серпантин», студія «АРТ ФОКС», студія писанкарства «Світанок України», театральна студія «Момпансьє»,  гурток «Рукоділля»","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр дитячої та юнацької творчості Деснянського району міста Києва	\N	/static/images/club/bg_2.png	#	\N	\N	\N
165	6	16	\N	181	2::https://www.facebook.com/shkolamuzhnosti, 1::0939814196, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує виховання дітей та підлітків за військово-патріотичним та фізкультурно-спортивним напрямками","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Клуб військовопатріотичного виховання «Школа мужності»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
166	4	16	\N	182	2::https://www.facebook.com/%D0%A6%D0%B5%D0%BD%D1%82%D1%80-%D0%92%D1%96%D0%B9%D1%81%D1%8C%D0%BA%D0%BE%D0%B2%D0%BE-%D0%BF%D0%B0%D1%82%D1%80%D1%96%D0%BE%D1%82%D0%B8%D1%87%D0%BD%D0%BE%D0%B3%D0%BE-%D1%82%D0%B0-%D1%84%D1%96%D0%B7%D0%B8%D1%87%D0%BD%D0%BE%D0%B3%D0%BE-%D0%B2%D0%B8%D1%85%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8F-%D0%84%D0%B4%D0%BD%D1%96%D1%81%D1%82%D1%8C-108454297310840, 1::0444112600, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує виховання дітей та підлітків за військово-патріотичним та  фізкультурно-спортивним напрямками","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр Військово-патріотичного та фізичного виховання " Єдність"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
167	0	16	\N	183	6::http://sfera.org.ua/, 1::0444120682, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр науково-технічної творчості молоді “Сфера” запрошує вихованців на навчання до більш ніж 60 гуртків за наступними напрямами: спортивно-технічний напрям (авіамодельний гурток, модельно-конструкторський гурток, автомодельний гурток, картинг, судномодельний гурток, лего-робототехніка, лего-конструювання, військовий патріотичний хортинг); науково-технічний напрям (радіоелектроніка, радіоконструювання, робототехніка, електроніка, астрономія, основи психології, психологія, юний винахідник, математика, хімія для допитливих, відеозйомка та монтаж); навчально-виробничий напрям (автоконструювання, різьблення по дереву, столяр-конструктор, художня обробка деревини, конструювання одягу та аксесуарів, перукар, англійська мова, фото, валяння вовни); Інформаційні технології (основи програмування для дітей 10 років, основи Web-програмування, основи програмування C#, розробка проектів на Visual Basic, програмування на Python); Художньо-естетичний напрям (образотворче мистецтво, основи художнього мистецтва, бісероплетіння, виготовлення іграшки, виготовлення сувенірів, бально-спортивні танці, вокальний ансамбль, народна творчість);   Початково-технічне моделювання (це перші кроки дитини до пізнання і розуміння світу техніки, спроби її власної творчої діяльності); Ранній розвиток дитини (гурток раннього розвитку дитини 4-5 років, гурток раннього розвитку дитини 5-6 років)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр науковотехнічної творчості молоді «Сфера»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
168	4	16	\N	184	6::https://www.pdu-pechersk.com/, 1::0442351133, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Палац дітей та юнацтва -це 60 гуртків, 140 навчальних груп, 2 тисячі вихованців, 76 висококваліфікованих педагогів. Заклад пропонує такі гуртки: хореографічні і вокальні, театр моди та художні студії, гуртки гончарства та кераміки, малювання та паперопластика, плетіння з бісеру та лялькарство, декоративно-ужиткове мистецтво, спортивне орієнтування, школа лідерства та школа юних журналістів. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Палац дітей та юнацтва Печерського району м. Києва	\N	/static/images/club/bg_2.png	#	\N	\N	\N
169	4	16	\N	185	6::http://art-pechersk.com, 1::0445296298, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр «АРТ» Печерського району - позашкільний заклад, який об’єднує Активних, Розумних, Талановитих гуртківців та впроваджує компетентісний підхід до формування змісту та організації навчального процесу. Центр пропонує навчання в гуртках: театральний гурток ''Орфей'',  гурток образотворчого мистецтва ''Барви'', гурток петриківського розпису ''Казковий світ'', гурток ліплення ''Мініатюрна скульптура'', гурток спортивного туризму, народний художній колектив ансамбль бандуристів ''Мальви'', народний художній колектив дитячий хор ''Веснянка'', народний художній колектив спортивно-бального танцю ''Унісон'', гурток військово-патріотичної пісні, вокальний гурток ''Фортуна''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр "Арт" печерського району міста Києва	\N	/static/images/club/bg_2.png	#	\N	\N	\N
170	4	16	\N	186	6::http://dom-na-podole.kiev.ua/, 1::0961887022, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Будинок дитячої творчості Подільського району м. Києва - це багатопрофільний заклад позашкільної освіти, який працює та виховує творчу молодь понад 70 років. Нас відвідують 1500 дітей.  Знаходиться заклад в історичній частині міста поруч з мальовничим Андріївським узвозом. Серед навчально-виховних програм основними  у Будинку дитячої творчості є художньо-естетичний, декоративно-прикладний, спортивно-технічний і гуманітарний напрями.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Будинок дитячої творчості	\N	/static/images/club/bg_2.png	#	\N	\N	\N
171	4	16	35	187	6::http://zernyatko.com/, 1::0444344166, 1::0672324579, 1::0673232441, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Від самого заснування „Зернятко” товаришувало та плідно співпрацювало з композитором та автором дитячих пісень Аллою Мігай, діти ансамблю ''Зернятко'' були постійним учасниками зйомок Вечірньої казки на Першому національному каналі протягом більше 10 років. Солісти ансамблю „Зернятко” – лауреати  дитячого кіно-фестивалю ''Золоте курча'' (1996, 1998). У 2000, 2002 та 2006 роках ''Зернятко'' здобуло перемогу у Київському огляді колективів народної творчості, у 2008 колектив підтвердив звання зразкового вокально-хореографічного ансамблю. Ансамбль „Зернятко” – постійний учасник звітних концертів Києва як представник Подільського району столиці; концертів, присвячених святу Різдва та Нового року, дням Києва та Незалежності України; концертів, присвячених дням Захисту дітей, Конституції, та багатьох інших мистецьких подій на головних концертних майданчиках столиці та України в цілому. Ансамбль „Зернятко” постійно співпрацює з Народною артисткою України Ніною Матвієнко, з фестивалем “Мелодія двох сердець” подружжя Білоножків, з молодою талановитою художницею Марією Ковалевською.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Будинок дітей та юнацтва «Вітряні гори» (Зернятко)	\N	/static/images/club/bg_2.png	#	\N	17	\N
172	4	16	36	188	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Ансамбль створено 1999 року. Навчальну програму побудовано на народній, сучасній хореографії та зразках українського академічного танцю. Під час концерту на сцені розгортається справжня феєрія танцювального мистецтва, де і любов до рідної землі, і краса почуттів, і нескореність народного духу.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Народний художній колектив, хореографічний ансамбль «Волошки».	\N	/static/images/club/bg_2.png	#	\N	18	\N
173	4	16	36	189	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Профіль навчання:  Академічний, народний, естрадний вокал; Хоровий спів; Теорія музики; Акторська майстерність; Сценічний рух. Для дітей віком від 4 до 12 років.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Зразковий художній колектив вокально-хорова студія "Диво калинове".	\N	/static/images/club/bg_2.png	#	\N	18	\N
174	4	17	36	190	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"ТО ''Творчість'' засновано у 2000 році. Програма навчання гуртка малювання ''Творчість'' складається з трьох рівнів, а саме: початковий, основний та вищий.  Початковий рівень навчання (діти віком від 8-10 років) передбачає розвиток творчих здібностей в образотворчому мистецтві.  Основний рівень (діти віком від 10-14 років) передбачає оволодінням знаннями академічного малюнку, живопису та станкової композиціїї (Заняття з композиції, малювання з натури, за темами, ознайомлення з різними художніми техніками тощо).  Вищий рівень навчання (діти віком від 14-17 років) передбачає удосконалення набутих знань та вмінь на основному рівні через ускладнення завдань в академічному малюнку та живопису а також виконанням творчих композицій.  Діти, які мріють в майбутньому обрати професію пов'язану з художньою творчістю, можуть отримати тут знання, навички та кваліфіковану допомогу.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Творче об'єднання образотворчого мистецтва "Творчість".	\N	/static/images/club/bg_2.png	#	\N	18	\N
175	4	17	36	191	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":" Діти оволодівають унікальним японським мистецтвом оригамі. Оригамі розвиває дрібну м'язову моторику пальців, стимулює творчість, креатив, терпіння та впевненість в собі. Оригамі – потужний стимул розвитку інтелекту, пам'яті, фантазії, формування естетичного смаку, умінню логічно мислити.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Народний художній колектив ТО "Журавлик".	\N	/static/images/club/bg_2.png	#	\N	18	\N
176	4	17	36	192	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гурток «Петриківочка» запрошує усіх бажаючих, віком від 7 до 16 років, познайомитися та навчитися майстерності петриківського розпису   ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Гурток «Петриківочка»	\N	/static/images/club/bg_2.png	#	\N	18	\N
177	4	17	36	193	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гурток почав свою роботу в 2003 році під керівництвом молодого тренера Людмили Валеріївни. За ці роки не одне покоління гуртківців пройшло школу туризму. Були багато відкриттів і перемог, незабутніх вражень і неповторних моментів.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Гурток спортивного туризму "ВЕРШИНА" 	\N	/static/images/club/bg_2.png	#	\N	18	\N
178	4	17	36	194	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Навчання відбувається за комплексною програмою, сприяє вихованню естетисної культури, працелюбності учнів, розширенню їх кругозору, здатності сприймати і відчувати прекрасне, також навчає різноманітному рукоділлю: художнє моделювання одягу; декоративне вишивання бісером; естетика костюму; дизайн одягу і аксесуарів; в’язання гачком та спицями; експеременти з формою, кольором, фактурою.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Креативне рукоділля	\N	/static/images/club/bg_2.png	#	\N	18	\N
234	4	16	42	257	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Любителі декоративних та свійських тварин","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Любителі декоративних та свійських тварин	\N	/static/images/club/bg_2.png	#	\N	20	\N
179	4	17	36	195	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":" Творче об'єднання працює з 2001р. за напрямком м'яка іграшка. М'яка іграшка - це один з видів декоративно-ужиткового мистецтва, в якому поєднані різні елементи рукоділля. В програму гуртка входить виготовлення іграшок з тканини та штучного хутра, виготовлення сувенірів та картин.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Майстерня "Забава". Виготовлення іграшок.	\N	/static/images/club/bg_2.png	#	\N	18	\N
180	2	18	36	196	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Цей гурток для дітей дошкільного та молодшого шкільного віку від 5 до 10 років.  На заняттях діти роблять перші кроки в самостійній творчій діяльності по створенню різноманітних моделей, іграшок, саморобок.  Програма зумовлює розвиток творчих здібностей, уяви, фантазії, конструктивного мислення.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Початкове технічне моделювання «Паперовий діамант». 	\N	/static/images/club/bg_2.png	#	\N	18	\N
181	4	17	36	197	6::http://cprs.kiev.ua/, 2::https://www.facebook.com/cprs.kiev, 1::0444051066, 1::0444500679, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Метою гуртка на основному рівні навчання є удосконалення мовного апарату та емоційної виразності дитини, оволодіння сценічним рухом, ознайомлення гуртківців з основними жанрами театрального мистецтва. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Зразковий художній колектив театральна студія "Експромт"	\N	/static/images/club/bg_2.png	#	\N	18	\N
182	4	16	37	198	6::https://ctdu-kiev.com.ua/, 1::0444008614, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр творчості дітей та юнацтва – багатопрофільний навчальний заклад, що є складовою частиною системи освіти Святошинського району м. Києва.  В центрі працює 32 гуртки під керівництвом 49 педагогів. Гуртки ЦТДЮ працюють за напрямками: науково-технічним; вокально-хореографічним; декоративно-прикладного та образотворчого мистецтва; театральним; спортивним і студія розвитку “Дошколярик”. Пошукова діяльність, допрофільна та профільна підготовка вихованців ведеться на базі майстерень – слюсарної та столярної, 2 художніх майстерень та 3 лабораторій – авіамодельної, судномодельної та фотолабораторії. У Центрі працюють 8 навчальних кабінетів, 3 хореографічні зали а також виставкова зала. Пріоритетні напрямки розвитку закладу: розробка та реалізація інноваційної моделі навчально-виховної діяльності закладу; впровадження у навчально-виховний процес інклюзивної освіти та технологій роботи з обдарованими дітьми; упровадження інформаційних технологій у діяльність позашкільного навчального закладу.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр творчості дітей та юнацтва	\N	/static/images/club/bg_2.png	#	\N	19	\N
183	0	11	\N	199	6::-, 1::0444513564, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"В Центрі дозвілля для дітей працюють гуртки: «Підготовка до школи», Здоров''я і спорт», «Хореографія», «Світ мистецтва», «Риторика», «Веселі нотки», «Світ кераміки», «Цікава англійська», «Гітарне мистецтво». Для проведення занять в гуртках наявні дидактичні та наочні матеріали, аудіо та відео техніка, спортивний інвентар, встановлено шведську стінку, тощо. Оформлений зал їдальні для проведення свят. Мережа гуртків з кожним роком розширюється.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр дозвілля для дітей Святошинського району	\N	/static/images/club/bg_2.png	#	\N	\N	\N
184	4	16	\N	200	6::cdut.kiev.ua, 1::0444554933, 1::0444553977, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр пропонує навчання в гуртках: художньо-естетичний відділ (шоу-група «АЛЬТАНА», народний художній колектив ансамбль спортивного бального танцю «Аматор-спорт-данс», спортивно-хореографічний гурток «ГРЕЙС», народний художній колектив циркова студія «АРЕНА», ансамбль народних інструментів «СРІБНІ СТРУНИ», народний художній колектив ансамбль  сучасного та стилізованого танцю «ПЕКТОРАЛЬ», народний художній колектив естрадно-драматичний театр-студія «МАНДАРІН», народний художній колектив студія музичного мистецтва естради «КРОК», народний художній колектив вокальний ансамбль «ЛАСТІВКА», зразковий художній колектив хор «КАМЕРТОН», гурток «КАРАТЕ», народний художній колектив хореографічний колектив «ЧИСТІ РОСИ», народний художній колектив ансамбль народних інструментів та української пісні «ЧОРНОБРИВЦІ», зразковий художній колектив спортивного та сучасного танцю «ШАНС»,  «ПЕРЛИНА» ансамбль класичного танцю, гурток народної пісні «БОЖЕДАРИ», гурток «ЛАД», декоративно-ужитковий відділ, гурток «ПРАКТИЧНИЙ  ІНТЕЛЕКТ», народний художній колектив «КАЗКОВИЙ СВІТ», гурток«БІСЕРОПЛЕТІННЯ», народний художній колектив «ЧАРІВНА СКРИНЯ», зразковий художній колектив «КУМАНЕЦЬ», туристично-краєзнавчий та спортивний відділи, туристсько-краєзнавчий напрямок, лінгвістичний та гуманітарний відділ, гурток «Англійська мова», г урток «ЖУРНАЛІСТ» гурток «Польська мова», гуртки раннього творчого розвитку «ПИЛИПОК», інформаційно-технічний відділ, Центр Інформаційних Технологій, студія кіно, анімації та медіамистецтв «DIY-media», відділ організації дозвілля ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр дитячої та юнацької творчості	\N	/static/images/club/bg_2.png	#	\N	\N	\N
185	4	16	\N	201	2::https://www.facebook.com/%D0%9F%D0%B0%D0%BB%D0%B0%D1%86-%D0%B4%D0%B8%D1%82%D1%8F%D1%87%D0%BE%D1%97-%D1%82%D0%B0-%D1%8E%D0%BD%D0%B0%D1%86%D1%8C%D0%BA%D0%BE%D1%97-%D1%82%D0%B2%D0%BE%D1%80%D1%87%D0%BE%D1%81%D1%82%D1%96-%D0%A1%D0%BE%D0%BB%D0%BE%D0%BC%D1%8F%D0%BD%D1%81%D1%8C%D0%BA%D0%BE%D0%B3%D0%BE-%D1%80%D0%B0%D0%B9%D0%BE%D0%BD%D1%83-%D0%BC-%D0%9A%D0%B8%D1%94%D0%B2%D0%B0-104208614379939, 1::0442484044, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр пропонує навчання за напрямками: художньо-естетичний; науково-технічний; еколого-натуралістичний; туристсько-краєзнавчий; фізкультурно-спортивний; гуманітарний","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Палац дитячої та юнацької творчості	\N	/static/images/club/bg_2.png	#	\N	\N	\N
186	6	16	\N	202	6::http://www.nvk-dpttm.kiev.sch.in.ua/, 1::0442426220, 1::0442424847, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"В Навчально-виховному комплексі допрофесійної підготовки та технічної творчості молоді м. Києва (надалі НВК) створені навчальні майстерні слюсарної, токарної, швейної справи, початкового технічного моделювання, інформатики, стендового, авіа-, авто-, судномоделювання, обробки деревини, радіоконструювання, фото, анімаційна студія, студія звукозапису та спортивно-технічний клуб картингістів. З метою фізичного розвитку вихованців обладнано зал для роботи спортивно-оздоровчого гуртка „Грація”. Для культурно-естетичного розвитку дітей створений театр-студія „Бард”, який працює в оновленому актовому залі, обладнаному музичною та телевізійною технікою, має сучасний інтер’єр.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	НАВЧАЛЬНО-ВИХОВНИЙ КОМПЛЕКС ДОПРОФЕСІЙНОЇ ПІДГОТОВКИ ТА ТЕХНІЧНОЇ ТВОРЧОСТІ МОЛОДІ М. КИЄВА)	\N	/static/images/club/bg_2.png	#	\N	\N	\N
187	0	16	\N	203	6::http://www.mpa.kiev.ua/, 1::0442495052, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Мала повітряна академія здійснює роботу з науково-технічного, дослідницько-експериментального, еколого-натуралістичного, гуманітарного та військово – патріотичного напрямків, охоплюючи понад 30 галузей науки. Гуртки: літальні та штурманські гуртки, Клуб «Моделіст», Авіамодельний клуб «Термік», Центр екологічних біотехнологій, технічної біоенергетики для авіації, Дитяча школа розвитку, «Юний стрілок», Музичний гурток «Fortissimo» Гурток з гуманітарно — естетичного виховання «Культури Всесвіту», Гурток залізничного моделювання, Музичний гурток «Energy Dance»","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Мала повітряна академія	\N	/static/images/club/bg_2.png	#	\N	\N	\N
188	4	16	\N	204	2::https://www.facebook.com/groups/385844012368027, 1::4.44576544E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Позашкільний заклад освіти , який розраховує на вільний час після школи, дітей. Метою є: навчити та розвинути творчі потенціали в дітей в різних творчих навичках, плекати любов до українського ремесла, традицій, виховувати патріотичний настрій. Напрями роботи: науково-технічний; художньо-естетичний ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр технічної творчості «Юність»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
189	4	16	\N	205	2::https://www.facebook.com/%D0%9C%D1%96%D0%B6%D1%88%D0%BA%D1%96%D0%BB%D1%8C%D0%BD%D0%B8%D0%B9-%D0%BF%D0%BB%D0%B0%D0%B2%D0%B0%D0%BB%D1%8C%D0%BD%D0%B8%D0%B9-%D0%B1%D0%B0%D1%81%D0%B5%D0%B9%D0%BD-%D0%9E%D0%BB%D1%96%D0%BC%D0%BF%D1%96%D0%BA-105292764702267/, 1::0442482303, 1::0681258640, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад позашкільної освіти для дітей солом'янського району ''Міжшкільний плавальний басейн ''Олімпік''. Гуртки з плавання","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Міжшкільний плавальний басейн «Олімпік»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
190	4	16	\N	206	6::http://istok.edu.kh.ua/, 1::0577255465, 1::0577255466, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує: хореографічні гуртки, вокальні, театральні, декоративно-прикладної та технічної творчості, спортивні та краєзнавчі гуртки, гуртки гуманітарного напрямку, гуртки для малечі ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад ''Палац дитячої та юнацької творчості ''ІСТОК''	\N	/static/images/club/bg_2.png	#	\N	\N	\N
191	6	16	\N	207	6::http://dush11.edu.kh.ua/, 1::0577255437, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"КЗ ''КДСЮШ №11'' заснований у лютому 1977 року. У теперішній час в КДЮСШ № 11 відкрито 6 відділень за спеціалізацією: боротьба самбо; волейбол; гімнастика художня; стендова стрільба; теніс настільний; футбол. Навчально-тренувальні заняття здійснюються у позашкільний час на базах КДЮСШ № 11, у закладах загальної середньої освіти Індустріального та Слобідського районів.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад ''Комплексна дитячо-юнацька спортивна школа № 11''	\N	/static/images/club/bg_2.png	#	\N	\N	\N
192	2	18	\N	208	6::https://umnichka.dp.ua/, 1::380961708675, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр раннього розвитку, та підготовки до школи","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитячий центр "Умнічка"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
193	6	16	\N	209	6::http://cdut2.edu.kh.ua/, 1::0577331079, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує навчання у гуртках: гончарство, кераміка та художня обробка пластичних мас, виготовлення іграшок-сувенірів, народні ремесла України, образотворче мистецтво, ''Веселка'', ''Спектр'', ''Естрадне мистецтво'' ''Вокальне мистецтво'', ''Сучасна хореографія'', ''Театральне мистецтво'', ''Акторська майстерність'', ''Пішохідний туризм'', «Геологічне краєзнавство» «Загальна біологія», «Юні дослідники біорізноманіття», ''Юні квітникарі'', фольклор та етнографія народу України, ''УШУ'', ''Цікава англійська мова'',  ''Інтелектуальні ігри''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Центр дитячої та юнацької творчості № 2 Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
212	6	16	\N	228	6::https://sport.zp.ua/pages/dityacho-yunacka-sportivna-shkola-no-11-zaporizkoyi-miskoyi-radi-zaporizkoyi-oblasti, 1::0662746896, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Школа пропонує секції з боксу, триатлону, дзюдо)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ № 11	\N	/static/images/club/bg_2.png	#	\N	\N	\N
194	4	16	\N	210	6::http://www.sportschool5.edu.kh.ua/, 1::0577251752, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"З 05 вересня 2020 року у Комунальному закладі ''Комплексна дитячо-юнацька спортивна школа № 5 Харківської міської ради'' працює шість відділень з видів спорту: художня гімнастика, футбол, боротьба самбо,   кікбоксинг, таеквондо І.Т.Ф., шахи","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Комплексна дитячо- юнацька спортивна школа № 5 Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
195	6	16	\N	211	6::http://www.syt1.edu.kh.ua/, 1::0577333104, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Виховна система СЮТ № 1 – це цілісна структура, яка сприяє успішній діяльності виховання. Напрямки роботи: початково-технічний профіль, інформаційно-технічний профіль, спортивно-технічний профіль, художньо-технічний профіль ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Станція юних техніків № 1 Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
196	4	16	\N	212	6::http://cpo-mriia.edu.kh.ua/, 1::0577251529, 1::0577251640, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр позашкільної освіти ''Мрія'' Харківської міської ради - це комплексний заклад позашкільної освіти. Напрями діяльності: науково-технічний (спрямований на формування у дітей та підлітків техніко-технологічних знань та умінь, розширення їх політехнічного світогляду, задоволення потреб особистості у вдосконаленні освіти з основ інформатики та комп’ютеризації, конструкторської, винахідницької діяльності, реалізації здібностей шляхом пошуку та розвитку вмінь, навичок технічного моделювання, конструювання тощо); художньо-естетичний (забезпечує розвиток творчих здібностей, обдарувань та здобуття вихованцями практичних навичок, оволодіння знаннями в сфері вітчизняної і світової культури та мистецтва); соціально-реабілітаційний (забезпечує соціальне становлення та розвиток інтересів, здібностей, нахилів, потреб у самореалізації вихованців, підготовку їх до активної професійної та громадської діяльності, організацію їх змістовного дозвілля та відпочинку). Гуртки: моделювання іграшок-сувенірів, бісерного рукоділля, ракетомоделювання, Інформатики, декоративно-образотворчого мистецтва, дизайн одягу, ''Весела карусель'', квілінг, оригамі, театральний гурток та театр ляльок, гурток спортивно-бального танцю, черлідингу, сучасної хореографії, вокалу, музичного мистецтва.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Центр позашкільної освіти "Мрія" Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
197	6	16	\N	213	6::http://sportschool4.edu.kh.ua/, 1::0577251645, 1::0577251536, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує навчання та тренування в таких видах спорту: вільна боротьба, карате JKS, сумо, настільний теніс, футбол, шахи, шашки, таеквон-до","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комплексна дитячо-юнацька спортивна школа № 4	\N	/static/images/club/bg_2.png	#	\N	\N	\N
198	4	16	\N	214	6::http://sportschool13.edu.kh.ua/, 1::0577251655, 1::0577251656, 1::7251654, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Основним напрямком діяльності КДЮСШ № 13 є: популяризація здорового способу життя, залучення дітей до занять фізичної культурою та спортом, розвиток масового спорту (залучення більшої кількості дітей до систематичних занять фізичною культурою та спортом), підготовка резерву до збірних команд області, регіону та України і орієнтація обдарованої молоді на спорт вищих досягнень. Школа повністю укомплектована тренерсько-викладацьким складом, обслуговуючим персоналом та медичними кадрами, всі вони мають відповідний освітній та кваліфікаційний рівень. Школа має одну будівлю (2232,6 кв.м.), 9 пристосованих спортивних залів, роздягальні, душові кімнати, медичний кабінет, методичний кабінет, кабінет директора, кабінет заступника директора та завідувача господарства, 8 кімнат відпочинку для спортсменів, футбольний майданчик зі штучним покриттям (42 х 22), футбольний майданчик з пісчаним покриттям (20 х 40), баскетбольний майданчик (30 х 15), спортивний комплекс (Стрітворкаут), Дитячий тренажерний майданчик (10 тренажерів) (10 кв.м.). Види спорту: спортивна аеробіка, бадмінтон, баскетбол, дзюдо, кікбоксинг, футбол. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комплексна дитячо-юнацька спортивна школа № 13	\N	/static/images/club/bg_2.png	#	\N	\N	\N
199	6	16	\N	215	6::https://cdut7.klasna.com/, 1::0577251349, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Навчально - виховний процес у КЗ ''ЦДЮТ № 7'' організовано за наступними напрямками: науково-технічний, фізкультурно-спортивний, військово-патріотичний, художньо-естетичний відділ, еколого-натуралістичний відділ, соціально-реабілітаційний відділ, гуманітарний відділ, дослідницько-експериментальний","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад «Центр дитячої та юнацької творчості № 7 Харківської міської ради»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
200	2	18	\N	216	6::divo.in.ua, 1::0674463565, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Розвивальні заняття для дітей від 2-4 років,заняття всебічного розвитку,підготовка до школи,англійська мова,майстер-класи,малювання,тренінги для дітей.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Талан-клуб «Дивограй»🌈	\N	/static/images/club/bg_2.png	#	\N	\N	\N
201	4	16	\N	217	2::https://m.facebook.com/bartoshv, 1::0980055350, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заняття для дітей та підлітків з Історії мистецтв та Моделювання одягу. Нестандартний підхід до ознайомлення з інформацією, робота з різноманітними матеріалами, збалансована подача теоретичної частини. Мистецтво стає ближчим! Ліпити картини, малювати скульптури, створювати інсталяції та ще безліч цікавого аби зрозуміти та полюбити мистецтво - від Стародавнього Єгипту і до сьогодні! ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Видуми	\N	/static/images/club/bg_2.png	#	\N	\N	\N
202	6	16	\N	218	2::https://www.facebook.com/kozaksportcentr/, 1::0677395468, 1::0676828569, 1::0675919762, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Патріотичне виховання дітей та молоді, змішані одноборства. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	"Козацький спортивний центр Спас ЯР "	\N	/static/images/club/bg_2.png	#	\N	\N	\N
203	4	16	\N	219	6::http://swija.com.ua/, 1::0661043164, 1::0972766048, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Запорізький дитячий театр «Свія» розпочав свою діяльність у 2005 році. В 2018-2019 роках театр продовжує реалізовувати нові постановки, застосовуючи нетрадиційні форми і засоби висловлення, активно гастролює по Україні та Європі, отримує високі оцінки на Всеукраїнських та Міжнародних театральних фестивалях. За весь час існування, в театрі було поставлено більше  20 різних за жанром та виконавською складністю вистав. В спектаклях Запорізького дитячого театру «Свія» зайняті актори у віці 5 – 18 років.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитяча театральна студія "Свія"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
213	6	16	\N	229	6::https://sport.zp.ua/pages/dsfdgd, 1::0506080793, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Секції гандболу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ № 3 з гандболу	\N	/static/images/club/bg_2.png	#	\N	\N	\N
204	6	16	\N	220	6::https://website--512452347745980569032-musicschool.business.site/, 1::0617642975, 1::0985535675, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"ЗДМШ № 1 є найстарішою музичною школою міста Запоріжжя. Свою історію школа розпочала з 1926 року. Сьогодні у школі навчаються  465 учнів. Працює професійний колектив з 81 викладача. В школі існує 8 відділів:  фортепіанний відділ (фортепіано, синтезатор), струнно-смичкові інструменти (скрипка, віолончель), народний відділ (гітара, домра, балалайка, баян, акордеон); духові та ударні інструменти (флейта, кларнет, фагот, саксофон, труба, валторна, тромбон, туба, ксилофон); вокально-хоровий відділ; театральне відділення, музично-теоретичний відділ, концертмейстерський відділ. В навчальному процесі в школі використовують методи індивідуального та колективного навчання. Свою творчу діяльність ведуть різноманітні інструментальні ансамблі, оркестри народних та духових інструментів, струнні та вокальні ансамблі, хори молодших і старших класів. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Запорізька дитяча музична школа №1	\N	/static/images/club/bg_2.png	#	\N	\N	\N
205	6	16	\N	221	6::https://sites.google.com/site/uazdmsh2/, 1::0617095617, 1::0949377617, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Школа пропонує навчання за напрямками: відділ музично-теоретичних дисциплін, відділ вокально-хорових дисциплін, фортепіано, відділ духових інструментів, відділ духових та ударних інструментів, відділ струнно-смичкових інструментів, відділ народних інструментів, відділ додаткових інструментів","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Запорізька дитяча музична школа № 2	\N	/static/images/club/bg_2.png	#	\N	\N	\N
206	4	16	\N	222	2::https://www.facebook.com/zdmsh3/, 6::https://sites.google.com/view/shkolazpdm3otdely/?fbclid=IwAR0Wo3ZmDyFjqqyJdpSRvKZ1ab0P-Gt16VJRWiuFotBCTZySk4d9coWRJEg, 1::0984088281, 1::0977828672, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Навчання здійснюється із фахів: фортепіано, синтезатор, скрипка, віолончель, контрабас, ударні інструменти, саксофон, флейта, валторна, кларнет, труба, баян, акордеон, гітара, бандура, домра, академічний сольний спів, естрадний сольний спів. у 2019 році у закладі впроваджені уроки електронної музики та діджеїнгу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Запорізька дитяча музична школа №3	\N	/static/images/club/bg_2.png	#	\N	\N	\N
207	6	16	\N	223	2::https://www.facebook.com/zpmuz4/, 1::0612351805, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Запорізька дитяча музична школа №4 відкрита 01 вересня 1965 року, і розташована вона у промисловому серці індустріального Запоріжжя – Заводському районі. 400 дітей району навчають грі на фортепіано, скрипці і віолончелі, баяні та акордеоні, домрі гітарі, флейті та кларнеті, саксофоні і тромбоні, трубі та ударних інструментах. 52 викладачі вчать вокалу та образотворчим мистецтвам.  ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Запорізька дитяча музична школа №4	\N	/static/images/club/bg_2.png	#	\N	\N	\N
208	4	16	\N	224	6::https://sport.zp.ua/pages/vul-14-zhovtnya-15, 1::0672932150, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Секції з гандболу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ ім. Ю.Лагутіна з гандболу	\N	/static/images/club/bg_2.png	#	\N	\N	\N
209	6	16	\N	225	6::https://sport.zp.ua/pages/dyussh-lokomotiv-mzaporizhzhya, 1::9.91716748E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Школа пропонує веслування на байдарках і каное, бокс, важка та легка атлетика","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ «Локомотив» 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
214	6	16	\N	230	6::https://sport.zp.ua/pages/dityacho-yunacka-sportivna-shkola-no-6-zaporizkoyi-miskoyi-radi-zaporizkoyi-oblasti, 1::0612772871, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Секції з греко-римської боротьби, боксу, бодібілдингу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ № 6 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
215	6	16	\N	231	6::https://sport.zp.ua/pages/go-specializovana-dityacho-yunacka-shkola-olimpiyskogo-rezervu-po-gandbolu, 1::6.12790572E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гандбол","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Спеціалізована дитячо-юнацька школа олімпійського резерву з гандболу	\N	/static/images/club/bg_2.png	#	\N	\N	\N
216	6	16	\N	232	6::https://sport.zp.ua/pages/duss-kristal, 1::0505351974, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дзюдо","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ "Кристал"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
217	6	16	\N	233	6::https://sport.zp.ua/pages/pnz-kompleksna-dityacho-yunacka-sportivna-shkola--dinamo, 1::0617643834, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Відділення КДЮСШ ''Динамо'': боротьба вільна, боротьба греко-римська, дзюдо, змішані єдиноборства ММА, кікбоксінг WPKA","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ПНЗ "КДЮСШ "Динамо"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
218	4	16	\N	234	6::http://aikikai.dp.ua/, 1::0504214774, 1::0674858444, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Занурюючи дитину в світ Айкідо, ви створюєте умови, що сприяють розвитку у ній таких якостей як доброта у поєднанні з волею, м'якість у поєднанні з силою, самодисципліна у поєднанні з умінням розслаблятися. Ваша дитина: навчиться дисципліні (регулярні тренування і ритуали в достатній мірі дисциплінують як дорослого так і дитину); позбудеться страхів, пов'язаних з падінням (тренування айкідо включають в себе різного роду страховки і перекиди); розвине відчуття рівноваги і координацію рухів (практично всі прийоми в айкідо вимагають гарної координації); набуде впевненість в собі при фізичному контакті з більш дужими і сильними однолітками (надзвичайно важливий аспект для дітей, які відстають у фізичному розвитку); стане більш спритною, гнучкою за допомогою широкого комплексу акробатичних вправ та розумною (гнучкість розуму прямо пов'язана з гнучкістю тіла); на практиці переконається в тому, що фізична сила має межу, в той час як сила розуму і духу безмежна. Методика занять з дітьми та підлітками відрізняється від методики для дорослих, але базові вправи з їх подальшим розвитком залишаються тими ж. Айкідо - це духовний шлях, і його ідеал - досягнення гармонії і любові.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дніпровська федерація Айкікай Айкідо	\N	/static/images/club/bg_2.png	#	\N	\N	\N
219	4	16	\N	236	6::https://showtime-music-school.business.site/, 1::0679520858, 1::0632020628, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Індивідуальні заняття вокалом для дітей від 5 років! У школі: кращі вокальні тренери, творча, домашня атмосфера, індивідуальний підхід до кожної дитини! SHOWTIME - це яскраві емоції і кращий вокальний досвід!","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Вокальна студія Show Time	\N	/static/images/club/bg_2.png	#	\N	\N	\N
232	4	16	42	255	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Флористика","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Флористика	\N	/static/images/club/bg_2.png	#	\N	20	\N
220	6	16	\N	238	6::http://prana.dp.ua/, 1::0668568535, 1::0635193868, 1::0673789493, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Швидкочитання - це навичка, яка допоможе зекономити час на освоєння нового матеріалу. Ви зможете освоювати в 3-5 разів більше інформації, на відміну від людини, яка не володіє такою навичкою. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр розвитку пам'яті Prana 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
221	2	18	\N	239	6::http://start.soroban.com.ua/uk/dnepr-2/, 1::0978085454, 1::0958085454, 1::0669338834, 1::0685504570, 1::0676998931, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Ефективний розвиток мислення дитини на основі японської методики усного рахунку. Як для досягнення в будь-якому виді спорту важлива загальна фізична підготовка, так і для успіху в будь-якому розумовому занятті потрібні обробка величезної кількості інформації і швидке прийняття вірних рішень. Саме ці навички і розвиває школа Соробан. Усний рахунок не самоціль, а шлях до гармонійного розвитку відразу двох півкуль мозку. Думати відразу двома півкулями мозку є можливим! І Ваша дитина теж так зможе!","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Школа усного рахунку Соробан	\N	/static/images/club/bg_2.png	#	\N	\N	\N
222	4	16	\N	242	6::https://www.kyiv.plast.org.ua/, 1::5.05391995E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Пласт – українська скаутська організація, найбільша та найстарша молодіжна організація України. Для досягнення виховних цілей Пласт застосовує власну унікальну методу виховання. У Пласті немає вікових обмежень, тому пластувати можна почати будь-коли. Умовний віковий поділ передбачає 5 вікових категорій від 6 років. Сьогодні Пласт об’єднує близько 10 000 членів різного віку і є найбільшою скаутською організацією України. Пласт – це величезне джерело можливостей. Щороку пластуни відвідують безліч таборів, заходів та вишколів в Україні та у різних країнах світу. Протягом року Пласт в Україні проводить понад 100 виховних таборів та тренінгів, пропонуючи кожному члену щось своє - незабутні табори та мандрівки, цікаві акції та заняття, патріотизм та духовність. Київський Пласт - це осередок пластового руху України у Києві. Зараз до Київського Пласту належить 1577 членів, з яких 232 - діти 2-6 років, 390 - діти 7-10 років, 406 - діти 11-17 років. Пластові курені (гуртки) діють у межах станиці (Києва), а не окремого району. Тому дитина відвідуватиме заняття і  заходи у тому місці, яке буде закріплене за її гуртком/куренем. Закріплені місця можуть змінюватись протягом року, залежно від того, які домівки будуть доступні оргнізації для занять.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Київський Пласт	\N	/static/images/club/bg_2.png	#	\N	\N	\N
223	4	16	\N	243	2::https://www.facebook.com/chetum.dp/, 1::0560997028422, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний позашкільний навчальний заклад «Центр художньо-естетичної творчості учнівської молоді» Дніпровської міської ради відкрився у 2013 році. Центр розвитку дітей, організація змістовного дозвілля. Заняття за покликом душі. Наші гуртки: гурток образотворчого мистецтва, гурток петриківського розпису, гурток декоративно-ужиткового мистецтва, гурток естрадної пісні, театральний гурток, гурток психоемоційного розвитку, хореографічний гурток, гуртки творчого розвитку для дошкільнят ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КПНЗ «Центр художньо-естетичної творчості учнівської молоді» Дніпровської міської ради	\N	/static/images/club/bg_2.png	#	\N	\N	\N
233	4	16	42	256	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Основи біоетики","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Основи біоетики	\N	/static/images/club/bg_2.png	#	\N	20	\N
224	6	16	\N	244	2::https://www.facebook.com/sokil.dzhura, 1::0567901091, 1::0667136759, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Всеукраїнська дитячо-юнацька військово-патріотична гра Сокіл (Джура) є системною формою національно-патріотичного виховання дітей та молоді, важливим засобом громадянської освіти, формування національно-патріотичної свідомості, відповідно до ціннісних індикаторів ефективності Стратегії національно-патріотичного виховання дітей та молоді на 2016-2020 роки ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Сокіл-Джура	\N	/static/images/club/bg_2.png	#	\N	\N	\N
225	4	16	42	248	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Юні екологи","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Юні екологи	\N	/static/images/club/bg_2.png	#	\N	20	\N
226	4	16	42	249	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Природознавство для дошкільників","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Природознавство для дошкільників	\N	/static/images/club/bg_2.png	#	\N	20	\N
227	4	16	42	250	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Основи дендрології з елементами озеленення","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Основи дендрології з елементами озеленення	\N	/static/images/club/bg_2.png	#	\N	20	\N
228	4	16	42	251	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Юні аматори зеленої архітектури","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Юні аматори зеленої архітектури	\N	/static/images/club/bg_2.png	#	\N	20	\N
229	4	16	42	252	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Юні друзі природи та ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Юні друзі природи та 	\N	/static/images/club/bg_2.png	#	\N	20	\N
230	4	16	42	253	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Біологія людини","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Біологія людини	\N	/static/images/club/bg_2.png	#	\N	20	\N
231	4	16	42	254	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Петриківський розпис","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Петриківський розпис	\N	/static/images/club/bg_2.png	#	\N	20	\N
236	4	16	42	259	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Юні квітникарі","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Юні квітникарі	\N	/static/images/club/bg_2.png	#	\N	20	\N
237	6	16	43	260	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Основи біології, основи гідробіології, біологія людини","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Основи біології, основи гідробіології, біологія людини	\N	/static/images/club/bg_2.png	#	\N	21	\N
238	6	16	43	261	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Юні знавці лікарських рослин","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Юні знавці лікарських рослин	\N	/static/images/club/bg_2.png	#	\N	21	\N
239	6	16	43	262	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Юні акваріумісти","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Юні акваріумісти	\N	/static/images/club/bg_2.png	#	\N	21	\N
240	6	16	43	263	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Юні садівники, аматори зеленої архітектури","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Юні садівники, аматори зеленої архітектури	\N	/static/images/club/bg_2.png	#	\N	21	\N
241	6	16	43	264	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Основи біоетики, основи екологічних знань, юні охоронці природи, юні екологи, юні друзі природи молодшого шкільного віку ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Основи біоетики, основи екологічних знань, юні охоронці природи, юні екологи, юні друзі природи молодшого шкільного віку 	\N	/static/images/club/bg_2.png	#	\N	21	\N
242	4	16	44	265	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Бойові мистецтва: кунг-фу, козацький двобій та джиу-джитсу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Бойові мистецтва	\N	/static/images/club/bg_2.png	#	\N	22	\N
243	4	16	44	266	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Декоративно-прикладний та образотворчий напрямок: робота з глиною та лозою, займатися конструюванням одягу, вишивкою і в’язанням, дизайну, петриківський розпис, графіка та живопис","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Декоративно-прикладний та образотворчий напрямок	\N	/static/images/club/bg_2.png	#	\N	22	\N
244	4	16	44	267	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Студії музики, танцю та вокалу	\N	/static/images/club/bg_2.png	#	\N	22	\N
245	4	16	44	268	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Підготовка до школи, вивчення іноземних мов","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Освітні студії	\N	/static/images/club/bg_2.png	#	\N	22	\N
246	4	16	44	269	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	 Театральне та циркове мистецтво	\N	/static/images/club/bg_2.png	#	\N	22	\N
247	6	16	\N	270	6::-, 1::0503625664, 1::664837512, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Спортивні секції,- веслування на човнах Дракон, байдарках і каное","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Спортивний клуб "Тамерлан" 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
248	4	16	\N	271	6::https://dniprorada.gov.ua/uk/page/komunalnij-pozashkilnij-navchalnij-zaklad-dityacho-yunacka-sportivna-shkola-2-dniprovskoi-miskoi-radi-, 1::0975430896, 1::0963495581, 1::0676305035, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Основною метою діяльності ДЮСШ № 2 є залучення дітей, підлітків і молоді до системних занять фізичною культурою та спортом, підготовка спортивного резерву до збірних команд міста, області та України. У спортивній школі працює три відділення: стрибки на батуті, гімнастика художня, футбол. Для занять спортом запрошуються діти від 5 років. Тренування проходять у спортивних залах, на майданчиках та стадіонах середніх загальноосвітніх шкіл міста Дніпра. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КПНЗ "Дитячо-юнацька спортивна школа № 2" ДМР	\N	/static/images/club/bg_2.png	#	\N	\N	\N
249	6	16	\N	272	6::https://www.chess9school.dp.ua, 1::0562326533, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад був заснований в 1980 році. На сьогоднішній день у школі працюють 15 тренерів першої кваліфікаційної категорії, міжнародні гросмейстери та майстри спорту з шахів. Учнівський колектив представлений 438 шахістами.  Учні ДЮСШ — переможці та призери чемпіонатів України в різних вікових категоріях, чемпіонатів світу та Європи, міжнародних змагань. За часи існування навчального закладу 8 випускників стали міжнародними гросмейстерами та 17 — майстрами спорту України. Збірна школи — багаторазовий чемпіон серед ДЮСШ. Слід зазначити, що два учні школи входять до складу збірної команди України з шахів. У навчальному процесі поєднуються сучасні технології та досвід традиційної шахової школи, заслуженими представниками якої були, зокрема, директори: Володимир Олександрович Лимар і Олександр Стефанович Мороз, що очолювали заклад у різні часи його існування. Ім’я одного з них наразі з гордістю носить ДЮСШ №9.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КПНЗ "Дитячо-юнацька  спортивна школа №9 ім. міжнародного гросмейстера О. С. Мороза ДМР	\N	/static/images/club/bg_2.png	#	\N	\N	\N
250	2	18	\N	273	2::https://www.facebook.com/gurtokLyambda, 1::6.62688567E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Вчитель математики під час роботи неминуче прийде до питання: як допомогти дитині полюбити математику, як розкрити дитячі здібності? Адже ми живемо в час інформаційних технологій, кількість яких нестримно зростає з кожним днем, і за всіма цими технологіями стоїть саме математика. Таким чином, розвиток математичного мислення набуває майже життєвої необхідності для того, щоб бути успішними в майбутньому. Але, на жаль, в умовах сучасних реалій шкільної освіти вчителю практично неможливо приділити достатню кількість уваги кожному учню, та й навчальні програми з математики не дають простору для висвітлення багатьох цікавих питань цього предмету. Що ж робити? І на допомогу приходить гурток. Основною метою гуртка є розвиток математичних здібностей дітей — математичного та логчіного мислення, виховання культури математичного мислення, правильного застосування математичної термінології та математичної символіки. В процессі навчання в гуртку дитина отримує навички самостійного та колективного розв’язування задач, навчається відповідальності, наполегливості та віри у власні сили. Все це відбувається за допомогою цікавих, яскравих та зрозумілих для дітей дидактичних та ігрових матеріалів. Основні педагогічні принципи “Лямбди”: врахування вікових та індивідуальних особливостей кожної дитини; спрямованість навчального процесу на розвиток самовиховання та самовдосконалення; підбір змісту, методів та форм навчання відповідно до змісту та мети занять; повага та доброзичливість до кожного учня; спрямованість на єдність та взаємозв’язок між усіма компонентами процесу навчання; увага до особистих досягнень кожного учня, створення «моменту успішності» для кожного учня. Учні опановують методи розв’язування нестандартних задач, логічні, комбінаторні та інші прийоми, за допомогою яких можна розв’язувати задачі. Крім того, в дітей розвиваються такі навички, як вміння працювати самостійно та в колективі, слухати викладача та інших учнів, відстоювати свою точку зору та пояснювати свій розв’язок задачі, думати при розв’язуванні математичних проблем та успішно застосовувати надбані знання при навчанні в школі та повсякденному житті. В подальшій перспективі це стане надійним фундаментом освіченості та освіти дитини.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Математичний гурток "Лямбда"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
251	0	11	45	274	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"У центрі передбачені різні форми адаптаціі малюків. Діти до трьох років відвідують заняття виключно з дорослими до яких в дитини є довіра( мама, тато, бабуся і т.д). Заняття у Одуванчику – це комплексна система навчання. Вони складаються з наступних частин: розвивайка, англійська мова, та логоримика або творчість.Також розроблена спеціальна розвиваюча програма – 4 годинна програма (для дітей віком 3-4 років). На занятті «Ритміка» діти освоюють основи хореографії. Крім того, у Центрі сімейного розвитку «Одуванчик» працюють курси для майбутніх татусів і мамусь і сімейна психологія, дитячий психолог, логопед, програма вихідного дня. На заняттях педагоги працюють над розвитком у дитини пам’яті, мислення, уваги, збагачення дитячого словника. Щоб дітям було цікаво вчитися, навчальний процес наповнений віршами, піснями, танцями, рухами.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр дитячого та сімейного розвитку Одуванчик	\N	/static/images/club/bg_2.png	#	\N	23	\N
252	12	16	\N	275	6::www.rayda.od.ua, 1::0632828965, 1::0966565081, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Східний танець - це танець краси і душі, грація і пластичність. Пропонуємо Вам: -заняття в групі і індивідуально; -постановка танцю; вивчення хореографії ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Клуб сучасного східного танцю РАЙДА 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
253	4	16	\N	276	6::https://startime.ua/talant-centr, 1::0487725787, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гуртки: естрадна школа, школа танців, школа вокалу, карате, школа акторського мистецтва, hand-made студія, живопис і малювання, шахи","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Талант-центр Star-Time	\N	/static/images/club/bg_2.png	#	\N	\N	\N
254	6	16	\N	277	6::https://arta-ote.od.ua/, 1::0956152786, 1::0933789345, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Навчання вокалу, акторської та ораторського майстерності для дітей та дорослих. Групові та індивідуальні заняття. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Театрально-вокальна студія "Talant Studio"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
255	12	16	\N	278	6::https://instagram.com/alexander_ivanenko_official?igshid=gnovl4el5hv8, 1::0958531220, 1::0966020076, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Викладач - Олександра Іваненко. Напрямки: Акторська майстерність, Риторика, ораторська майстерність","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Академія акторської майстерності	\N	/static/images/club/bg_2.png	#	\N	\N	\N
256	6	16	\N	279	6::-, 1::0675560887, 1::0930042307, 1::950809408, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Тренер - Тарас Михайлович","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Козацький гопак 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
270	4	16	\N	294	6::http://cdut5.kh.sch.in.ua/, 1::0577121746, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує навчання у гуртках за напрямками: художньо-естетичний, науково-технічний, оздоровчий, соціально-реабілітаційний, фізкультурно-спортивний, дослідницько-експериментальний","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Центр дитячої і юнацької творчості № 5 Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
257	6	16	\N	280	6::http://www.srvo.od.ua/school/sint_afalina/, 1::0482524043, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Профільний позашкільний навчальний заклад, де навчально-виховний процес здійснюється за еколого-натуралістичним напрямком. Сукупність знань, умінь і навичок гуртківці отримують у вільний від навчання в школі час. Основне завдання центру — це пошук, розвиток та підтримка здібних, обдарованих і талановитих вихованців, задоволення їх потреб в професійному самовизначенні і творчій самореалізації. У Центрі щорічно займається близько 850 дітей і підлітків, в більш ніж 60 гуртках за 15 напрямами: «Юні художники-натуралісти», «Юні квітникарі», «Юні хіміки», «Юні біологи», «Юні орнітологи», «Юні натуралісти»,«Природа і творчість «,» Юні акваріумісти «,» Народна творчість».","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад «Одеський еколого-натуралістичний центр «Афаліна»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
258	0	11	46	281	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ПІДГОТОВКА ДО ШКОЛИ	\N	/static/images/club/bg_2.png	#	\N	24	\N
259	0	11	46	282	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ХОРЕОРГАФІЯ/РИТМІКА	\N	/static/images/club/bg_2.png	#	\N	24	\N
260	0	11	46	283	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	АКТОРСЬКА МАЙСТЕРНЯ	\N	/static/images/club/bg_2.png	#	\N	24	\N
261	0	11	46	284	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	РОБОТОТЕХНІКА 	\N	/static/images/club/bg_2.png	#	\N	24	\N
262	0	11	46	285	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДИТЯЧА ШКОЛА ШИТТЯ	\N	/static/images/club/bg_2.png	#	\N	24	\N
271	4	16	\N	295	2::www.facebook.com/Klub.Svitoglyad/, 1::6.84672276E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Тренування, гра в шахи, змагання, досягнення, спортивні розряди","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Шаховий клуб "Світогляд"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
264	0	16	\N	287	6::https://inventor.com.ua/nashi-studii/odesa/, 1::(067)3524848, 1::(099)1077802, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Ми розвиваємо у дітях вміння вирішувати конкретні задачі на уроці. Природничі науки, технології, інженерія, математика поєднуються в одному занятті для дітей уже з 3 років. Учні досліджують проблему, шукають шляхи її розв’язання, конструюють, програмують, проводять розрахунки та експерименти, роблять висновки та презентують отримані результати. Мета STEM-школи INVENTOR — допомогти кожному учневі знайти і розвинути власні таланти та нахили. Професійні педагоги не вирішують за дитину, а стимулюють її самостійно обрати заняття до душі сьогодні, завтра або в майбутньому. Заняття у STEM-школі INVENTOR містять чотири освітні складові: взаємозв’язок, конструювання, рефлексія та розвиток. Кожен курс у STEM-школі INVENTOR розвиває основні компетенції: креативність, критичне мислення, комунікабельність та науково-технічну грамотність.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	INVENTOR СТЕМ-Школа	\N	/static/images/club/bg_2.png	#	\N	\N	\N
265	0	16	\N	288	2::https://www.facebook.com/shevchenkovets, 1::0444863138, 1::0444869398, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр творчості «Шевченківець» - сучасний експериментальний позашкільний заклад всеукраїнського рівня. Напрямки: художньо-естетичний, науково-технічний, еколого-натуралістичний, туристсько-краєзнавчий, фізкультурно-спортивний, дослідницько-експериментальний, гуманітарний, оздоровчий.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр творчості дітей та юнацтва «Шевченківець»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
266	4	16	\N	289	6::http://bdt-nivki.com.ua/, 1::0444001088, 1::0444003395, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Будинок дитячої творчості Шевченківського району м. Києва є одним з найстаріших осередків роботи з дітьми. Він привітно відкрив свої двері малюкам ще в 1943 році. Напрямки: художньо-естетичний, науково-технічний, гуманітарний. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Будинок дитячої творчості 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
267	4	16	\N	290	2::https://www.facebook.com/spasvyhor/, 1::0979709109, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Відродження і розвиток української національної культури","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитячо-юнацька спортивна школа "СПАС", підрозділ "СПАС-ВИХОР"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
268	6	16	\N	292	6::, 1::0504017717, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дитяча кулінарна школа “Little-chef. Elite” відкрита на базі Харківського торгівельно-економічного коледжу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитяча кулінарна школа Little Chef	\N	/static/images/club/bg_2.png	#	\N	\N	\N
269	4	16	\N	293	6::, 1::0577641354, 1::0952116786, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Закритий каток ''Дизель ice'' під куполом.  Є пункт прокату ковзанів, тренерська підтримка для початківців. Проводяться майстер класи з фігурного катання для всіх вікових груп. Режим роботи: з жовтня до квітня з 9:00 до 23:00.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Студія фігурного катання Дизель Іce	\N	/static/images/club/bg_2.png	#	\N	\N	\N
272	4	16	\N	296	6::https://cpostart.wixsite.com/kharkiv/pro-nas, 1::0573723042, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр «СТАРТ»  —  це середовище педагогів, дітей та їх батьків, яке забезпечує потреби дитячої особистості у творчій самореалізації, ії інтелектуальний, духовний і фізичний розвиток. Напрямки діяльності: художньо-естетичний, науково-технічний, військово-патріотичний,  фізкультурно-спортивний, туристсько-краєзнавчий","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Центр позашкільної освіти "Старт" Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
273	4	16	\N	297	6::http://sportschool8.edu.kh.ua/, 1::0573723079, 1::7133563, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"На базі комунального закладу ''Комплексна дитячо-юнацька спортивна школа №8 Харківської міської ради'' функціонує 7 відділень за наступними видами спорту: бокс, волейбол, дзюдо, тхеквондо ВТФ, футбол, панкратіон.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад "Комплексна дитячо-юнацька спортивна школа № 8 Харківської міської ради"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
274	0	16	\N	298	6::http://www.dvorec.edu.kh.ua/, 1::057250300, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує навчання в гуртках таких відділів: гуманітарно-естетичного, художньо-естетичного, соціально-реабілітаційного, фізкультурно-спортивного, науково-технічного","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КОМУНАЛЬНИЙ ЗАКЛАД "ХАРКІВСЬКИЙ ПАЛАЦ ДИТЯЧОЇ ТА ЮНАЦЬКОЇ ТВОРЧОСТІ ХАРКІВСЬКОЇ МІСЬКОЇ РАДИ ХАРКІВСЬКОЇ ОБЛАСТІ"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
275	6	16	\N	299	6::https://sportschool9.klasna.com/uk/site/our-school.html, 1::0577251375, 1::0577251376, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний заклад ''Комплексна дитячо-юнацька спортивна школа № 9 Харківської міської ради'' - позашкільний навчальний заклад спортивного профілю, який забезпечує розвиток здібностей вихованців в обраному виді спорту. У навчальному закладі відкрито 8 відділень за видами спорту:            греко-римська боротьба, бокс,   легка атлетика,  пауерліфтинг, футбол, плавання, спортивна аеробіка, черлідинг. Школа має три власні споруди: басейн на 3 доріжки, розташований за адресою вул.Локомотивна 2; 10 залів (2 зали для занять пауерліфтингом, 3 зали з боксу, 2 зали для занять легкою атлетикою та 3 зали для занять греко-римською боротьбою); чотири зали -  з боксу, греко-римської боротьби, черлідингу  та пауерліфтингу окремо розташовані за адресою пров. Лиманський,1. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад «Комплексна дитячо-юнацька спортивна школа № 9 Харківської міської ради»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
276	0	16	\N	300	6::http://cdut-kominternovskiy.edu.kh.ua/, 1::0577258441, 1::0974349490, 1::0991749397, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує заняття в гуртках: юні туристи - краєзнавці, історичне краєзнавство, журналістика, юні екскурсоводи, географічне краєзнавство, людина і довкілля, фольклористика, лозоплетіння, юні охоронці природи, юні екологи, фітодизайн, юний захисник Вітчизни, шахи, гурток бойових мистецтв, гурток ігротехніків, гурток сучасної хореографії, гурток основ хореографічного мистецтва, танцювальна мозаїка, образотворче мистецтво, музична мозаїка, музично-драматичний театр «Колібрі», гурток спортивного бального танцю, паперокручення, світ крізь призму англійської мови, гурток раннього розвитку дитини, цікава математика, гурток гри на класичній гітарі, гра на фортепіано","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад «Центр дитячої та юнацької творчості № 4 Харківської міської ради»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
282	12	16	\N	306	6::cactuszno.com.ua, 6::cactuszno.com.ua/onlinecourse, 1::0676855732, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Підготовка до ЗНО","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Навчальний центр "Cactus"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
277	6	16	\N	301	6::http://www.sportschool6.edu.kh.ua/, 1::0577258440, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"КЗ ''КДЮСШ № 6'' - є заклад позашкільної освіти спортивного профілю - закладом фізичної культури і спорту, який забезпечує розвиток здібностей вихованців в обраному виді спорту, визнаному в Україні. КДЮСШ № 6 культивує 7 видив спорту: спортивну акробатику, бокс, вільну боротьбу, дзюдо, футбол, кікбоксінг ВТКА, тхеквондо ВТФ. Має власну спортивну споруду: 10 спортивних залів, актовий зал, медичний кабінет, душову, адміністративні кабінети.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад «Комплексна дитячо-юнацька спортивна школа № 6 Харківської міської ради»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
278	6	16	\N	302	6::http://sut3.edu.kh.ua/, 1::0577258421, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує гуртки за напрямками: науково-технічний, соціально-реабілітаційний, художньо-технічний та гуманітарний. А саме: Судномоделювання, Моя майбутня професія, Англійська мова, ''Секретар керівника'', Студія образотворчого мистецтва, Хореографія, Гурток «Інформатика та обчислювальна техніка», «Історико-технічне стендове моделювання», «Юні користувачі персонального комп’ютера», «Початкове технічне моделювання'', «Паперопластика», Гурток «Технічний дизайн», Гурток «Цифрова фотографія»,","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад «Станція юних техніків № 3 Харківської міської ради»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
279	6	16	\N	303	6::http://sportschool3.edu.kh.ua/, 1::0573378811, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дитячо-юнацька спортивна школа №3 була заснована у 1951 році як міська спортивна школа № 3. З 1995 року існувала як ДЮСШ № 3 м. Харкова, а з березня 2011 року іcнyє як комунальний заклад « Комплексна дитячо-юнацька спортивна школа № 3 Харківської міської ради». КЗ «КДЮСШ №3» культивує шість видів спорту: Баскетбол, Гандбол, Лижні гонки, Спортивне орієнтування, Теніс, Шахи. а з 01.09.2020 року відкрите сьоме відділення - відділення бадмінтону.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад «Комплексна дитячо-юнацька спортивна школа № 3 Харківської міської ради»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
280	6	16	\N	304	6::http://sportschool12.edu.kh.ua/, 1::0573367502, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад пропонує тренування в гуртках: волейбол, легка атлетика, дзюдо, настільний теніс, футбол, таеквондо ІТФ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад «Комплексна дитячо-юнацька спортивна школа № 12 Харківської міської ради»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
281	0	6	\N	305	6::https://instagram.com/kotygoroshka?igshid=1uw4g4qlhtbzl, 1::6.31247988E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дитячий центр '' Котигорошко'' працює за напрямками : ранній розвиток, підготовка до школи, англійська для дітей, творча майстерня, логопед, театральна студія.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Котигорошко	\N	/static/images/club/bg_2.png	#	\N	\N	\N
283	4	16	\N	307	2::https://www.facebook.com/borba.ua, 1::9.71989942E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"ДЗЮДО. Секція дзюдо, змагання, збори, табори!","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КДЮСШ "ШКОЛА СПОРТУ"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
284	4	16	\N	308	6::https://www.zphudozka.com/, 1::0612330016, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":" ЗДХШ є базовим учбовим закладом для художніх і шкіл мистецтв Запорізької області. За більш ніж піввікову історію діяльності ЗДХШ її успішно закінчили і отримали свідоцтва близько 3-х тисяч молодих людей,  всього ж школою здійснено 51 випуск. Викладачі школи — спеціалісти високої кваліфікації, багато з яких у своїй повсякденній роботі  поєднують викладацьку та творчу діяльність, є членами Національних творчих спілок України та інших мистецьких об'єднань, беруть активну участь у обласних, всеукраїнських та міжнародних виставках, презентують свою творчість на персональних та групових художніх виставках, на різних фестивалях і пленерах. У стінах школи панує здорова творча атмосфера, чуйне відношення до учнів та їхнього мистецького зростання.     ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Запорізька дитяча художня школа	\N	/static/images/club/bg_2.png	#	\N	\N	\N
285	4	16	\N	309	6::https://www.artschool1.zp.ua/, 1::0612620321, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":" Заклад пропонує: музичне мистецтво (вокально-хоровий клас, фортепіано, скрипка, акордеон, баян, гітара, блок-флейта, гобой, кларнет, саксофон); хореографічне мистецтво (класичний танець, народний танець, сучасний танець); театральне мистецтво; образотворче мистецтво; малювання, ритміка, музична грамота, музичний інструмент, дитячий танець ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Запорізька дитяча школа мистецтв #1	\N	/static/images/club/bg_2.png	#	\N	\N	\N
286	0	16	\N	310	6::https://deti-center.zp.ua/, 1::0684044761, 1::0666145785, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"''Геніальні діти'' - це ексклюзивний і інноваційний підхід до освіти Ваших дітей! Ми взяли найкращі методики з раннього розвитку і вибрали з них те, що сприяє розвитку інтелекту. Ми розробили ігри, які комплексно розвивають пам'ять, логіку, увагу, відчуття, сприйняття, мислення і уяву. У роботі з дітьми керуємося принципами від простого до складного, від загального до конкретного. Прямуємо індивідуальним диференційованим підходом до кожної дитини. Заняття для малюків від 9 місяців до 3-х років, заняття для дошкільнят 3-7 років, заняття для школярів 3-7 років, англійський міні-садок для малюків, логопед, психолог та літні табори. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитячий центр розвитку "Маленький геній"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
287	2	18	\N	311	6::novatorschool.com.ua, 1::0631229384, 1::09383-8057та0994517940(викладачОленаВолодимирівна), 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"НУМО - це студія з розвиток художнього мислення на основі Петриківського розпису. індивідуально-групове навчання. Поетапне навчання скульптурі. Артстудія Петриківського розпису за програмою художньої школи. Приватна початкова школа","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	НУМО ( народна українська образотворча майстерня) 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
294	6	16	49	318	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"ДЮСШ ''Салют''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Секція плавання	\N	/static/images/club/bg_2.png	#	\N	25	\N
288	0	11	\N	312	6::https://everrest.in.ua/, 1::0679585753, 1::0963871706, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Альтернативна сімейна школа. Центр неперервного розвитку - це нове освітнє середовище, яке об'єднує людей з метою розкриття творчого потенціалу кожної дитини. Головна мета школи - допомагати дітям підніматися до інтелектуальних вершин.  Експерименти, ігри, яскраві образи і асоціації, сприйняття матеріалів на всіх сенсорних рівнях стануть мікстурою від нудного навчання та клішевого мислення. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Школа «EVERREST»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
289	4	16	\N	313	6::https://sport.zp.ua/pages/dyussh-no-1-z-sportivnoyi-gimnastiki, 1::0612367106, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Дитячо-юнацька спортивна школа  № 1 на протязі багатьох років є лідером української спортивної гімнастики. Школа створена у 1933 році і є однією з перших спортивних шкіл України з великими спортивними традиціями і досягненнями, вихованці школи неодноразово ставали переможцями та призерами Чемпіонатів України, Європи, Світу, Олімпійських ігор. Відділення: Гімнастика спортивна","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитячо-юнацька спортивна школа №1 зі спортивної гімнастики	\N	/static/images/club/bg_2.png	#	\N	\N	\N
290	6	16	\N	314	6::https://sport.zp.ua/pages/dyussh-ukrayina-vul-orihova-buhta-11, 1::0612860348, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Спортивна школа академічного веслування","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ "Україна" з веслування академічного	\N	/static/images/club/bg_2.png	#	\N	\N	\N
291	4	16	\N	315	6::https://sport.zp.ua/pages/dityacho-yunacka-sportivna-shkola-no-5-z-hudozhnoyi-gimnastiki-zaporizkoyi-miskoyi-radi, 1::0612339028, 1::0617076210, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Художня гімнастика. Навчання дівчаток у групах по 10 осіб. У школі напрацьовано великий досвід підготовки майстрів спорту з художньої гімнастики","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ № 5 з художньої гімнастики	\N	/static/images/club/bg_2.png	#	\N	\N	\N
292	4	16	\N	316	6::https://sport.zp.ua/pages/dityacho-yunacka-sportivna-shkola--mayster-sich-, 1::0612325931, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Напрямки закладу: бокс, кікбоксинг, тхеквондо ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ "Майстер Січ" (бокс, кікбоксинг, тхеквондо)	\N	/static/images/club/bg_2.png	#	\N	\N	\N
293	4	16	\N	317	6::https://sport.zp.ua/pages/duss-hvila, 1::0612954563, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Художня гімнастика: основи класичної хореографії; розтяжка всіх шпагатів; - партерна гімнастика (вправи на зміцнення м'язів, розвиток гнучкості і еластичності зв'язок); вправи з предметом (скакалка, обруч, м'яч, булави, стрічка); акробатична підготовка; комплекс загально розвиткових вправ.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ "Хвиля" 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
295	6	16	49	319	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"ДЮСШ ''Салют''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Секція хокею	\N	/static/images/club/bg_2.png	#	\N	25	\N
296	4	16	\N	320	6::https://sport.zp.ua/pages/specializovana-dityacho-yunacka-sportivna-shkola-olimpiyskogo-rezervu-z-plavannya-spartak, 1::0612633261, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"плавання","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Спеціалізована дитячо-юнацька спортивна школа олімпійського резерву з плавання "Спартак"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
297	4	16	\N	321	6::https://sport.zp.ua/pages/dityacho-yunacka-sportivna-shkola-metalurg-zaporizhzhya-z-futbolu, 1::0504861272, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Секції футболу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ "Металург Запоріжжя" з футболу	\N	/static/images/club/bg_2.png	#	\N	\N	\N
298	4	16	\N	322	6::https://sport.zp.ua/pages/ustanova-dityacho-yunacka-sportivna-shkola-z-ukrayinskogo-rukopashu-spas-gromadskoyi-organizaciyi-zaporizka-oblasna-federaciya-s, 1::0612332367, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Установа ''Дитячо-юнацька спортивна школа з Українського рукопашу ''Спас'' Громадської організації ''Запорізька обласна федерація ''Спас''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Український рукопаш СПАС	\N	/static/images/club/bg_2.png	#	\N	\N	\N
299	6	16	\N	323	6::https://sport.zp.ua/pages/dityacho-yunacka-sportivna-shkola-no-7-zaporizkoyi-miskoyi-radi, 1::0612780746, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Секції з кульової стрільби","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ № 7 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
300	6	16	\N	324	6::https://sport.zp.ua/pages/dityacho-yunacka-sportivna-shkola-no-12-z-basketbolu-zaporizkoyi-miskoyi-radi, 1::0950070013, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"відділення баскетболу","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ№ 12	\N	/static/images/club/bg_2.png	#	\N	\N	\N
301	4	16	\N	325	6::https://sport.zp.ua/pages/dityacho-yunacka-sportivna-shkola-no-4-zaporizkoyi-miskoyi-radi-zaporizkoyi-oblasti, 1::0612335084, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Відділення: естетична гімнастика, теніс настільний, фехтування","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	ДЮСШ № 4	\N	/static/images/club/bg_2.png	#	\N	\N	\N
302	6	16	\N	326	6::https://sport.zp.ua/pages/specializovana-dityacho-yunacka--shkola-olimpiyskogo-rezervu-z-legkoyi-atletiki-sk-metalurg, 1::0612360575, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"легка атлетика","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Спеціалізована дитячо-юнацька школа олімпійського резерву з легкої атлетики СК "Металург"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
303	0	6	50	327	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Приватний дитячий садок, підготовка до школи, англійська для малюків, розвиваючі заняття. В групі не більше 10 дітей; затишні та просторі приміщення; комплексне і здорове харчування; унікальні програми з розвитку та навчання; уважні і кваліфіковані педагоги; індивідуальний підхід; всебічний розвиток і зростання малюка.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитячий клуб "Ай да Я!"	\N	/static/images/club/bg_2.png	#	\N	26	\N
304	2	18	50	327	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Дитячий клуб "Ай да Я!"	\N	/static/images/club/bg_2.png	#	\N	26	\N
305	6	16	51	329	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комп’ютерна графіка та анімація(КПНЗ «Центр позашкільної роботи № 2» Дніпровської міської ради)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Програмування, розвиток лідерських якостей	\N	/static/images/club/bg_2.png	#	\N	27	\N
306	6	16	51	330	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Зразковий колектив Дитячий класичний балет, танцювальний клуб «А-Стиль» (спортивні вуличні  танці), зразковий колектив «Школа забутих мистецтв», туристичний ансамбль «Посмішка» (народні танці), ансамбль «Зірочка» (сучасна хореографія), «SHAFFALI» естрадний танок, зразковий колектив Театральна студія «Інженю», ансамбль «Кабріоль» (хореографія), театр пісні «Біс», вокальний ансамбль Студія «Витоки»(КПНЗ «Центр позашкільної роботи № 2» Дніпровської міської ради).","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Хореографічно-вокальний напрямок	\N	/static/images/club/bg_2.png	#	\N	27	\N
307	6	16	51	331	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Петриківський розпис, театр моди «Графіті», гурток бісероплетіння, студія «Мереживниця», АРТ-майстерня, студія образотворчого мистецтва «Чарівна палітра», зразкова студія образотворчого мистецтва «Веселка»(КПНЗ «Центр позашкільної роботи № 2» Дніпровської міської ради).","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Декоративний та мистецький напрямки	\N	/static/images/club/bg_2.png	#	\N	27	\N
308	6	16	\N	332	6::https://sytlen.dnepredu.com/, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гуртки: початково-технічне моделювання, геометричне моделювання, основи комп’ютерної графіки та дизайну, основи інформаційних технологій, радіостанція, фотостудія, авіамоделювання, дизайн, моделювання іграшок - сувенірів, «цікава астрономія», хімія, образотворче мистецтво, декоративно–ужиткове мистецтво, народна творчість","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КПНЗ «Станція юних техніків» Дніпровської міської ради	\N	/static/images/club/bg_2.png	#	\N	\N	\N
309	6	16	52	333	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гуртки: ракетомодельний, картинг, радіоконструкторський, математика і логіка, початковий творчий розвиток – математика, початкове технічне моделювання, початковий творчий розвиток, Брейн-ринг  математичний, паперопластика, комп''ютерний світ, ''Майстриня'', М`яка іграшка, Ниткові візерунки, Дизайн, Образотворче мистецтво, Художнє різьблення, Декоративний розпис, Живий куток, Психологія, ''Патріот''","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КПНЗ «Будинок дитячої творчості» Дніпровської міської ради	\N	/static/images/club/bg_2.png	#	\N	32	\N
310	4	16	55	334	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Театральна студія «Кредо», театр естради «Посмішка», Ляльковий театр «Фантазери», Молодіжний театр «Маленька сцена»(КПНЗ «Будинок творчості дітей та юнацтва» Дніпровської міської ради)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Театральний напрямок	\N	/static/images/club/bg_2.png	#	\N	31	\N
311	4	16	55	335	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гурток з виготовлення сувенірів, Гурток художньої вишивки «Голка-чарівниця», Театр моди «Імперія», Гурток моделювання іграшок-сувенірів, Студія образотворчого мистецтва «Краплинка», Гурток петриківського розпису(КПНЗ «Будинок творчості дітей та юнацтва» Дніпровської міської ради)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Декоративно-ужитковий та мистецький напрямки	\N	/static/images/club/bg_2.png	#	\N	31	\N
312	2	18	55	336	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Зразковий хореографічний ансамбль «Асорті», Ансамбль спортивного бального танцю, Циркова студія «Фієста», Спортивна секція «Айкідо»,","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Хореографія та спорт	\N	/static/images/club/bg_2.png	#	\N	31	\N
313	2	18	55	337	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Студія інтелектуального дошкільного розвитку «Скринька знань», Парламент лідерів учнівського самоврядування,","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Інтелектуальний розвиток	\N	/static/images/club/bg_2.png	#	\N	31	\N
314	4	16	55	338	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Вокальна студія «Хіт-конвеєр»,  Студія естрадного вокалу «Індіго», ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Вокальні студії	\N	/static/images/club/bg_2.png	#	\N	31	\N
336	6	16	54	360	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Спортивна гімнастика («Акробатика»)	\N	/static/images/club/bg_2.png	#	\N	30	\N
315	4	16	55	339	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гурток початкового технічного моделювання, Студія інтелектуального розвитку дошкільників «Пізнайко», Гурток різьблення та напилення, Музичний гурток, Гурток петриківського розпису «Фенікс»  ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Технічний напрямок	\N	/static/images/club/bg_2.png	#	\N	31	\N
316	4	16	53	340	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гуртки: Молодіжне-творче об’єднання  «Метроном», Дитячий музичний театр «Браво», Циркова студія «Трюк», Театральна студія «Інтермедія», Народний ансамбль танцю «Цвітень», Зразковий дитячий театр моди «Креатив», Зразковий ансамбль сучасної пісні  «Співаночки», Зразкова школа-студія сучасного танцю «Грандіс», Зразковий колектив сучасної хореографії «Пірует», Група брейк дансу «Чилаут», Хореографічний колектив ''Калейдоскоп», Театр танцю  «Бриз», Зразковий гурток «Декоративний розпис», Гурток «Батик», Народна вишивка, Бісероплетіння, Гончарство,  Народознавство, Народні ремесла, Петриківський розпис, Студія комплексного-естетичного виховання (для дошкільнят), Юні друзі природи, Юний еколог, Школа юного ветеринара, Радіоелектронне конструювання, Юний конструктор, Авіамодельний, Основи інформатики та програмування, Дизайн студія, Дитяча студія анімації, Графічний дизайн, Виготовлення сувенірів та аксесуарів, Гурток образотворчого мистецтва «Дивограй»,  Гурток образотворчого мистецтва «СемиСветик», Гурток дизайну «Фабрика ідеї», Студія образотворчого мистецтва «Палітра», Зразкова арт-школа студія,  Літературно-творча студія, Дитячий Парламент, Школа лідера, Конструювання та моделювання одягу, Студія англійської мови, Творча ізостудія, Пішохідний  туризм, Гурток «Пізнай себе»","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КПНЗ «Міський палац дітей та юнацтва» Дніпровської міської ради	\N	/static/images/club/bg_2.png	#	\N	28	\N
317	4	16	\N	341	6::http://altair.dp.ua/, 1::0673714822, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Центр позашкільної роботи та дитячої творчості ''Альтаїр''. Студії хореографії, вокалу, театрального мистецтва, декоративно-ужиткового напряму, спортивні секції. У Центрі працює 20 гуртків, що налічує 1010 вихованців.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КПНЗ «Центр позашкільної роботи та дитячої творчості «АЛЬТАЇР»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
318	6	16	\N	342	6::http://flot.dnepredu.com/, 1::0958827039, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Комунальний позашкільний навчальний заклад ''Міська флотилія юних моряків і річковиків'' Дніпровської міської ради. Напрямки роботи: - військово-патріотичний; фізкультурно-спортивний; науково-технічний; гуманітарний; художньо-естетичний. Гуртки: Юний моряк, Старшини  – мотористи, Основи  економіки, Комп’ютерні  технології, Морське багатоборство, Духовий оркестр, Хореографічний  гурток, Естрадно- симфонічний  оркестр","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КПНЗ «Міська флотилія юних моряків і річковиків» ДМР	\N	/static/images/club/bg_2.png	#	\N	\N	\N
319	6	16	\N	343	6::https://dyutskrokus.dnepredu.com, 2::https://www.facebook.com/kpnz.dyuts.dmr/, 1::0952293278, 1::0567852862, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":" Дитячо-юнацький центр - комунальний позашкільний навчальний заклад, який працює за туристсько-краєзнавчим напрямом позашкільної освіти.   На базі нашого закладу та закладів освіти міста працюють гуртки:  туристсько-спортивного профілю: спортивний туризм (пішохідний. гірський), юні туристи, спортивне орієнтування, скелелазіння, стрільба із лука;  туристсько-краєзнавчого профілю: географічне, історичне, літературне краєзнавство, туристи-краєзнавці, народні ремесла (малювання, ліплення з глини, паперопластика, вироби з соломи, бісера тощо)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	КПНЗ "Дитячо-юнацький центр" Дніпровської міської ради	\N	/static/images/club/bg_2.png	#	\N	\N	\N
320	6	16	\N	344	6::http://vesnyanka.dp.ua/uk/, 1::0567452068, 1::0567450118, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"У 1973 році у Дніпропетровську на базі фотокінолабораторії обласної станції юних техніків була організована перша в Україні експериментальна мультстудія «Веснянка». Гуртки: Основи акторської майстерності, Ляльковий театр, Петриківський розпис, Літературна студія «Літературно-мистецьке Придніпров’я», Школа юного журналіста, Основи етнографії та народознавства, Гуртки з фольклору та мистецтвознавства, Гурток фото, ігрового і документального кіно; Гурток комп’ютерного монтажу; Гурток кіноосвіти; Гурток анімації; Гурток відеофільму; Азбука почуттів","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад Дніпропетровський обласний дитячо-юнацький кіноцентр  Веснянка	\N	/static/images/club/bg_2.png	#	\N	\N	\N
321	4	16	\N	345	6::https://uk.orphey.com.ua, 1::0635386338, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гуртки: ейдетика для школярів, швидкочитання, тренування пам'яті, ментальна арифметика, спідкубінг, підготовка до школи, підготовка до ЗНО","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Центр розвитку "Орфей"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
322	4	16	\N	346	6::http://www.prvo.od.ua/school/lic_hor/, 1::0487225178, 1::0487225179, 1::0487250968, 1::0487247569, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Міський центр хореографічного мистецтва налічує більше 800 вихованців від п'яти до двадцяти п'яти років, які щодня навчаються класичному, народно-сценічному і сучасному танцям. Структура Центра: підготовче відділення, де діти протягом двох років навчаються основам хореографії, восьмирічна хореографічна школа-студія, зразковий художній колектив України ансамбль танцю «Дитинство», який складається з кращих вихованців хореографічної школи-студії, а також ансамбль танцю «Сузір'я» - професійний колектив, який об'єднує випускників хореографічної школи і молодих педагогів Центру.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад „Одеський міський центр хореографічного мистецтва”	\N	/static/images/club/bg_2.png	#	\N	\N	\N
323	4	16	\N	347	6::http://www.prvo.od.ua/school/lic_unak/, 1::0487220292, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"В позашкільному навчальному закладі діють 149 гуртків, студій та творчих об’єднань, в яких виховуються і навчаються близько 2000 вихованців. Виконуючи роль провідного центру позашкільної освіти в місті Одесі, Палац щороку проводить більш як 100 загальноміських масових заходів для дітей, юнацтва та громадськості міста. Палац дитячої та юнацької творчості здійснює набір дітей та учнівської молоді у творчі гуртки та студії закладу за напрямками позашкільної освіти: вокально-естрадний; вокально-хоровий; хореографічний (класичний, народний, спортивно-бальний, сучасний, естрадно-спортивний); театральний (музично-драматичний, ляльковий, естрадний); образотворчий; декоративно-ужитковий (гончарний, іграшок-сувенірів, виробів із природних матеріалів); науково-технічний (авіамоделювання); фізкультурно-спортивний (кунг-фу); соціально-реабілітаційний. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад «Одеський міський палац дитячої та юнацької творчості»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
324	12	16	\N	348	6::http://www.prvo.od.ua/school/lic_patriot/, 1::0487228117, 1::0487224144, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Пост №1 є однопрофільним позашкільним  навчальним  закладом,  в  якому  можуть створюватись гуртки,  клуби та творчі об’єднання військово-патріотичного напрямку позашкільної освіти. Заклад здійснює навчання та виховання учнів, слухачів і  вихованців в позаурочний та поза навчальний час, надає додаткову освіту, спрямовану на здобуття знань, умінь та навичок зі стройової та військово-патріотичної підготовки, а також забезпечує потреби особистості в духовному, історико-культурному розвитку, творчій самореалізації та організації змістовного дозвілля. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний заклад позашкільної освіти «Одеський міський центр військово-патріотичного виховання учнівської молоді «Пост № 1»	\N	/static/images/club/bg_2.png	#	\N	\N	\N
337	6	16	54	361	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Козацько - лицарське виховання «Джура»,	\N	/static/images/club/bg_2.png	#	\N	30	\N
325	12	16	\N	349	6::http://www.prvo.od.ua/school/lic_brig/, 1::0487226350, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Метою професійного виховання учнів в КПНЗ ''Одеська МДФМ  „Бриг” є спрямування особистості на вибір певного виду морської діяльності та прищеплення молоді професійно важливих якостей, передбачає набуття учнями допрофесійних знань, умінь і навичок. Поєднання навчального процесу, літньої водної практики та організації дозвілля (проведення екскурсій на кораблі, судна, у військові гавані порту, відвідування пам’ятних місць, музеїв, тощо) сприяє розвитку особистості вихованців та підготовці їх до життя. На сьогоднішній день в закладі функціонує 21 профільний гурток: ''Юний судномеханік'', ''Юний судноводій'', ''Юний судоелекстромеханік'', ''Юний судновий архітектор'', ''Юнги'', ''Юний океанограф'', ''Англійська мова з морським професійним спрямуванням''. В позашкільному закладі навчаються понад  300 вихованців середнього та старшого шкільного віку. Курс навчання у флотилії триває три роки на безоплатній основі, заняття проводяться в позаурочний час, по 3 години  одне заняття.  Формування груп розпочинається з 1 вересня, теоретичні заняття - з 1 вересня і закінчуються 31 травня. Після закінчення теоретичного курсу занять, з 1 червня по 20 липня, вихованці проходять плавпрактику на водній станції КПНЗ ''Одеська МДФМ „Бриг”, що знаходиться на пляжі „Ланжерон”.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад „Одеська міська дитяча флотилія моряків „Бриг”	\N	/static/images/club/bg_2.png	#	\N	\N	\N
326	6	16	\N	350	6::http://www.krvo.od.ua/school/lic_victory/, 1::0487992798, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Метою створення комунального позашкільного навчального закладу «Одеський міський дитячий оздоровчо-спортивний комплекс «Вікторія» є здійснення умов для відпочинку та оздоровлення дітей міста Одеси. Це діти-сироти, діти позбавлені батьківського піклування, діти з багатодітних та малозабезпечених сімей, діти постраждалі від аварії на ЧАЕС, талановиті та обдаровані діти, діти загиблих військовослужбовців.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад „Одеський міський дитячий оздоровчо – спортивний комплекс „Вікторія”	\N	/static/images/club/bg_2.png	#	\N	\N	\N
327	6	16	\N	351	6::http://www.prvo.od.ua/school/lic_divosvit, 1::0487223258, 1::0487250197, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гуртки: студія бісероплетіння «Перлинка», образотворча студія, гурток декоративно-прикладної творчості «Природа і фантазія», гурток «М’яка іграшка», образотворча студія «Етюд», образотворча студія  «Палітра»,  студія інтелектуально-творчого розвитку «Сходинки», студія інтелектуально-творчого розвитку «Світ і я'', студія інтелектуально-творчого розвитку «Пізнай себе», студія інтелектуально-творчого розвитку «Весела англійська», вокально-хорова студія «Едельвейс», вокальний ансамбль «Надія», зразковий художній колектив вокально-хорова студія «Едельвейс», студія естрадної  пісні «Астра», хореографічний гурток «Ягідки», Зразковий художній колектив хореографічний ансамбль «Пірует», Зразковий художній колектив хореографічний ансамбль «Непоседы», театр танцю «Гранд», Народний художній колектив ансамбль грузинського танцю«Сакартвело», хореографічний гурток «Акварель», театральна студія «Маска», Народний художній колектив театральна студія «Тріумф» ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад „Одеський центр дитячої та юнацької творчості “Дивосвіт”	\N	/static/images/club/bg_2.png	#	\N	\N	\N
328	6	16	\N	352	6::http://www.mrvo.od.ua/school/zakl_promin/, 1::0487327554, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Перелік гуртків за напрямками: вокальний; хореографічний; театральний; вишивання; образотворчого мистецтва; декоративно-ужиткової творчості;  науково-технічний; психологічний; шахи; акробатика; еколого- натуралістичний; інтелектуальний розвиток","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад „Одеський центр дитячої та юнацької творчості „Промінь”	\N	/static/images/club/bg_2.png	#	\N	\N	\N
338	6	16	54	362	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Географічне краєзнавство	\N	/static/images/club/bg_2.png	#	\N	30	\N
329	6	16	\N	353	6::http://www.mrvo.od.ua/school/zakl_dominanta/, 1::0487660493, 1::0487656449, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Заклад працює за напрямами: художньо-естетичний та соціально-гуманітарний. Навчальний процес у КПНЗ «Одеський БДЮТ «Домінанта» будується за трьома рівнями: початковим, основним та вищим,  що створює можливості виявлення здібностей, розвитку стійкого інтересу, отримання знань, практичних умінь, задоволення потреб у професійної орієнтації.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад „Одеський будинок дитячої та юнацької творчості „Домінанта”	\N	/static/images/club/bg_2.png	#	\N	\N	\N
330	6	16	\N	354	6::http://www.mrvo.od.ua/school/zakl_amator/, 1::4.87650393E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"В закладі працює 13 висококваліфікованих керівників гуртків науково-технічного, спортивно-технічного, початково-технічного та декоративно-ужиткового напрямків роботи, які мають багаторічний досвіт роботи з дітьми та відкриті до спілкування з ними.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комунальний позашкільний навчальний заклад „Одеська станція юних техніків „Аматор”	\N	/static/images/club/bg_2.png	#	\N	\N	\N
331	6	16	54	355	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Гуртки, що належать до КПНЗ «Міський дитячо-юнацький центр «Бригантина» ДМР: Юні туристи-краєзнавці, Географічне краєзнавство, Козацько - лицарське виховання «Джура», Юні судді спортивного туризму, Спортивний туризм, Природа крізь призму англійської мови, Спортивна гімнастика («Акробатика»), Юні туристи, Спортивний туризм, «Екологічне краєзнавство»,  «Спортивне орієнтування», «Пішохідний туризм», «Водний туризм» на","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Юні туристи-краєзнавці\n	\N	/static/images/club/bg_2.png	#	\N	30	\N
332	6	16	54	356	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Водний туризм»	\N	/static/images/club/bg_2.png	#	\N	30	\N
333	6	16	54	357	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Пішохідний туризм», 	\N	/static/images/club/bg_2.png	#	\N	30	\N
334	6	16	54	358	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Спортивне орієнтування»,	\N	/static/images/club/bg_2.png	#	\N	30	\N
335	6	16	54	359	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	«Екологічне краєзнавство»,	\N	/static/images/club/bg_2.png	#	\N	30	\N
339	6	16	54	363	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Юні судді спортивного туризму	\N	/static/images/club/bg_2.png	#	\N	30	\N
340	2	18	54	364	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Спортивний туризм	\N	/static/images/club/bg_2.png	#	\N	30	\N
341	2	18	54	365	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Опис відсутній","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Природа крізь призму англійської мови	\N	/static/images/club/bg_2.png	#	\N	30	\N
342	0	16	\N	366	6::https://inventor.com.ua/nashi-studii/zaporizhzhya/, 1::(095)7211125, 1::(097)1264370, 1::(068)7966366, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Ми розвиваємо у дітях вміння вирішувати конкретні задачі на уроці. Природничі науки, технології, інженерія, математика поєднуються в одному занятті для дітей уже з 3 років. Учні досліджують проблему, шукають шляхи її розв’язання, конструюють, програмують, проводять розрахунки та експерименти, роблять висновки та презентують отримані результати. Мета STEM-школи INVENTOR — допомогти кожному учневі знайти і розвинути власні таланти та нахили. Професійні педагоги не вирішують за дитину, а стимулюють її самостійно обрати заняття до душі сьогодні, завтра або в майбутньому. Заняття у STEM-школі INVENTOR містять чотири освітні складові: взаємозв’язок, конструювання, рефлексія та розвиток. Кожен курс у STEM-школі INVENTOR розвиває основні компетенції: креативність, критичне мислення, комунікабельність та науково-технічну грамотність.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	INVENTOR СТЕМ-Школа	\N	/static/images/club/bg_2.png	#	\N	\N	\N
343	0	16	\N	367	6::https://inventor.com.ua/nashi-studii/harkiv/, 1::(067)6239090, 1::(066)4658802, 1::(067)3719090, 1::\n(066)3860571, 1::(099)6129850, 1::\n(067)4482929, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Ми розвиваємо у дітях вміння вирішувати конкретні задачі на уроці. Природничі науки, технології, інженерія, математика поєднуються в одному занятті для дітей уже з 3 років. Учні досліджують проблему, шукають шляхи її розв’язання, конструюють, програмують, проводять розрахунки та експерименти, роблять висновки та презентують отримані результати. Мета STEM-школи INVENTOR — допомогти кожному учневі знайти і розвинути власні таланти та нахили. Професійні педагоги не вирішують за дитину, а стимулюють її самостійно обрати заняття до душі сьогодні, завтра або в майбутньому. Заняття у STEM-школі INVENTOR містять чотири освітні складові: взаємозв’язок, конструювання, рефлексія та розвиток. Кожен курс у STEM-школі INVENTOR розвиває основні компетенції: креативність, критичне мислення, комунікабельність та науково-технічну грамотність.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	INVENTOR СТЕМ-Школа	\N	/static/images/club/bg_2.png	#	\N	\N	\N
344	6	16	\N	370	6::http://cprs.kiev.ua/section/scientific-technical/computer-technology/group-kompyuternyi-gurtok-smartyky/, 1::094-925-21-97, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"«SMARTики» – україномовний комп'ютерний гурток. Вміти програмувати завжди було престижно. Не дарма цей гурток користується дуже великим попитом. Але, окрім програмування, діти проходять цілий цикл інформаційних технологій, де кожен може спробувати себе в ролі і дизайнера, і програміста, і професійного користувача.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комп'ютерний гурток "SMARTики" 	\N	/static/images/club/bg_2.png	#	\N	\N	\N
345	2	18	\N	371	6::http://cprs.kiev.ua/section/scientific-technical/computer-technology/group-kompyuterniy-gurtok-8bit/, 1::094-925-21-97, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Навчання молодших школярів (3-6 класи) роботі на ПК. Програма навчання: професійний користувач (OS Windows, Word, PowerPoint, Excel, інтернет) + комп'ютерна графіка (Paint, Photoshop, Illustrator, анімація,основи 3Д-графіки – Blender, 3D-Max).Навчання відбувається тільки українською мовою.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Комп'ютерний гурток "8bit"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
346	0	16	\N	372	6::http://www.chydorebenok.zp.ua/, 1::085-007-81-00, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Підготовчі курси до школи, до ЗНО","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Сімейний клуб-студія "Чудова дитина"	\N	/static/images/club/bg_2.png	#	\N	\N	\N
347	0	16	57	374	6::, 1::, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Освітньо-мистецький центр «Шанс» охоплює широкий спектр курсів і навчальних програм для дорослих і дітей в різних районах м.Києва: Солом'янському, Голосіївському та Дарницькому. Це 8 філій в різних напрямах і для молоді різного віку. Керівники всіх філій центр «Шанс» - досвідчені викладачі, методисти, психологи, а ще всі вони - успішні мами. Вони надають методичну допомогу вчителям і контролюють якість викладання, вони добре розуміють дітей, до них звертаються за порадою батьки. Викладачі та тренери - професійні, творчі, енергійні. В освітньо-мистецькому центрі «Шанс» працюють чемпіони Європи та світу, актори, письменники, барди-музиканти та інші талановиті вчителі, які володіють цікавими методиками і мають позитивне ставлення до світу і людей.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Освітньо-мистецький центр «Шанс»	\N	/static/images/club/bg_2.png	#	\N	29	\N
348	0	16	\N	375	6::http://www.budoclub.com.ua/, 1::0506734802, 1::0977600097, 1::0663676808, 1::0994000766, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Карате До Шотокан - Клуб Будо (Українська федерація карате)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Спортивно-оздоровчий клуб БУДО	\N	/static/images/club/bg_2.png	#	\N	\N	\N
349	4	16	\N	379	6::https://club-gambit.kiev.ua/uk, 1::9.67799217E8, 	{"blocks":[{"key":"etag9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8lltb","text":" ","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[{"offset":0,"length":1,"key":0}],"data":{}},{"key":"98dtl","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9q9dc","text":"Шаховий клуб «Гамбіт» був створений в січні 2009 року. Головна ідея його організаторів полягала в популяризації шахового мистецтва серед київських дітей і підлітків. Спочатку в клубі працювало лише 2 тренери, а кількість учнів ледь досягала кількох десятків осіб. Сьогодні у клубі і філіях займаються понад 600 дітей, з якими працюють досвідчені наставники, у тому числі кілька міжнародних майстрів і гросмейстерів.  З вересня 2013 року відкриті філії клубу «Гамбіт» в школах Миколаєва, Херсона, Полтави, Львова, Сваляви, Білої Церкви. Плануємо створити подібні філії у всіх обласних центрах України.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{"0":{"type":"image","mutability":"IMMUTABLE","data":{"src":"https://linguapedia.info/wp-content/uploads/2015/05/history-of-ukrainian.jpg","className":"edited-image edited-image-center"}}}}	\N	\N	\N	Шаховий клуб Гамбіт	\N	/static/images/club/bg_2.png	#	\N	\N	\N
\.


--
-- Data for Name: complaints; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.complaints (id, answer_text, date, has_answer, is_active, text, club_id, recipient_id, user_id) FROM stdin;
\.


--
-- Data for Name: contact_type; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.contact_type (id, name, url_logo) FROM stdin;
1	Телефон	/static/images/contacts/phone.svg
2	Facebook	/static/images/contacts/facebook.svg
3	WhatsApp	/static/images/contacts/whats-app.svg
4	Пошта	/static/images/contacts/mail.svg
5	Skype	/static/images/contacts/skype.svg
6	Site	/static/images/contacts/website-link-icon.svg
\.


--
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.districts (id, name, city_id) FROM stdin;
1	Деснянський	1
2	Святошинський	1
3	Дніпровський	1
4	Печерський	1
5	Голосіївський	1
6	Дарницький	1
7	Солом’янський	1
8	Оболонський	1
9	Шевченківський	1
10	Подільський	1
11	Холодногірський	2
12	Київський	2
13	Московський	2
14	Немишлянський	2
15	Індустріальний	2
16	Слобідський	2
17	Основ'янський	2
18	Новобаварський	2
19	Амур-Нижньодніпровський	3
20	Соборний	3
21	Центральний	3
22	Чечелівський	3
23	Новокодацький	3
24	Самарський	3
25	Малиновський	4
26	Приморський	4
27	Суворовський	4
28	Олександрівський	5
29	Заводський	5
30	Комунарський	5
31	Вознесенівський	5
32	Хортицький	5
\.


--
-- Data for Name: excel_center_entity; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.excel_center_entity (autogenerated_id, address, center_external_id, city_name, coordinates, description, district, name, phone, station, web_contact) FROM stdin;
\.


--
-- Data for Name: excel_club_entity; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.excel_club_entity (autogenerated_id, address, ages, categories, center_external_id, city_name, club_external_id, coordinates, description, district, name, phone, station, web_contact) FROM stdin;
\.


--
-- Data for Name: feedbacks; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.feedbacks (id, date, rate, text, club_id, parent_comment_id, user_id) FROM stdin;
\.


--
-- Data for Name: galleries; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.galleries (id, url, club_id) FROM stdin;
\.


--
-- Data for Name: gender; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.gender (id, value) FROM stdin;
1	MALE
2	FEMALE
\.


--
-- Data for Name: group_cohort; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.group_cohort (id, end_date, enrollment_key, start_date, title) FROM stdin;
\.


--
-- Data for Name: group_test; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.group_test (id, group_id, test_id) FROM stdin;
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.locations (id, address, latitude, longitude, name, phone, center_id, city_id, club_id, district_id, station_id) FROM stdin;
1	Київська область, смт. Коцюбинське, вул. Пономарьова, 26, корп. 4	50.487450878904184	30.343756024532205	center_location_first.....	\N	1	1	\N	\N	57
2	м. Одеса, Краснослобідська, 64        	46.4907857282063	30.69578145499743	center_location_first.....	\N	2	4	\N	27	90
3	Запоріжжя, вул.Героїв 93ї бригади 10А	47.8212789	35.0458015	center_location_first.....	\N	3	5	\N	32	96
4	Одеса, проспект Добровольского, 106а	46.58489483224275	30.79141075622824	center_location_first.....	\N	4	4	\N	27	91
5	Київ, вул. Закревського 43-а 	50.506547054534046	30.61613534242715	center_location_first.....	\N	5	1	\N	1	52
6	м.Запоріжжя, вул.Фелікса Мовчановського, 54	47.816576534978076	35.19318622490782	center_location_first.....	\N	6	5	\N	9	81
7	Київ,  01042, вул. Йоана Павла II, буд 11	50.421064395222416	30.532655155916466	center_location_first.....	\N	7	1	\N	4	14
8	Київ, вул. Круглоуніверситетська, 3/5	50.4433438983246	30.523189884911204	center_location_first.....	\N	8	1	\N	9	24
9	м.Київ, вул. Шота Руставелі 30б	50.437637647380264	30.5179955828685	center_location_first.....	\N	9	1	\N	4	13
10	Київ, вул. Тираспільська, 49	50.47956597767154	30.412554438304742	center_location_first.....	\N	10	1	\N	9	43
11	вул. Старонаводницька, 4в	50.4273462073105	30.542158198190894	center_location_first.....	\N	11	1	\N	4	35
12	вул. М. Цвєтаєвої, 3	50.52272801275861	30.616415940244526	center_location___	\N	11	1	\N	1	52
13	 вул. Б. Гмирі, 6	50.39337669554002	30.62703966907456	center_location___	\N	11	1	\N	6	34
14	 вул. Микільсько-Слобідська, 1А	50.45471508372604	30.59318619791282	center_location___	\N	11	1	\N	3	25
15	 вул. Дніпровська набережна, 25А	50.40565758761213	30.614350097910798	center_location___	\N	11	1	\N	6	34
16	просп. Героїв Сталінграду, 10а	50.499994667271096	30.516639942092713	center_location___	\N	11	1	\N	8	32
17	 просп. Героїв Сталінграду, 21/38	50.50538386276442	30.50895345558614	center_location___	\N	11	1	\N	8	32
18	Київ, вул. Олександрівська, 1	50.459737132507854	30.4012281132554	center_location___	\N	11	1	\N	9	31
19	вул. Гетьмана Петра Дорошенка 9	48.41583979168652	35.06654102676588	center_location_first.....	\N	12	3	\N	20	77
20	Гідропаркова 3т	48.47994406643924	34.90371629978124	center_location___	\N	12	3	\N	23	72
21	вул. С. Ковалевської 88-а	48.51983591940739	35.05314401327584	center_location___	\N	12	3	\N	15	80
22	вул. К. Петрова 29	48.39584748733521	35.03722816927471	center_location___	\N	12	3	\N	20	77
23	Київ, вул. Богдана Гаврилишина, 7 (КПІ)	50.453423861742095	30.468291684650673	center_location_first.....	\N	13	1	\N	9	38
24	Київ, вул. Срібнокільська 1	50.40248382960646	30.630255682801383	center_location___	\N	13	1	\N	6	37
25	Київ, Оболонський проспект 18	50.50956082811797	30.49952658280526	center_location___	\N	13	1	\N	8	30
26	Київ, Деміївська, 13 	50.4038899577471	30.513774211636687	center_location___	\N	13	1	\N	5	15
27	Київ, вул. Архітектора Вербицького, 4-Б 	50.41340764176454	30.648973463278228	center_location_first.....	\N	14	1	\N	6	48
28	Київ, вул. Михайлівська, 22б	50.45436581818899	30.522113124742454	center_location_first.....	\N	15	1	\N	9	40
29	Дніпро, вулиця Херсонська, 3	48.46302578010288	35.03310592690892	center_location_first.....	\N	16	3	\N	21	\N
30	 Київ, вул.Введенська, 45/48	50.47275068848488	30.513083911639246	center_location_first.....	\N	17	1	\N	10	56
31	Київ вул. Осиповського, 9-А	50.515367400302104	30.437305653504296	center_location___	\N	17	1	\N	10	\N
32	Київ, проспект Леся Курбаса, 7Г	50.42561262938378	30.38223134047288	center_location_first.....	\N	18	1	\N	2	\N
33	Київ, проспект Перемоги, 136	50.45690061426661	30.365514126514036	center_location___	\N	18	1	\N	2	19
34	Київ, вул. Чистяківська, 18 (Науково-технічний відділ)	50.45331500301462	30.396232184184615	center_location_first.....	\N	19	1	\N	2	\N
35	пр. Перемоги, 71/2 (Естетичний відділ	50.458012771349075	30.402365411172628	center_location___	\N	19	1	\N	2	31
36	Дніпро, вул. Рабоча, 64	48.45898912202136	35.00543788225766	center_location_first.....	\N	20	3	\N	21	\N
37	просп. Пушкіна, 75	48.467874879707686	35.012584439928716	center_location___	\N	20	1	\N	21	\N
38	вул. Фабрично-заводська, 22	48.426240727558934	35.00869642643321	center_location___	\N	20	1	\N	22	\N
39	вул. Кедріна,57	48.4395668963483	35.00032768273138	center_location___	\N	20	1	\N	22	\N
40	 вул. Робоча, 75а	48.44989841894835	35.00400962643418	center_location___	\N	20	1	\N	22	\N
41	 вул. Дзеркальна, 42	48.40925563851309	34.918057168761806	center_location___	\N	20	1	\N	22	\N
42	вул. Будівельників, 26	48.4254884309609	35.00187775389544	center_location___	\N	20	1	\N	22	\N
43	вул. Тітова, 4	48.43022719577049	35.012576168762635	center_location___	\N	20	1	\N	22	\N
44	вул. Янгеля, 2	48.43004453427394	35.00581319759802	center_location___	\N	20	1	\N	22	\N
45	вул. Новошкільна, 6	48.403213047196374	34.95477179574945	center_location___	\N	20	1	\N	22	\N
46	вул. Робоча, 93а	48.44152740225691	34.99849101156681	center_location___	\N	20	1	\N	22	\N
47	вул. Фабрично-заводська, 3/5	48.42524877004102	35.00846735342107	center_location___	\N	20	1	\N	22	\N
48	Дніпро, вул. Футбольна, 15А	48.43650937640811	34.80174792458605	center_location_first.....	\N	21	3	\N	23	\N
49	Дніпро, вул. Вітчизняна, 93	48.517847052447856	35.034439474869785	center_location___	\N	21	1	\N	15	\N
50	Дніпро, вул. Передова, 427	48.5285258442586	34.965672068766445	center_location___	\N	21	1	\N	19	\N
51	Дніпро, Золотоосіння 26	48.44723661022224	34.77308393992793	center_location___	\N	21	1	\N	23	\N
52	вул. Ясенова, 65 	48.48445909489598	34.7132808515757	center_location___	\N	21	1	\N	23	\N
53	Дніпро, Шевченківський р-н,  ж/м Тополя-1, буд. 8а	48.40704523378038	35.02900842458497	center_location_first.....	\N	22	3	\N	9	77
54	Дніпро, вул. Запорізьке шосе,  буд. 40	48.40862092826382	35.029062639926366	center_location___	\N	22	1	\N	9	77
55	Дніпро, вул. Запорізьке шосе,  буд. 48	48.40680555684729	35.030517055267836	center_location___	\N	22	1	\N	9	77
56	Дніпро,  ж\\м Тополя - 3, буд. 31, кор.1 кв.1	48.39656792145247	35.0342871934011	center_location___	\N	22	1	\N	9	77
57	Дніпро, вул. Тополина, 33	48.39112111625777	35.023223426431905	center_location___	\N	22	1	\N	9	77
58	Одеса, вул. ак. Корольова 120/2	46.38551779569603	30.721825297519448	center_location_first.....	\N	23	4	\N	12	\N
59	 Одеса, пр. Небесної Сотні, 47	46.409343227852716	30.712877297520432	center_location___	\N	23	1	\N	12	\N
60	Одеса, вул. Перлинна 7	46.35628007176801	30.70552224032996	center_location___	\N	23	1	\N	12	\N
61	вул. Кирилівська, 134а, 3-й поверх	50.48840282676756	30.471192275414474	center_location_first.....	\N	24	1	\N	8	39
62	Запоріжжя, вул. Історична, 14	47.88430541038933	35.16531857103073	center_location_first.....	\N	25	5	\N	29	98
63	Запоріжжя, Запоріжжя, вул. Перемоги, 66В	47.835097413744414	35.123345057536284	center_location___	\N	25	1	\N	31	\N
64	Дніпро, вул. Обсерваторна, 7Л	48.42919304169609	35.0482308998837	center_location_first.....	\N	26	3	\N	20	\N
65	Дніпро, вул. Надії Алексєєнко (Чичеріна), 104/3	48.44962313598329	35.005725809677784	center_location___	\N	26	1	\N	22	\N
66	Дніпро, вул. Узвіз Крутогірний, 9; 	48.46245590333237	35.05731930455365	center_location_first.....	\N	27	3	\N	20	\N
67	  Дніпро, вул. Космодромна, 8	48.40680292350242	35.050945986389976	center_location___	\N	27	1	\N	20	77
68	Дніпро, вул. Ливарна, 3	48.46608888521467	35.05861098269236	center_location___	\N	27	1	\N	20	\N
69	Дніпро, вул. Набережна Перемоги, 5	48.45074147189263	35.08027423851352	center_location_first.....	\N	28	3	\N	20	\N
70	Дніпро, Тополя-3, вул. Комбрига Петрова, 31	48.39462203798569	35.0373856189246	center_location___	\N	28	1	\N	9	\N
71	проспект Академіка Глушкова 28	50.36642609220793	30.448728121276876	center_location_first.....	\N	29	1	\N	5	46
72	вул. Драгоманова вулиця, 9а​ (1 поверх)	50.41431679408803	30.639629553733158	center_location___	\N	29	1	\N	6	48
73	 вул. ​Архітектора Вербицького, 7​ (128 кабінет; 1 поверх)	50.40990500155817	30.659545713253323	center_location___	\N	29	1	\N	6	8
74	Дніпро, вул.Шолохова, 17	48.50800292624344	35.00895570253745	center_location_first.....	\N	30	3	\N	19	\N
75	Дніпро, вул. Башкирська, 6	48.52064117414382	34.955659014737954	center_location___	\N	30	1	\N	19	\N
76	Дніпро, вул. Шолохова, 35	48.50086729660258	34.99211930358531	center_location___	\N	30	1	\N	19	\N
77	Дніпро, вул. Робоча, 64	48.458946432654024	35.005673917076976	center_location___	\N	30	1	\N	22	\N
78	Дніпро, вул. Коробова, 3	48.484143106761074	34.93036540358491	center_location___	\N	30	1	\N	23	\N
79	Дніпро, вул. Спогадів,  65А	48.50136106881547	35.1879783980362	center_location___	\N	30	1	\N	24	\N
80	Дніпро, вул. Гетьмана Петра Дорошенка, 3	48.417539782757004	35.065116686390255	center_location___	\N	30	1	\N	20	\N
81	Дніпро, провулок Тульчинський, 3	48.5065019945727	35.01909714036493	center_location___	\N	30	1	\N	19	\N
82	Дніпро, Набережна Перемоги, 13 	48.445034350129504	35.07643892687013	center_location___	\N	30	1	\N	20	\N
83	Дніпро, вул. Путилівська, 7	48.510721709247115	35.070506455707786	center_location_first.....	\N	31	3	\N	19	\N
84	Дніпро, просп. Слобожанський, 137А; 	48.52617409984519	35.081880940365544	center_location_first.....	\N	32	1	\N	15	\N
85	Дніпро, вул. Батумська, 64; 	48.511275307926994	35.09107101152943	center_location___	\N	32	1	\N	15	\N
86	Дніпро, вул. Г. Корольової, 14Г; 	48.509873857929556	35.088073025022446	center_location___	\N	32	1	\N	15	\N
87	Дніпро, вул. Березинська 29	48.530714761566955	35.02465545570853	center_location___	\N	32	1	\N	15	\N
88	Дніпро, вул. С. Ковалевської, 71А;	48.51869875002691	35.05184548279763	center_location___	\N	32	1	\N	15	\N
89	Дніпро, вул. Воронезька, 67	48.5256147681658	35.05616228639377	center_location___	\N	32	1	\N	15	\N
90	Дніпро, вул. Б. Хмельницького, 15 	48.44521569558644	35.025728631985366	center_location___	\N	32	1	\N	21	\N
91	Київ, вулиця Фізкультури 1, корпус 3	50.431729864435745	30.517703609886745	club_loc_!!!	\N	\N	1	26	\N	33
92		\N	\N	club_loc_!!!	\N	\N	1	27	\N	\N
93	Одеса, пр-т. Шевченка, 31А	46.447775329824736	30.75974552695437	club_loc_!!!	\N	\N	4	30	\N	\N
94	Одеса, вул. Мечникова, 74	46.47787717339522	30.721517055704087	club_loc_!!!	\N	\N	4	31	\N	89
95		\N	\N	club_loc_!!!	\N	\N	1	32	\N	89
96	Київ, вул. Дмитрівська 69, Центр Унікум	50.45489918117208	30.48682242700856	club_loc_!!!	\N	\N	1	33	9	27
97	Київ, вулиця Василя Стуса, № 22/1	50.46015874265899	30.36317681351518	club_loc_!!!	\N	\N	1	34	2	19
98	Київ, вул. Генерала Родимцева, 6	50.3751336126021	30.508329196321608	club_loc_!!!	\N	\N	1	35	5	9
99	Київ, вул.Тургенівська 3/9	50.448483543430356	30.49468271351477	club_loc_!!!	\N	\N	1	36	9	47
100	Харків, Різдвяна 29 а	49.992763840536384	36.22083824054793	club_loc_!!!	\N	\N	2	37	11	64
101	Одеса, вул. Грецька, 1а	46.48192568242089	30.747411298096583	club_loc_!!!	\N	\N	4	38	26	81
102	Одеса, вул. Академіка Вільямса, 59ж	46.38728449066245	30.729552013436578	club_loc_!!!	\N	\N	4	39	12	\N
103	Одеса, пр-т Олександрівський, 11	46.47973272315457	30.73591262508166	club_loc_!!!	\N	\N	4	40	26	81
104	Одеса, вул. Махачкалинська, 7	46.58957634833349	30.800985471115126	club_loc_!!!	\N	\N	4	41	27	\N
105	Одеса, вул. академіка Філатова, 66/68	46.44122554377795	30.71205155576679	club_loc_!!!	\N	\N	4	42	25	\N
106	Київ, Оболонський проспект 21Б , ТРЦ DREAM TOWN 2	50.51506585630711	30.498772683299904	club_loc_!!!	\N	\N	1	43	8	30
107	вулиця Раїси Окіпної, 4Б, Київ	50.45055347854801	30.594064569564402	club_loc_!!!	\N	\N	1	44	3	25
108	Київ, пр-т Степана Бандери, 34В, ТРЦ “Блокбастер”, IC Coworking 2-й поверх	50.48670779610166	30.519254896532303	club_loc_!!!	\N	\N	1	51	8	39
109	Одеса, пл. Молоді, 17	46.49076284862427	30.705237726955886	club_loc_!!!	\N	\N	4	53	27	\N
110	Одеса, вул. Баштанна, 7	46.413439984874636	30.750239926953206	club_loc_!!!	\N	\N	4	54	12	\N
111	Одеса, вул.Балківська 42/1	46.48663036237369	30.705851128807083	club_loc_!!!	\N	\N	4	55	27	\N
112	Одеса, провулок Чехова, 1	46.462280962591585	30.738145284626746	club_loc_!!!	\N	\N	4	56	26	\N
113	Одеса, вул.Варненська,12	46.424855258734915	30.714113511609817	club_loc_!!!	\N	\N	4	57	25	\N
114	Одеса, вул. Чорноморського козацтва, 45	46.50558826975477	30.724257398120415	club_loc_!!!	\N	\N	4	58	27	\N
115	Одеса, вул. Паустовського, 17/1	46.59675930440159	30.796316823797543	club_loc_!!!	\N	\N	4	59	27	91
116	Одеса, Люстдорфська дорога, 25	46.43694035849515	30.726743025102596	club_loc_!!!	\N	\N	4	60	12	\N
117	Одеса, вул. Троїцька, 47	46.477171124068796	30.733353755791256	club_loc_!!!	\N	\N	4	61	26	81
118	м. Київ, вул. М. Стельмаха, 10-А	50.394764409699214	30.503235111636506	club_loc_!!!	\N	\N	1	91	8	32
119	вулиця Маршала Тимошенка, 2А, Київ, 02000	50.50873537746978	30.492556146830847	club_loc_!!!	\N	\N	1	92	8	32
120	Київ, вул. Челябінська 7в	50.46487990940844	30.59266582995044	club_loc_!!!	\N	\N	1	93	3	12
121	Київ, вул.Закревського 22	50.50950698295816	30.615679184489192	club_loc_!!!	\N	\N	1	94	3	\N
122	м. Київ, вул. Еспланадна, 20, офіс 213	50.4377865304128	30.520350598144102	club_loc_!!!	\N	\N	1	95	4	13
123	Київ, вулиця Михайла Драгоманова, 15А	50.41015665751024	30.641014896295605	club_loc_!!!	\N	\N	1	96	6	48
124		\N	\N	club_loc_!!!	\N	\N	1	97	\N	\N
125	Київ, вулиця Бориса Гмирі, 16	50.39198164460494	30.62948651469475	club_loc_!!!	\N	\N	1	98	6	34
126	м.Київ, вул. Заслонова, 18	50.42813182698949	30.658593088414975	club_loc_!!!	\N	\N	1	105	6	\N
127	Київ, вул.Ревуцького 6	50.41639397907305	30.64542252231099	club_loc_!!!	\N	\N	1	106	6	48
128	Київ, вул. Харківське шосе 121/3	50.418902412644755	30.66471957153746	club_loc_!!!	\N	\N	1	107	6	4
129	Київ, вул. А.Ахматової, 5	50.411658070122186	30.641830347315345	club_loc_!!!	\N	\N	1	108	6	48
130	Київ,  вул. Є.Харченко 47	50.38344841253407	30.69992498786846	club_loc_!!!	\N	\N	1	109	6	4
131	Київ, вул. Ю. Пасхаліна,15а  	50.426556376946024	30.65188407677164	club_loc_!!!	\N	\N	1	110	6	8
132	Київ, вулиця Юрія Пасхаліна, 15	50.42666232211701	30.65110085603682	club_loc_!!!	\N	\N	1	111	6	8
133	Київ, вул. Січових стрільців, 43	50.45624567045019	30.495980640474006	club_loc_!!!	\N	\N	1	115	9	27
134	Київ, вул. Руденко, 6а; 	50.3952404581374	30.641725785693954	club_loc_!!!	\N	\N	1	116	6	37
135	Харків, вул. Костомарівська, 2	50.01181442395633	36.24162739129987	club_loc_!!!	\N	\N	2	117	12	\N
136	Київ, вул.Січових Стрільців 77, оф.101	\N	\N	club_loc_!!!	\N	\N	1	118	9	27
137	Запоріжжя, вулиця Авраменка, 2	47.85129127153506	35.23754468271073	club_loc_!!!	\N	\N	5	119	9	\N
138	Дніпро, проспект Слобожанський, 36	48.50479611156998	35.0753188692397	club_loc_!!!	\N	\N	3	123	15	\N
139	Дніпро, вулиця Робоча, 87 	48.44426547703265	34.999203682731554	club_loc_!!!	\N	\N	3	124	22	\N
140	Київ, вул. Костянтина Данькевича, 13	50.52049599730245	30.614474940476388	club_loc_!!!	\N	\N	1	125	1	52
141	Київ, вул. Райдужна 53	50.47994513960478	30.59006972513348	club_loc_!!!	\N	\N	1	125	3	51
142	Київ, бульвар Кольцова 15в	50.42023384374495	30.37921221163746	club_loc_!!!	\N	\N	1	126	2	55
143	 Київ, вул. Вишгородська 44	50.514034137883314	30.45046024047613	club_loc_!!!	\N	\N	1	126	8	56
144	Київ, вул.Тургенівська 3/9	50.44879780609008	30.494511052120185	club_loc_!!!	\N	\N	1	126	9	47
145	м. Запоріжжя, вул. Січі, 3	47.84923232568747	35.139638720491334	club_loc_!!!	\N	\N	5	127	31	\N
146	м.Запоріжжя, провулок Ракушечний, 1	47.89695	35.15311	club_loc_!!!	\N	\N	5	128	29	\N
147	Дніпро, вулиця Ульянова, 4	48.46078290978594	35.02862820738699	club_loc_!!!	\N	\N	3	129	21	\N
148	Дніпро, вул. Юрія Кондратюка, 17а	48.48234824709814	34.925667595210854	club_loc_!!!	\N	\N	3	130	23	\N
149	Дніпро, проспект Олександра Поля, 37	48.45947801079161	35.027340291499286	club_loc_!!!	\N	\N	3	131	21	\N
150	Київ, вул.Зої Гайдай 10в  шк№252	50.518577303603536	30.49383979278056	club_loc_!!!	\N	\N	1	132	8	10
151	Київ, вул. Регенераторна, 4в  (“Академія Сучасної Освіти А+”)	50.434694	30.623123	club_loc_!!!	\N	\N	1	133	3	12
152	 Запоріжжя, вул. Чарівна, 157В	47.845269589101726	35.23107577428536	club_loc_!!!	\N	\N	5	134	9	\N
153	Запоріжжя, бульвар Будівельників, 15	47.82734875565132	35.02667454914853	club_loc_!!!	\N	\N	5	135	32	\N
154	Запоріжжя, вул. Поштова, 57а	47.814350701643775	35.17746654044432	club_loc_!!!	\N	\N	5	136	28	\N
155	Запоріжжя, проспект Моторобудівників, 26	47.815503253492935	35.19744611160865	club_loc_!!!	\N	\N	5	137	9	\N
156	м. Запоріжжя, вул. Чарівна, 11	47.83661601424332	35.19855024038097	club_loc_!!!	\N	\N	5	138	9	\N
157	Запоріжжя, вул. Чумаченка, 13А	47.78679814318721	35.23278012078119	club_loc_!!!	\N	\N	5	139	30	\N
158	Запоріжжя, вул. Українська, 29	47.8241775324141	35.15071161154521	club_loc_!!!	\N	\N	5	140	31	\N
159	Запоріжжя, вул. Михайла Гончаренка, 20	47.844303091717876	35.11865621154589	club_loc_!!!	\N	\N	5	141	31	\N
160	Запоріжжя, вулиця Академіка Александрова, 7	47.89098516225289	35.013125652590375	club_loc_!!!	\N	\N	5	142	3	99
161	Харків, вул. Чернишевська, 58	50.00568962946474	36.24173574045772	club_loc_!!!	\N	\N	2	143	12	\N
162	Харків, вул. Героїв праці, 12-В	50.02409915589429	36.32747242696451	club_loc_!!!	\N	\N	2	144	13	\N
163	Харків, пр. Перемоги, 64А	50.06197562279102	36.2064087269659	club_loc_!!!	\N	\N	2	145	9	\N
164	 Харків, вул. Бучми, 14А	50.02931186102841	36.34717694045864	club_loc_!!!	\N	\N	2	146	13	\N
165	Київ, проспект Миру, 2/3а	50.44328429826809	30.623831824742453	club_loc_!!!	\N	\N	1	147	3	\N
166	Київ, вул. М. Кибальчича, 12А	50.48980953550775	30.598013369310678	club_loc_!!!	\N	\N	1	148	3	51
167	Київ, вул. Сєрова,19	50.48641611968515	30.587945940475162	club_loc_!!!	\N	\N	1	149	3	51
168	Київ, вул. Краківська, 20	50.4552722193169	30.625307411638715	club_loc_!!!	\N	\N	1	150	3	\N
169	Київ, бул. Ігоря Шамо 5	50.43606376964347	30.59692004047328	club_loc_!!!	\N	\N	1	151	3	\N
170	Київ, вул. І.Мазепи, 13	50.44159621953463	30.551947082802894	club_loc_!!!	\N	\N	1	152	4	2
171	Дніпро, вул. Космонавтів, 8; 	48.414855519303416	35.131406209235095	club_loc_!!!	\N	\N	3	153	24	\N
172	Дніпро, вул. Семафорна, 42 (філія); 	48.492182290647875	35.13783329019566	club_loc_!!!	\N	\N	3	153	24	\N
173	Запоріжжя, площа Запорізька, 1	47.86060043634568	35.089730276680456	club_loc_!!!	\N	\N	5	154	3	\N
174	Київ, Бориса Грінченка,9	50.449227123386834	30.520371013492966	club_loc_!!!	\N	\N	1	155	9	29
175	Харків, вул. Амосова, 46	49.98348539738584	36.361489932577356	club_loc_!!!	\N	\N	2	156	14	\N
176	Харків, вул.Амосова, 23а	49.986009296195306	36.35842509394823	club_loc_!!!	\N	\N	2	157	14	\N
177	Харків, пров. 2-й Лісопарківський, 5	50.03619997502382	36.2823077884009	club_loc_!!!	\N	\N	2	158	12	61
178	Харків, вул. Старошишківська, 8	50.0372679171905	36.28983224792199	club_loc_!!!	\N	\N	2	159	12	61
179	Київ, пров. Інженерний, 4Б	50.44272942034449	30.5462190135518	club_loc_!!!	\N	\N	1	160	4	2
180	Киїів, вул. Пушкінська, 20А (2 поверх)	50.44484900169012	30.517375759579895	club_loc_!!!	\N	\N	1	160	9	45
181	вул. Шота Руставелі, 36	50.437120267449615	30.518914633898596	club_loc_!!!	\N	\N	1	160	9	36
182	вул. Верхній Вал, 42-Г	50.468314631236765	30.516655484172208	club_loc_!!!	\N	\N	1	160	9	23
183	вул. Драгоманова, 31-Б	50.40179784727241	30.64071064184111	club_loc_!!!	\N	\N	1	160	6	37
184	вул. М.Гришка, 6А	50.39589108193717	30.63130272279867	club_loc_!!!	\N	\N	1	160	6	37
185	вул. Митрополита Андрея Шептицького, 4 оф.32, (8 поверх)	50.45382763366909	30.598679054031088	club_loc_!!!	\N	\N	1	160	3	25
186	вул. Олександрівська, 1	50.459822509864416	30.40162508047236	club_loc_!!!	\N	\N	1	160	9	31
187	просп. Голосіївський, 27 (2 поверх)	50.40040019059179	30.513853055878858	club_loc_!!!	\N	\N	1	160	5	11
188	Харків, вул. Римарська, 32	49.99827314330374	36.23283715586437	club_loc_!!!	\N	\N	2	160	9	47
189	Київ, вул. Саперне поле, 26	50.41807771048571	30.531889334442766	club_loc_!!!	\N	\N	1	161	4	18
190	Київ, проспект Голосіївський, 22/1	50.406705490531984	30.51746548841425	club_loc_!!!	\N	\N	1	162	5	15
191	Київ, Дарницький район, вул. Здолбунівська, 7Б	50.413477646248616	30.617675627043635	club_loc_!!!	\N	\N	1	163	6	37
192	Київ, вул. Шолом-Алейхема, 15А; 	50.474425041147484	30.634601269264376	club_loc_!!!	\N	\N	1	164	1	\N
193	Київ, вул. Каштанова 5А	50.50182017061583	30.583397540539835	club_loc_!!!	\N	\N	1	164	1	\N
194	Київ, вул. Героїв Дніпра 14Г	50.51999226983478	30.492323253427042	club_loc_!!!	\N	\N	1	165	8	32
195	м. Київ, вул. Прирічна, 3	50.515617855334156	30.512918211704655	club_loc_!!!	\N	\N	1	166	8	30
196	Київ, проспект Г.Сталінграда, 18	50.50973248860036	30.50822930006114	club_loc_!!!	\N	\N	1	167	8	30
197	Київ, вулиця Дарвіна, 2	50.44252394396529	30.524707582866295	club_loc_!!!	\N	\N	1	168	4	13
198	Київ, провулок Лабораторний, 24	50.42897526300845	30.529783355880244	club_loc_!!!	\N	\N	1	169	4	35
199	Київ, Контрактова пл., 12	50.46248323091113	30.51834452704545	club_loc_!!!	\N	\N	1	170	10	23
200	Київ, вул. Бударіна, 3	50.44680503695268	30.278720111638293	club_loc_!!!	\N	\N	1	183	2	\N
201	Харків, проспект Олександрівський, 162	49.93905477519153	36.37565115394932	club_loc_!!!	\N	\N	2	190	15	\N
202	Харків, вул. Луї Пастера, 4	49.93626525342809	36.36445699812596	club_loc_!!!	\N	\N	2	191	15	\N
203	Дніпро, вул. Дарницька, 9А	48.505179	35.072147	club_loc_!!!	\N	\N	3	192	15	\N
204	м Харків, вул. Гостинна, 16	49.972984135261136	36.21931691162129	club_loc_!!!	\N	\N	2	193	18	\N
205	Харків, Профспілковий бульвар, 1	49.97468002948534	36.19255214045653	club_loc_!!!	\N	\N	2	194	18	\N
206	Харків, вул.Володимирська, буд.37	49.974623229713174	36.22223161162129	club_loc_!!!	\N	\N	2	195	18	\N
207	Харків, пр. Гвардійців-Широнінців 38Г	50.014448695504385	36.346108069293514	club_loc_!!!	\N	\N	2	196	13	\N
208	Харків, вул. Салтівське шосе, 147-А	49.99163377965925	36.356374869292594	club_loc_!!!	\N	\N	2	197	13	\N
209	Харків, вул. Валентинівська, 25Д	50.01777645963534	36.33801736929356	club_loc_!!!	\N	\N	2	198	13	\N
210	Харків, вул. Грозненська, 56	49.95139963546028	36.25396717444328	club_loc_!!!	\N	\N	2	199	17	70
211	Київ, вул. Північна, 26 (Оболонь)	50.52716903991473	30.50965958280588	club_loc_!!!	\N	\N	1	200	8	10
212	Київ, вул. Григоренка 18А	50.410724181001534	30.62492378280172	club_loc_!!!	\N	\N	1	201	6	37
213	Запоріжжя, вул Авраменка, 2 	47.851305670857094	35.23759832688752	club_loc_!!!	\N	\N	5	202	9	\N
214	Запоріжжя, вул. Козача, 7А	47.82605264748307	35.14997485387456	club_loc_!!!	\N	\N	5	203	31	\N
215	Запоріжжя, вул. Гоголя, 47 	47.81463886245994	35.18396418270939	club_loc_!!!	\N	\N	5	204	30	\N
216	Запоріжжя, вул. Сталеварів, 17	47.84382769660533	35.1231411403812	club_loc_!!!	\N	\N	5	205	31	\N
217	Запоріжжя, вул. Незалежної України, 36	47.85845134817423	35.108687011546294	club_loc_!!!	\N	\N	5	206	3	\N
218	Запоріжжя, вул. Павлокічкаська, 26	47.88834827685978	35.16531626707174	club_loc_!!!	\N	\N	5	207	29	\N
219	Запоріжжя, вул. 14 жовтня, 15	47.83060163902299	35.02634375387462	club_loc_!!!	\N	\N	5	208	32	\N
220	Запоріжжя, вул. Чубанова, 1Г	47.78571362051632	35.17143762688536	club_loc_!!!	\N	\N	5	209	9	\N
221	Запоріжжя, пр. Соборний, 214	47.85470376198022	35.11205285387544	club_loc_!!!	\N	\N	5	210	31	\N
222	Запоріжжя, вул. Фелікса Мовчановського, 52А	47.83155883590113	35.19259269805149	club_loc_!!!	\N	\N	5	211	9	\N
223	Запоріжжя, вул. Фундаментальна, 9	47.883595866115996	35.168696211547235	club_loc_!!!	\N	\N	5	212	29	\N
224	Запоріжжя, проспект Моторобудівників, 60	47.82899503870394	35.19872921154536	club_loc_!!!	\N	\N	5	213	9	\N
225	Запоріжжя, вул. Козака Бабури, 14	47.81735347343614	35.03078051154488	club_loc_!!!	\N	\N	5	214	32	\N
226	Запоріжжя, вул. Лермонтова, 21	47.83871291113611	35.12616694038095	club_loc_!!!	\N	\N	5	215	31	\N
227	Запоріжжя, вул. Харчова, 35	47.829736041846076	35.223452011545426	club_loc_!!!	\N	\N	5	216	9	\N
228	Запоріжжя, вул. Гоголя, 81	47.81873328613733	35.179010798051074	club_loc_!!!	\N	\N	5	217	31	\N
229	Дніпро, вул. Прогресивна 1А;	48.48422121911265	35.0676053404036	club_loc_!!!	\N	\N	3	218	19	\N
230	Дніпро, вул. Костомарівська 8	48.45988146174675	35.036073411567465	club_loc_!!!	\N	\N	3	218	21	81
231	Дніпро, проспект Дмитра Яворницького, 97	48.470787827350996	35.033244126909175	club_loc_!!!	\N	\N	3	219	21	81
232	Дніпро, вул. Миколи Міхновського 8	48.531490891819466	35.025642397601736	club_loc_!!!	\N	\N	3	219	15	\N
233	Дніпро, вул. Володимира Мономаха 6, офісі 303	48.467824191408106	35.046797869238404	club_loc_!!!	\N	\N	3	220	21	81
234	Дніпро, пров. Добровольців 3	48.40898646122297	35.077542655267905	club_loc_!!!	\N	\N	3	221	20	\N
235	Дніпро, вул. Малиновського, 2 (ТРЦ Вавилон)	48.48389889602745	35.063960526435416	club_loc_!!!	\N	\N	3	221	15	\N
236	Дніпро, вул. Братів Трофімових, 111, 2 пов.	48.47809976040912	34.92303086876458	club_loc_!!!	\N	\N	3	221	23	72
237	Київ, вул. Михайлівська 17А	50.45499946256347	30.52102801348619	club_loc_!!!	\N	\N	1	222	9	\N
238	Дніпро, вул. Передова, 253    	48.517110281198114	34.996488040404735	club_loc_!!!	\N	\N	3	223	19	\N
239	Дніпро, вул. Космонавтів 7а	48.41156352783276	35.131890140401005	club_loc_!!!	\N	\N	3	224	24	\N
240	Дніпро вул. Станіславського, 12	48.40142418452072	35.135667153420144	club_loc_!!!	\N	\N	3	224	24	\N
241	Дніпро, вул.Синельниківська, 5	48.488103160654696	35.13749435342353	club_loc_!!!	\N	\N	3	224	24	\N
242	Дніпро, вул. Космонавта Волкова, 6	48.4022028121655	35.12717551156544	club_loc_!!!	\N	\N	3	224	24	\N
243	Дніпро, вулиця Набережна Перемоги, 13	48.445045025396006	35.07639601156687	club_loc_!!!	\N	\N	3	247	20	\N
244	Дніпро, вул. Ливарна 3	48.46612089773503	35.05864316923842	club_loc_!!!	\N	\N	3	248	20	81
245	Дніпро, вул. Княгині Ольги, 5	48.47644535938225	35.024087653897205	club_loc_!!!	\N	\N	3	249	21	81
246	Харків, вул. Чичибабина, 5	50.006693526224424	36.22238306929308	club_loc_!!!	\N	\N	2	250	9	62
247	Одеса, вул. ак. Корольова, 90	46.39362417216383	30.719855340331232	club_loc_!!!	\N	\N	4	252	12	\N
248	Одеса, пров. Пироговський, 8	46.46284589478803	30.748927211016262	club_loc_!!!	\N	\N	4	253	26	\N
249	Одеса, Люстдорфська дорога, 33	46.43339935647406	30.72922424033258	club_loc_!!!	\N	\N	4	254	26	\N
250	Одеса, вул. Троїцька, 45	46.47699026410648	30.733889611498846	club_loc_!!!	\N	\N	4	255	26	81
251	Одеса, вул. Архітекторська, 20/2	46.38536319901034	30.716834911495674	club_loc_!!!	\N	\N	4	256	12	\N
252	Одеса, вул. Давида Ойстраха, 15 А	46.587271947477014	30.784106782667138	club_loc_!!!	\N	\N	4	257	27	\N
253	Одеса, Невського, 82	46.412535508738465	30.7283969114965	club_loc_!!!	\N	\N	4	264	12	\N
254	Київ, вул. Січових стрільців, 43	50.45623883975084	30.496055742387856	club_loc_!!!	\N	\N	1	265	9	27
255	Київ, вул. Даниїла Щербаківського, 18	50.46267097936819	30.406758003758995	club_loc_!!!	\N	\N	1	266	9	31
256	Запоріжжя, вул. 12 квітня, 2-Г	47.85042957696399	35.10618428777855	club_loc_!!!	\N	\N	5	267	31	\N
257	Запоріжжя, вул. Істоміна, 18	47.86188134323873	35.0131030556873	club_loc_!!!	\N	\N	5	267	3	103
258	Харків, вул. Клочковська 202	50.02264357473657	36.21207846935826	club_loc_!!!	\N	\N	2	268	9	\N
259	Харків, бульвар Академіка Юр'єва, 12/21	49.959009480080276	36.33798598284884	club_loc_!!!	\N	\N	2	269	14	\N
260	Харків, вул. Благовіщенська, 15	49.98926988453186	36.2189190190845	club_loc_!!!	\N	\N	2	270	11	69
261	Київ. Заняття в Зумі, то ж можна приєднуватись з всієї України	\N	\N	club_loc_!!!	\N	\N	1	271	\N	\N
262	Харків, вул. Іллінська, буд. 35	49.98707299130574	36.19196468469959	club_loc_!!!	\N	\N	2	272	11	68
263	Харків, вул.Волонтерська, 4/6	49.99379698968019	36.19065271168581	club_loc_!!!	\N	\N	2	273	11	69
264	Харків, проспект Тракторобудівників, 55	49.99305627809846	36.33835091538522	club_loc_!!!	\N	\N	2	274	13	\N
265	Харків, вул. Чугуївська, 35	49.972888283825235	36.24964499808368	club_loc_!!!	\N	\N	2	275	17	66
266	Харків, вул. Танкопія 24/3	49.95146466278181	36.31859488643975	club_loc_!!!	\N	\N	2	276	14	\N
267	Харків, вул. Ньютона, 143Б	49.94216118208054	36.31831709623289	club_loc_!!!	\N	\N	2	277	16	\N
268	Харків, проспект Гагаріна, 157/6	49.95317031332951	36.26082031342569	club_loc_!!!	\N	\N	2	278	16	\N
269	Харків, бул. Фронтовиків, 1	50.04711323395356	36.19278694171966	club_loc_!!!	\N	\N	2	279	9	\N
270	Харків, просп. Перемоги, 76А	50.067213980286375	36.21208292692246	club_loc_!!!	\N	\N	2	280	9	\N
271	Київ, вул. Петра Запорожця 26А	50.478540494269566	30.60599491344303	club_loc_!!!	\N	\N	1	281	3	49
272	Київ, вул. Трьохсвятительська 13, оф. 1	50.45506859705249	30.52185054042806	club_loc_!!!	\N	\N	1	282	9	29
273	Київ, вул. Жилянська 46	50.43495266356467	30.508306626389626	club_loc_!!!	\N	\N	1	283	4	33
274	Запоріжжя, пр. Маяковського, 3а	47.84336139819108	35.128490455787976	club_loc_!!!	\N	\N	5	284	31	\N
275	Запоріжжя, вул. Запорізька, 1а	47.82249517651127	35.1571501981159	club_loc_!!!	\N	\N	5	285	28	\N
276	Запоріжжя, вул. 40 річчя Перемоги 11б	47.786920359897486	35.17645091150657	club_loc_!!!	\N	\N	5	286	30	102
277	Харків, вул. Маршала Батицького 15, НВК "Новатор"	49.98595054077044	36.30104378459114	club_loc_!!!	\N	\N	2	287	13	59
278	Запоріжжя, вул. Сталеварів, 24	47.84345959055495	35.122009784522355	club_loc_!!!	\N	\N	5	288	31	\N
279	Запоріжжя, пр. Соборний, 226	47.860584054894865	35.101806969180274	club_loc_!!!	\N	\N	5	289	3	\N
280	Запоріжжя, вул. Горіхова бухта, 11	47.802724007442464	35.165496640342724	club_loc_!!!	\N	\N	5	290	28	102
281	Запоріжжя, вул. Лермонтова, 16	47.84154431010652	35.12747759801526	club_loc_!!!	\N	\N	5	291	31	101
282	Запоріжжя, вул. Лермонтова, 18	47.840742191655096	35.12691302685095	club_loc_!!!	\N	\N	5	292	31	101
283	Запоріжжя, вул. Північнокільцева, 9Б	47.78707975513356	35.21763609996481	club_loc_!!!	\N	\N	5	293	30	\N
284	Запоріжжя, вул. Жуковського, 70В	47.823970951959225	35.177802067329374	club_loc_!!!	\N	\N	5	296	28	102
285	Запоріжжя, вул. 12 Квітня, 2  	47.8530735549559	35.108123582673	club_loc_!!!	\N	\N	5	297	31	\N
286	Запоріжжя, вул. Руставелі, 20	47.8463657900281	35.202610484522516	club_loc_!!!	\N	\N	5	298	9	\N
287	Запоріжжя, пр.Ювілейний, 30А	47.81736265804386	35.032764625000425	club_loc_!!!	\N	\N	5	299	32	96
288	Запоріжжя, вул. О. Матросова,16	47.84544218691651	35.146464082672765	club_loc_!!!	\N	\N	5	300	28	\N
289	Запоріжжя, пр. Маяковського,14	47.84101510339401	35.122243480822874	club_loc_!!!	\N	\N	5	301	31	\N
290	м. Запоріжжя, вул. Тюленіна,13	47.851192572919125	35.104500757536705	club_loc_!!!	\N	\N	5	302	31	\N
291		\N	\N	club_loc_!!!	\N	\N	3	308	\N	\N
292	Дніпро, вул. Виборзька, 14	48.46977339971347	34.994558645913045	club_loc_!!!	\N	\N	3	317	22	\N
293	  Дніпро, вул. Набережна Перемоги, 5	48.450826864388965	35.080381526870276	club_loc_!!!	\N	\N	3	318	20	\N
294	Дніпро, вул. Гладкова, 8	48.401658577333	35.00403568399513	club_loc_!!!	\N	\N	3	319	9	\N
295	Дніпро, пр. Дмитра Яворницького, буд. 32	48.46014044781745	35.05737112687054	club_loc_!!!	\N	\N	3	320	20	\N
296	Одеса, провулок. Канатний, 6	46.47103099257815	30.75082705749391	club_loc_!!!	\N	\N	4	321	26	\N
297	Одеса, Приморський бульвар, 1	46.48946165274187	30.739220053795	club_loc_!!!	\N	\N	4	322	26	\N
298	Одеса, Приморський бульвар, 1	46.48946165274187	30.739220053795	club_loc_!!!	\N	\N	4	323	26	\N
299	Одеса, вул. Маразліївська, 1	46.47612772265092	30.75057341886487	club_loc_!!!	\N	\N	4	324	26	\N
300	Одеса, вул. Пироговська, 25	46.46426973951682	30.743310699822185	club_loc_!!!	\N	\N	4	325	26	\N
301	 Одеса, вул. Дача Ковалевського, 93	46.37602666021519	30.737920428655272	club_loc_!!!	\N	\N	4	326	12	\N
302	Одеса, вул. Спиридонівська,10	46.4831720587675	30.72820612688138	club_loc_!!!	\N	\N	4	327	26	\N
303	Одеса, вул. Балківська, 197	46.46269849516747	30.707287169136734	club_loc_!!!	\N	\N	4	328	25	\N
304	Одеса, вул. Космонавтів, 28	46.432943438101304	30.717175182628836	club_loc_!!!	\N	\N	4	329	25	\N
305	Одеса, вул. Космонавтів, 60А	46.427033767801	30.706435397971482	club_loc_!!!	\N	\N	4	330	25	\N
306	Запоріжжя, просп. Маяковського, 11	47.841034185737264	35.12464144774282	club_loc_!!!	\N	\N	5	342	31	\N
307	Харків, просп. Гагаріна, 43	49.97369978169631	36.25849467055291	club_loc_!!!	\N	\N	2	343	16	\N
308	Харків, вул. Валентинівська, 23Є 	50.01623830193548	36.33329461157808	club_loc_!!!	\N	\N	2	343	13	\N
309	Харків, просп. Науки, 45/3 	50.038948167493004	36.21851839993549	club_loc_!!!	\N	\N	2	343	9	\N
310	проспект Леся Курбаса, 7-г, каб.8, приміщення "Південна зоря"	50.42764725928213	30.380588339475253	club_loc_!!!	\N	\N	1	344	2	55
311	пр. Перемоги, 136, каб. 202, приміщення "Північне сяйво"	50.456916591713075	30.365417997912914	club_loc_!!!	\N	\N	1	345	2	19
312	вул.Поштова, 165	47.82910843974697	35.16008065547544	club_loc_!!!	\N	\N	5	346	28	81
313	вул.Космічна, 110 а	47.78816482250787	35.21909251129592	club_loc_!!!	\N	\N	5	346	30	\N
314	Київ, вул. Кибальчича 7; 	50.49136561527084	30.598019924900807	club_loc_!!!	\N	\N	1	348	1	51
315	Київ, вул. Курчатова 18/2);  	50.48034789619064	30.633817165926548	club_loc_!!!	\N	\N	1	348	1	26
316	Київ, вул. Катерини Білокур 3; 	50.41660650808912	30.553675942089182	club_loc_!!!	\N	\N	1	348	4	18
317	Київ, Печерський спуск 13а	50.43619685323676	30.535678597912035	club_loc_!!!	\N	\N	1	348	4	22
318	Київ, пр. Оболонский, 16Д	50.5078909305505	30.502892413257396	club_loc_!!!	\N	\N	1	349	8	32
319	Київ, вул.Введенська, 35;	50.47297206236087	30.51314662859836	club_loc_!!!	\N	\N	1	349	10	44
320	 Київ, вул.Межігірська, 16; 	50.46730961231816	30.515886455584553	club_loc_!!!	\N	\N	1	349	10	23
321	Київ, вул.Прірічна, 27-Б;	50.52277499590924	30.518721924902138	club_loc_!!!	\N	\N	1	349	8	10
322	Київ, вул. Шовковична, 25;	50.44186870399491	30.530469628597004	club_loc_!!!	\N	\N	1	349	9	13
323	Київ, Оболонський проспект, 12В;	50.50420455994945	30.50236376907936	club_loc_!!!	\N	\N	1	349	8	32
324	Київ,  Київ, вул. Маршала Малиновського 30а;	50.5018990858926	30.507365238394456	club_loc_!!!	\N	\N	1	349	8	32
325	Київ, вул. Йорданська, 22А; 	50.500644773799046	30.506815855585913	club_loc_!!!	\N	\N	1	349	8	32
326	 Київ, вул. Озерна, 2А; 	50.52322542666654	30.48839585373773	club_loc_!!!	\N	\N	1	349	8	10
327	 Київ, вул. Приозерна, 6; 	50.49253693786852	30.51818806907894	club_loc_!!!	\N	\N	1	349	8	39
328	Київ, проспект Героїв Сталінграду, 24-а; 	50.512858387903414	30.50774571140846	club_loc_!!!	\N	\N	1	349	8	10
329	Київ, вул. Кирилівська (колишня Фрунзе), 8;	50.467993930699244	30.509068040242212	club_loc_!!!	\N	\N	1	349	10	23
330	Київ, вулиця Північна, 8; 	50.527297772480814	30.506176184422706	club_loc_!!!	\N	\N	1	349	8	10
331	Київ, Оболонський просп., 32; 	50.51691085252334	30.500403413257782	club_loc_!!!	\N	\N	1	349	8	30
332	Київ, просп. Героїв Сталінграду, 39Г;	50.51726782974659	30.504076413257753	club_loc_!!!	\N	\N	1	349	8	30
333	Київ, проспект Героїв Сталінграду, 58Б	50.52658156987296	30.518781913258184	club_loc_!!!	\N	\N	1	349	8	10
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.messages (id, date, is_active, is_answered, text, club_id, recipient_id, sender_id) FROM stdin;
\.


--
-- Data for Name: messengers; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.messengers (id, access_key, name) FROM stdin;
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.news (id, date, description, is_active, title, url_title_logo, user_id) FROM stdin;
\.


--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.question (id, text, title) FROM stdin;
\.


--
-- Data for Name: question_categories; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.question_categories (id, title) FROM stdin;
\.


--
-- Data for Name: question_histories; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.question_histories (id, answer_id, result_id) FROM stdin;
\.


--
-- Data for Name: question_test; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.question_test (id, question_id, test_id) FROM stdin;
\.


--
-- Data for Name: question_types; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.question_types (id, title) FROM stdin;
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.questions (id, description, title, creator_id, category_id, type_id) FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.refresh_tokens (user_id, token) FROM stdin;
1	$2a$10$7O0xU95shAELgjOON7IfE.a3u51/m0Mn6Oe86TqnddOkziSQ6OMAy
\.


--
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.results (id, grade, test_finish_time, test_start_time, test_id, user_id) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.roles (id, name) FROM stdin;
1	ROLE_ADMIN
2	ROLE_USER
3	ROLE_MANAGER
\.


--
-- Data for Name: search_statistics; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.search_statistics (id, search_string, search_count, search_date, user_id) FROM stdin;
1	amer	1	2025-05-28 19:07:47.566	1
2	American Gymnastics Club	1	2025-05-28 19:07:50.019	1
3	American Gymnastics Club	2	2025-05-28 19:07:53.302	1
4	American Gymnastics Club	3	2025-05-28 19:07:58.602	1
\.


--
-- Data for Name: stations; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.stations (id, name, city_id, district_id) FROM stdin;
1	Академмістечко	1	1
2	Арсенальна	1	1
3	Берестейська	1	1
4	Бориспільська	1	1
5	Васильківська	1	1
6	Вокзальна	1	1
7	Видубичі	1	1
8	Вирлиця	1	1
9	Виставковий центр	1	1
10	Героїв Дніпра	1	1
11	Голосіївська	1	1
12	Дарниця	1	1
13	Палац Спорту	1	1
14	Палац Україна	1	1
15	Деміївська	1	1
16	Дніпро	1	1
17	Дорогожичі	1	1
18	Дружби народів	1	1
19	Житомирська	1	1
20	Золоті ворота	1	1
21	Іподром	1	1
22	Кловська	1	1
23	Контрактова площа	1	1
24	Хрещатик	1	1
25	Лівобережна	1	1
26	Лісова	1	1
27	Лук'янівська	1	1
28	Либідська	1	1
29	Майдан Незалежності	1	1
30	Мінська	1	1
31	Нивки	1	1
32	Оболонь	1	1
33	Олімпійська	1	1
34	Осокорки	1	1
35	Печерська	1	1
36	Площа Льва Толстого	1	1
37	Позняки	1	1
38	Політехнічний інститут	1	1
39	Почайна	1	1
40	Поштова площа	1	1
41	Святошин	1	1
42	Славутич	1	1
43	Сирець	1	1
44	Тараса Шевченка	1	1
45	Театральна	1	1
46	Теремки	1	1
47	Університет	1	1
48	Харківська	1	1
49	Чернігівська	1	1
50	Шулявська	1	1
51	Воскресенка	1	1
52	Троєщина	1	1
53	Куренівка	1	1
54	Чоколівка	1	1
55	Борщагівка	1	1
56	Виноградар	1	1
57	Коцюбинське	1	1
58	23 Серпня	2	11
59	Академіка Барабашова	2	11
60	Архітектора Бекетова	2	11
61	Героїв Праці	2	11
62	Держпром	2	11
63	Захисників України (Площа Повстання)	2	11
64	Історичний музей	2	11
65	Наукова	2	11
66	Проспект Гагаріна	2	11
67	Пушкінська	2	11
68	Холодна Гора	2	11
69	Південний Вокзал	2	11
70	Качанівка	2	11
71	Жихор	2	11
72	Покровська	3	19
73	Проспект Свободи	3	19
74	Заводська	3	19
75	Металургів	3	19
76	Метробудівників	3	19
77	Тополі	3	19
78	Діївка	3	19
79	Перемога	3	19
80	Клочко	3	19
81	Центр	3	19
82	Амур	3	19
83	12 Квартал	3	19
84	АНД	3	19
85	Черемушки	4	25
86	Таїрова,	4	25
87	Фонтан	4	25
88	Аркадія	4	25
89	Молдаванка	4	25
90	Слобідка	4	25
91	Котовського	4	25
92	Лузанівка	4	25
93	Пересип	4	25
94	Бугаївка	4	25
95	Піски	5	28
96	Бабурка	5	28
97	Правий берег	5	28
98	Лівий берег	5	28
99	Осипенківський	5	28
100	Бородинський	5	28
101	Шевчик	5	28
102	Анголєнко	5	28
103	Верхня Хортиця	5	28
104	Нижня Хортиця	5	28
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.subscriptions (id, expiration_date, group_id, user_id) FROM stdin;
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.tasks (id, description, header_text, is_active, name, picture, start_date, challenge_id) FROM stdin;
\.


--
-- Data for Name: tests; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.tests (id, active, archived, counter, date_of_creation, description, difficulty, duration, grade, title, creator_id, topic_id) FROM stdin;
\.


--
-- Data for Name: topics; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.topics (id, title) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.users (id, email, first_name, last_name, password, phone, provider, provider_id, status, url_logo, verification_code, role_id) FROM stdin;
1	admin@gmail.com	Admin	Admin	$2y$12$iod5PRHZaYrIO6L3onnnk.Mhx9Hc1lb2ehBi0hRvPDD83u6OM/b66	+38000000000	local	\N	t	/static/images/user/avatar/user1.png	\N	1
2	user@gmail.com	user	user	$2y$12$aDvzOnearRd4eulVJID3pOufutAIXVU5i1GKhgpXuvyVmktuSAmqe	+38000000000	local	\N	t	/static/images/user/avatar/user2.png	\N	2
\.


--
-- Data for Name: work_times; Type: TABLE DATA; Schema: public; Owner: pmp2025
--

COPY public.work_times (id, day, end_time, start_time, club_id) FROM stdin;
\.


--
-- Name: about_us_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.about_us_items_id_seq', 1, false);


--
-- Name: answers_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.answers_seq', 1, false);


--
-- Name: archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.archive_id_seq', 1, false);


--
-- Name: banner_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.banner_items_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.categories_id_seq', 11, true);


--
-- Name: centers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.centers_id_seq', 32, true);


--
-- Name: certificate_dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.certificate_dates_id_seq', 1, false);


--
-- Name: certificate_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.certificate_templates_id_seq', 1, false);


--
-- Name: certificate_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.certificate_types_id_seq', 1, false);


--
-- Name: certificates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.certificates_id_seq', 1, false);


--
-- Name: challenge_registrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.challenge_registrations_id_seq', 1, false);


--
-- Name: challenges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.challenges_id_seq', 1, false);


--
-- Name: children_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.children_id_seq', 1, false);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.cities_id_seq', 5, true);


--
-- Name: club_registrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.club_registrations_id_seq', 1, false);


--
-- Name: clubs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.clubs_id_seq', 349, true);


--
-- Name: complaints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.complaints_id_seq', 1, false);


--
-- Name: contact_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.contact_type_id_seq', 1, false);


--
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.districts_id_seq', 32, true);


--
-- Name: excel_center_entity_autogenerated_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.excel_center_entity_autogenerated_id_seq', 1, false);


--
-- Name: excel_club_entity_autogenerated_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.excel_club_entity_autogenerated_id_seq', 1, false);


--
-- Name: feedbacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.feedbacks_id_seq', 1, false);


--
-- Name: galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.galleries_id_seq', 1, false);


--
-- Name: gender_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.gender_id_seq', 2, true);


--
-- Name: group_cohort_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.group_cohort_seq', 1, false);


--
-- Name: group_test_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.group_test_seq', 1, false);


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.locations_id_seq', 333, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.messages_id_seq', 1, false);


--
-- Name: messengers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.messengers_id_seq', 1, false);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.news_id_seq', 1, false);


--
-- Name: question_categories_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.question_categories_seq', 1, false);


--
-- Name: question_histories_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.question_histories_seq', 1, false);


--
-- Name: question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.question_id_seq', 1, false);


--
-- Name: question_test_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.question_test_seq', 1, false);


--
-- Name: question_types_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.question_types_seq', 1, false);


--
-- Name: questions_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.questions_seq', 1, false);


--
-- Name: results_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.results_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- Name: search_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.search_statistics_id_seq', 4, true);


--
-- Name: stations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.stations_id_seq', 104, true);


--
-- Name: subscriptions_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.subscriptions_seq', 1, false);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.tasks_id_seq', 1, false);


--
-- Name: tests_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.tests_seq', 1, false);


--
-- Name: topics_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.topics_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: work_times_seq; Type: SEQUENCE SET; Schema: public; Owner: pmp2025
--

SELECT pg_catalog.setval('public.work_times_seq', 1, false);


--
-- Name: about_us_items about_us_items_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.about_us_items
    ADD CONSTRAINT about_us_items_pkey PRIMARY KEY (id);


--
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: archive archive_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.archive
    ADD CONSTRAINT archive_pkey PRIMARY KEY (id);


--
-- Name: banner_items banner_items_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.banner_items
    ADD CONSTRAINT banner_items_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: centers centers_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.centers
    ADD CONSTRAINT centers_pkey PRIMARY KEY (id);


--
-- Name: certificate_dates certificate_dates_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificate_dates
    ADD CONSTRAINT certificate_dates_pkey PRIMARY KEY (id);


--
-- Name: certificate_templates certificate_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificate_templates
    ADD CONSTRAINT certificate_templates_pkey PRIMARY KEY (id);


--
-- Name: certificate_types certificate_types_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificate_types
    ADD CONSTRAINT certificate_types_pkey PRIMARY KEY (id);


--
-- Name: certificates certificates_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_pkey PRIMARY KEY (id);


--
-- Name: challenge_registrations challenge_registrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.challenge_registrations
    ADD CONSTRAINT challenge_registrations_pkey PRIMARY KEY (id);


--
-- Name: challenges challenges_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.challenges
    ADD CONSTRAINT challenges_pkey PRIMARY KEY (id);


--
-- Name: children children_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT children_pkey PRIMARY KEY (id);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: club_category club_category_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.club_category
    ADD CONSTRAINT club_category_pkey PRIMARY KEY (club_id, category_id);


--
-- Name: club_registrations club_registrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.club_registrations
    ADD CONSTRAINT club_registrations_pkey PRIMARY KEY (id);


--
-- Name: clubs clubs_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT clubs_pkey PRIMARY KEY (id);


--
-- Name: complaints complaints_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT complaints_pkey PRIMARY KEY (id);


--
-- Name: contact_type contact_type_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.contact_type
    ADD CONSTRAINT contact_type_pkey PRIMARY KEY (id);


--
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- Name: excel_center_entity excel_center_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.excel_center_entity
    ADD CONSTRAINT excel_center_entity_pkey PRIMARY KEY (autogenerated_id);


--
-- Name: excel_club_entity excel_club_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.excel_club_entity
    ADD CONSTRAINT excel_club_entity_pkey PRIMARY KEY (autogenerated_id);


--
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: galleries galleries_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.galleries
    ADD CONSTRAINT galleries_pkey PRIMARY KEY (id);


--
-- Name: gender gender_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (id);


--
-- Name: group_cohort group_cohort_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.group_cohort
    ADD CONSTRAINT group_cohort_pkey PRIMARY KEY (id);


--
-- Name: group_test group_test_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.group_test
    ADD CONSTRAINT group_test_pkey PRIMARY KEY (id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: messengers messengers_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.messengers
    ADD CONSTRAINT messengers_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: question_categories question_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question_categories
    ADD CONSTRAINT question_categories_pkey PRIMARY KEY (id);


--
-- Name: question_histories question_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question_histories
    ADD CONSTRAINT question_histories_pkey PRIMARY KEY (id);


--
-- Name: question question_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);


--
-- Name: question_test question_test_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question_test
    ADD CONSTRAINT question_test_pkey PRIMARY KEY (id);


--
-- Name: question_types question_types_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question_types
    ADD CONSTRAINT question_types_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: refresh_tokens refresh_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (user_id);


--
-- Name: results results_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: search_statistics search_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.search_statistics
    ADD CONSTRAINT search_statistics_pkey PRIMARY KEY (id);


--
-- Name: stations stations_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.stations
    ADD CONSTRAINT stations_pkey PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- Name: tests tests_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);


--
-- Name: topics topics_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);


--
-- Name: question_types uk_4bttdhrgb2sfkslrby2tjpeje; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question_types
    ADD CONSTRAINT uk_4bttdhrgb2sfkslrby2tjpeje UNIQUE (title);


--
-- Name: users uk_6dotkott2kjsp8vw4d0m25fb7; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);


--
-- Name: topics uk_71rjsqaorlydivvwh8xgousre; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT uk_71rjsqaorlydivvwh8xgousre UNIQUE (title);


--
-- Name: group_cohort uk_7x3042gpy70jrl0x9ewls3a54; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.group_cohort
    ADD CONSTRAINT uk_7x3042gpy70jrl0x9ewls3a54 UNIQUE (title);


--
-- Name: certificates uk_fhimy9jsw510b0ga7b2wo2nw2; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT uk_fhimy9jsw510b0ga7b2wo2nw2 UNIQUE (serial_number);


--
-- Name: refresh_tokens uk_ghpmfn23vmxfu3spu3lfg4r2d; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT uk_ghpmfn23vmxfu3spu3lfg4r2d UNIQUE (token);


--
-- Name: question_categories uk_gix6vh77tsywr8pqem8hqr4i1; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question_categories
    ADD CONSTRAINT uk_gix6vh77tsywr8pqem8hqr4i1 UNIQUE (title);


--
-- Name: group_cohort uk_gnsw6jvw7sjgpwk7rlss5rjfj; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.group_cohort
    ADD CONSTRAINT uk_gnsw6jvw7sjgpwk7rlss5rjfj UNIQUE (enrollment_key);


--
-- Name: tests uk_m8r0mdwal61kks84anyptqq28; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT uk_m8r0mdwal61kks84anyptqq28 UNIQUE (title);


--
-- Name: gender uk_t5209l4f2saa5sluc94yu8gkv; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.gender
    ADD CONSTRAINT uk_t5209l4f2saa5sluc94yu8gkv UNIQUE (value);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: work_times work_times_pkey; Type: CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.work_times
    ADD CONSTRAINT work_times_pkey PRIMARY KEY (id);


--
-- Name: refresh_tokens fk1lih5y2npsf8u5o3vhdb9y0os; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT fk1lih5y2npsf8u5o3vhdb9y0os FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: certificates fk1qd9d9utbnnhhqff0e01nmgwl; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT fk1qd9d9utbnnhhqff0e01nmgwl FOREIGN KEY (template_id) REFERENCES public.certificate_templates(id);


--
-- Name: clubs fk1xhm2dh5qqkgmk7jvnjfypj5r; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT fk1xhm2dh5qqkgmk7jvnjfypj5r FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: feedbacks fk312drfl5lquu37mu4trk8jkwx; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT fk312drfl5lquu37mu4trk8jkwx FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: tests fk373ae65h4qi40iudg5ansmyl1; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fk373ae65h4qi40iudg5ansmyl1 FOREIGN KEY (creator_id) REFERENCES public.users(id);


--
-- Name: subscriptions fk38mfc31de2cy9jonmkf8qd65j; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT fk38mfc31de2cy9jonmkf8qd65j FOREIGN KEY (group_id) REFERENCES public.group_cohort(id);


--
-- Name: answers fk3erw1a3t0r78st8ty27x6v3g1; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fk3erw1a3t0r78st8ty27x6v3g1 FOREIGN KEY (question_id) REFERENCES public.questions(id);


--
-- Name: districts fk3g7x8w4lc7qxth7ibrr5j73mn; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT fk3g7x8w4lc7qxth7ibrr5j73mn FOREIGN KEY (city_id) REFERENCES public.cities(id);


--
-- Name: questions fk3iss7rwyj4owl79g8srmcrut; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fk3iss7rwyj4owl79g8srmcrut FOREIGN KEY (creator_id) REFERENCES public.users(id);


--
-- Name: challenge_registrations fk4r2wv9aynpvtudxx1lkrhpq63; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.challenge_registrations
    ADD CONSTRAINT fk4r2wv9aynpvtudxx1lkrhpq63 FOREIGN KEY (child_id) REFERENCES public.children(id);


--
-- Name: messages fk4ui4nnwntodh6wjvck53dbk9m; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk4ui4nnwntodh6wjvck53dbk9m FOREIGN KEY (sender_id) REFERENCES public.users(id);


--
-- Name: locations fk5ijtb4ugmep9k8ab2p4ed43l3; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fk5ijtb4ugmep9k8ab2p4ed43l3 FOREIGN KEY (station_id) REFERENCES public.stations(id);


--
-- Name: feedbacks fk6417t43f58x37nb1wcp9lm5i9; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT fk6417t43f58x37nb1wcp9lm5i9 FOREIGN KEY (parent_comment_id) REFERENCES public.feedbacks(id);


--
-- Name: club_registrations fk6dhs80coe1dyqf5iefpb4dnfb; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.club_registrations
    ADD CONSTRAINT fk6dhs80coe1dyqf5iefpb4dnfb FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: centers fk73norooj6brlyapi2qea4a3en; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.centers
    ADD CONSTRAINT fk73norooj6brlyapi2qea4a3en FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: work_times fk76d7ii5cl4pbrv2dty0u8qvcx; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.work_times
    ADD CONSTRAINT fk76d7ii5cl4pbrv2dty0u8qvcx FOREIGN KEY (club_id) REFERENCES public.clubs(id);


--
-- Name: challenge_registrations fk7cyxfogvqq63cvt7j75rt12m1; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.challenge_registrations
    ADD CONSTRAINT fk7cyxfogvqq63cvt7j75rt12m1 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: locations fk7xyalt4hc89w4wa9h07b04soh; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fk7xyalt4hc89w4wa9h07b04soh FOREIGN KEY (club_id) REFERENCES public.clubs(id);


--
-- Name: complaints fk83j5gqkd7ku4vc908g4rtmglr; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fk83j5gqkd7ku4vc908g4rtmglr FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: messages fk8o3b25vv59afgqud1ouk2ku20; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk8o3b25vv59afgqud1ouk2ku20 FOREIGN KEY (club_id) REFERENCES public.clubs(id);


--
-- Name: question_histories fk8tq9rhow7urng6hygcw5c6tn9; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question_histories
    ADD CONSTRAINT fk8tq9rhow7urng6hygcw5c6tn9 FOREIGN KEY (answer_id) REFERENCES public.answers(id);


--
-- Name: locations fkbkovb2jgv756p7s2w86rpqjl7; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fkbkovb2jgv756p7s2w86rpqjl7 FOREIGN KEY (center_id) REFERENCES public.centers(id);


--
-- Name: club_registrations fkbq5k9lkdgpu3njex91e7ebpmu; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.club_registrations
    ADD CONSTRAINT fkbq5k9lkdgpu3njex91e7ebpmu FOREIGN KEY (club_id) REFERENCES public.clubs(id);


--
-- Name: certificates fkd3f6enpb3p3xovee9klklf05r; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT fkd3f6enpb3p3xovee9klklf05r FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: certificates fkdqyrid48p3q6pwbrce1vl9q2b; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT fkdqyrid48p3q6pwbrce1vl9q2b FOREIGN KEY (messenger_id) REFERENCES public.messengers(id);


--
-- Name: results fke9uvk96os1lxpp8pf93p13lmv; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT fke9uvk96os1lxpp8pf93p13lmv FOREIGN KEY (test_id) REFERENCES public.tests(id);


--
-- Name: question_test fkex6u724ix56twjgwpgryrp35x; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question_test
    ADD CONSTRAINT fkex6u724ix56twjgwpgryrp35x FOREIGN KEY (question_id) REFERENCES public.questions(id);


--
-- Name: questions fkgs76rjb04cffxyn6wxdu40dr5; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fkgs76rjb04cffxyn6wxdu40dr5 FOREIGN KEY (category_id) REFERENCES public.question_categories(id);


--
-- Name: locations fkgvg10vlf7gqvbgf9rbbho3gyg; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fkgvg10vlf7gqvbgf9rbbho3gyg FOREIGN KEY (city_id) REFERENCES public.cities(id);


--
-- Name: question_histories fkhcg85hat41x6gqkhnael43bxl; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question_histories
    ADD CONSTRAINT fkhcg85hat41x6gqkhnael43bxl FOREIGN KEY (result_id) REFERENCES public.results(id);


--
-- Name: messages fkhdkwfnspwb3s60j27vpg0rpg6; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fkhdkwfnspwb3s60j27vpg0rpg6 FOREIGN KEY (recipient_id) REFERENCES public.users(id);


--
-- Name: subscriptions fkhro52ohfqfbay9774bev0qinr; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT fkhro52ohfqfbay9774bev0qinr FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: news fki09n75txtudw1kawj5o7i8xag; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT fki09n75txtudw1kawj5o7i8xag FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: tasks fkj2p2ll95ivoc2w5o6xk8gv19n; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT fkj2p2ll95ivoc2w5o6xk8gv19n FOREIGN KEY (challenge_id) REFERENCES public.challenges(id);


--
-- Name: stations fkji0m6sso6boeu6xvte5203s9u; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.stations
    ADD CONSTRAINT fkji0m6sso6boeu6xvte5203s9u FOREIGN KEY (city_id) REFERENCES public.cities(id);


--
-- Name: galleries fkjwbbnldbc5ef8t6db81yc8jqc; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.galleries
    ADD CONSTRAINT fkjwbbnldbc5ef8t6db81yc8jqc FOREIGN KEY (club_id) REFERENCES public.clubs(id);


--
-- Name: feedbacks fkk872m69bbxc8s1emqpeh0aotf; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT fkk872m69bbxc8s1emqpeh0aotf FOREIGN KEY (club_id) REFERENCES public.clubs(id);


--
-- Name: search_statistics fkko6eog41qcr1a4q0w45tt15lk; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.search_statistics
    ADD CONSTRAINT fkko6eog41qcr1a4q0w45tt15lk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: challenges fkle3q0kbl0hsc262e7qnjw6dgw; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.challenges
    ADD CONSTRAINT fkle3q0kbl0hsc262e7qnjw6dgw FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: certificate_templates fkmeau2nef2bpm5ryk386dcslw; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificate_templates
    ADD CONSTRAINT fkmeau2nef2bpm5ryk386dcslw FOREIGN KEY (certificate_type) REFERENCES public.certificate_types(id);


--
-- Name: complaints fkmwmuihaot2wl961fc34kkbixc; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fkmwmuihaot2wl961fc34kkbixc FOREIGN KEY (club_id) REFERENCES public.clubs(id);


--
-- Name: certificates fknh6803bl6ka99km8ihkbwiduy; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT fknh6803bl6ka99km8ihkbwiduy FOREIGN KEY (dates_id) REFERENCES public.certificate_dates(id);


--
-- Name: children fknj4ttxxbdk18yp1765brwyeeg; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT fknj4ttxxbdk18yp1765brwyeeg FOREIGN KEY (parent_id) REFERENCES public.users(id);


--
-- Name: club_category fknsax6ydqagabtmnf4u7qhuevv; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.club_category
    ADD CONSTRAINT fknsax6ydqagabtmnf4u7qhuevv FOREIGN KEY (club_id) REFERENCES public.clubs(id);


--
-- Name: group_test fknxc9hydliy7g2ckvyqx7hro6m; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.group_test
    ADD CONSTRAINT fknxc9hydliy7g2ckvyqx7hro6m FOREIGN KEY (group_id) REFERENCES public.group_cohort(id);


--
-- Name: complaints fkogqj5hg9mh4bh7to8p7widfa5; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fkogqj5hg9mh4bh7to8p7widfa5 FOREIGN KEY (recipient_id) REFERENCES public.users(id);


--
-- Name: stations fkp4rtd15xpw5k5gdouckn6n1ot; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.stations
    ADD CONSTRAINT fkp4rtd15xpw5k5gdouckn6n1ot FOREIGN KEY (district_id) REFERENCES public.districts(id);


--
-- Name: users fkp56c1712k691lhsyewcssf40f; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkp56c1712k691lhsyewcssf40f FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- Name: challenge_registrations fkp61usnjrlwluo6yu0efhbs66u; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.challenge_registrations
    ADD CONSTRAINT fkp61usnjrlwluo6yu0efhbs66u FOREIGN KEY (challenge_id) REFERENCES public.challenges(id);


--
-- Name: questions fkpkhrd1qpikab418x0g1b08x05; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fkpkhrd1qpikab418x0g1b08x05 FOREIGN KEY (type_id) REFERENCES public.question_types(id);


--
-- Name: tests fkr7jvpkki2ex6tkkv4gebcl5ic; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fkr7jvpkki2ex6tkkv4gebcl5ic FOREIGN KEY (topic_id) REFERENCES public.topics(id);


--
-- Name: group_test fkrwpma9tpdxxxr2oj4e1xn1s00; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.group_test
    ADD CONSTRAINT fkrwpma9tpdxxxr2oj4e1xn1s00 FOREIGN KEY (test_id) REFERENCES public.tests(id);


--
-- Name: locations fksd2oc9stvx013fb8ky33sxgg4; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fksd2oc9stvx013fb8ky33sxgg4 FOREIGN KEY (district_id) REFERENCES public.districts(id);


--
-- Name: clubs fktm4j4gjuxxtg4jqxlq4qwyku2; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT fktm4j4gjuxxtg4jqxlq4qwyku2 FOREIGN KEY (center_id) REFERENCES public.centers(id);


--
-- Name: club_category fktnik978vedu4t3mq441t7eqed; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.club_category
    ADD CONSTRAINT fktnik978vedu4t3mq441t7eqed FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: question_test fktoqoxp1agaopyslvxiesxiqix; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.question_test
    ADD CONSTRAINT fktoqoxp1agaopyslvxiesxiqix FOREIGN KEY (test_id) REFERENCES public.tests(id);


--
-- Name: children fktqqv217l2w331dq28ix06mfkj; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT fktqqv217l2w331dq28ix06mfkj FOREIGN KEY (gender_id) REFERENCES public.gender(id);


--
-- Name: club_registrations fkwje0flrlmvpjdsefdwrchtjo; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.club_registrations
    ADD CONSTRAINT fkwje0flrlmvpjdsefdwrchtjo FOREIGN KEY (child_id) REFERENCES public.children(id);


--
-- Name: results fkxtl9ahma532if6r68yvgo7ck; Type: FK CONSTRAINT; Schema: public; Owner: pmp2025
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT fkxtl9ahma532if6r68yvgo7ck FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

