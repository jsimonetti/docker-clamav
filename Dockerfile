FROM jsimonetti/alpine-edge:latest

RUN apk add --no-cache clamav-daemon clamav-milter freshclam rsync bash bind-tools

ADD ./start.sh /start.sh

CMD [ "/start.sh" ]
