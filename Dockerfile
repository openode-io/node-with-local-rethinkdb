FROM node:10-alpine

WORKDIR /opt/app

ENV PORT=80

RUN apk add rethinkdb
RUN echo 'mkdir -p db' >> /usr/bin/start.sh
RUN echo 'rethinkdb --bind all -d db/ --no-update-check &' >> /usr/bin/start.sh

RUN echo 'npm install --production' >> /usr/bin/start.sh

# npm start, make sure to have a start attribute in "scripts" in package.json
RUN echo 'sleep 3' >> /usr/bin/start.sh
RUN echo 'npm start' >> /usr/bin/start.sh
