---
title: My Experience
date: 2020-09-27 20:34:00
---

# 社團

----

## 社課
在高二的時候我每個星期負責上一堂社課，上學期是四校（成功、建中、中山、景美）聯合放學社課，教學內容是 JavaScript。從備課的過程中我對 JS 有更深一層的了解; 下學期是社內的課，教學內容是 Linux 指令操作，從檔案操作到架設伺服器。在一整個班面前講課讓我學了很多寶貴的經驗，為了確保知識的正確性，我查證、整理了很多我以前沒有注意的細節，而且也訓練了我的口條，在人群面前講話更有條理，比較不會結巴。

----

## 寒暑訓教課
社團的寒暑訓我都有教一堂各三小時的課，在升高二辦的暑訓時我教的是 Nodejs 製作 Discord 聊天機器人，高二寒訓教的是 expressjs + mongoose 製作短網址服務。皆受到學員熱烈的回應。這兩次的課程對我的能力有很大的提昇，在這之前的社課都只有一個小時，而寒暑訓的課程卻是三個小時連續，中間不僅要考慮課程難易度，還有學員吸收程度和長時間課程的掌控。

----

## 社團伺服器
在我接幹部之前我們沒有自己的伺服器，只有一個託管在學校網路中心的虛擬機裡面的線上解題系統，但是因為學校不讓我們開 ssh 連線，所以如果要操作伺服器都要到網路中心去，還要麻煩網路中心的老師，非常不方便。於是我將資料從網路中心搬回我們社辦的一台電腦上，採用 ubuntu server 18.04 作業系統。在資料搬回來之後開始建置各種服務，從我自己開發的短網址到社團十年前傳下來的 BBS 伺服器。

---

# 營隊
## 台科大 2019 台科盃 AI 機器人高中職競技營
這個是一個跨六日不間斷的營隊，用 Arduino 製作一台自走車，並且用 AI2 寫控制器來操作自走車。最候比賽看誰最快走到終點。

----

## 中華電信 IoT 物聯網研習營
這個營隊也是教 Arduino，主要是介紹各種感應器和 Arduino 與 IoT 的連結。

---

# 專案

----

## [simply.js](https://github.com/simply.js) - nodejs 串接 API
這是我在做完幾個 Discord 機器人以及接觸到 expressjs 之後做出來的一個 Discord bot framework，他包含了簡便的命令定義和 echo。另外這個也是我的第一個完整的專案。

----

## [server-tool](https://github.com/simba-fs/server-tool) - shell script & 檔案處理
這是一組 shell script，主要功能是分析伺服器的 log file，可以把來源 ip、請求時間排序並且以圖像化方式呈現。

----

## [2048](https://simba-fs.github.io/2048) - 網頁遊戲
這個是知名遊戲 2048 的複製版，也是我在四校放學社課課程中教中的其中一個課程，主要是 jQuery、鍵盤事件的應用。

----

## [aurl](https://github.com/simba-fs/aurl) - mongo db 操作
這個專案主要是透過 expressjs 和 mongoose 實現短網址，expressjs 架設網頁伺服器，mongoose 操作資料庫，模板引擎是 ejs。我也有把他打包成 docker image，在 [github.com/simba-fs/aurl-docker-deploy](https://github.com/simba-fs/aurl-docker-deploy) 提供 docker-compose.yml 可以快速在 docker 開啟主程式和 mongodb server。

----

## [remind Daniel](https://github.com/simba-fs/daniel) - sqlite db 操作 & 登入系統
這個專案實做了登入和註冊還有管理員系統，另外這次的資料庫選用的是 sqlite3，因為 sqlite3 基於檔案的特性，這個專案在搬移的時候只需要複製檔案就可以了，不需要另在再資料庫伺服器。

----

## [cksh-post](https://github.cim/simba-fs/cksh-post) - 網頁爬蟲
這是一個 Discord bot，是透過 simply.js 製作。功能是每天兩次從學校校網抓網路中心的公告，因為每次學校要斷電的時候，公告到斷電時間差都很短，通常是一天。為了能提早安全的把伺服器關機，所以我寫了這個 bot 可以幫我們每天看公告。

----

## [yt-dl](https://github.com/simba-fs/yt-dl-tool) - shell script
這個是個 shell script，會根據輸入的歌單批次從 youtube 下載成 mp3 並重新命名。

----

## [signup](https://github.com/simba-fs/signup) - 註冊功能實做 & 自動寄送電子郵件
這個是一個 express middleware，提供註冊的 API，還可以透過寄發電子郵件驗證。要使用這些功能只需要引入一個檔案就可以了。

----

## [pool](https://github.com/simba-fs/pool) - 資料維護
這個是一個 node package，是一個 Set 的擴充，會在指定時間後刪除加入的內容，可以應用在短時效性的 token，例如 signup 的電子郵件驗證的 token 管理。

----

## [slides](https://slides.simba-fs.dev) - 串接 library & frontend library([lazy4](https://lazy4.kule.tw/document/))
這個網站可以把存在 GitHub 上的 markdown 檔案轉成簡報，並提供多種主題替換，而且再次造訪的時候會預設上一次使用的主題。
