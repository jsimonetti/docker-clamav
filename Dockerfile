FROM jsimonetti/alpine-edge:latest

RUN apk add --no-cache clamav-daemon clamav-milter freshclam rsync bash bind-tools

COPY *.conf /etc/clamav/
ADD ./start.sh /start.sh

EXPOSE	3310/tcp

CMD [ "/start.sh" ]
