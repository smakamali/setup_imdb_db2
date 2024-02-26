connect to imdb;

set current schema imdb;

alter bufferpool IBMDEFAULTBP size 1000 ;
CREATE BUFFERPOOL BP_16K ALL DBPARTITIONNUMS SIZE 131072 PAGESIZE 16K; 
-- 262144=4GB
connect reset;
