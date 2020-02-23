---
title: reverse-ssh
date: 2020-02-23 21:24:34
tags:
- ssh
- linux
category:
---

一直以來連線回社辦的電腦都要走 webtty 再開 tmate
但是今天發現了一個新的方法可以透過反向的 ssh 連回社辦

## reverse ssh
在社辦電腦
```
$ ssh -NfR 2222:localhost:22 simba@simba-vps
```
這可以建立一個連線
這時候到 simba-vps
```
$ ssh server@localhost -p 2222
```
就可以連線回社辦伺服器了

## autossh
但是這樣做 ssh 連線有可能會超時然後斷掉
這時候可以透過 autossh 來幫我們自動建立連線
在社辦電腦
```
$ apt install autossh
$ autossh -M 2222 -NR  1111:localhost:22 simba@simba-vps -p 22
```
這樣就可以在 vps 上
```
$ ssh server@localhost -p 1111
```
來連回社辦啦！
最後可以把這堆在 vps 上再做一次就可以在 internet 連回社辦伺服器了

## 參考網址
https://stackoverflow.com/questions/15983795/how-do-i-establish-a-bidirectional-ssh-tunnel
https://ez3c.tw/2043
https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?viewmode=compact&topic_id=17538&forum=7
http://blog.adahsu.net/2007/11/ssh-reverse-tunnel.html
https://codertw.com/%E4%BC%BA%E6%9C%8D%E5%99%A8/377688/
這篇講 ssh tunnel 最清楚
https://yu-jack.github.io/2019/01/08/ssh-tunnel/
