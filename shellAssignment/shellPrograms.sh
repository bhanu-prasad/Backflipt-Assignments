# #Question 1
# #List of files and directories
# echo -e "\n List of files and directories :"
# ls
# #List of files and directories with subdirectories
# echo -e "\nList of files and directories with subdirectories :"
# ls -R
# #list of files and directories in reverse order
# echo -e "\nlist of files and directories in reverse order :"
# ls -r



# #creating test file with dummy data
# echo Line 1 > dummy.txt
# for i in {2..10}
#     do
#         echo Line $i >> dummy.txt
#     done

# #Question 2
# echo -e "\nCreate file if it doesn't exist :\n"
# if [ -f test.txt ]; then
#     echo "text.txt Exists"
# else
#     echo -e "text.txt doesn't exist now creating file :\n"
#     touch test.txt
# fi

# #Question 3
# echo -e "\nRead N value from user and print numbers between 0 to N :\n"
# read -p "enter N value :" N
# for ((i=0 ; i<=N ; i++)); do
#     echo $i
# done

# #Question 4
# echo -e "\n Read directory name from user , delete if it exists or print message if not exists :\n"
# read -p "enter directory name :" d
# if [ -d $d ]
#     then
#         echo -e "\nDirectory exists now Deleting :\n" 
#         rm -r $d
# else
#     echo -e "\nDirectory don't exist\n"
# fi

# #Question 5
# echo -e "\nCopying one directory to another directory :\n"
# read -p "Enter From Directory (path) : " fromDirectory
# read -p "Enter To Directory (path) : " toDirectory
# cp -r $fromDirectory $toDirectory

# #Question 6
# echo -e "\nWrite a shell script to count the only files in the directory :\n"
# read -p "Enter Directory (path) : " directory
# find $directory -maxdepth 1 -type f | wc -l

# # Question 7
# # Directory creation Backflipt or Xenovus
# directoryCount=`expr $(find ./Dir -maxdepth 1 -type d | wc -l) - 1`
# echo $directoryCount
# if [ $directoryCount -eq 5 ]
#     then
#         mkdir ./Dir/Xenovus
# elif [ $directoryCount -lt 5 ]
#     then
#         mkdir ./Dir/Backflipt
# else
#     echo "Directory creation not needed"
#     exit
# fi

# #Question 8



# #Question 9
# read -p "Enter Name : " name
# read -p "Enter Contact : " contact
# read -p "Enter Email : " email
# read -p "Enter Gender : " gender

# if [ -z $name -o -z $contact -o -z $email -o -z gender ]
#     then
#         echo "Missing value"
#         exit
# else
#     echo "Name :" $name > details.txt
#     echo "Contact :" $contact >> details.txt
#     echo "E-mail :" $email >> details.txt
#     case $gender in
#         "male") echo "Gender : "Male >> details.txt
#         ;;
#         "female") echo "Gender : "Female >> details.txt
#         ;;
#         "prefer not to say") echo "Gender : prefer not to say" >> details.txt
#         ;;
#         *)
#         rm details.txt
#         exit
#         ;;
#     esac 
# fi