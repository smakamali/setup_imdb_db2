#!/bin/ksh

db2 -tvf 01-crdb.sql -z 01-crdb.log
sleep 60
db2 -tvf 02-crbp.sql -z 02-crbp.log
db2 -tvf 04-crts.sql -z 04-crts.log
db2 -tvf 05-crtb.sql -z 05-crtb.log
. 06-load.sh
db2 -tvf 07-crix.sql -z 07-crix.log
. 09-runstats.sh
db2 -tvf 10-pkfk.sql -z 10-pkfk.log
