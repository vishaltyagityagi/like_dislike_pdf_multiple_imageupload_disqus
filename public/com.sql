--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

DROP INDEX public.unique_schema_migrations;
DROP INDEX public.index_versions_on_transaction_id;
DROP INDEX public.index_versions_on_item_type_and_item_id;
DROP INDEX public.index_version_associations_on_version_id;
DROP INDEX public.index_version_associations_on_foreign_key;
DROP INDEX public.index_users_roles_on_user_id_and_role_id;
DROP INDEX public.index_users_on_slug;
DROP INDEX public.index_users_on_reset_password_token;
DROP INDEX public.index_users_on_invited_by_id;
DROP INDEX public.index_users_on_invitations_count;
DROP INDEX public.index_users_on_invitation_token;
DROP INDEX public.index_users_on_email;
DROP INDEX public.index_users_on_deleted_at;
DROP INDEX public.index_users_on_confirmation_token;
DROP INDEX public.index_teams_on_slug;
DROP INDEX public.index_static_pages_on_deleted_at;
DROP INDEX public.index_sites_on_slug;
DROP INDEX public.index_sites_on_deleted_at;
DROP INDEX public.index_site_tabs_on_slug;
DROP INDEX public.index_site_items_on_slug;
DROP INDEX public.index_site_items_on_deleted_at;
DROP INDEX public.index_roles_on_name_and_resource_type_and_resource_id;
DROP INDEX public.index_roles_on_name;
DROP INDEX public.index_news_on_slug;
DROP INDEX public.index_friendly_id_slugs_on_sluggable_type;
DROP INDEX public.index_friendly_id_slugs_on_sluggable_id;
DROP INDEX public.index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope;
DROP INDEX public.index_friendly_id_slugs_on_slug_and_sluggable_type;
DROP INDEX public.index_admin_users_roles_on_admin_user_id_and_role_id;
DROP INDEX public.index_admin_users_on_reset_password_token;
DROP INDEX public.index_admin_users_on_email;
DROP INDEX public.index_admin_users_on_confirmation_token;
DROP INDEX public.index_active_admin_comments_on_resource_type_and_resource_id;
DROP INDEX public.index_active_admin_comments_on_namespace;
DROP INDEX public.index_active_admin_comments_on_author_type_and_author_id;
DROP INDEX public.delayed_jobs_priority;
DROP INDEX public.comment_desc_idx;
DROP INDEX public.comment_anc_desc_idx;
ALTER TABLE ONLY public.versions DROP CONSTRAINT versions_pkey;
ALTER TABLE ONLY public.version_associations DROP CONSTRAINT version_associations_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.user_preferred_emails DROP CONSTRAINT user_preferred_emails_pkey;
ALTER TABLE ONLY public.user_notification_templates DROP CONSTRAINT user_notification_templates_pkey;
ALTER TABLE ONLY public.user_email_notifications DROP CONSTRAINT user_email_notifications_pkey;
ALTER TABLE ONLY public.upload_file_types DROP CONSTRAINT upload_file_types_pkey;
ALTER TABLE ONLY public.transaction_details DROP CONSTRAINT transaction_details_pkey;
ALTER TABLE ONLY public.testimonials DROP CONSTRAINT testimonials_pkey;
ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_pkey;
ALTER TABLE ONLY public.static_pages DROP CONSTRAINT static_pages_pkey;
ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
ALTER TABLE ONLY public.site_tabs DROP CONSTRAINT site_tabs_pkey;
ALTER TABLE ONLY public.site_settings DROP CONSTRAINT site_settings_pkey;
ALTER TABLE ONLY public.site_items DROP CONSTRAINT site_items_pkey;
ALTER TABLE ONLY public.site_item_questions DROP CONSTRAINT site_item_questions_pkey;
ALTER TABLE ONLY public.site_item_invitations DROP CONSTRAINT site_item_invitations_pkey;
ALTER TABLE ONLY public.site_item_documents DROP CONSTRAINT site_item_documents_pkey;
ALTER TABLE ONLY public.services DROP CONSTRAINT services_pkey;
ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
ALTER TABLE ONLY public.reports DROP CONSTRAINT reports_pkey;
ALTER TABLE ONLY public.plans DROP CONSTRAINT plans_pkey;
ALTER TABLE ONLY public.organization_types DROP CONSTRAINT organization_types_pkey;
ALTER TABLE ONLY public.number_of_employees DROP CONSTRAINT number_of_employees_pkey;
ALTER TABLE ONLY public.newsletters DROP CONSTRAINT newsletters_pkey;
ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
ALTER TABLE ONLY public.item_invitation_access_expires DROP CONSTRAINT item_invitation_access_expires_pkey;
ALTER TABLE ONLY public.inquiries DROP CONSTRAINT inquiries_pkey;
ALTER TABLE ONLY public.friendly_id_slugs DROP CONSTRAINT friendly_id_slugs_pkey;
ALTER TABLE ONLY public.features DROP CONSTRAINT features_pkey;
ALTER TABLE ONLY public.email_templates DROP CONSTRAINT email_templates_pkey;
ALTER TABLE ONLY public.delayed_jobs DROP CONSTRAINT delayed_jobs_pkey;
ALTER TABLE ONLY public.contact_us DROP CONSTRAINT contact_us_pkey;
ALTER TABLE ONLY public.company_informations DROP CONSTRAINT company_informations_pkey;
ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
ALTER TABLE ONLY public.banner_images DROP CONSTRAINT banner_images_pkey;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
ALTER TABLE ONLY public.admin_notification_templates DROP CONSTRAINT admin_notification_templates_pkey;
ALTER TABLE ONLY public.active_admin_comments DROP CONSTRAINT active_admin_comments_pkey;
ALTER TABLE public.versions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.version_associations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_preferred_emails ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_notification_templates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_email_notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.upload_file_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.transaction_details ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.testimonials ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.teams ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.static_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sites ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.site_tabs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.site_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.site_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.site_item_questions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.site_item_invitations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.site_item_documents ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.reports ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.plans ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.organization_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.number_of_employees ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.newsletters ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.news ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.item_invitation_access_expires ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.inquiries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.friendly_id_slugs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.features ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.email_templates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.delayed_jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.contact_us ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.company_informations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.banner_images ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_notification_templates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.active_admin_comments ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.versions_id_seq;
DROP TABLE public.versions;
DROP SEQUENCE public.version_associations_id_seq;
DROP TABLE public.version_associations;
DROP TABLE public.users_roles;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.user_preferred_emails_id_seq;
DROP TABLE public.user_preferred_emails;
DROP SEQUENCE public.user_notification_templates_id_seq;
DROP TABLE public.user_notification_templates;
DROP SEQUENCE public.user_email_notifications_id_seq;
DROP TABLE public.user_email_notifications;
DROP SEQUENCE public.upload_file_types_id_seq;
DROP TABLE public.upload_file_types;
DROP SEQUENCE public.transaction_details_id_seq;
DROP TABLE public.transaction_details;
DROP SEQUENCE public.testimonials_id_seq;
DROP TABLE public.testimonials;
DROP SEQUENCE public.teams_id_seq;
DROP TABLE public.teams;
DROP SEQUENCE public.static_pages_id_seq;
DROP TABLE public.static_pages;
DROP SEQUENCE public.sites_id_seq;
DROP TABLE public.sites;
DROP SEQUENCE public.site_tabs_id_seq;
DROP TABLE public.site_tabs;
DROP SEQUENCE public.site_settings_id_seq;
DROP TABLE public.site_settings;
DROP SEQUENCE public.site_items_id_seq;
DROP TABLE public.site_items;
DROP SEQUENCE public.site_item_questions_id_seq;
DROP TABLE public.site_item_questions;
DROP SEQUENCE public.site_item_invitations_id_seq;
DROP TABLE public.site_item_invitations;
DROP SEQUENCE public.site_item_documents_id_seq;
DROP TABLE public.site_item_documents;
DROP SEQUENCE public.services_id_seq;
DROP TABLE public.services;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.roles_id_seq;
DROP TABLE public.roles;
DROP SEQUENCE public.reports_id_seq;
DROP TABLE public.reports;
DROP SEQUENCE public.plans_id_seq;
DROP TABLE public.plans;
DROP SEQUENCE public.organization_types_id_seq;
DROP TABLE public.organization_types;
DROP SEQUENCE public.number_of_employees_id_seq;
DROP TABLE public.number_of_employees;
DROP SEQUENCE public.newsletters_id_seq;
DROP TABLE public.newsletters;
DROP SEQUENCE public.news_id_seq;
DROP TABLE public.news;
DROP SEQUENCE public.item_invitation_access_expires_id_seq;
DROP TABLE public.item_invitation_access_expires;
DROP SEQUENCE public.inquiries_id_seq;
DROP TABLE public.inquiries;
DROP SEQUENCE public.friendly_id_slugs_id_seq;
DROP TABLE public.friendly_id_slugs;
DROP SEQUENCE public.features_id_seq;
DROP TABLE public.features;
DROP SEQUENCE public.email_templates_id_seq;
DROP TABLE public.email_templates;
DROP SEQUENCE public.delayed_jobs_id_seq;
DROP TABLE public.delayed_jobs;
DROP SEQUENCE public.contact_us_id_seq;
DROP TABLE public.contact_us;
DROP SEQUENCE public.company_informations_id_seq;
DROP TABLE public.company_informations;
DROP SEQUENCE public.comments_id_seq;
DROP TABLE public.comments;
DROP TABLE public.comment_hierarchies;
DROP SEQUENCE public.banner_images_id_seq;
DROP TABLE public.banner_images;
DROP TABLE public.admin_users_roles;
DROP SEQUENCE public.admin_users_id_seq;
DROP TABLE public.admin_users;
DROP SEQUENCE public.admin_notification_templates_id_seq;
DROP TABLE public.admin_notification_templates;
DROP SEQUENCE public.active_admin_comments_id_seq;
DROP TABLE public.active_admin_comments;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    namespace character varying,
    body text,
    resource_id character varying NOT NULL,
    resource_type character varying NOT NULL,
    author_id integer,
    author_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.active_admin_comments OWNER TO postgres;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO postgres;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- Name: admin_notification_templates; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_notification_templates (
    id integer NOT NULL,
    invitee_template text,
    email_due_soon_template text,
    email_overdue_template text,
    email_due_soon_invitee_template text,
    email_overdue_invitee_template text,
    email_report_recipients_template text,
    document_feedback_approved_template text,
    document_feedback_pending_template text,
    document_feedback_rejected_template text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.admin_notification_templates OWNER TO postgres;

--
-- Name: admin_notification_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE admin_notification_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_notification_templates_id_seq OWNER TO postgres;

--
-- Name: admin_notification_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE admin_notification_templates_id_seq OWNED BY admin_notification_templates.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    job_title character varying,
    phone_number character varying,
    active boolean DEFAULT true,
    slug character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    permissions character varying
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE admin_users_id_seq OWNED BY admin_users.id;


--
-- Name: admin_users_roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_users_roles (
    admin_user_id integer,
    role_id integer
);


ALTER TABLE public.admin_users_roles OWNER TO postgres;

--
-- Name: banner_images; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE banner_images (
    id integer NOT NULL,
    image character varying,
    description text,
    active boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    heading character varying,
    link character varying
);


ALTER TABLE public.banner_images OWNER TO postgres;

--
-- Name: banner_images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE banner_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banner_images_id_seq OWNER TO postgres;

--
-- Name: banner_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE banner_images_id_seq OWNED BY banner_images.id;


--
-- Name: comment_hierarchies; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE comment_hierarchies (
    ancestor_id integer NOT NULL,
    descendant_id integer NOT NULL,
    generations integer NOT NULL
);


ALTER TABLE public.comment_hierarchies OWNER TO postgres;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE comments (
    id integer NOT NULL,
    news_id integer,
    user_name character varying,
    email character varying,
    message text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_id integer
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: company_informations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE company_informations (
    id integer NOT NULL,
    user_id integer,
    name character varying,
    city character varying,
    state character varying,
    country character varying,
    zip_code character varying,
    organization_type character varying,
    number_of_employees character varying,
    logo character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.company_informations OWNER TO postgres;

--
-- Name: company_informations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE company_informations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_informations_id_seq OWNER TO postgres;

--
-- Name: company_informations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE company_informations_id_seq OWNED BY company_informations.id;


--
-- Name: contact_us; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contact_us (
    id integer NOT NULL,
    name character varying,
    email character varying,
    contact_number character varying,
    message text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.contact_us OWNER TO postgres;

--
-- Name: contact_us_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contact_us_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_us_id_seq OWNER TO postgres;

--
-- Name: contact_us_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contact_us_id_seq OWNED BY contact_us.id;


--
-- Name: delayed_jobs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE delayed_jobs (
    id integer NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    attempts integer DEFAULT 0 NOT NULL,
    handler text NOT NULL,
    last_error text,
    run_at timestamp without time zone,
    locked_at timestamp without time zone,
    failed_at timestamp without time zone,
    locked_by character varying,
    queue character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.delayed_jobs OWNER TO postgres;

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE delayed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delayed_jobs_id_seq OWNER TO postgres;

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE delayed_jobs_id_seq OWNED BY delayed_jobs.id;


--
-- Name: email_templates; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE email_templates (
    id integer NOT NULL,
    admin_email character varying,
    user_confirmation_instruction text,
    user_invitation_instruction text,
    user_password_change text,
    user_password_update text,
    user_reset_password_instruction text,
    user_inquiry text,
    user_newsletter text,
    user_contact_us text,
    admin_confirmation_instruction text,
    admin_password_updated text,
    admin_account_created text,
    admin_reset_password_instruction text,
    admin_inquiry text,
    admin_newsletter text,
    admin_contact_us text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    manager_account text,
    manager_created text,
    manager_updated text,
    invitation_confirmation text,
    account_created text,
    password_updated text
);


ALTER TABLE public.email_templates OWNER TO postgres;

--
-- Name: email_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE email_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_templates_id_seq OWNER TO postgres;

--
-- Name: email_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE email_templates_id_seq OWNED BY email_templates.id;


--
-- Name: features; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE features (
    id integer NOT NULL,
    image character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.features OWNER TO postgres;

--
-- Name: features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.features_id_seq OWNER TO postgres;

--
-- Name: features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE features_id_seq OWNED BY features.id;


--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE friendly_id_slugs (
    id integer NOT NULL,
    slug character varying NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp without time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO postgres;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE friendly_id_slugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendly_id_slugs_id_seq OWNER TO postgres;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE friendly_id_slugs_id_seq OWNED BY friendly_id_slugs.id;


--
-- Name: inquiries; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE inquiries (
    id integer NOT NULL,
    name character varying,
    email character varying,
    contact_number character varying,
    message text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.inquiries OWNER TO postgres;

--
-- Name: inquiries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE inquiries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inquiries_id_seq OWNER TO postgres;

--
-- Name: inquiries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE inquiries_id_seq OWNED BY inquiries.id;


--
-- Name: item_invitation_access_expires; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE item_invitation_access_expires (
    id integer NOT NULL,
    expires character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.item_invitation_access_expires OWNER TO postgres;

--
-- Name: item_invitation_access_expires_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE item_invitation_access_expires_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_invitation_access_expires_id_seq OWNER TO postgres;

--
-- Name: item_invitation_access_expires_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE item_invitation_access_expires_id_seq OWNED BY item_invitation_access_expires.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE news (
    id integer NOT NULL,
    title character varying,
    description text,
    image character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying,
    show_on_home boolean DEFAULT false
);


ALTER TABLE public.news OWNER TO postgres;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO postgres;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE news_id_seq OWNED BY news.id;


--
-- Name: newsletters; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE newsletters (
    id integer NOT NULL,
    name character varying,
    email character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.newsletters OWNER TO postgres;

--
-- Name: newsletters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE newsletters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.newsletters_id_seq OWNER TO postgres;

--
-- Name: newsletters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE newsletters_id_seq OWNED BY newsletters.id;


--
-- Name: number_of_employees; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE number_of_employees (
    id integer NOT NULL,
    employees character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.number_of_employees OWNER TO postgres;

--
-- Name: number_of_employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE number_of_employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.number_of_employees_id_seq OWNER TO postgres;

--
-- Name: number_of_employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE number_of_employees_id_seq OWNED BY number_of_employees.id;


--
-- Name: organization_types; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE organization_types (
    id integer NOT NULL,
    org_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.organization_types OWNER TO postgres;

--
-- Name: organization_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE organization_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organization_types_id_seq OWNER TO postgres;

--
-- Name: organization_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE organization_types_id_seq OWNED BY organization_types.id;


--
-- Name: plans; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE plans (
    id integer NOT NULL,
    name character varying,
    price double precision,
    time_duration integer,
    time_duration_postfix character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.plans OWNER TO postgres;

--
-- Name: plans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plans_id_seq OWNER TO postgres;

--
-- Name: plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE plans_id_seq OWNED BY plans.id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE reports (
    id integer NOT NULL,
    user_id integer,
    site_id integer,
    sites character varying,
    report_type character varying,
    tabs character varying[] DEFAULT '{}'::character varying[],
    items character varying[] DEFAULT '{}'::character varying[],
    documents character varying[] DEFAULT '{}'::character varying[],
    document_expires integer DEFAULT 0,
    report_format character varying[] DEFAULT '{}'::character varying[],
    lock_document boolean DEFAULT false,
    send_report character varying[] DEFAULT '{}'::character varying[],
    to_email character varying[] DEFAULT '{}'::character varying[],
    cc_email character varying[] DEFAULT '{}'::character varying[],
    reports json,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.reports OWNER TO postgres;

--
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reports_id_seq OWNER TO postgres;

--
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE reports_id_seq OWNED BY reports.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE roles (
    id integer NOT NULL,
    name character varying,
    resource_id integer,
    resource_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: services; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE services (
    id integer NOT NULL,
    image character varying,
    name character varying,
    description text,
    slug character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    show_on_home boolean DEFAULT false
);


ALTER TABLE public.services OWNER TO postgres;

--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_id_seq OWNER TO postgres;

--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE services_id_seq OWNED BY services.id;


--
-- Name: site_item_documents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_item_documents (
    id integer NOT NULL,
    site_id integer,
    site_item_id integer,
    user_id integer,
    file character varying,
    archive boolean DEFAULT false,
    automatic_archive boolean DEFAULT false,
    current boolean DEFAULT false,
    pending boolean DEFAULT false,
    approve boolean DEFAULT false,
    feedback text,
    contractor_email character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.site_item_documents OWNER TO postgres;

--
-- Name: site_item_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_item_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_item_documents_id_seq OWNER TO postgres;

--
-- Name: site_item_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_item_documents_id_seq OWNED BY site_item_documents.id;


--
-- Name: site_item_invitations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_item_invitations (
    id integer NOT NULL,
    site_id integer,
    site_item_id integer,
    user_id integer,
    access_expires character varying,
    access_expires_date timestamp without time zone,
    upload_access_email character varying,
    comment text,
    pause boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    invitation_sent boolean DEFAULT false
);


ALTER TABLE public.site_item_invitations OWNER TO postgres;

--
-- Name: site_item_invitations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_item_invitations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_item_invitations_id_seq OWNER TO postgres;

--
-- Name: site_item_invitations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_item_invitations_id_seq OWNED BY site_item_invitations.id;


--
-- Name: site_item_questions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_item_questions (
    id integer NOT NULL,
    site_id integer,
    site_item_id integer,
    question character varying,
    required_for_compliant boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.site_item_questions OWNER TO postgres;

--
-- Name: site_item_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_item_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_item_questions_id_seq OWNER TO postgres;

--
-- Name: site_item_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_item_questions_id_seq OWNED BY site_item_questions.id;


--
-- Name: site_items; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_items (
    id integer NOT NULL,
    user_id integer,
    site_id integer,
    site_tab_id integer,
    title character varying,
    frequency integer,
    required_for_site_compliance boolean DEFAULT false,
    due_date timestamp without time zone,
    due_soon character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying,
    deleted_at timestamp without time zone,
    status character varying,
    compliant boolean DEFAULT false,
    template boolean DEFAULT false
);


ALTER TABLE public.site_items OWNER TO postgres;

--
-- Name: site_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_items_id_seq OWNER TO postgres;

--
-- Name: site_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_items_id_seq OWNED BY site_items.id;


--
-- Name: site_settings; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_settings (
    id integer NOT NULL,
    maximum_site_tabs integer,
    maximum_site_items integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.site_settings OWNER TO postgres;

--
-- Name: site_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_settings_id_seq OWNER TO postgres;

--
-- Name: site_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_settings_id_seq OWNED BY site_settings.id;


--
-- Name: site_tabs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_tabs (
    id integer NOT NULL,
    user_id integer,
    site_id integer,
    name character varying,
    items integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying
);


ALTER TABLE public.site_tabs OWNER TO postgres;

--
-- Name: site_tabs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_tabs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_tabs_id_seq OWNER TO postgres;

--
-- Name: site_tabs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_tabs_id_seq OWNED BY site_tabs.id;


--
-- Name: sites; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sites (
    id integer NOT NULL,
    user_id integer,
    name character varying,
    annual_compliance_due timestamp without time zone,
    tabs integer,
    tab_items integer,
    site_item_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying,
    deleted_at timestamp without time zone,
    status character varying,
    compliant boolean DEFAULT false,
    active boolean DEFAULT true,
    template boolean DEFAULT false
);


ALTER TABLE public.sites OWNER TO postgres;

--
-- Name: sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sites_id_seq OWNER TO postgres;

--
-- Name: sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sites_id_seq OWNED BY sites.id;


--
-- Name: static_pages; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE static_pages (
    id integer NOT NULL,
    logo character varying,
    header_logged_in text,
    header_not_logged_in text,
    footer text,
    features text,
    about_us text,
    terms_and_conditions text,
    privacy_policy text,
    faq text,
    contact_us text,
    services text,
    pricing text,
    news text,
    team text,
    testimonials text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.static_pages OWNER TO postgres;

--
-- Name: static_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE static_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.static_pages_id_seq OWNER TO postgres;

--
-- Name: static_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE static_pages_id_seq OWNED BY static_pages.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE teams (
    id integer NOT NULL,
    name character varying,
    image character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying,
    show_on_home boolean DEFAULT false,
    facebook character varying,
    twitter character varying,
    linkedin character varying,
    gmail character varying
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_id_seq OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE teams_id_seq OWNED BY teams.id;


--
-- Name: testimonials; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE testimonials (
    id integer NOT NULL,
    name character varying,
    image character varying,
    message text,
    location character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    active boolean DEFAULT true
);


ALTER TABLE public.testimonials OWNER TO postgres;

--
-- Name: testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testimonials_id_seq OWNER TO postgres;

--
-- Name: testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE testimonials_id_seq OWNED BY testimonials.id;


--
-- Name: transaction_details; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE transaction_details (
    id integer NOT NULL,
    user_id integer,
    plan_id integer,
    payer_id character varying,
    payer_email character varying,
    payment_date timestamp without time zone,
    payment_status character varying,
    payment_fee double precision,
    payment double precision,
    payment_type character varying,
    mc_currency character varying,
    first_name character varying,
    last_name character varying,
    txn_id character varying,
    receiver_id character varying,
    receiver_email character varying,
    address_name character varying,
    address_street character varying,
    address_city character varying,
    address_state character varying,
    address_country character varying,
    address_country_code character varying,
    address_zip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.transaction_details OWNER TO postgres;

--
-- Name: transaction_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE transaction_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transaction_details_id_seq OWNER TO postgres;

--
-- Name: transaction_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE transaction_details_id_seq OWNED BY transaction_details.id;


--
-- Name: upload_file_types; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE upload_file_types (
    id integer NOT NULL,
    upload_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.upload_file_types OWNER TO postgres;

--
-- Name: upload_file_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE upload_file_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_types_id_seq OWNER TO postgres;

--
-- Name: upload_file_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE upload_file_types_id_seq OWNED BY upload_file_types.id;


--
-- Name: user_email_notifications; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_email_notifications (
    id integer NOT NULL,
    user_id integer,
    due_soon character varying,
    due_soon_often character varying,
    overdue character varying,
    overdue_often character varying,
    due_soon_invitee character varying,
    due_soon_often_invitee character varying,
    overdue_invitee character varying,
    overdue_often_invitee character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_email_notifications OWNER TO postgres;

--
-- Name: user_email_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_email_notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_email_notifications_id_seq OWNER TO postgres;

--
-- Name: user_email_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_email_notifications_id_seq OWNED BY user_email_notifications.id;


--
-- Name: user_notification_templates; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_notification_templates (
    id integer NOT NULL,
    user_id integer,
    invitee_template text,
    email_due_soon_template text,
    email_overdue_template text,
    email_due_soon_invitee_template text,
    email_overdue_invitee_template text,
    email_report_recipients_template text,
    document_feedback_approved_template text,
    document_feedback_pending_template text,
    document_feedback_rejected_template text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_notification_templates OWNER TO postgres;

--
-- Name: user_notification_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_notification_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_notification_templates_id_seq OWNER TO postgres;

--
-- Name: user_notification_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_notification_templates_id_seq OWNED BY user_notification_templates.id;


--
-- Name: user_preferred_emails; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_preferred_emails (
    id integer NOT NULL,
    user_id integer,
    first_name character varying,
    last_name character varying,
    full_name character varying,
    email character varying,
    pause boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_preferred_emails OWNER TO postgres;

--
-- Name: user_preferred_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_preferred_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_preferred_emails_id_seq OWNER TO postgres;

--
-- Name: user_preferred_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_preferred_emails_id_seq OWNED BY user_preferred_emails.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    invitation_token character varying,
    invitation_created_at timestamp without time zone,
    invitation_sent_at timestamp without time zone,
    invitation_accepted_at timestamp without time zone,
    invitation_limit integer,
    invited_by_id integer,
    invited_by_type character varying,
    invitations_count integer DEFAULT 0,
    first_name character varying,
    last_name character varying,
    full_name character varying,
    user_name character varying,
    mobile_number character varying,
    landline_number character varying,
    time_zone character varying,
    job_title character varying,
    employee_id character varying,
    avatar character varying,
    active boolean DEFAULT true,
    slug character varying,
    deleted_at timestamp without time zone,
    company_id integer,
    plan_id integer,
    permissions character varying,
    admin boolean DEFAULT false,
    sites_per_page integer DEFAULT 10
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users_roles (
    user_id integer,
    role_id integer
);


ALTER TABLE public.users_roles OWNER TO postgres;

--
-- Name: version_associations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE version_associations (
    id integer NOT NULL,
    version_id integer,
    foreign_key_name character varying NOT NULL,
    foreign_key_id integer
);


ALTER TABLE public.version_associations OWNER TO postgres;

--
-- Name: version_associations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE version_associations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.version_associations_id_seq OWNER TO postgres;

--
-- Name: version_associations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE version_associations_id_seq OWNED BY version_associations.id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE versions (
    id integer NOT NULL,
    item_type character varying NOT NULL,
    item_id integer NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object text,
    created_at timestamp without time zone,
    transaction_id integer
);


ALTER TABLE public.versions OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.versions_id_seq OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE versions_id_seq OWNED BY versions.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_notification_templates ALTER COLUMN id SET DEFAULT nextval('admin_notification_templates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_users ALTER COLUMN id SET DEFAULT nextval('admin_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY banner_images ALTER COLUMN id SET DEFAULT nextval('banner_images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY company_informations ALTER COLUMN id SET DEFAULT nextval('company_informations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact_us ALTER COLUMN id SET DEFAULT nextval('contact_us_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY delayed_jobs ALTER COLUMN id SET DEFAULT nextval('delayed_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY email_templates ALTER COLUMN id SET DEFAULT nextval('email_templates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY features ALTER COLUMN id SET DEFAULT nextval('features_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('friendly_id_slugs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inquiries ALTER COLUMN id SET DEFAULT nextval('inquiries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item_invitation_access_expires ALTER COLUMN id SET DEFAULT nextval('item_invitation_access_expires_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY news ALTER COLUMN id SET DEFAULT nextval('news_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletters ALTER COLUMN id SET DEFAULT nextval('newsletters_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY number_of_employees ALTER COLUMN id SET DEFAULT nextval('number_of_employees_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY organization_types ALTER COLUMN id SET DEFAULT nextval('organization_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY plans ALTER COLUMN id SET DEFAULT nextval('plans_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reports ALTER COLUMN id SET DEFAULT nextval('reports_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY services ALTER COLUMN id SET DEFAULT nextval('services_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_item_documents ALTER COLUMN id SET DEFAULT nextval('site_item_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_item_invitations ALTER COLUMN id SET DEFAULT nextval('site_item_invitations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_item_questions ALTER COLUMN id SET DEFAULT nextval('site_item_questions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_items ALTER COLUMN id SET DEFAULT nextval('site_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_settings ALTER COLUMN id SET DEFAULT nextval('site_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_tabs ALTER COLUMN id SET DEFAULT nextval('site_tabs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sites ALTER COLUMN id SET DEFAULT nextval('sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY static_pages ALTER COLUMN id SET DEFAULT nextval('static_pages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY teams ALTER COLUMN id SET DEFAULT nextval('teams_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY testimonials ALTER COLUMN id SET DEFAULT nextval('testimonials_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY transaction_details ALTER COLUMN id SET DEFAULT nextval('transaction_details_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY upload_file_types ALTER COLUMN id SET DEFAULT nextval('upload_file_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_email_notifications ALTER COLUMN id SET DEFAULT nextval('user_email_notifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_notification_templates ALTER COLUMN id SET DEFAULT nextval('user_notification_templates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_preferred_emails ALTER COLUMN id SET DEFAULT nextval('user_preferred_emails_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY version_associations ALTER COLUMN id SET DEFAULT nextval('version_associations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY versions ALTER COLUMN id SET DEFAULT nextval('versions_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY active_admin_comments (id, namespace, body, resource_id, resource_type, author_id, author_type, created_at, updated_at) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- Data for Name: admin_notification_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_notification_templates (id, invitee_template, email_due_soon_template, email_overdue_template, email_due_soon_invitee_template, email_overdue_invitee_template, email_report_recipients_template, document_feedback_approved_template, document_feedback_pending_template, document_feedback_rejected_template, created_at, updated_at) FROM stdin;
1	<p>Hello, {{invitee_email}}</p>\r\n<p>{{user_email}} has invited you to upload documenting for Site: {{site_name}}, Item: {{item_name}}.</p>\r\n<p>{{comment}}</p>\r\n{{authentication_link}}\r\n<p>Site Item Access will be active for {{access_active}}</p>\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	due_soon_template	overdue_template	due_soon_invitee_template	overdue_invitee_template	report_recipients_template	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been set as approved. Please find the detailed information below:</p>\r\n\r\n<p>Document Approved Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Approval: {{date_time_of_approval}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been set as pending. Please find the detailed information below:</p>\r\n\r\n<p>Document Pending Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Pending: {{date_time_of_pending}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n<p>Feedback: {{feedback}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been rejected. Please find the detailed information below:</p>\r\n\r\n<p>Document Rejector Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Reject: {{date_time_of_reject}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n<p>Feedback: {{feedback}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	2016-09-12 08:27:32.511181	2016-09-12 08:27:32.511181
\.


--
-- Name: admin_notification_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_notification_templates_id_seq', 1, true);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, name, job_title, phone_number, active, slug, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, permissions) FROM stdin;
2	test@can.com	$2a$10$9GQv6LO/MklaGR/NCEqku.uGf7e8MOiywQpF7Z3I0Co0yv.UndGom	\N	\N	\N	9	2016-08-01 03:48:34.408132	2016-07-29 07:18:41.863329	127.0.0.1	127.0.0.1	2016-07-27 11:13:30.212182	2016-08-01 03:48:34.410938	test	test	87698789	t	test_can_com0	QzLDuxNhDE4BHK3F66ab	2016-07-27 11:13:30.212182	2016-07-29 05:16:40.581879	\N	Comment,Feature,User
3	test2@can.com	$2a$10$7XPDNtoJ80ApgBqvPiV1Oejlc8.RMV3vwqp0OIIGCjs3I84fyDR26	\N	\N	\N	1	2016-07-27 12:00:26.045524	2016-07-27 12:00:26.045524	127.0.0.1	127.0.0.1	2016-07-27 11:59:08.570902	2016-07-28 11:01:31.451693	test2	test2	test2	t	test21	\N	2016-07-27 11:59:08.570902	\N	\N	\N
1	admin@mycompliance.com	$2a$10$AlIiXW7H4kGeSvitLZg9v.ZghYx3gSbVdFnw2lfnuXa6KejE8Ku9y	\N	\N	2016-09-12 08:26:17.623916	30	2016-09-30 04:11:11.547209	2016-09-12 08:26:17.668274	127.0.0.1	127.0.0.1	2016-07-21 12:29:11.080398	2016-09-30 04:11:11.54981	admin	admin	0123456789	t	admin1	\N	2016-07-21 12:29:11.080398	\N	\N	\N
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_users_id_seq', 24, true);


--
-- Data for Name: admin_users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_users_roles (admin_user_id, role_id) FROM stdin;
2	4
1	3
3	3
\.


--
-- Data for Name: banner_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY banner_images (id, image, description, active, created_at, updated_at, heading, link) FROM stdin;
1	banner.jpg	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam uismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>	t	2016-09-05 04:47:59.478486	2016-09-05 04:47:59.478486	<h2>Medical Services <br> That You Can Trust</h2>	<a class="moreBtn" href="javascript:void(0)">I Want More</a>
2	banner.jpg	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam uismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>	t	2016-09-05 04:48:11.868828	2016-09-05 04:48:11.868828	<h2>Medical Services <br> That You Can Trust</h2>	<a class="moreBtn" href="javascript:void(0)">I Want More</a>
3	banner.jpg	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam uismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>	t	2016-09-05 04:48:17.374474	2016-09-05 04:48:17.374474	<h2>Medical Services <br> That You Can Trust</h2>	<a class="moreBtn" href="javascript:void(0)">I Want More</a>
4	banner.jpg	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam uismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>	t	2016-09-05 04:48:21.50721	2016-09-05 04:48:21.50721	<h2>Medical Services <br> That You Can Trust</h2>	<a class="moreBtn" href="javascript:void(0)">I Want More</a>
\.


--
-- Name: banner_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('banner_images_id_seq', 4, true);


--
-- Data for Name: comment_hierarchies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comment_hierarchies (ancestor_id, descendant_id, generations) FROM stdin;
22	22	0
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comments (id, news_id, user_name, email, message, created_at, updated_at, parent_id) FROM stdin;
22	4	anshul	anshul@gmail.com	hellozzzzzzzzzz	2016-09-05 05:10:35.763343	2016-09-05 05:10:35.763343	\N
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('comments_id_seq', 22, true);


--
-- Data for Name: company_informations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY company_informations (id, user_id, name, city, state, country, zip_code, organization_type, number_of_employees, logo, created_at, updated_at) FROM stdin;
3	9	Company Name	Moradabad	UP	IN	123456	Type 4	100-200	aboutAs.jpg	2016-08-22 11:02:24.512922	2016-09-16 05:01:15.512589
\.


--
-- Name: company_informations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('company_informations_id_seq', 3, true);


--
-- Data for Name: contact_us; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contact_us (id, name, email, contact_number, message, created_at, updated_at) FROM stdin;
\.


--
-- Name: contact_us_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contact_us_id_seq', 1, false);


--
-- Data for Name: delayed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY delayed_jobs (id, priority, attempts, handler, last_error, run_at, locked_at, failed_at, locked_by, queue, created_at, updated_at) FROM stdin;
\.


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('delayed_jobs_id_seq', 1, false);


--
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY email_templates (id, admin_email, user_confirmation_instruction, user_invitation_instruction, user_password_change, user_password_update, user_reset_password_instruction, user_inquiry, user_newsletter, user_contact_us, admin_confirmation_instruction, admin_password_updated, admin_account_created, admin_reset_password_instruction, admin_inquiry, admin_newsletter, admin_contact_us, created_at, updated_at, manager_account, manager_created, manager_updated, invitation_confirmation, account_created, password_updated) FROM stdin;
1	admin@example.com	<p>Hello, {{email}},</p>\r\n<p>Congratulations, your MyCompliance account has been created, please click here to activate your account.</p>\r\n<p>Need the raw link? {{link}}</p>\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2016-09-06 05:56:18.65541	2016-09-16 10:15:34.690789	\N	\N	\N	\N	\N	\N
\.


--
-- Name: email_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('email_templates_id_seq', 1, true);


--
-- Data for Name: features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY features (id, image, description, created_at, updated_at) FROM stdin;
\.


--
-- Name: features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('features_id_seq', 1, false);


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) FROM stdin;
\.


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('friendly_id_slugs_id_seq', 1, false);


--
-- Data for Name: inquiries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY inquiries (id, name, email, contact_number, message, created_at, updated_at) FROM stdin;
1	erfe	sdffd@dfgdf.com	3242342424	`sdfsfdf	2016-09-09 08:43:04.041543	2016-09-09 08:43:04.041543
\.


--
-- Name: inquiries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inquiries_id_seq', 1, true);


--
-- Data for Name: item_invitation_access_expires; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY item_invitation_access_expires (id, expires, created_at, updated_at) FROM stdin;
1	2 weeks	2016-07-25 10:14:56.803706	2016-07-25 10:14:56.803706
2	1 month	2016-07-25 10:15:08.504097	2016-07-25 10:15:08.504097
3	3 months	2016-07-25 10:15:15.95543	2016-07-25 10:15:15.95543
4	6 months	2016-07-25 10:15:25.467619	2016-07-25 10:15:25.467619
5	1 year	2016-07-25 10:15:36.676179	2016-07-25 10:15:36.676179
6	2 years	2016-07-25 10:15:44.347642	2016-07-25 10:15:44.347642
7	3 years	2016-07-25 10:15:54.50463	2016-07-25 10:15:54.50463
8	never	2016-09-06 11:41:35.858122	2016-09-06 11:41:35.858122
\.


--
-- Name: item_invitation_access_expires_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('item_invitation_access_expires_id_seq', 8, true);


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY news (id, title, description, image, created_at, updated_at, slug, show_on_home) FROM stdin;
4	The Hero In All Of Us	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore. ummy nibh euismo.	complaince1.jpg	2016-09-05 05:04:24.940932	2016-09-05 05:04:24.940932	the_hero_in_all_of_us	t
5	The Hero In All Of Us	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore. ummy nibh euismo.	complaince1.jpg	2016-09-05 05:04:54.735017	2016-09-05 05:04:54.735017	the_hero_in_all_of_us_592b3365-0ecb-4c9a-8732-3da42c4beeef	t
6	The Hero In All Of Us	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore. ummy nibh euismo.	complaince2.jpg	2016-09-05 05:05:16.411669	2016-09-05 05:05:16.411669	the_hero_in_all_of_us_78735894-45be-438f-8fdf-da17e04f79b5	t
\.


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('news_id_seq', 6, true);


--
-- Data for Name: newsletters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY newsletters (id, name, email, created_at, updated_at) FROM stdin;
1	\N	test@gmail.com	2016-09-06 05:53:47.867089	2016-09-06 05:53:47.867089
2	\N	test@gmail.com	2016-09-06 05:56:22.475886	2016-09-06 05:56:22.475886
3	\N	test@gmail.com	2016-09-06 05:57:16.916721	2016-09-06 05:57:16.916721
4	\N	\N	2016-09-06 06:45:57.096326	2016-09-06 06:45:57.096326
\.


--
-- Name: newsletters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('newsletters_id_seq', 4, true);


--
-- Data for Name: number_of_employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY number_of_employees (id, employees, created_at, updated_at) FROM stdin;
1	10-15	2016-07-25 10:35:45.022627	2016-07-25 10:35:45.022627
2	20-50	2016-07-25 10:35:52.335073	2016-07-25 10:35:52.335073
3	50-100	2016-07-25 10:36:01.173548	2016-07-25 10:36:01.173548
4	100-200	2016-07-25 10:36:10.486366	2016-07-25 10:36:10.486366
5	200-500	2016-07-25 10:36:20.190229	2016-07-25 10:36:20.190229
6	500-1000	2016-07-25 10:36:30.232968	2016-07-25 10:36:30.232968
7	1000-5000	2016-07-25 10:36:38.294417	2016-07-25 10:36:38.294417
8	5000-10,000	2016-07-25 10:36:46.690173	2016-07-25 10:36:46.690173
9	10,000+	2016-07-25 10:36:55.91136	2016-07-25 10:36:55.91136
\.


--
-- Name: number_of_employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('number_of_employees_id_seq', 9, true);


--
-- Data for Name: organization_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY organization_types (id, org_type, created_at, updated_at) FROM stdin;
1	Type 1	2016-07-25 10:38:30.9012	2016-07-25 10:38:30.9012
2	Type 2	2016-07-25 10:38:37.980039	2016-07-25 10:38:37.980039
3	Type 3	2016-07-25 10:38:47.078503	2016-07-25 10:38:47.078503
4	Type 4	2016-07-25 10:38:54.10693	2016-07-25 10:38:54.10693
5	Type 5	2016-07-25 10:39:01.548852	2016-07-25 10:39:01.548852
6	Type 6	2016-07-25 10:39:07.62585	2016-07-25 10:39:07.62585
7	Type 7	2016-07-25 10:39:20.840456	2016-07-25 10:39:20.840456
8	Type 8	2016-07-25 10:39:25.523506	2016-07-25 10:39:25.523506
9	Type 9	2016-07-25 10:39:30.471917	2016-07-25 10:39:30.471917
10	Type 10	2016-07-25 10:39:36.629705	2016-07-25 10:39:36.629705
\.


--
-- Name: organization_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('organization_types_id_seq', 10, true);


--
-- Data for Name: plans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY plans (id, name, price, time_duration, time_duration_postfix, created_at, updated_at) FROM stdin;
1	Starter	10	10000	month	2016-09-05 11:19:43.315706	2016-09-05 11:19:43.315706
2	Business	20	20000	month	2016-09-05 11:19:56.457422	2016-09-05 11:19:56.457422
3	Corporate	30	30000	month	2016-09-05 11:20:08.742427	2016-09-05 11:20:08.742427
4	Professional	40	40000	month	2016-09-05 11:20:20.704816	2016-09-05 11:20:20.704816
\.


--
-- Name: plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('plans_id_seq', 4, true);


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reports (id, user_id, site_id, sites, report_type, tabs, items, documents, document_expires, report_format, lock_document, send_report, to_email, cc_email, reports, created_at, updated_at) FROM stdin;
\.


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('reports_id_seq', 1, false);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY roles (id, name, resource_id, resource_type, created_at, updated_at) FROM stdin;
2	admin	\N	\N	2016-07-27 10:01:42.408915	2016-07-27 10:01:42.408915
3	super_admin	\N	\N	2016-07-27 11:04:33.532512	2016-07-27 11:04:33.532512
4	sub_admin	\N	\N	2016-07-27 11:13:30.281446	2016-07-27 11:13:30.281446
5	company	\N	\N	2016-08-12 11:41:20.090903	2016-08-12 11:41:20.090903
6	manager	\N	\N	2016-08-16 11:42:26.860891	2016-08-16 11:42:26.860891
7	contractor	\N	\N	2016-09-06 12:28:24.533491	2016-09-06 12:28:24.533491
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_id_seq', 7, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20160721120643
20160721120955
20160721121005
20160721121551
20160725041832
20160725051230
20160725052344
20160725052639
20160725053123
20160725053453
20160725054440
20160725054916
20160725055725
20160725060346
20160725061211
20160725062053
20160725062715
20160725063447
20160725064228
20160725064404
20160725064438
20160725065026
20160725065231
20160725065415
20160725065847
20160725070417
20160725070552
20160725070638
20160725072417
20160725072448
20160726065811
20160726070012
20160726071205
20160726071436
20160726073128
20160726073129
20160726073130
20160726100156
20160726100345
20160727095105
20160727093009
20160728044434
20160728102031
20160801070445
20160801070539
20160802114954
20160811065915
20160812084528
20160812081727
20160822045648
20160725085322
20160826053725
20160826084028
20160826095947
20160826103352
20160830051513
20160902050307
20160902050601
20160902050625
20160902050647
20160902050750
20160902085705
20160912062324
20160914094511
20160921100110
20160921124744
20161107085019
20161109103235
\.


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY services (id, image, name, description, slug, created_at, updated_at, show_on_home) FROM stdin;
4	services1.png	<h1 class="wow fadeInUp" style="visibility: visible;">Team Managment</h1>	<p class="wow fadeInUp" style="visibility: visible;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore.</p>	h1_class_wow_fadeinup_style_visibility_visible_team_managment_h1	2016-09-05 04:55:55.245714	2016-09-05 04:56:11.00104	t
5	services2.png	<h1 class="wow fadeInUp" style="visibility: visible;">Create Custom Form</h1>	<p class="wow fadeInUp" style="visibility: visible;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore.</p>	h1_class_wow_fadeinup_style_visibility_visible_create_custom_form_h1	2016-09-05 04:56:40.372791	2016-09-05 04:56:40.372791	t
6	services3.png	<h1 class="wow fadeInUp" style="visibility: visible;">Add New Site</h1>	<p class="wow fadeInUp" style="visibility: visible;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore.</p>	h1_class_wow_fadeinup_style_visibility_visible_add_new_site_h1	2016-09-05 04:56:58.023943	2016-09-05 04:56:58.023943	t
7	services4.png	<h1 class="wow fadeInUp" style="visibility: visible;">Compliance Documents</h1>	<p class="wow fadeInUp" style="visibility: visible;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore.</p>	h1_class_wow_fadeinup_style_visibility_visible_compliance_documents_h1	2016-09-05 04:57:15.703588	2016-09-05 04:57:15.703588	t
\.


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('services_id_seq', 7, true);


--
-- Data for Name: site_item_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY site_item_documents (id, site_id, site_item_id, user_id, file, archive, automatic_archive, current, pending, approve, feedback, contractor_email, created_at, updated_at) FROM stdin;
24	2	3	37	Social.png	f	f	f	f	f	\N	testcontractor@gmail.com	2016-11-10 06:14:55.406421	2016-11-10 06:14:55.406421
25	2	4	37	bigbluebutton.png	f	f	f	f	f	\N	testcontractor@gmail.com	2016-11-10 06:24:34.632988	2016-11-10 06:24:34.632988
26	2	4	37	browserstack_user_sam_tgs.png	f	f	f	f	f	\N	testcontractor@gmail.com	2016-11-10 06:26:13.813047	2016-11-10 06:26:13.813047
27	2	5	37	room.png	f	f	f	f	f	\N	testcontractor@gmail.com	2016-11-10 06:26:26.351401	2016-11-10 06:26:26.351401
28	3	23	37	report_page.png	f	f	f	f	f	\N	testcontractor@gmail.com	2016-11-10 08:10:30.79295	2016-11-10 08:10:30.79295
29	3	16	37	bitbucket_error.png	f	f	f	f	f	\N	testcontractor@gmail.com	2016-11-10 12:39:47.252055	2016-11-10 12:39:47.252055
11	2	37	27	DB13a.png	f	f	f	f	f	\N	test3@gmail.comret	2016-09-08 09:29:24.205133	2016-09-08 09:29:24.205133
13	2	3	9	instance_login.png	t	f	f	f	f	\N	test3@gmail.comret	2016-09-09 10:45:22.944126	2016-09-09 10:46:10.239842
7	2	3	27	instance_login.png	f	f	f	t	f	\N	test3@gmail.comret	2016-09-08 09:24:33.665955	2016-09-09 11:59:01.864925
8	2	3	27	bigbluebutton.png	f	f	f	t	f	feedback	test3@gmail.comret	2016-09-08 09:25:06.790852	2016-09-09 12:04:39.140029
15	2	37	27	user_smith_tgs.png	f	f	f	f	f	\N	test3@gmail.comret	2016-09-09 12:26:39.137584	2016-09-09 12:26:39.137584
16	2	37	27	user_smith_bbb.png	f	f	f	f	f	\N	test3@gmail.comret	2016-09-09 12:26:45.411305	2016-09-09 12:26:45.411305
17	2	37	27	user_sam_tgs.png	f	f	f	f	f	\N	test3@gmail.comret	2016-09-09 12:26:50.453698	2016-09-09 12:26:50.453698
18	2	37	27	user_sam_bbb.png	f	f	f	f	f	\N	test3@gmail.comret	2016-09-09 12:26:55.195083	2016-09-09 12:26:55.195083
19	2	3	27	user_smith_tgs.png	f	f	f	t	f	pendingggggggggggggg	test3@gmail.comret	2016-09-09 12:38:52.795492	2016-09-09 12:39:43.886096
14	2	3	9	browserstack_user_sam_tgs.png	t	f	f	f	f	\N	test3@gmail.comret	2016-09-09 10:46:09.683421	2016-09-12 04:40:02.313617
9	2	3	27	browserling_bbb.png	t	f	f	f	f	\N	test3@gmail.comret	2016-09-08 09:26:10.461132	2016-09-12 04:59:03.146496
3	2	3	9	404.jpg	t	f	f	f	f	\N	test@mycompliance.com	2016-08-11 09:07:19.34028	2016-09-12 05:05:09.742436
21	2	3	27	user_sam_tgs.png	f	f	f	t	f	pendingggggggggggggggggggggggggggggggggggggg	test3@gmail.comret	2016-09-09 12:39:24.091511	2016-09-12 05:14:28.672269
12	2	3	9	DB13a.png	t	f	f	f	f	\N	test3@gmail.comret	2016-09-09 10:40:40.086749	2016-11-08 06:45:01.772795
2	2	3	9	500.jpg	t	f	f	f	f	\N	test@mycompliance.com	2016-08-11 09:07:02.174145	2016-11-08 06:49:46.828906
1	2	3	9	aboutAs.jpg	t	f	f	f	f	\N	test@mycompliance.com	2016-08-11 09:04:40.028573	2016-11-08 06:56:50.485914
23	2	3	9	\N	f	f	t	f	t	\N	\N	2016-11-08 07:01:03.98055	2016-11-08 07:01:03.98055
4	2	3	9	andthumb.jpg	t	f	f	f	f	\N	test@mycompliance.com	2016-08-11 09:07:58.340452	2016-11-08 07:01:04.052224
\.


--
-- Name: site_item_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_item_documents_id_seq', 29, true);


--
-- Data for Name: site_item_invitations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY site_item_invitations (id, site_id, site_item_id, user_id, access_expires, access_expires_date, upload_access_email, comment, pause, created_at, updated_at, invitation_sent) FROM stdin;
14	2	5	9	2 weeks	\N	test2@gmail.com	\N	f	2016-08-11 05:58:08.827189	2016-08-11 07:12:16.413622	t
13	2	5	9	1 week	\N	test1@gmail.com	\N	t	2016-08-11 05:56:48.027042	2016-08-12 05:08:48.429021	t
16	2	4	9	1 week	\N	test1@gmail.com	\N	t	2016-08-11 05:58:57.511966	2016-08-12 05:08:56.054734	t
18	2	3	9	1 week	\N	test2@gmail.comwer	\N	f	2016-09-06 10:41:50.775535	2016-09-06 12:28:25.398592	t
17	2	3	9	1 week	\N	test1@gmail.com	\N	f	2016-08-12 05:06:14.511189	2016-09-06 12:28:25.455811	t
21	2	3	9	3 months	\N	test3@gmail.comret	\N	f	2016-09-06 13:00:22.254111	2016-09-06 13:00:25.188939	t
22	2	9	9	never	\N	test3@gmail.comret	\N	f	2016-09-08 06:29:05.76268	2016-09-08 06:29:09.617832	t
23	3	19	9	2 years	\N	test3@gmail.comret	\N	f	2016-09-08 06:29:38.482356	2016-09-08 06:29:40.08759	t
24	2	37	9	1 month	\N	test3@gmail.comret	\N	f	2016-09-08 07:34:08.781111	2016-09-08 07:34:10.932096	t
25	3	15	9	6 months	\N	test3@gmail.comret	\N	f	2016-09-08 07:35:40.859907	2016-09-08 07:35:42.793088	t
28	2	3	9	3 years	\N	anshul12345@gmail.com	\N	f	2016-09-12 06:17:20.768879	2016-09-12 06:18:49.142922	t
27	2	3	9	6 months	\N	anshul1234@gmail.com	\N	f	2016-09-12 06:16:27.20963	2016-09-12 06:19:01.821574	t
26	2	3	9	3 months	\N	anshul123@gmail.com	\N	f	2016-09-12 06:13:56.785279	2016-09-12 06:19:51.486365	t
29	2	3	9	never	\N	anshul123456@gmail.com	\N	f	2016-09-12 06:20:22.345441	2016-09-12 06:20:26.19101	t
30	2	3	9	2 weeks	\N	testcontractor@gmail.com	\N	f	2016-09-23 05:18:36.797505	2016-09-23 05:18:44.546918	t
31	2	4	9	08/12/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 05:23:36.372271	2016-11-10 05:23:36.372271	f
32	2	5	9	10/12/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 05:23:43.367275	2016-11-10 05:23:43.367275	f
33	2	33	9	10/12/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 05:23:49.410446	2016-11-10 05:23:49.410446	f
34	2	37	9	10/12/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 05:24:00.128514	2016-11-10 05:24:00.128514	f
35	2	38	9	10/12/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 05:24:07.218219	2016-11-10 05:24:07.218219	f
36	2	39	9	09/12/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 05:24:15.090351	2016-11-10 05:24:15.090351	f
37	3	15	9	19/11/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 05:24:43.428513	2016-11-10 05:25:23.504765	t
38	3	16	9	26/11/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 05:24:49.329721	2016-11-10 05:25:23.916785	t
39	3	17	9	26/11/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 05:24:53.85646	2016-11-10 05:25:24.496501	t
40	3	18	9	26/11/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 05:24:58.375936	2016-11-10 05:25:25.073097	t
41	2	9	9	19/11/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 08:08:27.791496	2016-11-10 08:08:27.791496	f
42	2	10	9	26/11/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 08:08:39.779867	2016-11-10 08:08:39.779867	f
43	2	11	9	24/11/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 08:08:45.365798	2016-11-10 08:08:45.365798	f
44	3	22	9	05/11/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 08:09:23.248499	2016-11-10 08:09:23.248499	f
45	3	23	9	12/11/2016	\N	testcontractor@gmail.com	\N	f	2016-11-10 08:09:29.111632	2016-11-10 08:09:29.111632	f
\.


--
-- Name: site_item_invitations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_item_invitations_id_seq', 45, true);


--
-- Data for Name: site_item_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY site_item_questions (id, site_id, site_item_id, question, required_for_compliant, created_at, updated_at) FROM stdin;
1	\N	1	RWO Issued	t	2016-08-02 07:46:20.62482	2016-08-02 07:46:20.62482
2	\N	1	Works Complete	t	2016-08-02 07:46:35.093878	2016-08-02 07:46:35.093878
3	\N	1	Certificate / Report	t	2016-08-02 07:46:56.059844	2016-08-02 07:46:56.059844
4	2	3	RWO Issued	t	2016-08-02 08:18:33.334979	2016-08-02 08:18:33.334979
5	2	3	Works Complete	t	2016-08-02 08:18:33.348924	2016-08-02 08:18:33.348924
6	2	3	Certificate / Report	t	2016-08-02 08:18:33.365747	2016-08-02 08:18:33.365747
7	2	4	RWO Issued	t	2016-08-02 08:18:33.400826	2016-08-02 08:18:33.400826
8	2	4	Works Complete	t	2016-08-02 08:18:33.416917	2016-08-02 08:18:33.416917
9	2	4	Certificate / Report	t	2016-08-02 08:18:33.43276	2016-08-02 08:18:33.43276
10	2	5	RWO Issued	t	2016-08-02 08:18:33.466613	2016-08-02 08:18:33.466613
11	2	5	Works Complete	t	2016-08-02 08:18:33.482055	2016-08-02 08:18:33.482055
12	2	5	Certificate / Report	t	2016-08-02 08:18:33.498917	2016-08-02 08:18:33.498917
13	2	6	RWO Issued	t	2016-08-02 08:18:33.545486	2016-08-02 08:18:33.545486
14	2	6	Works Complete	t	2016-08-02 08:18:33.570959	2016-08-02 08:18:33.570959
15	2	6	Certificate / Report	t	2016-08-02 08:18:33.582165	2016-08-02 08:18:33.582165
16	2	7	RWO Issued	t	2016-08-02 08:18:33.616306	2016-08-02 08:18:33.616306
17	2	7	Works Complete	t	2016-08-02 08:18:33.633426	2016-08-02 08:18:33.633426
18	2	7	Certificate / Report	t	2016-08-02 08:18:33.649898	2016-08-02 08:18:33.649898
19	2	8	RWO Issued	t	2016-08-02 08:18:33.684568	2016-08-02 08:18:33.684568
20	2	8	Works Complete	t	2016-08-02 08:18:33.698855	2016-08-02 08:18:33.698855
21	2	8	Certificate / Report	t	2016-08-02 08:18:33.70708	2016-08-02 08:18:33.70708
22	2	9	RWO Issued	t	2016-08-02 08:18:33.763206	2016-08-02 08:18:33.763206
23	2	9	Works Complete	t	2016-08-02 08:18:33.774834	2016-08-02 08:18:33.774834
24	2	9	Certificate / Report	t	2016-08-02 08:18:33.793531	2016-08-02 08:18:33.793531
25	2	10	RWO Issued	t	2016-08-02 08:18:33.82629	2016-08-02 08:18:33.82629
26	2	10	Works Complete	t	2016-08-02 08:18:33.841117	2016-08-02 08:18:33.841117
27	2	10	Certificate / Report	t	2016-08-02 08:18:33.848593	2016-08-02 08:18:33.848593
28	2	11	RWO Issued	t	2016-08-02 08:18:33.888943	2016-08-02 08:18:33.888943
29	2	11	Works Complete	t	2016-08-02 08:18:33.897988	2016-08-02 08:18:33.897988
30	2	11	Certificate / Report	t	2016-08-02 08:18:33.9072	2016-08-02 08:18:33.9072
31	2	12	RWO Issued	t	2016-08-02 08:18:33.956418	2016-08-02 08:18:33.956418
32	2	12	Works Complete	t	2016-08-02 08:18:33.973772	2016-08-02 08:18:33.973772
33	2	12	Certificate / Report	t	2016-08-02 08:18:33.990739	2016-08-02 08:18:33.990739
34	2	13	RWO Issued	t	2016-08-02 08:18:34.0258	2016-08-02 08:18:34.0258
35	2	13	Works Complete	t	2016-08-02 08:18:34.043667	2016-08-02 08:18:34.043667
36	2	13	Certificate / Report	t	2016-08-02 08:18:34.05739	2016-08-02 08:18:34.05739
37	2	14	RWO Issued	t	2016-08-02 08:18:34.091048	2016-08-02 08:18:34.091048
38	2	14	Works Complete	t	2016-08-02 08:18:34.108532	2016-08-02 08:18:34.108532
39	2	14	Certificate / Report	t	2016-08-02 08:18:34.124123	2016-08-02 08:18:34.124123
40	3	16	RWO Issued	t	2016-08-02 12:39:25.717472	2016-08-02 12:39:25.717472
41	3	16	Works Complete	t	2016-08-02 12:39:25.729483	2016-08-02 12:39:25.729483
42	3	16	Certificate / Report	t	2016-08-02 12:39:25.737693	2016-08-02 12:39:25.737693
43	3	17	RWO Issued	t	2016-08-02 12:39:25.766077	2016-08-02 12:39:25.766077
44	3	17	Works Complete	t	2016-08-02 12:39:25.779091	2016-08-02 12:39:25.779091
45	3	17	Certificate / Report	t	2016-08-02 12:39:25.787559	2016-08-02 12:39:25.787559
46	3	18	RWO Issued	t	2016-08-02 12:39:25.807292	2016-08-02 12:39:25.807292
47	3	18	Works Complete	t	2016-08-02 12:39:25.854264	2016-08-02 12:39:25.854264
48	3	18	Certificate / Report	t	2016-08-02 12:39:25.862377	2016-08-02 12:39:25.862377
49	3	19	RWO Issued	t	2016-08-02 12:39:25.898943	2016-08-02 12:39:25.898943
50	3	19	Works Complete	t	2016-08-02 12:39:25.912964	2016-08-02 12:39:25.912964
51	3	19	Certificate / Report	t	2016-08-02 12:39:25.921126	2016-08-02 12:39:25.921126
52	3	20	RWO Issued	t	2016-08-02 12:39:25.980035	2016-08-02 12:39:25.980035
53	3	20	Works Complete	t	2016-08-02 12:39:25.988813	2016-08-02 12:39:25.988813
54	3	20	Certificate / Report	t	2016-08-02 12:39:26.004293	2016-08-02 12:39:26.004293
55	3	21	RWO Issued	t	2016-08-02 12:39:26.026245	2016-08-02 12:39:26.026245
56	3	21	Works Complete	t	2016-08-02 12:39:26.038455	2016-08-02 12:39:26.038455
57	3	21	Certificate / Report	t	2016-08-02 12:39:26.054727	2016-08-02 12:39:26.054727
58	3	22	RWO Issued	t	2016-08-02 12:39:26.091228	2016-08-02 12:39:26.091228
59	3	22	Works Complete	t	2016-08-02 12:39:26.107733	2016-08-02 12:39:26.107733
60	3	22	Certificate / Report	t	2016-08-02 12:39:26.121106	2016-08-02 12:39:26.121106
61	3	23	RWO Issued	t	2016-08-02 12:39:26.141649	2016-08-02 12:39:26.141649
62	3	23	Works Complete	t	2016-08-02 12:39:26.15411	2016-08-02 12:39:26.15411
63	3	23	Certificate / Report	t	2016-08-02 12:39:26.162469	2016-08-02 12:39:26.162469
64	3	24	RWO Issued	t	2016-08-02 12:39:26.181844	2016-08-02 12:39:26.181844
65	3	24	Works Complete	t	2016-08-02 12:39:26.195621	2016-08-02 12:39:26.195621
66	3	24	Certificate / Report	t	2016-08-02 12:39:26.204119	2016-08-02 12:39:26.204119
67	3	25	RWO Issued	t	2016-08-02 12:39:26.240765	2016-08-02 12:39:26.240765
68	3	25	Works Complete	t	2016-08-02 12:39:26.254214	2016-08-02 12:39:26.254214
69	3	25	Certificate / Report	t	2016-08-02 12:39:26.262325	2016-08-02 12:39:26.262325
70	3	26	RWO Issued	t	2016-08-02 12:39:26.281809	2016-08-02 12:39:26.281809
71	3	26	Works Complete	t	2016-08-02 12:39:26.29587	2016-08-02 12:39:26.29587
72	3	26	Certificate / Report	t	2016-08-02 12:39:26.304361	2016-08-02 12:39:26.304361
73	3	27	RWO Issued	t	2016-08-02 12:39:26.325119	2016-08-02 12:39:26.325119
74	3	27	Works Complete	t	2016-08-02 12:39:26.337543	2016-08-02 12:39:26.337543
75	3	27	Certificate / Report	t	2016-08-02 12:39:26.345674	2016-08-02 12:39:26.345674
76	2	28	RWO Issued	t	2016-08-03 07:28:35.66776	2016-08-03 07:28:35.66776
77	2	28	Works Complete	t	2016-08-03 07:28:35.721968	2016-08-03 07:28:35.721968
78	2	28	Certificate / Report	t	2016-08-03 07:28:35.737864	2016-08-03 07:28:35.737864
79	2	29	RWO Issued	t	2016-08-03 07:32:01.145198	2016-08-03 07:32:01.145198
80	2	29	Works Complete	t	2016-08-03 07:32:01.158661	2016-08-03 07:32:01.158661
81	2	29	Certificate / Report	t	2016-08-03 07:32:01.166976	2016-08-03 07:32:01.166976
82	2	30	RWO Issued	t	2016-08-03 07:34:47.589883	2016-08-03 07:34:47.589883
83	2	30	Works Complete	t	2016-08-03 07:34:47.602518	2016-08-03 07:34:47.602518
84	2	30	Certificate / Report	t	2016-08-03 07:34:47.610767	2016-08-03 07:34:47.610767
85	2	31	RWO Issued	t	2016-08-03 07:36:08.226701	2016-08-03 07:36:08.226701
86	2	31	Works Complete	t	2016-08-03 07:36:08.240325	2016-08-03 07:36:08.240325
87	2	31	Certificate / Report	t	2016-08-03 07:36:08.249946	2016-08-03 07:36:08.249946
88	2	32	RWO Issued	t	2016-08-03 08:11:56.190353	2016-08-03 08:11:56.190353
89	2	32	Works Complete	t	2016-08-03 08:11:56.202732	2016-08-03 08:11:56.202732
90	2	32	Certificate / Report	t	2016-08-03 08:11:56.219771	2016-08-03 08:11:56.219771
91	2	33	RWO Issued	t	2016-08-03 09:15:08.289691	2016-08-03 09:15:08.289691
92	2	33	Works Complete	t	2016-08-03 09:15:08.304998	2016-08-03 09:15:08.304998
93	2	33	Certificate / Report	t	2016-08-03 09:15:08.321919	2016-08-03 09:15:08.321919
94	\N	34	RWO Issued	t	2016-08-03 09:44:51.556462	2016-08-03 09:44:51.556462
95	\N	34	Works Complete	t	2016-08-03 09:45:23.764304	2016-08-03 09:45:23.764304
96	\N	34	Certificate / Report	t	2016-08-03 09:45:33.052401	2016-08-03 09:45:33.052401
194	\N	3	Works Complete	t	2016-11-07 11:02:28.785923	2016-11-07 11:02:28.785923
195	\N	3	Works Complete	f	2016-11-07 11:02:28.79184	2016-11-07 11:02:28.79184
196	\N	3	Works Complete	f	2016-11-07 11:02:28.796357	2016-11-07 11:02:28.796357
197	\N	3	Works Complete	t	2016-11-07 11:02:28.800738	2016-11-07 11:02:28.800738
103	2	37	RWO Issued	t	2016-08-03 10:36:24.583235	2016-08-03 10:36:24.583235
104	2	37	Works Complete	t	2016-08-03 10:36:24.596772	2016-08-03 10:36:24.596772
105	2	37	Certificate / Report	t	2016-08-03 10:36:24.606899	2016-08-03 10:36:24.606899
106	2	38	RWO Issued	t	2016-08-03 10:36:55.287106	2016-08-03 10:36:55.287106
107	2	38	Works Complete	t	2016-08-03 10:36:55.302416	2016-08-03 10:36:55.302416
108	2	38	Certificate / Report	t	2016-08-03 10:36:55.309064	2016-08-03 10:36:55.309064
109	2	39	RWO Issued	t	2016-08-03 10:38:06.346291	2016-08-03 10:38:06.346291
110	2	39	Works Complete	t	2016-08-03 10:38:06.357055	2016-08-03 10:38:06.357055
128	\N	46	Q1	t	2016-08-04 11:00:42.215758	2016-08-04 11:00:42.215758
129	\N	46	Q2	f	2016-08-04 11:00:42.219255	2016-08-04 11:00:42.219255
130	\N	46	Q3	t	2016-08-04 11:00:42.222411	2016-08-05 06:05:44.176964
198	\N	61	Test question 1	t	2016-11-08 10:47:47.134964	2016-11-08 10:47:47.134964
199	\N	61	Test question 2	t	2016-11-08 10:47:47.215816	2016-11-08 10:47:47.215816
200	\N	61	Test question 3	t	2016-11-08 10:47:47.219103	2016-11-08 10:47:47.219103
201	\N	61	Test question 4	t	2016-11-08 10:47:47.222343	2016-11-08 10:47:47.222343
202	\N	61	Test question 5	t	2016-11-08 10:47:47.227097	2016-11-08 10:47:47.227097
138	\N	46	Q4	t	2016-08-05 09:27:35.508006	2016-08-05 09:27:35.508006
166	\N	55	dsfsdf	t	2016-08-05 10:30:31.196071	2016-08-05 10:30:31.196071
167	\N	55	sdfdsfsf	t	2016-08-05 10:30:31.199617	2016-08-05 10:30:31.199617
168	\N	55	dfhghhg	t	2016-08-05 10:30:31.202769	2016-08-05 10:30:31.202769
169	\N	55	dasdda	t	2016-08-05 10:30:31.205849	2016-08-05 10:30:31.205849
174	3	57	RWO Issued	t	2016-08-09 07:48:49.547663	2016-08-09 07:48:49.547663
175	3	57	Works Complete	t	2016-08-09 07:48:49.561861	2016-08-09 07:48:49.561861
176	3	57	Certificate / Report	t	2016-08-09 07:48:49.570401	2016-08-09 07:48:49.570401
177	2	58	Q1	t	2016-09-15 09:14:26.79881	2016-09-15 09:14:26.79881
178	2	58	Q2	f	2016-09-15 09:14:26.901884	2016-09-15 09:14:26.901884
179	2	58	Q3	t	2016-09-15 09:14:26.910649	2016-09-15 09:14:26.910649
180	2	58	Q4	t	2016-09-15 09:14:26.918149	2016-09-15 09:14:26.918149
170	\N	3	RWO Issued	f	2016-08-08 05:53:00.025947	2016-11-07 11:01:27.541144
189	\N	3	Certificate / Report	f	2016-11-07 11:01:27.548676	2016-11-07 11:01:27.548676
190	\N	3	Certificate / Report	f	2016-11-07 11:01:27.649211	2016-11-07 11:01:27.649211
191	\N	3	Certificate / Report	t	2016-11-07 11:01:27.653862	2016-11-07 11:01:27.653862
192	\N	3	Certificate / Report	f	2016-11-07 11:01:27.659952	2016-11-07 11:01:27.659952
193	\N	3	Certificate / Report	t	2016-11-07 11:01:27.664139	2016-11-07 11:01:27.664139
\.


--
-- Name: site_item_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_item_questions_id_seq', 202, true);


--
-- Data for Name: site_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY site_items (id, user_id, site_id, site_tab_id, title, frequency, required_for_site_compliance, due_date, due_soon, created_at, updated_at, slug, deleted_at, status, compliant, template) FROM stdin;
57	9	3	5	Emergency Lighting	9	t	2016-09-01 07:13:48.634473	20	2016-08-09 07:48:49.525276	2016-08-11 13:01:13.184783	emergency_lighting	\N	\N	f	f
1	9	\N	\N	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 07:13:49.74923	2016-08-11 13:01:25.813171	thermal_scan	\N	\N	f	t
3	9	2	1	Thermal Scan	6	f	2016-09-01 07:13:48	20	2016-08-02 08:18:33.291702	2016-08-11 13:01:25.850717	thermal_scan2	\N	\N	f	f
4	9	2	1	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:33.384552	2016-08-11 13:01:25.866887	thermal_scan3	\N	\N	f	f
5	9	2	1	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:33.452296	2016-08-11 13:01:25.884247	thermal_scan4	\N	\N	f	f
6	9	2	2	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:33.526034	2016-08-11 13:01:25.899747	thermal_scan5	\N	\N	f	f
7	9	2	2	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:33.600616	2016-08-11 13:01:25.916479	thermal_scan6	\N	\N	f	f
8	9	2	2	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:33.666312	2016-08-11 13:01:25.935668	thermal_scan7	\N	\N	f	f
9	9	2	3	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:33.741225	2016-08-11 13:01:25.949553	thermal_scan8	\N	\N	f	f
10	9	2	3	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:33.807579	2016-08-11 13:01:25.971916	thermal_scan9	\N	\N	f	f
11	9	2	3	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:33.86616	2016-08-11 13:01:25.983125	thermal_scan10	\N	\N	f	f
12	9	2	4	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:33.932774	2016-08-11 13:01:26.002985	thermal_scan11	\N	\N	f	f
13	9	2	4	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:34.012079	2016-08-11 13:01:26.018956	thermal_scan12	\N	\N	f	f
14	9	2	4	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 08:18:34.076055	2016-08-11 13:01:26.033724	thermal_scan13	\N	\N	f	f
15	9	3	5	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:25.655357	2016-08-11 13:01:26.050314	thermal_scan14	\N	\N	f	f
16	9	3	5	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:25.695853	2016-08-11 13:01:26.066691	thermal_scan15	\N	\N	f	f
17	9	3	5	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:25.747799	2016-08-11 13:01:26.091767	thermal_scan16	\N	\N	f	f
18	9	3	5	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:25.796206	2016-08-11 13:01:26.110248	thermal_scan17	\N	\N	f	f
19	9	3	6	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:25.882882	2016-08-11 13:01:26.128403	thermal_scan18	\N	\N	f	f
20	9	3	6	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:25.929519	2016-08-11 13:01:26.140753	thermal_scan19	\N	\N	f	f
21	9	3	6	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:26.013027	2016-08-11 13:01:26.162688	thermal_scan20	\N	\N	f	f
22	9	3	7	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:26.075554	2016-08-11 13:01:26.175626	thermal_scan21	\N	\N	f	f
23	9	3	7	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:26.130025	2016-08-11 13:01:26.191755	thermal_scan22	\N	\N	f	f
24	9	3	7	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:26.171803	2016-08-11 13:01:26.20927	thermal_scan23	\N	\N	f	f
25	9	3	8	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:26.224401	2016-08-11 13:01:26.225198	thermal_scan24	\N	\N	f	f
26	9	3	8	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:26.271173	2016-08-11 13:01:26.244864	thermal_scan25	\N	\N	f	f
27	9	3	8	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-02 12:39:26.313016	2016-08-11 13:01:26.258211	thermal_scan26	\N	\N	f	f
28	9	2	4	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-03 07:28:35.571163	2016-08-11 13:01:26.279502	thermal_scan27	\N	\N	f	f
29	9	2	4	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-03 07:32:01.125337	2016-08-11 13:01:26.300946	thermal_scan28	\N	\N	f	f
30	9	2	4	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-03 07:34:47.557289	2016-08-11 13:01:26.317458	thermal_scan29	\N	\N	f	f
31	9	2	4	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-03 07:36:08.205624	2016-08-11 13:01:26.334033	thermal_scan30	\N	\N	f	f
33	9	2	1	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-03 09:15:08.227819	2016-08-11 13:01:26.366504	thermal_scan32	\N	\N	f	f
34	9	\N	\N	Emergency Lighting	8	t	2016-09-01 07:13:48.634473	20	2016-08-03 09:40:19.072471	2016-08-11 13:01:26.385053	emergency_lighting1	\N	\N	f	t
37	9	2	1	Emergency Lighting	8	t	2016-09-01 07:13:48.634473	20	2016-08-03 10:36:24.562206	2016-08-11 13:01:26.406911	emergency_lighting2	\N	\N	f	f
38	9	2	1	Emergency Lighting	8	t	2016-09-01 07:13:48.634473	20	2016-08-03 10:36:55.234488	2016-08-11 13:01:26.427308	emergency_lighting3	\N	\N	f	f
39	9	2	1	Thermal Scan	6	f	2016-09-01 07:13:48.634473	20	2016-08-03 10:38:06.314132	2016-08-11 13:01:26.442779	thermal_scan33	\N	\N	f	f
46	9	\N	\N	Generic1	10	f	2016-10-07 00:00:00	soon	2016-08-04 11:00:42.211613	2016-08-11 13:01:26.459213	generic1	\N	\N	f	t
55	9	\N	\N	dfdfdsf	0	f	2016-09-01 00:00:00	soon	2016-08-05 10:30:31.191334	2016-08-11 13:01:26.475969	dfdfdsf	\N	\N	f	t
32	9	2	3	Thermal Scan	9	f	2016-09-01 07:13:48	20	2016-08-03 08:11:56.142193	2016-09-15 09:00:45.223296	thermal_scan31	\N	\N	f	f
58	9	2	1	Generic1	10	f	2016-10-07 00:00:00	soon	2016-09-15 09:14:26.705463	2016-09-15 09:14:26.705463	generic11	\N	\N	f	f
61	9	\N	\N	test	12	f	2016-12-08 00:00:00	soon	2016-11-08 10:47:46.984068	2016-11-08 10:47:46.984068	test	\N	\N	f	t
\.


--
-- Name: site_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_items_id_seq', 61, true);


--
-- Data for Name: site_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY site_settings (id, maximum_site_tabs, maximum_site_items, created_at, updated_at) FROM stdin;
1	10	10	2016-07-25 10:54:02.337118	2016-07-25 10:54:02.337118
\.


--
-- Name: site_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_settings_id_seq', 1, true);


--
-- Data for Name: site_tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY site_tabs (id, user_id, site_id, name, items, created_at, updated_at, slug) FROM stdin;
17	9	2	Tab 5	\N	2016-08-08 07:00:39.345345	2016-08-08 07:08:26.268856	tab_5
1	9	2	Electrical	3	2016-08-02 08:18:33.240168	2016-11-04 06:40:47.255391	tab_1
2	9	2	Fire	3	2016-08-02 08:18:33.513161	2016-11-04 06:40:47.368932	tab_2
3	9	2	Mechanical	3	2016-08-02 08:18:33.730175	2016-11-04 06:40:47.372511	tab_3
4	9	2	Plumbing	3	2016-08-02 08:18:33.922351	2016-11-04 06:40:47.376696	tab_4
5	9	3	Electrical	3	2016-08-02 12:39:25.605297	2016-11-04 06:41:48.084543	tab_11
6	9	3	Fire	3	2016-08-02 12:39:25.870969	2016-11-04 06:41:48.090985	tab_21
7	9	3	Mechanical	3	2016-08-02 12:39:26.062924	2016-11-04 06:41:48.095137	tab_31
8	9	3	Plumbing	3	2016-08-02 12:39:26.212404	2016-11-04 06:41:48.099196	tab_41
\.


--
-- Name: site_tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_tabs_id_seq', 22, true);


--
-- Data for Name: sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sites (id, user_id, name, annual_compliance_due, tabs, tab_items, site_item_id, created_at, updated_at, slug, deleted_at, status, compliant, active, template) FROM stdin;
2	9	66 King St Sydney, 2000	2016-08-02 00:00:00	4	3	1	2016-08-02 08:18:33.144981	2016-08-02 08:18:33.144981	66_king_st_sydney_2000	\N	\N	f	t	f
3	9	Copy 66 King St Sydney, 2000	2016-08-02 00:00:00	4	3	1	2016-08-02 12:39:25.562672	2016-08-02 12:39:25.562672	copy_66_king_st_sydney_2000	\N	\N	f	t	f
\.


--
-- Name: sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sites_id_seq', 3, true);


--
-- Data for Name: static_pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY static_pages (id, logo, header_logged_in, header_not_logged_in, footer, features, about_us, terms_and_conditions, privacy_policy, faq, contact_us, services, pricing, news, team, testimonials, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: static_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('static_pages_id_seq', 1, false);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY teams (id, name, image, description, created_at, updated_at, slug, show_on_home, facebook, twitter, linkedin, gmail) FROM stdin;
2	Phillip Parisis	team1.jpg	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore. ummy nibh euismo.	2016-09-05 05:01:04.378277	2016-09-05 05:01:04.378277	phillip_parisis	t	http://facebook.com/	https://twitter.com/?lang=en	https://in.linkedin.com/	https://mail.google.com/
3	Phillip Parisis	team2.jpg	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore. ummy nibh euismo.	2016-09-05 05:01:26.224138	2016-09-05 05:01:26.224138	phillip_parisis_5bac1f12-49b0-41e2-8d17-1eed2f6b79e4	t	http://facebook.com/	https://twitter.com/?lang=en	https://in.linkedin.com/	https://mail.google.com/
4	Phillip Parisis	team3.jpg	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore. ummy nibh euismo.	2016-09-05 05:01:53.223607	2016-09-05 05:01:53.223607	phillip_parisis_58585f60-81bd-4c26-9801-f3f1b3999e8b	t	http://facebook.com/	https://twitter.com/?lang=en	https://in.linkedin.com/	https://mail.google.com/
5	Phillip Parisis	team4.jpg	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore. ummy nibh euismo.	2016-09-05 05:02:10.155686	2016-09-05 05:02:10.155686	phillip_parisis_b12a562b-abd8-4202-85c5-fea5991b5ffd	t	http://facebook.com/	https://twitter.com/?lang=en	https://in.linkedin.com/	https://mail.google.com/
\.


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('teams_id_seq', 5, true);


--
-- Data for Name: testimonials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY testimonials (id, name, image, message, location, created_at, updated_at, active) FROM stdin;
2	Wayne Jaden	client1.png	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam quis nostrud exerci tation. lorem ipsum is dummy text. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh	Lorem Ipsum	2016-09-05 05:07:19.52254	2016-09-05 05:08:31.842798	t
1	Jaden	client1.png	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam quis nostrud exerci tation. lorem ipsum is dummy text. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh	Lorem Ipsum	2016-09-05 05:06:23.697948	2016-09-05 05:08:43.80982	t
3	Jaden Wayne	client1.png	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam quis nostrud exerci tation. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore	Lorem Ipsum	2016-09-05 05:09:55.64303	2016-09-05 05:09:55.64303	t
\.


--
-- Name: testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('testimonials_id_seq', 3, true);


--
-- Data for Name: transaction_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY transaction_details (id, user_id, plan_id, payer_id, payer_email, payment_date, payment_status, payment_fee, payment, payment_type, mc_currency, first_name, last_name, txn_id, receiver_id, receiver_email, address_name, address_street, address_city, address_state, address_country, address_country_code, address_zip, created_at, updated_at) FROM stdin;
\.


--
-- Name: transaction_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('transaction_details_id_seq', 1, false);


--
-- Data for Name: upload_file_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY upload_file_types (id, upload_type, created_at, updated_at) FROM stdin;
1	pdf	2016-07-25 10:48:03.014038	2016-07-25 10:48:03.014038
2	doc	2016-07-25 10:48:08.123979	2016-07-25 10:48:08.123979
3	xlsx	2016-07-25 10:48:17.462436	2016-07-29 10:25:14.653628
4	xls	2016-07-29 10:25:24.73195	2016-07-29 10:25:24.73195
5	png	2016-08-11 09:03:06.274864	2016-08-11 09:03:06.274864
6	jpg	2016-08-11 09:03:15.922067	2016-08-11 09:03:15.922067
\.


--
-- Name: upload_file_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('upload_file_types_id_seq', 6, true);


--
-- Data for Name: user_email_notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_email_notifications (id, user_id, due_soon, due_soon_often, overdue, overdue_often, due_soon_invitee, due_soon_often_invitee, overdue_invitee, overdue_often_invitee, created_at, updated_at) FROM stdin;
1	9	1 weeks	1 week	1 week	1 week	1 week	1 weeks	1 week	1 week	2016-08-16 05:15:04.494271	2016-08-16 05:15:14.701199
\.


--
-- Name: user_email_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_email_notifications_id_seq', 1, true);


--
-- Data for Name: user_notification_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_notification_templates (id, user_id, invitee_template, email_due_soon_template, email_overdue_template, email_due_soon_invitee_template, email_overdue_invitee_template, email_report_recipients_template, document_feedback_approved_template, document_feedback_pending_template, document_feedback_rejected_template, created_at, updated_at) FROM stdin;
1	9	<p>Hello, {{invitee_email}}</p>\r\n<p>{{user_email}} has invited you to upload documenting for Site: {{site_name}}, Item: {{item_name}}.</p>\r\n<p>{{comment}}</p>\r\n{{authentication_link}}\r\n<p>Site Item Access will be active for {{access_active}}</p>\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	due_soon_template	overdue_template	due_soon_invitee_template	overdue_invitee_template	report_recipients_template	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been set as approved. Please find the detailed information below:</p>\r\n\r\n<p>Document Approved Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Approval: {{date_time_of_approval}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been set as pending. Please find the detailed information below:</p>\r\n\r\n<p>Document Pending Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Pending: {{date_time_of_pending}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n<p>Feedback: {{feedback}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been rejected. Please find the detailed information below:</p>\r\n\r\n<p>Document Rejector Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Reject: {{date_time_of_reject}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n<p>Feedback: {{feedback}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	2016-09-12 04:47:14.100789	2016-09-12 06:19:51.763234
2	33	<p>Hello, {{invitee_email}}</p>\r\n<p>{{user_email}} has invited you to upload documenting for Site: {{site_name}}, Item: {{item_name}}.</p>\r\n<p>{{comment}}</p>\r\n{{authentication_link}}\r\n<p>Site Item Access will be active for {{access_active}}</p>\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	due_soon_template	overdue_template	due_soon_invitee_template	overdue_invitee_template	report_recipients_template	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been set as approved. Please find the detailed information below:</p>\r\n\r\n<p>Document Approved Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Approval: {{date_time_of_approval}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been set as pending. Please find the detailed information below:</p>\r\n\r\n<p>Document Pending Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Pending: {{date_time_of_pending}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n<p>Feedback: {{feedback}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been rejected. Please find the detailed information below:</p>\r\n\r\n<p>Document Rejector Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Reject: {{date_time_of_reject}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n<p>Feedback: {{feedback}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	2016-09-16 09:49:40.004678	2016-09-16 09:49:40.004678
5	36	<p>Hello, {{invitee_email}}</p>\r\n<p>{{user_email}} has invited you to upload documenting for Site: {{site_name}}, Item: {{item_name}}.</p>\r\n<p>{{comment}}</p>\r\n{{authentication_link}}\r\n<p>Site Item Access will be active for {{access_active}}</p>\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	due_soon_template	overdue_template	due_soon_invitee_template	overdue_invitee_template	report_recipients_template	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been set as approved. Please find the detailed information below:</p>\r\n\r\n<p>Document Approved Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Approval: {{date_time_of_approval}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been set as pending. Please find the detailed information below:</p>\r\n\r\n<p>Document Pending Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Pending: {{date_time_of_pending}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n<p>Feedback: {{feedback}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been rejected. Please find the detailed information below:</p>\r\n\r\n<p>Document Rejector Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Reject: {{date_time_of_reject}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n<p>Feedback: {{feedback}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	2016-09-21 10:06:35.158309	2016-09-21 10:06:35.158309
6	37	<p>Hello, {{invitee_email}}</p>\r\n<p>{{user_email}} has invited you to upload documenting for Site: {{site_name}}, Item: {{item_name}}.</p>\r\n<p>{{comment}}</p>\r\n{{authentication_link}}\r\n<p>Site Item Access will be active for {{access_active}}</p>\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	due_soon_template	overdue_template	due_soon_invitee_template	overdue_invitee_template	report_recipients_template	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been set as approved. Please find the detailed information below:</p>\r\n\r\n<p>Document Approved Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Approval: {{date_time_of_approval}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been set as pending. Please find the detailed information below:</p>\r\n\r\n<p>Document Pending Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Pending: {{date_time_of_pending}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n<p>Feedback: {{feedback}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	<p>Hello, {{contractor_email}}</p>\r\n<p>Document has been rejected. Please find the detailed information below:</p>\r\n\r\n<p>Document Rejector Information:</p>\r\n<p>Name: {{full_name}}</p>\r\n<p>Email ID: {{email}}</p>\r\n<p>Date &amp; Time of Reject: {{date_time_of_reject}}</p>\r\n\r\n<p>Document Information:</p>\r\n<p>Site Name: {{site_name}}</p>\r\n<p>Item Name: {{item_name}}</p>\r\n<p>Document Name: {{document_name}}</p>\r\n<p>Feedback: {{feedback}}</p>\r\n\r\n<p>\r\n  Thanks,<br />\r\n  MyCompliance Team\r\n</p>	2016-09-23 05:18:43.381503	2016-09-23 05:18:43.381503
\.


--
-- Name: user_notification_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_notification_templates_id_seq', 6, true);


--
-- Data for Name: user_preferred_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_preferred_emails (id, user_id, first_name, last_name, full_name, email, pause, created_at, updated_at) FROM stdin;
1	9	test	test	test test	test@gmail.com	f	2016-09-09 08:30:41.138095	2016-09-09 08:31:17.273231
2	9	test2	test2	test2 test2	test2@gmail.com	f	2016-09-09 08:42:16.477705	2016-09-09 08:42:16.477705
3	9	fgg	dfdsfsdf	fgg dfdsfsdf	fsdfs@dgsd.com	f	2016-11-08 09:19:59.994029	2016-11-08 09:19:59.994029
4	9	dfasd	sadasdd	dfasd sadasdd	srese@gdf.com	f	2016-11-08 09:20:17.850484	2016-11-08 09:20:17.850484
5	9	grt	rgsddsfs	grt rgsddsfs	dfsd@gsd.com	f	2016-11-08 09:20:23.779055	2016-11-08 09:20:23.779055
6	9	qweqeq	rtertert	qweqeq rtertert	dsfsd@gmail.com	f	2016-11-08 09:20:31.091278	2016-11-08 09:20:31.091278
7	9	sdasd	sadsadsad	sdasd sadsadsad	asdasdsad@kjhk.com	f	2016-11-08 09:20:36.892048	2016-11-08 09:20:36.892048
8	9	werqw	srrwer	werqw srrwer	sdfsd@khkj.com	f	2016-11-08 09:20:46.072562	2016-11-08 09:20:46.072562
9	9	dsfs	asdasd	dsfs asdasd	dasd@khklj.com	f	2016-11-08 09:20:52.593507	2016-11-08 09:20:52.593507
11	9	ffsd	ffsf	ffsd ffsf	dasd@khklj.com	f	2016-11-08 09:21:16.288305	2016-11-08 09:21:16.288305
12	9	dsfs	ffsf	dsfs ffsf	asdsa@dlasda.com	f	2016-11-08 09:21:23.272608	2016-11-08 09:21:23.272608
13	9	ffsd	rgsddsfs	ffsd rgsddsfs	fsdfs@dgsd.com	f	2016-11-08 09:21:29.895303	2016-11-08 09:21:29.895303
14	9	grt	rtertert	grt rtertert	srese@gdf.com	f	2016-11-08 09:21:37.589485	2016-11-08 09:21:37.589485
15	9	ffsd	dfdsfsdf	ffsd dfdsfsdf	test2@gmail.com	f	2016-11-08 09:21:44.896732	2016-11-08 09:21:44.896732
16	9	dfasd	rtertert	dfasd rtertert	test@gmail.com	f	2016-11-08 09:21:53.252507	2016-11-08 09:21:53.252507
17	9	grt	sadasdd	grt sadasdd	dsfsd@gmail.com	f	2016-11-08 09:22:04.499015	2016-11-08 09:22:04.499015
18	9	dfasd	dfdsfsdf	dfasd dfdsfsdf	asdasdsad@kjhk.com	f	2016-11-09 05:12:08.906885	2016-11-09 05:12:08.906885
\.


--
-- Name: user_preferred_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_preferred_emails_id_seq', 18, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, created_at, updated_at, invitation_token, invitation_created_at, invitation_sent_at, invitation_accepted_at, invitation_limit, invited_by_id, invited_by_type, invitations_count, first_name, last_name, full_name, user_name, mobile_number, landline_number, time_zone, job_title, employee_id, avatar, active, slug, deleted_at, company_id, plan_id, permissions, admin, sites_per_page) FROM stdin;
21	test12@yopmail.comwewqe	$2a$10$aDtkJ5yY/cnW2hsFRXUvoujTo..INgOtjyar6EL/tQM/QReWztmO6	\N	\N	\N	1	2016-09-05 11:07:59.894403	2016-09-05 11:07:59.894403	127.0.0.1	127.0.0.1	\N	2016-09-05 11:07:59.868006	\N	\N	2016-09-05 11:07:26.695374	2016-09-05 11:07:59.897064	\N	2016-09-05 11:07:26.691166	2016-09-05 11:07:26.691166	2016-09-05 11:07:59.868006	\N	9	User	0	test	last	test last	test.testlast1	\N	\N	UTC	\N	\N	\N	t	test_testlast1	\N	\N	\N	\N	f	10
22	test12@yopmail.comwewqesdas	$2a$10$lZfOELYvNPvwyeMwySEfuu9D77xJcM8DYbLI.y9aXTGarFthwEs4O	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2016-09-05 12:08:28.344578	2016-09-05 12:08:28.344578	ba2f26965de076d99be75cba2a5d6622068ddc24887fc81e05ea7d87b6404e64	2016-09-05 12:08:28.340465	2016-09-05 12:08:28.340465	\N	\N	9	User	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
23	rocky@yopmail.com	$2a$10$uGrSGRJwUpI.fin72VIr4.rPL5bRoCc90BlVbN3E.OBqOTFsScH4m	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2016-09-05 12:09:40.311981	2016-09-05 12:09:40.311981	a154d855f59bfe7d64107dc11cfb1e042cb4a099e25e96c603b4b4e65d067474	2016-09-05 12:09:40.30889	2016-09-05 12:09:40.30889	\N	\N	9	User	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
24	sam@yopmail.com	$2a$10$yU4s2jGeK9n/spylSOjNNOO.kcLP39dpX.RGAHNvfZIDEZedFh1au	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2016-09-05 12:13:30.553788	2016-09-05 12:13:30.553788	fc50e879a7a5c079fb946253d9fd69baf19d0ae46861997236afcdf78390b856	2016-09-05 12:13:30.550516	2016-09-05 12:13:30.550516	\N	\N	9	User	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
25	test2@gmail.comwer	$2a$10$CmoPyQbfPrYRCGqQt2KNousV6fcyF7840gDnZAS2dRCGFtwTBAjkW	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2016-09-06 12:28:24.952578	2016-09-06 12:28:24.952578	aec4e519521e8a108a3344aada70187a44f8a562c2155d45ec864dc3b2211898	2016-09-06 12:28:24.947075	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
26	anshul@gmail.comdsfdsf	$2a$10$B8/s96hme7tsvHIq2fJ6t.4z1zDkYAjhrRZW4OpRWVnk.02Z/3Zre	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2016-09-06 12:32:25.604875	2016-09-06 12:32:25.604875	2a113100cd9a5365549ebfc1f049b2cf77008d3cd650b5062ea5c26ebe48f9a1	2016-09-06 12:32:25.487906	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
14	test1@gmail.com	$2a$10$vGYtL4iJyZdypxuVXDyrHOfFxJJvNIxoN.VTZ1oVQKHT/TOECM2vy	\N	\N	\N	0	\N	\N	\N	\N	\N	2016-08-17 08:51:16.936169	\N	\N	2016-08-17 08:51:16.976124	2016-08-17 08:51:16.976124	\N	\N	\N	\N	\N	\N	\N	0	test1	test1	test1 test1	test1	987698698	987987987	UTC	jobtitle1	emp1	aboutAs.jpg	t	test1	\N	9	\N	\N	f	10
19	test@gmail.comkjhkj	$2a$10$WBDhZz4DXhbmpyyjiB9she4VC0Moh3V9j6TP/12vJfs01DDsTFZMu	\N	\N	\N	1	2016-09-05 09:09:10.448057	2016-09-05 09:09:10.448057	127.0.0.1	127.0.0.1	\N	2016-09-05 09:09:10.418368	\N	\N	2016-09-05 09:01:02.006959	2016-09-05 09:09:10.450692	\N	2016-09-05 09:01:02.004346	2016-09-05 09:01:02.004346	2016-09-05 09:09:10.418368	\N	9	User	0	\N	\N	\N	test.invite	\N	\N	UTC	\N	\N	\N	t	test_invite	\N	\N	\N	\N	f	10
15	test@kjl.com	$2a$10$QxUZlgUTzJu2mg5wHLT1gOM6NwG3BE9ehXY0MmgAqQrASv0kuAMNu	\N	\N	\N	0	\N	\N	\N	\N	GtEsYKDsgeQt1xs_sLFa	\N	2016-08-25 12:31:16.198276	\N	2016-08-25 12:31:15.791027	2016-08-25 12:31:15.791027	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
16	test@kjl.comsdfds	$2a$10$/mk4Kq7vnR7vLz1gfqmrPOEPoIcDG8aUy2kFxX6DZwqH38JbPJYWG	\N	\N	\N	0	\N	\N	\N	\N	sDK-4pQzVYFeP7UmZiCw	\N	2016-08-25 12:31:52.788634	\N	2016-08-25 12:31:52.784863	2016-08-25 12:31:52.784863	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
17	test2@gmail.com	$2a$10$0D8vHiW15zs9SQSRDGiZq.9uMPx1lz3AJWj/nLppTILi7QtzjSegO	\N	\N	\N	0	\N	\N	\N	\N	\N	2016-08-25 12:47:00.406689	\N	\N	2016-08-25 12:47:00.424726	2016-08-25 12:47:00.424726	\N	\N	\N	\N	\N	\N	\N	0	test2	test2	test2 test2	test2	0987654321	1234567890	UTC	job title2	emp2	android.jpg	t	test2	\N	9	\N	\N	f	10
18	test@gmail.comdadads	$2a$10$2tef2Bd5YrPH89w9amaWjOyFeD8Srapi5HC4b8v42/zQRpe3zqJw.	\N	\N	\N	0	\N	\N	\N	\N	avkbRb77zikvnWaETLZd	\N	2016-08-26 04:42:31.367963	\N	2016-08-26 04:42:30.983227	2016-08-26 04:42:30.983227	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
20	test12@yopmail.comerty	$2a$10$smIXDYHdCHSqGh9/dhWa9ushMW2ktFbuVcR/W/FxARt.SVXuZ7vVO	\N	\N	\N	1	2016-09-05 11:06:10.710449	2016-09-05 11:06:10.710449	127.0.0.1	127.0.0.1	\N	2016-09-05 11:06:10.686854	\N	\N	2016-09-05 11:04:30.688375	2016-09-05 11:06:10.713133	\N	2016-09-05 11:04:30.685574	2016-09-05 11:04:30.685574	2016-09-05 11:06:10.686854	\N	9	User	0	\N	\N	\N	test.testlast	\N	\N	UTC	\N	\N	\N	t	test_testlast	\N	\N	\N	\N	f	10
33	hello@mycompliance.com	$2a$10$opCc7stDykgW.eMbTO2.3Oeq0vG7ZcUPB.0wsmeEoh3xuXWUFGrna	\N	\N	\N	0	\N	\N	\N	\N	AnTyJyx8eds39funqV4y	2016-09-16 10:41:03.781049	2016-09-16 09:49:39.173541	\N	2016-09-16 09:49:39.169026	2016-09-16 10:41:03.783852	\N	\N	\N	\N	\N	\N	\N	0	hello	mycomp	hello mycomp	hello	0987654321	4353453334	UTC	jobtitle	\N	banner.jpg	t	hello	\N	\N	\N	\N	f	10
28	anshul123@gmail.com	$2a$10$UzJ8uPdQUqG6zO7GXcxlO.s5U57ViQ2M4Jjsju3.YiCOee/myscZm	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2016-09-12 06:14:03.184505	2016-09-12 06:14:03.184505	19f7ea9bea154d70f38c04922394a0a273f7a77a133c6682a386c707775bcd2d	2016-09-12 06:14:03.181321	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
29	anshul1234@gmail.com	$2a$10$l4kIbmM0Mb76NHDj4IPCBevATuO1poobrEc.VyFtBfFHBtEjdXoFC	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2016-09-12 06:16:30.184418	2016-09-12 06:16:30.184418	11143f3127a0ae13124e74d9c326dfe1b1f1ae70651e1d7e56c7c7fa82870fa7	2016-09-12 06:16:30.180127	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
30	anshul12345@gmail.com	$2a$10$iKeeIoRTjquw93fXudx/6.XAT3JT1x6gw0lUfdCNg8D9IwIvYPCxm	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2016-09-12 06:17:22.553914	2016-09-12 06:17:22.553914	cb5f0a9ae33c5158e0051544fe8090f356f7e30ced842f73f783eb08eb69d993	2016-09-12 06:17:22.550123	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
31	anshul123456@gmail.com	$2a$10$0SzdeW0Bv74HIU997GQu.OrjhEzaYT8I0s9gZXZgBQrKYaTW.t79G	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2016-09-12 06:20:24.451139	2016-09-12 06:20:24.451139	1edd324dbda456555547acb0565c3e6b3d4723c4d6e48bc902dfb51f5c0f0b6d	2016-09-12 06:20:24.448638	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	UTC	\N	\N	\N	t	\N	\N	\N	\N	\N	f	10
27	test3@gmail.comret	$2a$10$lVc/CJ.nE4Pl5sBcPqO1OelYkI4DCwVhSJd4VXwHZvWwwMiCqdalO	\N	\N	\N	2	2016-09-16 04:38:52.147966	2016-09-06 13:00:08.071337	127.0.0.1	127.0.0.1	\N	2016-09-06 13:00:08.040665	\N	\N	2016-09-06 12:52:49.062794	2016-09-16 04:38:52.150724	\N	2016-09-06 12:52:49.059624	\N	2016-09-06 13:00:08.040665	\N	\N	\N	0	test3	test3	test3 test3	test3.test3	6546546656	543543534	UTC	\N	\N	\N	t	test3_test3	\N	\N	\N	\N	f	10
36	testmail@gmail.com	$2a$10$B/kepMvm8CPK2GPreL4H/eS.dNO4LPiOzJJPacD8FJiHQBsCjoKUW	\N	\N	\N	0	\N	\N	\N	\N	5BF2itssV3YKq9DxKdZj	\N	2016-09-21 10:06:33.953129	\N	2016-09-21 10:06:33.545822	2016-09-21 10:07:52.558626	\N	\N	\N	\N	\N	\N	\N	0	test	mail	test mail	testmail	98798798798	\N	American Samoa	job	\N	\N	t	testmail	\N	\N	\N	\N	f	10
11	test@gmail.com	$2a$10$gzXBi6HA6x/eMnvwDl8hOO1Ng19TCmGrPP9rDd44KRubiomf6gLGO	\N	\N	\N	1	2016-08-17 07:25:57.720383	2016-08-17 07:25:57.720383	127.0.0.1	127.0.0.1	\N	2016-08-16 11:43:34.543787	\N	\N	2016-08-16 11:43:34.558562	2016-08-17 08:26:00.10984	\N	\N	\N	\N	\N	\N	\N	0	test	test	test test	423423	ds343242344	4353453334	UTC	sfsdfsd	2312	404.jpg	f	423423	2016-09-22 06:43:57.592405	9	\N	\N	f	10
9	test@mycompliance.com	$2a$10$IpWzY6Y6EeNKyCig4J5Xm.yoi0YZbbB93MaL4uQzVYTXbcB.KR77O	\N	\N	2016-09-09 09:07:12.902129	25	2016-09-30 04:22:45.103019	2016-09-09 09:07:12.940062	127.0.0.1	127.0.0.1	\N	2016-07-26 09:25:15.790546	\N	\N	2016-07-26 09:25:20.735023	2016-11-07 10:57:41.859182	\N	\N	\N	\N	\N	\N	\N	0	test	test	test test	test.test	1234567890	0987654321	London	\N	\N	andthumb.jpg	t	test_test	\N	\N	\N	\N	f	10
37	testcontractor@gmail.com	$2a$10$yMwpSE/QqHk7WLLMv.QzBefCefMAXE3zbUuEnkGoWXS9C86H76ThO	\N	\N	\N	2	2016-11-08 12:34:39.744682	2016-09-23 05:19:25.40551	127.0.0.1	127.0.0.1	\N	2016-09-23 05:19:25.368692	\N	\N	2016-09-23 05:18:43.212896	2016-11-10 06:28:34.599107	\N	2016-09-23 05:18:43.209671	\N	2016-09-23 05:19:25.368692	\N	\N	\N	0	test	contractor	test contractor	testcontractor	43634636	4534543535	UTC	\N	\N	\N	t	testcontractor	\N	\N	\N	\N	f	20
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 37, true);


--
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users_roles (user_id, role_id) FROM stdin;
9	5
11	6
14	6
17	6
25	7
26	7
27	7
28	7
29	7
30	7
31	7
33	5
36	5
37	7
\.


--
-- Data for Name: version_associations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY version_associations (id, version_id, foreign_key_name, foreign_key_id) FROM stdin;
\.


--
-- Name: version_associations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('version_associations_id_seq', 1, false);


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY versions (id, item_type, item_id, event, whodunnit, object, created_at, transaction_id) FROM stdin;
\.


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('versions_id_seq', 1, false);


--
-- Name: active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: admin_notification_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_notification_templates
    ADD CONSTRAINT admin_notification_templates_pkey PRIMARY KEY (id);


--
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: banner_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY banner_images
    ADD CONSTRAINT banner_images_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: company_informations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY company_informations
    ADD CONSTRAINT company_informations_pkey PRIMARY KEY (id);


--
-- Name: contact_us_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (id);


--
-- Name: delayed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY delayed_jobs
    ADD CONSTRAINT delayed_jobs_pkey PRIMARY KEY (id);


--
-- Name: email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (id);


--
-- Name: features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);


--
-- Name: friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: inquiries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY inquiries
    ADD CONSTRAINT inquiries_pkey PRIMARY KEY (id);


--
-- Name: item_invitation_access_expires_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY item_invitation_access_expires
    ADD CONSTRAINT item_invitation_access_expires_pkey PRIMARY KEY (id);


--
-- Name: news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: newsletters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletters
    ADD CONSTRAINT newsletters_pkey PRIMARY KEY (id);


--
-- Name: number_of_employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY number_of_employees
    ADD CONSTRAINT number_of_employees_pkey PRIMARY KEY (id);


--
-- Name: organization_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY organization_types
    ADD CONSTRAINT organization_types_pkey PRIMARY KEY (id);


--
-- Name: plans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY plans
    ADD CONSTRAINT plans_pkey PRIMARY KEY (id);


--
-- Name: reports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: site_item_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_item_documents
    ADD CONSTRAINT site_item_documents_pkey PRIMARY KEY (id);


--
-- Name: site_item_invitations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_item_invitations
    ADD CONSTRAINT site_item_invitations_pkey PRIMARY KEY (id);


--
-- Name: site_item_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_item_questions
    ADD CONSTRAINT site_item_questions_pkey PRIMARY KEY (id);


--
-- Name: site_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_items
    ADD CONSTRAINT site_items_pkey PRIMARY KEY (id);


--
-- Name: site_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_settings
    ADD CONSTRAINT site_settings_pkey PRIMARY KEY (id);


--
-- Name: site_tabs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_tabs
    ADD CONSTRAINT site_tabs_pkey PRIMARY KEY (id);


--
-- Name: sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);


--
-- Name: static_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY static_pages
    ADD CONSTRAINT static_pages_pkey PRIMARY KEY (id);


--
-- Name: teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY testimonials
    ADD CONSTRAINT testimonials_pkey PRIMARY KEY (id);


--
-- Name: transaction_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY transaction_details
    ADD CONSTRAINT transaction_details_pkey PRIMARY KEY (id);


--
-- Name: upload_file_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY upload_file_types
    ADD CONSTRAINT upload_file_types_pkey PRIMARY KEY (id);


--
-- Name: user_email_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_email_notifications
    ADD CONSTRAINT user_email_notifications_pkey PRIMARY KEY (id);


--
-- Name: user_notification_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_notification_templates
    ADD CONSTRAINT user_notification_templates_pkey PRIMARY KEY (id);


--
-- Name: user_preferred_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_preferred_emails
    ADD CONSTRAINT user_preferred_emails_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: version_associations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY version_associations
    ADD CONSTRAINT version_associations_pkey PRIMARY KEY (id);


--
-- Name: versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: comment_anc_desc_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX comment_anc_desc_idx ON comment_hierarchies USING btree (ancestor_id, descendant_id, generations);


--
-- Name: comment_desc_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX comment_desc_idx ON comment_hierarchies USING btree (descendant_id);


--
-- Name: delayed_jobs_priority; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX delayed_jobs_priority ON delayed_jobs USING btree (priority, run_at);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_admin_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_confirmation_token ON admin_users USING btree (confirmation_token);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_email ON admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON admin_users USING btree (reset_password_token);


--
-- Name: index_admin_users_roles_on_admin_user_id_and_role_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_admin_users_roles_on_admin_user_id_and_role_id ON admin_users_roles USING btree (admin_user_id, role_id);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: index_friendly_id_slugs_on_sluggable_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_id ON friendly_id_slugs USING btree (sluggable_id);


--
-- Name: index_friendly_id_slugs_on_sluggable_type; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type ON friendly_id_slugs USING btree (sluggable_type);


--
-- Name: index_news_on_slug; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_news_on_slug ON news USING btree (slug);


--
-- Name: index_roles_on_name; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_roles_on_name ON roles USING btree (name);


--
-- Name: index_roles_on_name_and_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_roles_on_name_and_resource_type_and_resource_id ON roles USING btree (name, resource_type, resource_id);


--
-- Name: index_site_items_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_site_items_on_deleted_at ON site_items USING btree (deleted_at);


--
-- Name: index_site_items_on_slug; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_site_items_on_slug ON site_items USING btree (slug);


--
-- Name: index_site_tabs_on_slug; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_site_tabs_on_slug ON site_tabs USING btree (slug);


--
-- Name: index_sites_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_sites_on_deleted_at ON sites USING btree (deleted_at);


--
-- Name: index_sites_on_slug; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_sites_on_slug ON sites USING btree (slug);


--
-- Name: index_static_pages_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_static_pages_on_deleted_at ON static_pages USING btree (deleted_at);


--
-- Name: index_teams_on_slug; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_teams_on_slug ON teams USING btree (slug);


--
-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_confirmation_token ON users USING btree (confirmation_token);


--
-- Name: index_users_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_users_on_deleted_at ON users USING btree (deleted_at);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_invitation_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_invitation_token ON users USING btree (invitation_token);


--
-- Name: index_users_on_invitations_count; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_users_on_invitations_count ON users USING btree (invitations_count);


--
-- Name: index_users_on_invited_by_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_users_on_invited_by_id ON users USING btree (invited_by_id);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: index_users_on_slug; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_slug ON users USING btree (slug);


--
-- Name: index_users_roles_on_user_id_and_role_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_users_roles_on_user_id_and_role_id ON users_roles USING btree (user_id, role_id);


--
-- Name: index_version_associations_on_foreign_key; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_version_associations_on_foreign_key ON version_associations USING btree (foreign_key_name, foreign_key_id);


--
-- Name: index_version_associations_on_version_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_version_associations_on_version_id ON version_associations USING btree (version_id);


--
-- Name: index_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_versions_on_item_type_and_item_id ON versions USING btree (item_type, item_id);


--
-- Name: index_versions_on_transaction_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_versions_on_transaction_id ON versions USING btree (transaction_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

