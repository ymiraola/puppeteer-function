FROM node:22-slim

RUN apt-get update && apt-get install -y \
    wget ca-certificates fonts-liberation libnss3 libxss1 libasound2 \
    libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxcomposite1 \
    libxdamage1 libxrandr2 xdg-utils --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT 8080
EXPOSE 8080

CMD ["npm", "start"]
