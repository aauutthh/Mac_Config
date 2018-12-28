# install_brew_on_mac

## 安装

1. 安装brew

    `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

    see [HomeBrew](https://brew.sh/)


## 更换国内镜像提升下载速度

[出处](https://www.jianshu.com/p/5f1efab5a40a)


1. Homebrew 二进制预编译包的镜像

    ```shell
    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
    ```
    
1. Homebrew 的 formula 索引的镜像（即brew update时所更新内容）

    ```shell
    cd "$(brew --repo)"
    git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
    cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
    git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
    brew update
    ```
