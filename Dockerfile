FROM node:18.15

# Create app directory
WORKDIR /inspect

# Copy the source code.
COPY . .

RUN npm install

EXPOSE 80

CMD [ "node", "--max-old-space-size=4096", "index.js" ]
