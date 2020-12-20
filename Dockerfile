# Use nxgo/cli as the base image to do the build
FROM nxgo/cli as builder

# Create app directory
WORKDIR /workspace

# Copy package.json and the lock file
COPY package.json yarn.lock /workspace/

# Install app dependencies
RUN yarn

# Copy source files
COPY . .

CMD yarn run nx serve list-api