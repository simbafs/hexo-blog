---
title: 讓 YCM 接受 jsx
date: 2020-07-04 10:17:39
tags:
- vim
- jsx
- react
category: vim
---

最近寫ˋreact 的時候只要遇到 jsx 語法 YCM 就會跳出這個錯誤
```
Cannot use JSX unless the '--jsx' flag is provided. (FixIt)
```
研究之後發現這是要給 tsserver 一個 `--jsx` 的 flag 就可以解決
爬文半個小時後發現只要在專案下的 `jsconfig.json`
```diff
{
  "compilerOptions": {
    "target": "es6",
    "checkJs": true
+ },
+ "compilerOptions": {
+   "jsx": "react"
  }
}
```
