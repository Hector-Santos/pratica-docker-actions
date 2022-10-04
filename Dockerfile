FROM node

WORKDIR ./usr/src/

COPY . .

EXPOSE 5000

RUN npm i && npx prisma generate

CMD ["npm", "run", "dev"]