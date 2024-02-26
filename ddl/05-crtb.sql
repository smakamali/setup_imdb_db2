connect to imdb;

set current schema imdb;

CREATE TABLE aka_name (
    id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    name VARCHAR(255),
    imdb_index VARCHAR(3),
    name_pcode_cf VARCHAR(11),
    name_pcode_nf VARCHAR(11),
    surname_pcode VARCHAR(11),
    md5sum VARCHAR(65),
    PRIMARY KEY (id)
)in ts_sd_small_001; 

CREATE TABLE aka_title (
    id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    title VARCHAR(255),
    imdb_index VARCHAR(4),
    kind_id INTEGER NOT NULL,
    production_year INTEGER,
    phonetic_code VARCHAR(5),
    episode_of_id INTEGER,
    season_nr INTEGER,
    episode_nr INTEGER,
    note VARCHAR(72),
    md5sum VARCHAR(32),
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE cast_info (
    id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    person_role_id INTEGER,
    note VARCHAR(255),
    nr_order INTEGER,
    role_id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE char_name (
    id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    imdb_index VARCHAR(2),
    imdb_id INTEGER,
    name_pcode_nf VARCHAR(5),
    surname_pcode VARCHAR(5),
    md5sum VARCHAR(32),
    PRIMARY KEY (id)
);

CREATE TABLE comp_cast_type (
    id INTEGER NOT NULL,
    kind VARCHAR(32) NOT NULL,
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE company_name (
    id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    country_code VARCHAR(6),
    imdb_id INTEGER,
    name_pcode_nf VARCHAR(5),
    name_pcode_sf VARCHAR(5),
    md5sum VARCHAR(32),
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE company_type (
    id INTEGER NOT NULL,
    kind VARCHAR(32),
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE complete_cast (
    id INTEGER NOT NULL,
    movie_id INTEGER,
    subject_id INTEGER NOT NULL,
    status_id INTEGER NOT NULL,
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE info_type (
    id INTEGER NOT NULL,
    info VARCHAR(32) NOT NULL,
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE keyword (
    id INTEGER NOT NULL,
    keyword VARCHAR(255) NOT NULL,
    phonetic_code VARCHAR(5),
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE kind_type (
    id INTEGER NOT NULL,
    kind VARCHAR(15),
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE link_type (
    id INTEGER NOT NULL,
    link VARCHAR(32) NOT NULL,
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE movie_companies (
    id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    company_id INTEGER NOT NULL,
    company_type_id INTEGER NOT NULL,
    note VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE movie_info (
    id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    info_type_id INTEGER NOT NULL,
    info VARCHAR(255) NOT NULL,
    note VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE movie_info_idx (
    id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    info_type_id INTEGER NOT NULL,
    info VARCHAR(255) NOT NULL,
    note VARCHAR(1),
    PRIMARY KEY (id)
);

CREATE TABLE movie_keyword (
    id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    keyword_id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE movie_link (
    id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    linked_movie_id INTEGER NOT NULL,
    link_type_id INTEGER NOT NULL,
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE name (
    id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    imdb_index VARCHAR(9),
    imdb_id INTEGER,
    gender VARCHAR(1),
    name_pcode_cf VARCHAR(5),
    name_pcode_nf VARCHAR(5),
    surname_pcode VARCHAR(5),
    md5sum VARCHAR(32),
    PRIMARY KEY (id)
);

CREATE TABLE person_info (
    id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    info_type_id INTEGER NOT NULL,
    info VARCHAR(255) NOT NULL,
    note VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE role_type (
    id INTEGER NOT NULL,
    role VARCHAR(32) NOT NULL,
    PRIMARY KEY (id)
)in ts_sd_small_001;

CREATE TABLE title (
    id INTEGER NOT NULL,
    title VARCHAR(255) NOT NULL,
    imdb_index VARCHAR(5),
    kind_id INTEGER NOT NULL,
    production_year INTEGER,
    imdb_id INTEGER,
    phonetic_code VARCHAR(5),
    episode_of_id INTEGER,
    season_nr INTEGER,
    episode_nr INTEGER,
    series_years VARCHAR(49),
    md5sum VARCHAR(32),
    PRIMARY KEY (id)
);

commit;

connect reset;
