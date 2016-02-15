FROM mbaltrusitis/deb-base:wheezy

ENV LANG "C"

RUN curl https://install.meteor.com/ | sh
RUN git clone git@github.com:lokenx/plexrequests-meteor.git /app/src
RUN cd /app/src

EXPOSE 3000

ADD start.sh /app/start.sh
RUN chmod +x /app/start.sh

CMD ["/bin/bash", "/app/start.sh"]
