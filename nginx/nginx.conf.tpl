server {
  listen $host_port;
  return 301 https://$host$request_uri;
}

server {
 listen 0.0.0.0:443 ssl;
 
 # SSL config
 ssl on;
 ssl_certificate $ssl_certificate_pem;
 ssl_certificate_key $ssl_certificate_key;

 # Make site accessible from http://localhost/
 # server_name $host_name;

 location / {
   
    # HTTP 1.1 support

    proxy_http_version 1.1;
    proxy_set_header Connection "";

    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;

    proxy_pass http://wordpress:80;
    
    proxy_buffering off;
    client_max_body_size 0;
    proxy_read_timeout 36000s;
    proxy_redirect off;
    proxy_ssl_session_reuse off;
 }
}