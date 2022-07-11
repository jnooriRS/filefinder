FROM ubuntu
RUN chmod 700 .
WORKDIR /app
COPY . .
VOLUME [ "/c/Users/HansPeterJonasHogh-J/dev/repos/"]
#when conatiner starts what is the executable
ENTRYPOINT ["/bin/bash", "file-find.sh"]
#Dockerise command 
#create a dockerfile containing “mr-file-finder.sh” 
#Should scan mounted volume /data for files 