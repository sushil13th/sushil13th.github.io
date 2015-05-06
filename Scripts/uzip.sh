#!/bin/sh
echo -n "Enter filename: "
read filename
echo -n "Enter source path: "
read sourcepath
echo -n "Enter destintion path: "
read destinationpath
despath=/home/$destinationpath/
sourpath=/home/$sourcepath/
echo -n "Enter foldername to extract zipped file: "
read flo
cd $sourpath && unzip $filename.zip -d ${despath}/$flo
if [ $? != "0" ]; then
echo "[Error]: Extract failed"
exit 1
else
echo "--------------------------"
echo "Content has been extracted successfully"
echo "------------------------------"
echo " Extration Info: "
echo ""
echo " Path: $despath$flo"
echo "------------------------------------"
fi
