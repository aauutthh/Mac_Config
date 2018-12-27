# install git on mac
mac下安装git

1. 下载安装

    [下载git for mac](https://git-scm.com/download/mac)

    双击并安装

    或者`brew install git`

1. 测试

    `git --version`

1. 初始配置

    设置名字和邮箱，这是`git commit`时指定作者用的

    ```shell
    your_git_name=xxx
    your_git_email=xxx@xx.xx
    ```

    ```shell
    git config --global user.name "${your_git_name}"
    git config --global user.email "${your_git_email}"
    git config --global core.quotepath false
    git config --global gui.encoding utf-8
    git config --global i18n.commitencoding utf8
    git config --global core.editor vim
    ```

