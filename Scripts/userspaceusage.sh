#!/bin/bash

# Create a list of users and direct it to a file.
cat /etc/passwd |grep bash |grep home | awk -F: '{print $1}' > names.txt

# Create an HTML file. This part must be outside the loop.
echo "
" > user_space.html
echo "


" >> user_space.html

# Start the WHILE loop
while read NAME

do

# This sets output of the command to the variable name, SPACE.
SPACE=`du -sm /home/$NAME |awk -F" " '{print $1}'`

echo "


" >> user_space.html

done < names.txt

# End the table entry outside the loop.
echo "
User	Space
$NAME	$SPACE


" >> user_space.html