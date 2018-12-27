# modify hostname on mac
Mac上修改Hostname

1. 修改

    ```shell
    scutil --set ComputerName <yourhostname>
    scutil --set LocalHostName <yourhostname>
    scutil --set HostName <yourhostname>
    ```
    
    三个值可以不一样

1. 检查

    ```shell
    scutil --get ComputerName
    scutil --get LocalHostName
    scutil --get HostName
    ```
