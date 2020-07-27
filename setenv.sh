#!/bin/bash 

set -e
printf "============ Setting vim ============\n"
if [ -e ${HOME}/.vimrc ]
then
	printf "backup %s to %s\n" .vimrc .vimrc.old
	mv ${HOME}/.vimrc ${HOME}/.vimrc.old
fi

printf "copy %s to %s\n" .vimrc ${HOME}
cp vim/.vimrc ${HOME}/
colorpath=${HOME}/.vim/colors
if [ ! -d ${colorpath} ]
then
	printf "creating %s/%s/%s\n" ${HOME} .vim colors
	mkdir -p ${colorpath}
fi
printf "copy color file to ${colorpath}\n"
cp vim/colors/* ${colorpath}

printf "Installing Plugins\n"
if [ ! -e ${HOME}/.vim/autoload/plug.vim ] 
then
	printf "Installing vim-plug\n"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
vim -c "PlugInstall|q!|q!"

printf "\n============ Setting tmux ===========\n"
if [ -e ${HOME}/.tmux.conf ] 
then
	printf "backup %s to %s\n" .tmux.conf .tmux.conf.old
	mv ${HOME}/.tmux.conf ${HOME}/.tmux.conf.old
fi

printf "copy %s to %s\n" .tmux.conf ${HOME}
cp tmux/.tmux.conf ${HOME}/

printf "\n Setting Configuration Succeed \n"
