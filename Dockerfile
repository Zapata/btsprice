FROM python:3

WORKDIR /usr/src/app

COPY . .

RUN python3 setup.py install

VOLUME ["/conf"]

CMD [ "/usr/local/bin/btsprice", "--config", "/config/config.json" ]