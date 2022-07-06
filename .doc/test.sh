#bin!/bash
echo "What folder would you like to clean up"
read User
echo $User
COMMAND_DIRECTORY="/c/Users/HansPeterJonasHogh-J/dev/repos/${User}"
if [ -d $COMMAND_DIRECTORY ]
then 
    echo "The $COMMAND_DIRECTORY exists"
    cd $COMMAND_DIRECTORY
    ls
echo "What type of file would you like sorted"
read FILE_TYPE
echo $FILE_TYPE
echo "What is the name of the new folder?"
read USER_FOLDER
    for i in * ${FILE_TYPE}
    do
        echo "$i"
        mkdir -p ${FILE_TYPE}
            mv $i ${FILE_TYPE}
            ls
    done
else 
    echo "The $COMMAND_DIRECTORY does not exist"
fi

#Notes
#Comparrison sqaure brackets does not work with find command/ nor dierct extention
#This will create a new file for everyfile so defo incorrect
#Need permission why does -p work to overcome user permission