FROM node:20-bookworm

WORKDIR /app

COPY ../recipes/ .

RUN npm install

RUN npm run build

CMD ["npm", "run", "start"]



