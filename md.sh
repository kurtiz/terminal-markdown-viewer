#!/bin/bash

# output color variances
colored() {
	lynx --stdin
}

blackwhite() {
	w3m -T text/html
}
# argument count
args=$#

mdv() {
    pandoc $1 | $2
}

mdv_help()  {
	echo  -e "Mark Down Viewer Version 1.0.0\nUSAGE"
	echo  -e "md [options | flags] <name_of_file> | <path_to_file>\n"
	echo  -e "OPTIONS / FLAGS\n-h \t shows the help text and exits\n-v \t shows the version number\n-c \t view file in color mode\n"
}

if [ $args -eq 0 ]
then
	echo "Too few arguments!"
	mdv_help
elif [ $args -eq 2 ] && [ $1 != "-v" ] && [ $1 != "-h" ]
then
	if [ $1 = "-c" ] && [ $2 != "-v" ] && [ $2 != "-h" ] && [ $2 != "-c" ]
	then
		mdv $2 colored
	else
		echo "Check the format of usage... Something is not right!"
		mdv_help
	fi
elif [ $args -eq 1 ] && [ $1 != "-v" ] && [ $1 != "-h" ]
then
	mdv $1 blackwhite

elif [ $args -eq 1 ]
then
	case $1 in
		"-v")
			echo "Mark Down Viewer Version 1.0.0"
		;;

		"-h")
			mdv_help
		;;
	esac
else
		echo "Check the format of usage... Something is not right!"
		mdv_help
fi
