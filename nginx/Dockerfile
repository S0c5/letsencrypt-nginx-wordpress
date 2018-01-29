FROM nginx:latest
RUN apt-get update && apt-get install netcat -y
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD nginx -g 'daemon off;'