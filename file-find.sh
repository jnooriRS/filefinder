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

for file in  "$COMMAND_DIRECOTRY"; do
    if [[ $file == *.md ]]
    then
    mkdir /markdown
    cp $file /markdown
done

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