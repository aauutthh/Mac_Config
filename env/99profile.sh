
export BREWPREFIX=`brew --prefix`
if [ -d $BREWPREFIX/etc/profile.d/ ]; then
  for i in $BREWPREFIX/etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi

if [ -d $BREWPREFIX/etc/bash_completion.d ]; then
  for i in $BREWPREFIX/etc/bash_completion.d/* ; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi

set -o vi

if [ "-${OSTYPE:0:6}" = "-darwin" ] ; then
    alias ls='ls -G'
    alias sha256sum='shasum -a 256'
    alias sha1sum='shasum -a 1'
else
    alias ls='ls --color=auto'
fi

export EDITOR=vim

alias svn='svn --no-auth-cache'
alias grep='grep --color=auto '
alias egrep='egrep --color=auto '
alias l='ls -lart'
alias lt='ls -lart|tail'
alias p='ps -ef|grep -Ev "grep |ps "|grep -i '
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'


## for golang ##

expand_gopath(){
# 将($GOPATH...)/bin 加入到PATH
    local IFS=: 
    local foo 
    local gopatharray
    set -f 
    gopatharray=(${GOPATH})
    set +f
    for p in ${gopatharray[@]}; do
      foo=$foo:$p/bin
    done
    local IFS=" "
    #PATH=${PATH}${foo}
    echo ${foo:1}
}
