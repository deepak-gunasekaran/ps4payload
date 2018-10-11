#FROM is the base image for which we will run our application
FROM deepakdpk6/msv:latest

# Copy files and directories from the application
COPY credits.html /usr/share/nginx/html/credits.html
COPY index.html /usr/share/nginx/html/index.html

# Tell Docker we are going to use this port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
