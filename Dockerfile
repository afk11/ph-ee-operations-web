FROM node:16.13.0
RUN apt-get update && apt-get install -y vim
EXPOSE 4200

RUN npm install -g @angular/cli@7.3.9

CMD ng serve --host 0.0.0.0 --disable-host-check --configuration kubernetes

ADD . /app
WORKDIR /app
RUN npm rebuild node-sass --force
RUN npm install
#RUN ng build --configuration kubernetes


