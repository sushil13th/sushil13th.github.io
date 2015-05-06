#!/bin/bash

# Grab a list of users from the /etc/passwd file and direct to a file.
cat /etc/passwd |grep bash |grep home | awk -F: '{print $1}' > users.txt

# Begin the while loop. The variable NAME will be read from users.txt
while read NAME

# Setup the file copy in the "do" part of the loop.
do cp /tmp/test.txt /home/$NAME

echo "Copied file to $NAME"
echo " "

# Change the permissions on the copied file to the user's.
chown $NAME:$NAME /home/$NAME/test.txt
echo "And, changed ownership to $NAME"
echo " "

# Tell the loop when to stop, when there's no more names in the list.
done < names.txt