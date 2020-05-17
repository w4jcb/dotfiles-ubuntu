#!/bin/sh

set -ux

cd

if [ ! -d Local-Repo/dotfiles ] ; then
  git clone https://github.com/w4jcb/dotfiles.git Local-Repo/dotfiles
fi

cd Local-Repo/dotfiles

DIR=${PWD} # folder this file is in
homedir=/home/${USER} #/home/user_name

# dotfiles directory
dotfiledir=${DIR}

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

# For my customized Neovim file    
# list of files/folders to symlink in ${homedir}/.config/nvim
files3="init.vim"

# custom vim directory
customdir=${homedir}/.config/nvim

# create symlinks (will overwrite old dotfiles)
for file in ${files3}; do
    echo "Creating symlink to $file in home/.vim directory."
    ln -sf ${dotfiledir}/${file} ${customdir}/${file}
done

# Install packages I can't live without.
xargs -a packages.txt sudo apt install

# Install SNAP packages I can't live without.
xargs -a snaps.txt sudo snap install

# Install pip3 style packages I can't live without.
sudo pip3 install -r requirements.txt

# Install all local .deb packages, if available:

if [ -d "/home/$USER/Downloads/Packages" ]; then
    echo "Installing local .deb packages..."
    cd /home/$USER/Downloads/Packages
    for FILE in ./*
   do
       sudo gdebi -n "$FILE"
   done
else
    echo $'\n'$"WARNING! There's no ~/Downloads/Packages directory."
    echo "Local .deb packages can't be automatically installed."
    sleep 5 # The script pauses so this message can be read. 
fi

