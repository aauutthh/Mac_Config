set -o vi
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
