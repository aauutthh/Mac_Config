#!/bin/bash -e
if [ ! -d /etc/profile.d ]; then
    echo "run profile-add.sh first"
    exit
fi

if [ -z "$LOCAL_CONFIG_PATH" ] ; then
    echo "git clone $PROURL"
    echo "or you can make dirs/files like that in $PROURL"
    echo "export LOCAL_CONFIG_PATH=<git local full path>"
    exit
fi

if [ ! -d "$LOCAL_CONFIG_PATH/env" ] ; then
    echo "$LOCAL_CONFIG_PATH has no env dir"
    exit
fi
today=`date +%Y%m%d_%s`
backup() {
file=$1
if [ -z "$file" ] ; then
  false
  exit
fi
if [ -e "$file" ] ; then
  echo mv $file $file.$today 
  mv $file $file.$today 
fi
}

doln() {
  backup $2
  echo ln -s $1 $2
  ln -s $1 $2
}
sudoln() {
  backup $2
  echo sudo ln -s $1 $2
  sudo ln -s $1 $2
}

sudoln $LOCAL_CONFIG_PATH/env/99profile.sh /etc/profile.d/99profile.sh
doln   $LOCAL_CONFIG_PATH/env/bashrc ${HOME}/.bashrc
doln   $LOCAL_CONFIG_PATH/env/vimrc ${HOME}/.vimrc