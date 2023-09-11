FROM artifactory.cloud.cms.gov/docker/node:20-alpine3.18

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# COPY package.json ./
# COPY package-lock.json ./

COPY . ./

RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

CMD ["npm", "start"]
