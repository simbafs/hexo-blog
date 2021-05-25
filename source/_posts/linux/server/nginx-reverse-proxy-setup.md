---
title: nginx-reverse-proxy-setup
tags:
  - nginx
  - reverse proxy
  - certbot
categories:
  - linux
  - server
date: 2020-02-13 10:34:58
---

# nginx 反向代理伺服器 (reverse proxy)

之前社網 server 因為學校防火牆限制只能對外開 80 443 兩個 port  
而且我們只有一個 ip (203.64.138.177)  
所以要用 reverse proxy 來代理我們的多項服務  
原本我只會用 apache2
後來不知道是不是因為 apache 太肥導致有時候回應時間會很久  
所以我起了將 proxy server 換成 nginx 的想法  

---

## reverse proxy http

首先是 CGOJ 和 CKCSC URL 兩個服務  
這兩個比較簡單
用下面這個設定檔就可以了
```nginx
server{
    server_name url.ckcsc.net;
    location / { 

        proxy_pass http://localhost:3000;

        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $http_x_forwarded_proto;
        proxy_max_temp_file_size 0;
    }   
}
```

---

## reverse proxy websocket

再來是 [ttyd](https://github.com/tsl0922/ttyd)  
這是一個可以把瀏覽器變成 terminal 的一個軟體  
![ttyd](/images/ttyd.png)
前面說到我們的 server 只有 80 443 可以對外  
所以按照正常管道我們是沒辦法 ssh 回社辦電腦  
但是這個軟體可以幫我們突破防火牆  
因為他就是個 http 網頁啊

>　道高一尺魔高一丈

這個之所特別是因為他的網頁和 server 溝通是透過 websocket
如果是用剛剛的設定檔他不會代理 ws  
其實在 apache 就有碰到這個問題  
那匙後要開啟一個模組  
而 nginx 則是要在設定檔中新增幾行
```diff
server{
    server_name ttyd.ckcsc.net;
    location / { 

        proxy_pass http://localhost:4000;

        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $http_x_forwarded_proto;
        proxy_max_temp_file_size 0;
    
+       proxy_http_version 1.1;
+       proxy_set_header Upgrade $http_upgrade;
+       proxy_set_header Connection "upgrade";
    }   
}
```
嗯就是這麼簡單  
至於會不會比較快要在觀察看看囉

---

## certbot

在裝玩 nginx 和設定完後就要來啟用 https 的藍色小勾勾啦  
有一個方便的工具 [certbot](https://certbot.eff.org/)  
這個設定很簡單官網有說明就不寫了  
總之啟用後 server 就弄好了！

