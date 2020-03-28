---
title: gpg
date: 2020-03-28 18:47:48
tags:
- gpg
category:
---

今天心血來潮想設定 GPG，網路上查了一個教學，無疑的又遇到一個坑

---

# 坑 & 解法
我按照他的作法弄完後就是沒辦法 commit
他說 GPG 無法簽章
後來我發現是我的 name 填錯（應該啦，我猜的）
總而言之就重新產生 GPG key 就好了
name 和 git 設定的一樣

---

# 指令
```
$ gpg --full-gen-key
$ gpg --list-secret-keys
$ gpg --armor --export <secret key>
```

---

# 參考教學
[blog.puckwang.com](https://blog.puckwang.com/post/2019/sign_git_commit_with_gpg/)
