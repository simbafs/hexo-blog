---
title: blessed
date: 2020-02-17 23:24:10
tags:
- blessed
category: blessed
---

某天我有一個問題
gtop 的圖畫界面是怎麼做的，我知道他是用 node 寫的，對他別有興趣
我上 github 看他的 package.json
發現他的 depandence 只有三個
```json
...
	"dependencies": {
		"blessed": "^0.1.81",
		"blessed-contrib": "^4.8.16",
		"systeminformation": "^4.14.4"
	},
...
```
其中 `systeminformation` 很顯然是取得系統資訊
那 GUI 的 library 應該就是 `blessed` 和 `blessed-contrib` 了
去 `blessed` 的 github 看看
沒想到這是一個超強大的函式庫
可是網路上的教學卻很少
只好自己看 docs 啦

接下來是我測試的一些程式碼和截圖

---

## 第一份 code

```js
const blessed = require('blessed');
const screen = blessed.screen({
	smartCSR: true,
	debug: true
});

const box = blessed.box({
	content: 'Hello world',
	border: {
		fg: '#0000FF',
		type: 'line'
	}	 
});

// Key events
screen.key(['escape', 'q', 'C-c'], () => {
	return process.exit(0);
});
screen.append(box);

screen.render();
```
![hello world](/images/blessed/hello-world.png)

第 2 行先建立一個 screen
第 3 行據說可以優化渲染結果
第 4 行開啟 debug 模式，可以開啟一個 log 視窗（`<F12>`）
第 7 行建立一個 box
第 8 行指定內文
第 9 ~ 12 行指定邊界樣式，還沒找到 type 可以填什麼
第 16 ~ 18 行設定當按下 `esc` `q` `C-c` 時結束程式，如果沒寫這個按 `C-c` `C-z` 也沒用
第 19 行將 `box` 加入 `screen`
第 20 行渲染視窗
