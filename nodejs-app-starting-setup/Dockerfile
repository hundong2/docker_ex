FROM node

# Working ( npm install ) Directory is "/app"
WORKDIR /app 
# COPY . . 
# first dot(.) will copying folder : included Dockerfile archive folder location 
# second dot(.) Host filesystem Image/container file system 
COPY . /app
# same means if you defined ( WORKDIR /app ) /app = ./

# npm install 
RUN npm install

#EXPOSE port connection to my computer 
EXPOSE 80
# RUN image based ( when making image ) <-> CMD container based ( start container and start node server.js )
CMD ["node", "server.js"]
# CMD node server.js= CMD ["node", "server.js"]