#!/bin/ksh

export DATA_DIR="`pwd`/../imdb_data";
export LOG_DIR="`pwd`/../log";

# Check if the log directory exists
if [ ! -d $LOG_DIR ]; then
    # If not, create it
    mkdir -p $LOG_DIR
    echo "Directory 'log' created."
else
    echo "Directory 'log' already exists."
fi

tar -xvzf ../imdb_data.tar.gz -C ../

db2 connect to imdb

for name in aka_name aka_title cast_info char_name comp_cast_type company_name company_type complete_cast info_type keyword kind_type link_type movie_companies movie_info_idx movie_info movie_keyword movie_link name person_info role_type title; do
    echo "Loading data of table $name"
    db2 "load from $DATA_DIR/$name.dat of del modified by coldel0x09 messages $LOG_DIR/$name.msg replace into imdb.$name nonrecoverable"
    db2 commit
done

db2 connect reset
db2 terminate

