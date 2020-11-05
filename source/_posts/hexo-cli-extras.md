---
title: hexo-cli-extras
date: 2020-02-11 21:26:30
tags: hexo
categories: hexo
---

# 好用的插件
因為 hexo 本身沒有提供編輯器  
所以每次在編輯文章時都需要打路徑  
這個插件他會去找到你的文章  
然後給你選要編輯那一個  
這只是其中一個功能  
還有**重新命名**、**刪除**、**隔離**和**加入**  
**隔離**是將其他文章暫時隔離，**加入**是將文章加回來  

---

## 安裝
```
npm i hexo-cli-extras
```

---

## 編輯
```
hexo edit [title] 
```
這個會列出你的文章給你選擇  
按上下健移動  
[enter] 選擇  
非常人性的設計

## 重新命名
```
hexo rename <old name> -n <new name>
```
他會給你選擇要不要把標題檔名都換掉,或是也可以取消  
非常方便的設計

## 隔離
```
hexo isloate [filename]
```
如果加上`-a / --all`,會忽略檔名將所有文章隔離

## 加入
```
hexo integrate
```
