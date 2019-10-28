FROM node:8

RUN mkdir -p /opt/smartsearch-front

COPY . /opt/smartsearch-front

RUN cd /opt/smartsearch-front ; yarn install

WORKDIR /opt/smartsearch-front

EXPOSE 3000

CMD [ "node", "server.js" ]
