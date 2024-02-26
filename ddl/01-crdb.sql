---CREATE DATABASE IMDB AUTOMATIC STORAGE NO ON /TPCDS/tpcds_flat/db2fs PAGESIZE 16384 AUTOCONFIGURE APPLY NONE;
create database IMDB AUTOMATIC STORAGE YES  PAGESIZE 16384 AUTOCONFIGURE APPLY NONE;
UPDATE DB CFG FOR IMDB USING LOGPRIMARY 100;
UPDATE DB CFG FOR IMDB USING SORTHEAP 1000 BUFFPAGE 20000;
---the following line enables cgs discovery through auto-runstats
UPDATE DB CFG FOR IMDB USING AUTO_CG_STATS ON;
CONNECT TO IMDB;
CONNECT RESET;

