---
title: 
date: 2020-09-27 20:34:00
---

# 其他有利資料
## 專案

* [simply.js](https://github.com/simba-fs/simply.js)  
這是我在做完幾個 Discord 機器人以及接觸到 expressjs 之後做出來的一個 Discord bot framework，他包含了簡便的命令定義和 echo。這是我的第一個比較完整的專案。
![simply](/autobiography/other/simplyjs.png)

* server tool
這是一組 shell script，主要功能是分析伺服器的 log file，可以把來源 ip、請求時間排序並且以圖像化方式呈現。
![server-tool](/autobiography/other/serverTool.png)

* [aurl](https://url.ckcsc.net)
這個專案主要是透過 expressjs 和 mongoose 實現短網址，expressjs 架設網頁伺服器，mongoose 操作資料庫，模板引擎是 ejs。在最近我也把他打包成 docker image，在 [aurl-docker-compose](https://github.com/simba-fs/aurl-docker-deploy) 提供 docker-compose.yml 可以快速在 docker 開啟主程式和 mongodb server。
![aurl](/autobiography/other/aurl.png)


* [slides](https://slides.simba-fs.dev)
這個網站可以把存在 GitHub 上的 markdown 檔案轉成簡報，並提供多種主題替換，而且再次造訪的時候會預設上一次使用的主題。
![slides](/autobiography/other/slides.png)


* [remind Daniel](https://github.com/simba-fs/daniel)
這個專案實做了登入和註冊還有管理員系統，另外這次的資料庫選用的是 sqlite3，因為 sqlite3 基於檔案的特性，這個專案在搬移的時候只需要複製檔案就可以了，不需要另外再開一個資料庫伺服器。
![daniel](/autobiography/other/daniel.png)


* [cksh-post](https://github.cim/simba-fs/cksh-post)
這是一個 Discord bot，是透過 simply.js 製作。功能是每天兩次從學校校網抓網路中心的公告，因為每次學校要斷電的時候，公告到斷電時間差都很短，通常是一天。為了能提早安全的把伺服器關機，所以我寫了這個 bot 可以幫我們每天檢查新的公告。
![ckshPost](/autobiography/other/ckshPost.png)


* [yt-dl](https://github.com/simba-fs/yt-dl-tool)
這個是個 shell script，會根據輸入的歌單批次從 youtube 下載成 mp3 並重新命名。
![yt-dl-tool](/autobiography/other/yt-dl-tool.png)


* [signup](https://github.com/simba-fs/signup)
這個是一個 express middleware，提供註冊的 API，還可以透過寄發電子郵件驗證。要使用這些功能只需要引入一個檔案就可以了。


* [pool](https://github.com/simba-fs/pool)
這個是一個 node package，是一個 Set 的擴充，會在指定時間後刪除加入的內容，可以應用在短時效性的 token，例如 signup 的電子郵件驗證的 token 管理。


## 研習課程、社群參與
* SITCON
學生計算機年會，以學生為本、由學生自發舉辦，長期投身學生資訊教育與推廣開源精神，希望引領更多學子踏入資訊的殿堂。在今年的年會中我最印象深刻的是李弘毅教授的「機器學習的關鍵下一步」，希望明年能參加籌辦或是以講者的身份參加。
![SITCON](/autobiography/other/SITCON.jpg)
* Hour of Coding
這個活動最初是由美國 code.org 主辦，教小孩寫程式的活動，透過一天或是更短的時間激發孩子對於程式的興趣，後來發展成世界各地的組織在每年 11 到 12 月自發舉辦。我參加的這場是由 SITCON 主辦，地點在土城樂利國小。在活動中我擔任志工，負責教小朋友寫程式。他們用的程式語言是類似 Scratch 的圖形化程式語言，透過拖拉程式方塊達到特定目標，例如說點亮燈泡、到達指定地點等等。
![HoC](/autobiography/other/HoC.jpg)

## 社團活動
* 聯課
聯課活動是由成功電研、建中資訊、中山資研和景美電資合辦的活動，會安排各種方面的課程，有網頁伺服器、機器學習、量子運算等等。

![club-1](/autobiography/other/club-1.jpg)
> HTML 課之後的合照

![club-2](/autobiography/other/club-2.jpg)
> 合照

![club-4](/autobiography/other/club-4.png)
> 我的授課照片
