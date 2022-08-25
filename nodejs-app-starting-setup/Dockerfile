FROM node

# Working ( npm install ) Directory is "/app"
WORKDIR /app 

# 25. image layer / line by line ( layer ) start build top down step by step 
# if we modify something to pakage.json file, then Docker build from this layer ( line 8 : COPY package.json /app ) to end of this file  
COPY package.json /app

RUN npm install

# COPY . . 
# first dot(.) will copying folder : included Dockerfile archive folder location 
# second dot(.) Host filesystem Image/container file system 
COPY . /app
# same means if you defined ( WORKDIR /app ) /app = ./

#EXPOSE port connection to my computer 
EXPOSE 80
# RUN image based ( when making image ) <-> CMD container based ( start container and start node server.js )
CMD ["node", "server.js"]
# CMD node server.js= CMD ["node", "server.js"]