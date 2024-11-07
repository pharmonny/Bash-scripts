#!/bin/bash

Date=$(date +%y-%m-%d_%H:%M:%S)
echo "---------- Here is the assignment-----------"
echo
echo "---MAke a directory called file_management---"
mkdir file_management

cd file_management
echo " --Create two subdirectories named source and backup ----"
mkdir source backup
echo "cd into source directory and create five text files------"
cd source
touch file{1..5}.txt
cd ..
echo
echo "----copy the five empty files you have in the source directory into the backup directory---"
cp source/file{1..5}.txt backup
cd backup
echo "Append current date and time to the end of each file name in the backup directory--------"
mv file1.txt file1.txt_$Date
mv file2.txt file2.txt_$Date
mv file3.txt file3.txt_$Date
mv file4.txt file4.txt_$Date
mv file5.txt file5.txt_$Date
echo "------------------------Assignment completed-----------------------------------------------"
