# 使用nc来传输文件
### 简介
由于我司的集群，是在某某不知道的地方，发的工作本，又都是mac，在mac上，大家都在使用iterm2作为命令行，但是**这个东东不知道rz sz命令**，所幸可以配置一定的文件，让iterm2支持rz和sz命令，但是依然不好使，还好集群跟工作机，是可以ping通的，所以使用nc来进行文件传输，这个代码的毛病就是，要想传输文件，需要在发射端和接受端，同时运脚本，好气。。。但是，总算可以完成传输了

* 好气哦

### 使用方式
#### 1、ReciveByNc.sh

* 提前设定好监听的端口，如8123
* 运行命令，并输入文件名做为参数，该参数表示接受到数据，要写入文件的文件名
* 如ReciveByNc.sh test.txt 表示将接受到数据，写入到test.txt 文件中
* 开始监听端口，得带数据写入

#### 2、SendByNc.sh

* 提前设定到要接受文件的ip地址，和ReciveByNc.sh 监听的端口。如127.0.0.1 8123
* 运行命令，并将文件名做参数，该文件为将要发生到目标机器的文件
* 如 SendByNc.sh mytest.txt 表示将mytest.txt发送到目标机器的端口
* 运行命令，将数据发送到相应IP的监听端口

#### 注意事项
* 先运行 ReciveByNc.sh
* 再运行 SendByNc.sh
* 运行前先设定IP和端口

