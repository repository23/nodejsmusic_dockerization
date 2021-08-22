FROM node:14.17.5
WORKDIR /app
COPY package.json /app
COPY app.js /app
COPY index.js /app
RUN mkdir -p /app/public
RUN mkdir -p /app/routes
COPY /routes/. /app/routes
COPY /public/. /app/public
RUN npm install
CMD node app.js
EXPOSE 5000