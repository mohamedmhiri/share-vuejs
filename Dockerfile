FROM ubuntu:latest

RUN mkdir /app
# make the 'app' folder the current working directory
WORKDIR /app

VOLUME . /app

# install project dependencies leaving out dev dependencies
#RUN npm install

EXPOSE 8080

CMD [ "ls", "-R" ]