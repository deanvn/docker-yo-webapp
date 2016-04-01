FROM deanvn/yeoman-web-app

USER root

COPY . /src
RUN chown -R yeoman:yeoman /src 

USER yeoman

RUN npm install

