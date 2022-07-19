-- Adminer 4.8.1 PostgreSQL 14.4 (Debian 14.4-1.pgdg110+1) dump

DROP TABLE IF EXISTS "auth_group";
DROP SEQUENCE IF EXISTS auth_group_id_seq;
CREATE SEQUENCE auth_group_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."auth_group" (
    "id" integer DEFAULT nextval('auth_group_id_seq') NOT NULL,
    "name" character varying(150) NOT NULL,
    CONSTRAINT "auth_group_name_key" UNIQUE ("name"),
    CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree ("name");

INSERT INTO "auth_group" ("id", "name") VALUES
(1,	'managers');

DROP TABLE IF EXISTS "auth_group_permissions";
DROP SEQUENCE IF EXISTS auth_group_permissions_id_seq;
CREATE SEQUENCE auth_group_permissions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."auth_group_permissions" (
    "id" bigint DEFAULT nextval('auth_group_permissions_id_seq') NOT NULL,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL,
    CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id"),
    CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING btree ("group_id");

CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING btree ("permission_id");

INSERT INTO "auth_group_permissions" ("id", "group_id", "permission_id") VALUES
(1,	1,	1),
(2,	1,	17);

DROP TABLE IF EXISTS "auth_permission";
DROP SEQUENCE IF EXISTS auth_permission_id_seq;
CREATE SEQUENCE auth_permission_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."auth_permission" (
    "id" integer DEFAULT nextval('auth_permission_id_seq') NOT NULL,
    "name" character varying(255) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" character varying(100) NOT NULL,
    CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename"),
    CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING btree ("content_type_id");

INSERT INTO "auth_permission" ("id", "name", "content_type_id", "codename") VALUES
(1,	'Can add log entry',	1,	'add_logentry'),
(2,	'Can change log entry',	1,	'change_logentry'),
(3,	'Can delete log entry',	1,	'delete_logentry'),
(4,	'Can view log entry',	1,	'view_logentry'),
(5,	'Can add permission',	2,	'add_permission'),
(6,	'Can change permission',	2,	'change_permission'),
(7,	'Can delete permission',	2,	'delete_permission'),
(8,	'Can view permission',	2,	'view_permission'),
(9,	'Can add group',	3,	'add_group'),
(10,	'Can change group',	3,	'change_group'),
(11,	'Can delete group',	3,	'delete_group'),
(12,	'Can view group',	3,	'view_group'),
(13,	'Can add user',	4,	'add_user'),
(14,	'Can change user',	4,	'change_user'),
(15,	'Can delete user',	4,	'delete_user'),
(16,	'Can view user',	4,	'view_user'),
(17,	'Can add content type',	5,	'add_contenttype'),
(18,	'Can change content type',	5,	'change_contenttype'),
(19,	'Can delete content type',	5,	'delete_contenttype'),
(20,	'Can view content type',	5,	'view_contenttype'),
(21,	'Can add session',	6,	'add_session'),
(22,	'Can change session',	6,	'change_session'),
(23,	'Can delete session',	6,	'delete_session'),
(24,	'Can view session',	6,	'view_session'),
(25,	'Can add post',	7,	'add_post'),
(26,	'Can change post',	7,	'change_post'),
(27,	'Can delete post',	7,	'delete_post'),
(28,	'Can view post',	7,	'view_post'),
(29,	'Can add author',	8,	'add_author'),
(30,	'Can change author',	8,	'change_author'),
(31,	'Can delete author',	8,	'delete_author'),
(32,	'Can view author',	8,	'view_author');

DROP TABLE IF EXISTS "auth_user";
DROP SEQUENCE IF EXISTS auth_user_id_seq;
CREATE SEQUENCE auth_user_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."auth_user" (
    "id" integer DEFAULT nextval('auth_user_id_seq') NOT NULL,
    "password" character varying(128) NOT NULL,
    "last_login" timestamptz,
    "is_superuser" boolean NOT NULL,
    "username" character varying(150) NOT NULL,
    "first_name" character varying(150) NOT NULL,
    "last_name" character varying(150) NOT NULL,
    "email" character varying(254) NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_active" boolean NOT NULL,
    "date_joined" timestamptz NOT NULL,
    CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "auth_user_username_key" UNIQUE ("username")
) WITH (oids = false);

CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING btree ("username");

INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES
(2,	'pbkdf2_sha256$260000$drq9vo5R5WKxxTLWQAAVwq$JjUbkzTLbrGpQWOfJTHj0trsHXoserHywiY2wZutNdM=',	NULL,	'0',	'alex',	'',	'',	'',	'0',	'1',	'2022-07-12 09:53:50.533235+00'),
(1,	'pbkdf2_sha256$260000$qPvNPBRkLa71q3F2RM32aQ$/SS0S9eWMMJ1POSTG2R+Nsq6scs/O8U5gxqscxSP55U=',	'2022-07-18 15:56:56.921013+00',	'1',	'admin',	'',	'',	'admin@example.com',	'1',	'1',	'2022-07-12 09:51:21.518949+00');

DROP TABLE IF EXISTS "auth_user_groups";
DROP SEQUENCE IF EXISTS auth_user_groups_id_seq;
CREATE SEQUENCE auth_user_groups_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."auth_user_groups" (
    "id" bigint DEFAULT nextval('auth_user_groups_id_seq') NOT NULL,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL,
    CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "auth_user_groups_user_id_group_id_94350c0c_uniq" UNIQUE ("user_id", "group_id")
) WITH (oids = false);

CREATE INDEX "auth_user_groups_group_id_97559544" ON "public"."auth_user_groups" USING btree ("group_id");

CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "public"."auth_user_groups" USING btree ("user_id");


DROP TABLE IF EXISTS "auth_user_user_permissions";
DROP SEQUENCE IF EXISTS auth_user_user_permissions_id_seq;
CREATE SEQUENCE auth_user_user_permissions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."auth_user_user_permissions" (
    "id" bigint DEFAULT nextval('auth_user_user_permissions_id_seq') NOT NULL,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL,
    CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" UNIQUE ("user_id", "permission_id")
) WITH (oids = false);

CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "public"."auth_user_user_permissions" USING btree ("permission_id");

CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "public"."auth_user_user_permissions" USING btree ("user_id");


DROP TABLE IF EXISTS "django_admin_log";
DROP SEQUENCE IF EXISTS django_admin_log_id_seq;
CREATE SEQUENCE django_admin_log_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."django_admin_log" (
    "id" integer DEFAULT nextval('django_admin_log_id_seq') NOT NULL,
    "action_time" timestamptz NOT NULL,
    "object_id" text,
    "object_repr" character varying(200) NOT NULL,
    "action_flag" smallint NOT NULL,
    "change_message" text NOT NULL,
    "content_type_id" integer,
    "user_id" integer NOT NULL,
    CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING btree ("content_type_id");

CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING btree ("user_id");

INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES
(1,	'2022-07-12 09:53:50.61749+00',	'2',	'alex',	1,	'[{"added": {}}]',	4,	1),
(2,	'2022-07-12 09:54:59.208896+00',	'1',	'managers',	1,	'[{"added": {}}]',	3,	1),
(3,	'2022-07-18 16:22:54.386684+00',	'2',	'Post 1',	1,	'[{"added": {}}]',	7,	1),
(4,	'2022-07-18 16:23:29.565272+00',	'3',	'Post 2',	1,	'[{"added": {}}]',	7,	1),
(5,	'2022-07-18 16:24:48.399738+00',	'4',	'Post 3',	1,	'[{"added": {}}]',	7,	1),
(6,	'2022-07-18 16:25:28.661545+00',	'3',	'Post 2',	2,	'[]',	7,	1),
(7,	'2022-07-18 16:25:38.793397+00',	'4',	'Post 3',	2,	'[{"changed": {"fields": ["Slug"]}}]',	7,	1),
(8,	'2022-07-18 16:25:46.701259+00',	'3',	'Post 2',	2,	'[{"changed": {"fields": ["Slug"]}}]',	7,	1),
(9,	'2022-07-18 16:29:22.388398+00',	'5',	'Post 4',	1,	'[{"added": {}}]',	7,	1),
(10,	'2022-07-19 02:48:07.790173+00',	'6',	'Post 5',	1,	'[{"added": {}}]',	7,	1),
(11,	'2022-07-19 02:52:53.001255+00',	'2',	'Post 1',	2,	'[{"changed": {"fields": ["Image"]}}]',	7,	1),
(12,	'2022-07-19 03:12:46.51665+00',	'2',	'Post 1',	2,	'[{"changed": {"fields": ["Image"]}}]',	7,	1);

DROP TABLE IF EXISTS "django_content_type";
DROP SEQUENCE IF EXISTS django_content_type_id_seq;
CREATE SEQUENCE django_content_type_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."django_content_type" (
    "id" integer DEFAULT nextval('django_content_type_id_seq') NOT NULL,
    "app_label" character varying(100) NOT NULL,
    "model" character varying(100) NOT NULL,
    CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model"),
    CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES
(1,	'admin',	'logentry'),
(2,	'auth',	'permission'),
(3,	'auth',	'group'),
(4,	'auth',	'user'),
(5,	'contenttypes',	'contenttype'),
(6,	'sessions',	'session'),
(7,	'posts',	'post'),
(8,	'posts',	'author');

DROP TABLE IF EXISTS "django_migrations";
DROP SEQUENCE IF EXISTS django_migrations_id_seq;
CREATE SEQUENCE django_migrations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."django_migrations" (
    "id" bigint DEFAULT nextval('django_migrations_id_seq') NOT NULL,
    "app" character varying(255) NOT NULL,
    "name" character varying(255) NOT NULL,
    "applied" timestamptz NOT NULL,
    CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES
(1,	'contenttypes',	'0001_initial',	'2022-07-12 09:40:44.922747+00'),
(2,	'auth',	'0001_initial',	'2022-07-12 09:40:45.004242+00'),
(3,	'admin',	'0001_initial',	'2022-07-12 09:40:45.030284+00'),
(4,	'admin',	'0002_logentry_remove_auto_add',	'2022-07-12 09:40:45.041182+00'),
(5,	'admin',	'0003_logentry_add_action_flag_choices',	'2022-07-12 09:40:45.051169+00'),
(6,	'contenttypes',	'0002_remove_content_type_name',	'2022-07-12 09:40:45.065828+00'),
(7,	'auth',	'0002_alter_permission_name_max_length',	'2022-07-12 09:40:45.073144+00'),
(8,	'auth',	'0003_alter_user_email_max_length',	'2022-07-12 09:40:45.081237+00'),
(9,	'auth',	'0004_alter_user_username_opts',	'2022-07-12 09:40:45.089246+00'),
(10,	'auth',	'0005_alter_user_last_login_null',	'2022-07-12 09:40:45.097391+00'),
(11,	'auth',	'0006_require_contenttypes_0002',	'2022-07-12 09:40:45.099694+00'),
(12,	'auth',	'0007_alter_validators_add_error_messages',	'2022-07-12 09:40:45.110993+00'),
(13,	'auth',	'0008_alter_user_username_max_length',	'2022-07-12 09:40:45.124032+00'),
(14,	'auth',	'0009_alter_user_last_name_max_length',	'2022-07-12 09:40:45.132293+00'),
(15,	'auth',	'0010_alter_group_name_max_length',	'2022-07-12 09:40:45.144546+00'),
(16,	'auth',	'0011_update_proxy_permissions',	'2022-07-12 09:40:45.152476+00'),
(17,	'auth',	'0012_alter_user_first_name_max_length',	'2022-07-12 09:40:45.161086+00'),
(18,	'sessions',	'0001_initial',	'2022-07-12 09:40:45.176996+00'),
(19,	'posts',	'0001_initial',	'2022-07-17 00:23:26.474186+00'),
(20,	'posts',	'0002_post_slug',	'2022-07-18 16:05:42.246587+00'),
(21,	'posts',	'0003_alter_post_slug',	'2022-07-18 16:09:10.414666+00'),
(22,	'posts',	'0004_post_image',	'2022-07-18 16:18:14.975687+00');

DROP TABLE IF EXISTS "django_session";
CREATE TABLE "public"."django_session" (
    "session_key" character varying(40) NOT NULL,
    "session_data" text NOT NULL,
    "expire_date" timestamptz NOT NULL,
    CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key")
) WITH (oids = false);

CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING btree ("expire_date");

CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree ("session_key");

INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES
('qxv3m0vl30vhzlzxxw9z6qdds5c9f0um',	'.eJxVjLEOwjAMRP8lM4qU4LgOIzvfENlxSgqolZp2Qvw7rdQBxrv37t4m8brUtLYyp0HNxThz-u2E87OMO9AHj_fJ5mlc5kHsrtiDNnubtLyuh_t3ULnVbU2BHHuIFBGAJSMSuqgee--zFNgi9cgdRIdnABFiohAUtCtRRcznC7ZbNz8:1oDT7A:Ccrsrfb0_-UrfIc3Ho5EnWQGl9wi4hBZbp4F3czmhQY',	'2022-08-01 15:56:56.923004+00');

DROP TABLE IF EXISTS "posts_author";
DROP SEQUENCE IF EXISTS posts_author_id_seq;
CREATE SEQUENCE posts_author_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."posts_author" (
    "id" bigint DEFAULT nextval('posts_author_id_seq') NOT NULL,
    "full_name" character varying(70) NOT NULL,
    CONSTRAINT "posts_author_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "posts_author" ("id", "full_name") VALUES
(1,	'Alex author');

DROP TABLE IF EXISTS "posts_post";
DROP SEQUENCE IF EXISTS posts_post_id_seq;
CREATE SEQUENCE posts_post_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."posts_post" (
    "id" bigint DEFAULT nextval('posts_post_id_seq') NOT NULL,
    "pub_date" date NOT NULL,
    "headline" character varying(200) NOT NULL,
    "content" text NOT NULL,
    "author_id" bigint NOT NULL,
    "slug" character varying(250) NOT NULL,
    "image" character varying(100) NOT NULL,
    CONSTRAINT "posts_post_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "posts_post_slug_key" UNIQUE ("slug")
) WITH (oids = false);

CREATE INDEX "posts_post_author_id_fe5487bf" ON "public"."posts_post" USING btree ("author_id");

INSERT INTO "posts_post" ("id", "pub_date", "headline", "content", "author_id", "slug", "image") VALUES
(4,	'2022-07-18',	'Post 3',	'Post 3 description',	1,	'post-3',	'3.jpg'),
(3,	'2022-07-18',	'Post 2',	'Post 2 description',	1,	'post-2',	'2.jpg'),
(5,	'2022-07-18',	'Post 4',	'Post 4 description',	1,	'post-4',	'4.jpeg'),
(6,	'2022-07-19',	'Post 5',	'Description post 5 content',	1,	'post-5',	'5.jpeg'),
(2,	'2022-07-18',	'Post 1',	'Post 1 description',	1,	'post-1',	'6.jpg');

ALTER TABLE ONLY "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE;
ALTER TABLE ONLY "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE ONLY "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE ONLY "public"."auth_user_groups" ADD CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE;
ALTER TABLE ONLY "public"."auth_user_groups" ADD CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE ONLY "public"."auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE;
ALTER TABLE ONLY "public"."auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE ONLY "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE;
ALTER TABLE ONLY "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE ONLY "public"."posts_post" ADD CONSTRAINT "posts_post_author_id_fe5487bf_fk_posts_author_id" FOREIGN KEY (author_id) REFERENCES posts_author(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE;

-- 2022-07-19 04:45:10.816999+00
