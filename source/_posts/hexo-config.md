---
title: "hexo-config"
date: 2020-02-12 15:37:20
tags: 
- hexo 
- cactus
- highlight
- RSS
categories: hexo
---

# 各種設定值嘗試

## Highlight
```diff
- # highlight: rainbow
+ highlight: rainbow
```

```js
var a = 7122;
console.log(a);
```

```javascript
var a = 7122;
console.log(a);
```

```c++
int a = 7122;
cout << a;
```

---

## Color scheme

### dark
![dark](/images/colorscheme/dark.png)
### light
![light](/images/colorscheme/light.png)
### classic
![classic](/images/colorscheme/classic.png)
### white
![white](/images/colorscheme/white.png)

---

## RSS setup
### _configt.yml
```yml
# RSS
plubin: 
- hexo-generator-feed
# Feed Atom
feed: 
  type: atom
  path: atom.xml
  limit: 20
```
### theme/yourTheme/_config.yml
```yml
rss: /atom.xml
```

然後到這裡 [https://your.site/atom.xml](#)
這是 [範例](/atom.xml)
