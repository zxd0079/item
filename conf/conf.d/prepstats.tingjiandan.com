server {
  listen 80;
  server_name prepstats.tingjiandan.com ;


  location / {
  root /server/nginx/html;
  index index.html index.htm;
  }



    location /stats {
  proxy_pass http://stats/stats;
  proxy_set_header  X-Real-IP  $remote_addr;
   proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
        proxy_pass_header X-XSRF-TOKEN;
        proxy_set_header Origin "http://stats/stats";
        fastcgi_param  SCRIPT_NAME        "";
        proxy_connect_timeout 10s;
        proxy_read_timeout 300s;
        proxy_send_timeout 300s;


}

}
