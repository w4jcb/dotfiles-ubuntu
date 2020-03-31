#!/usr/bin/env bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ${homedir}/dotfiles
############################

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
	echo "Example install.sh /home/user_name"
    exit 1
fi

homedir=$1 #/home/user_name

# dotfiles directory
dotfiledir=${homedir}/Local-Repo/dotfiles

# list of files/folders to symlink in ${homedir}
files="vimrc bash_aliases"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done
    
# For my customized vim file    
# list of files/folders to symlink in ${homedir}/.vim
files2="custom.vim"

# custom vim directory
customdir=${homedir}/.vim

# create symlinks (will overwrite old dotfiles)
for file in ${files2}; do
    echo "Creating symlink to $file in home/.vim directory."
    ln -sf ${dotfiledir}/${file} ${customdir}/${file}
done
