#!/bin/ksh

db2 connect to imdb;
db2 set current schema imdb;

# the following line enables collecting column group stats 
# using runstats command through discovery of pairwise cgs
db2set db2_statistics=discover:on;

for name in aka_name aka_title cast_info char_name comp_cast_type company_name company_type complete_cast info_type keyword kind_type link_type movie_companies movie_info_idx movie_info movie_keyword movie_link name person_info role_type title; do
    echo "Running runstats on table $name"
    db2 runstats on table $name with distribution and sampled detailed indexes all;
    db2 commit;
done

db2 connect reset;
db2 terminate;
