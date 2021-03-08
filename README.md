# myenv
#my env setting that cover .bashrc and .vimrc

#Linux version is lubuntu 16.4

#you could run "source README.md to let this script run"

sudo apt update;

sudo apt install git;

#ssh-keygen -t rsa -C "youremail@example.com"

#git config --global user.name "your name"

#git config --global user.email "youremail@example.com"

git clone --recursive https://github.com/qshan/myenv.git

source ./set_ctags_env;

source ./set_vim_env;

source ./set_bash_env;

source ./get_install_chrome;

#command for git maintain

#git remote add [shortname] [url]

#git clone --recursive git@github.com:qshan/myenv.git

#git remote

#git branch

#git fetch origin

#git pull

#git pull FileNameWithPath

#git add New_File_With_Path

#git commit -am "update bashrc description"

#git push

#git push origin master

#git push origin :

#git add/rm <file>... # to update what will be committed

#git checkout -- <file>... # to discard changes in working directory

#git rm --cached <file>

#git reset HEAD <file>...

#git status

#git log

#git log -p

#git log -p -3

#git log --stat

#git log --pretty

#git log --pretty=format:"%h - %an, %ar : %s"

#git log --pretty=format:"%h - %an, %ar : %s" --graph

#git tag

#git tag -l "Tag_keyword_info"

#git tag -a TagVersionName -m "comments for this version tag"

#git show TagVersionName

#git push origin TagVersionNameYouWantToShare

#git push origin --tags

#git checkout TagVersionNameYouNeed