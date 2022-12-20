FROM nginx
USER root
COPY nginx/nginx.conf /etc/nginx/
COPY main.c /home/
COPY entry.sh /home/
RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev
WORKDIR /home/
ENTRYPOINT ["sh", "entry.sh"]