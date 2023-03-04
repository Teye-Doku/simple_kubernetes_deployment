# Stage 1: Build stage
FROM node:14-alpine as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .


# Stage 2: Production stage
FROM node:14-alpine as production
WORKDIR /app
COPY --from=build /app ./
RUN npm install --only=production

CMD ["npm", "start"]
