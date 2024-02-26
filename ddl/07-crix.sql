connect to imdb;

set current schema imdb;

------------------------------------------------------------
--  indexes based on foreign key columns
--  note: some definitions will fail because they were
--        created as indexes based on primary key columns
------------------------------------------------------------
CREATE INDEX company_id_movie_companies ON movie_companies USING btree (company_id);
commit work;

CREATE INDEX company_type_id_movie_companies ON movie_companies USING btree (company_type_id);
commit work;

CREATE INDEX info_type_id_movie_info ON movie_info USING btree (info_type_id);
commit work;

CREATE INDEX info_type_id_movie_info_idx ON movie_info_idx USING btree (info_type_id);
commit work;

CREATE INDEX info_type_id_person_info ON person_info USING btree (info_type_id);
commit work;

CREATE INDEX keyword_id_movie_keyword ON movie_keyword USING btree (keyword_id);
commit work;

CREATE INDEX kind_id_aka_title ON aka_title USING btree (kind_id);
commit work;

CREATE INDEX kind_id_title ON title USING btree (kind_id);
commit work;

CREATE INDEX link_type_id_movie_link ON movie_link USING btree (link_type_id);
commit work;

CREATE INDEX linked_movie_id_movie_link ON movie_link USING btree (linked_movie_id);
commit work;

CREATE INDEX movie_id_aka_title ON aka_title USING btree (movie_id);
commit work;

CREATE INDEX movie_id_cast_info ON cast_info USING btree (movie_id);
commit work;

CREATE INDEX movie_id_complete_cast ON complete_cast USING btree (movie_id);
commit work;

CREATE INDEX movie_id_movie_companies ON movie_companies USING btree (movie_id);
commit work;

CREATE INDEX movie_id_movie_info ON movie_info USING btree (movie_id);
commit work;

CREATE INDEX movie_id_movie_info_idx ON movie_info_idx USING btree (movie_id);
commit work;

CREATE INDEX movie_id_movie_keyword ON movie_keyword USING btree (movie_id);
commit work;

CREATE INDEX movie_id_movie_link ON movie_link USING btree (movie_id);
commit work;

CREATE INDEX person_id_aka_name ON aka_name USING btree (person_id);
commit work;

CREATE INDEX person_id_cast_info ON cast_info USING btree (person_id);
commit work;

CREATE INDEX person_id_person_info ON person_info USING btree (person_id);
commit work;

CREATE INDEX person_role_id_cast_info ON cast_info USING btree (person_role_id);
commit work;

CREATE INDEX role_id_cast_info ON cast_info USING btree (role_id);
commit work;

connect reset;
