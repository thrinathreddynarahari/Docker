FROM node:9.7.0-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 4200
CMD ["npm", "start"]