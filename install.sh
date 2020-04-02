#!/bin/sh

## dot installer v1 (mostly manual commands)

DOT_DIR=`pwd`

cd $HOME
echo "installing files from $DOT_DIR to $PWD"

for FILE in $( ls $DOT_DIR )
do
	#exclusion list
	case $FILE in
		"`basename $0`") 	
			# skip this file
			;;
		"README.md")
			# skip the readme for the git repo
			;;
		*) 
			echo "ln -s $DOT_DIR/$FILE $PWD/.$FILE" 
			ln -s $DOT_DIR/$FILE .$FILE 
			;;
	esac

done

echo "Grabbing and Installing Antigen from their Github"
curl -L git.io/antigen > $DOT_DIR/zsh/antigen.zsh && echo " ... Done."

echo "Installing VimVundle ..."
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim || echo "Failed." && echo " ... Done."
