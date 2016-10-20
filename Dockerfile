FROM deanvn/yo-node-base

USER root

COPY . /src
RUN chown -R yeoman:yeoman /src 

USER yeoman

RUN npm install

