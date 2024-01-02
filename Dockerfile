FROM node:12

#add app source code to the image

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT: 8080

EXPOSE 8080

CMD ["npm" , "start"]