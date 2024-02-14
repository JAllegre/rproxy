FROM node:20-bookworm

WORKDIR /app

COPY ../cv/ ./

RUN npm install

RUN npm run build

CMD ["npm", "run", "start"]


