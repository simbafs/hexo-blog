---
title: blessed-contrib-tree
date: 2020-02-18 23:07:44
tags:
- blessed
- blessed-contrib
category: blessed
---

# Tree
想說先想一個專案來練練手
熟悉一下 blessed
突然看到 blessed-contrib 裡有個元件叫 `tree`
想說可以做成 JSON viewer
於是就開工了！

其中最重要的部份就是搞定樹狀結構
因為他有特定的格式和選項
下面是官方的範例
## 範例
```js
{
  extended: true,
  children: {
    'Fruit': {
      children: {
        'Banana': {},
        'Apple': {},
        'Cherry': {},
        'Exotics': {
          children: {
            'Mango': {},
            'Papaya': {},
            'Kiwi': {
              name: 'Kiwi(notthebird!)',
              myCustomProperty: "hairyfruit"
            }
          }
        },
        'Pear': {}
      }
    },
    'Vegetables': {
      children: {
        'Peas': {},
        'Lettuce': {},
        'Pepper': {}
      }
    }
  }
}
```

每個節點都是物件
他的子節點存在 `children` 裡
如果是空物件代表這是葉節點
`extended` 屬性是是否展開，預設 `true`
`name` 是顯示出來的字，如果要改再設，預設是 `index`
`myCustomProperty` 直翻是自訂屬性，應該是當 `tree.on('select')` 觸發時傳進去的

---

瞭解了結構之後就要來把一般的 JSON 轉換成樹狀結構啦
我寫了一個 `treetify` 函式來做轉換
還沒有做的很好
有待改進
## 第一版 2020-02-19
```js
function treetify(data, result){
    if(!result){
        result = { 
            extended: true,
            children: {}
        }   
    }   
    if(Array.isArray(data)){
        for(let i of data){
            result.children[i] = {}; 
        }   
        return result;
    }   
    if(['string', 'number', 'boolean'].includes(typeof data)){
        result.children[data] = {}; 
        return result;
    }   
    for(let i in data){
        result.children[i] = treetify(data[i]);
    }   
    return result;
}
```

第一部份是我覺得沒有寫很好的地方
感覺沒什麼用但是刪掉就出錯了，應該是物件參考的問題
第二部份針對陣列進行別處理
第三部份是處理非物件的值
第四部份是處理一般物件
他會把物件的成員迭代一遍，再把他們分別丟給 `treetify` 做展開

## 更新 第二版 2020-02-20
```js
function type(data){       
  if(Array.isArray(data)) return 'array';
  if(typeof data == 'object') return 'object';        
  return typeof data;          
}
```
```js
function treetify(data){
  var result = {
    children: {}
  }
  for(let i in data){
    if(['string', 'number', 'boolean'].includes(type(data[i]))){
      result.children[`${i}: '${data[i]}'`] = {};
    }else{
      result.children[`${i}: ${type(data[i])}`] = treetify(data[i]);
    }
  }
  if(arguments.callee.caller != treetify){
    result.extended = true;
  }
  return result;
}
```

第一個函式就是回傳傳入物件的型態，直接 `typeof data` 物件和陣列都會回傳 `object`
第二個就是直接迭代
然後如果是物件或陣列的話就去遞迴
否則就加一個子節點
最後如果呼叫者和自己不是同一個函數（這是根節點、不是遞迴的呼叫）就把他展開
