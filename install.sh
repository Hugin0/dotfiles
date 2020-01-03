#!/bin/sh

## dot installer v1 (mostly manual commands)

DOT_DIR=`pwd`

cd $HOME
echo "installing files from $DOT_DIR to $PWD"

for FILE in $( ls $DOT_DIR )
do
	#exclusion list
	case $FILE in
		"install.sh") 	
			;;
		"solarized") 
			echo "$FILE doesn't need moved, stay put"
			;;
		"zsh") 
			echo "random zsh resources, stay put"
			;;
		"README.md")
			;;
		*) 
			echo "ln -s $DOT_DIR/$FILE .$FILE" 
			ln -s $DOT_DIR/$FILE .$FILE 
			;;
	esac

done

# Install Oh-My-Zsh
if [[ -x `which wget` ]]; then
	echo "Installing Oh-My-Zsh via wget"
	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
	echo "Done."
fi
