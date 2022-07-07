FROM ubuntu
RUN chmod 700 .
# source then destination of container in docker if I have one
COPY . /filefind/mr-file-finder.sh
#when conatiner starts what is the executable
ENTRYPOINT ["/bin/bash", "/filefind.sh"]
#Dockerise command 
#create a dockerfile containing “mr-file-finder.sh” 
#Should scan mounted volume /data for files 
