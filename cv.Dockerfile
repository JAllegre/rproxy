FROM node:20-bookworm as buildStage

WORKDIR /app

COPY ../cv/ ./

RUN npm install

RUN npm run build

#CMD ["npm", "run", "start"]

FROM nginx:latest

COPY --from=buildStage /app/build /usr/share/nginx/html

COPY ./rproxy/cv.default.conf /etc/nginx/conf.d/default.conf




