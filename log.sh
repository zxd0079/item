#!/bin/sh
src="/server/nginx/logs/"
des="/server/nginx/logs/bak/"
pid="/server/nginx/logs/nginx.pid"
mv ${src}access.log ${des}access_$(date -d "yesterday" +"%Y%m%d").log
mv ${src}error.log ${des}error_$(date -d "yesterday" +"%Y%m%d").log
mv ${src}host.access.log ${des}host.access_$(date -d "yesterday" +"%Y%m%d").log
kill -USR1 `cat ${pid}`
#find ${des} -mtime 1 -exec rm -rf {} \;
rm -rf ${des}*
