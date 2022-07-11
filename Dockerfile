FROM ubuntu
RUN chmod 700 .
WORKDIR /app
COPY . .
#VOLUME [ "//c/Users/HansPeterJonasHogh-J/dev/repos"]
#when conatiner starts what is the executable
ENTRYPOINT ["/bin/bash", "file-find.sh"]
#Dockerise command 
#create a dockerfile containing “mr-file-finder.sh” 
#Should scan mounted volume /data for files 
#winpty docker run -it --name basic-vol -v ~/dev/repos:/repos filefind
#winpty docker run -it -v basic-vol:/C:\Users\HansPeterJonasHogh-J\dev\repos filefind:latest
#create vol first then mount the db to the volume
# winpty docker run -it --name basic -v basic-vol:C\Users\HansPeterJonasHogh-J\dev\repos filefind
# winpty docker run -it --name basic2 -v basic-vol:"//c/Users/HansPeterJonasHogh-J/dev/repos/" filefind
#winpty docker run -it --name basic14 --mount type=volume,target="//c/Users/HansPeterJonasHogh-J/dev/repos" filefind