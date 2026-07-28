FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npc ci
COPY . .
EXPOSE 8080
CMD ["node", "server.js"]
