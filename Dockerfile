# ---- Base Node ----
FROM node:lts-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY ./dist /app
RUN cd /app
RUN ls

# expose port and define CMD
EXPOSE 3000
CMD ["npm", "start"]
