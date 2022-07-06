#bin!/bash
read User
echo $User
COMMAND_DIRECTORY="/c/Users/HansPeterJonasHogh-J/dev/repos/${User}"
if [ -d $COMMAND_DIRECTORY ]
then 
    echo "The $COMMAND_DIRECTORY exists"
    cd $COMMAND_DIRECTORY
    ls
    for i in *.txt
    do
        echo "$i"
        mkdir /txt
            cp $i /txt
            ls
    done
else 
    echo "The $COMMAND_DIRECTORY does not exist"
fi

#Notes
#Comparrison sqaure brackets does not work with find command/ nor dierct extention
#This will create a new file for everyfile so defo incorrect
#Need permission