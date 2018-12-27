# modify configrc on mac 

mac OSX linux 配置环境变量

## 环境变量

1. 创建环境变量目录

    `git clone  https://github.com/aauutthh/Mac_Config`

    可以不用git clone, 但目录中必须有与Mac_Config/env一样的目录结构

1. 执行变更

    ```shell
    cd /path/to/config_path
    export LOCAL_CONFIG_PATH=`pwd`
    
    wget https://raw.githubusercontent.com/aauutthh/Mac_Config/master/script/mc
    chmod +x mc
    ./mc env/profile-add.sh
    ./mc env/link-add.sh
    ```

