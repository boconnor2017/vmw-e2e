FROM nginxdemos/hello
RUN apk update
RUN rm /usr/share/nginx/html/*
RUN rm /etc/nginx/conf.d/*
COPY web/* /usr/share/nginx/html/
COPY conf/* /etc/nginx/conf.d/
RUN chmod -R 644 /usr/share/nginx/html/index.html
RUN chmod -R 644 /etc/nginx/conf.d/nginx.conf
