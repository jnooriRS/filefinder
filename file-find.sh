#bin!/bash
echo File Finder
echo what directory would you like to find?

read User
#echo $User
COMMAND_DIRECTORY="/c/Users/HansPeterJonasHogh-J/dev/repos/${User}"
echo $COMMAND_DIRECTORY
#go_to_directory=User input appneded to file path
if [ -d $COMMAND_DIRECTORY ]
then 
    echo "The $COMMAND_DIRECTORY exists"
    cd $COMMAND_DIRECTORY
    ls
    echo "This is the number of files you have"
# list all files and count
    ls -1 | wc -l
#function to loop through all files and copy into folder
    ls -lx
echo "What type of file you want sorted "
read FILE_EXT
echo $FILE_EXT
echo "What name would you like the folder called"
read USER_FOLDER
ECHO $USER_FOLDER

    for file in $COMMAND_DIRECTORY/*
    do
        if [[ "$file" == *$FILE_EXT ]]
        then
            mkdir -p ${USER_FOLDER}
            mv $file ${USER_FOLDER}/
        fi
    done;

#echo what file you want to search for
#function loop through folder and find file
else 
    echo "The $COMMAND_DIRECTORY does not exist"
fi

#escape code ""
#caps
#Keypasscd
#function or noun
 #find . -name "*.md" -exec mkdir {} markdown \;
 #getops for flags command executable
 