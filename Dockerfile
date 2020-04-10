FROM node
RUN mkdir /app
COPY . /app
WORKDIR /app
ADD package.json /app
RUN yarn install && yarn build
EXPOSE 3000
CMD yarn start
