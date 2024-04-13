# Use an official lightweight Node.js image.
FROM node:14-slim

# Install 'serve' to serve static files.
RUN npm install -g serve

# Copy the static files to the container.
COPY . /app

# Set the working directory to where we copied the files.
WORKDIR /app

# Tell Docker about the port we'll run on.
EXPOSE 3000

# Command to serve the app.
CMD ["serve", "-s", ".", "-l", "3000"]
