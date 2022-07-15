#!bin/bash

#--version=prints out version of the application
#--help= prints out application help
#scan-folder=Dir=folder to scan for file
#Scan all files with type
#create new folder
#append all files into new folder

filefinder(){
    echo what folder would you like to scan?
    echo $Directory
#loop through folder and count/increment different types of file- using regex
#place each file into seperate folder
echo would you like to see your folder? 
#conditional if yes print ls if no exit application
}

#ls -lx by extention
#-d directory exists
#find . -inname "*.md" | sort -r find all markdownfiles in working directory
#find . inname "*$go_to_directory" | sort -r --output (save list to file)
#find "$go_to_directory" -type d
#find -name "XXX" -and -type d
#EVERYTHING INTO A FUNCTION