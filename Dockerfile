FROM node:20-bookworm-slim

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN apt-get update && apt-get install -y procps

RUN npm install -g pnpm

RUN pnpm install

COPY . .

CMD ["pnpm", "run", "serve:my-app"]
