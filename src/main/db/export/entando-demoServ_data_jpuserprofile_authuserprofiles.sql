--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: jpuserprofile_authuserprofiles; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('caroline', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="caroline" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories /><attributes><attribute name="Nome" attributetype="Monotext"><monotext>Caroline</monotext></attribute><attribute name="Cognome" attributetype="Monotext"><monotext>F.</monotext></attribute><attribute name="email" attributetype="Monotext"><monotext>caroline@entando.com</monotext></attribute><attribute name="azienda" attributetype="Monotext"><monotext>intranet</monotext></attribute></attributes></profile>
', 0);
INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('max', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="max" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories /><attributes><attribute name="Nome" attributetype="Monotext"><monotext>Max</monotext></attribute><attribute name="Cognome" attributetype="Monotext"><monotext>M.</monotext></attribute><attribute name="email" attributetype="Monotext"><monotext>max@entando.com</monotext></attribute><attribute name="azienda" attributetype="Monotext"><monotext>customer</monotext></attribute></attributes></profile>
', 0);
INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('admin', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="admin" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories /><attributes><attribute name="Nome" attributetype="Monotext"><monotext>Admin</monotext></attribute><attribute name="Cognome" attributetype="Monotext"><monotext>C.</monotext></attribute><attribute name="email" attributetype="Monotext"><monotext>admin@entando.com</monotext></attribute><attribute name="azienda" attributetype="Monotext"><monotext>admin</monotext></attribute></attributes></profile>
', 0);
INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('jeff', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="jeff" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories /><attributes><attribute name="Nome" attributetype="Monotext"><monotext>Jeff</monotext></attribute><attribute name="Cognome" attributetype="Monotext"><monotext>S.</monotext></attribute><attribute name="email" attributetype="Monotext"><monotext>jeff@entando.com</monotext></attribute><attribute name="azienda" attributetype="Monotext"><monotext>admin</monotext></attribute></attributes></profile>
', 0);


--
-- PostgreSQL database dump complete
--

