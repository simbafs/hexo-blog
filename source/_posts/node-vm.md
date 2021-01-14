---
title: node-vm
date: 2021-01-13 23:02:54
tags:
- node
- nodejs
- vm
category: nodejs
---

# node.js VM 模組
VM 是 node.js 的核心模組，提供安全的環境（沙箱）來測試不信任的程式碼。

## 基本概念
在 VM 模組裡面，有兩個基本的物件，script 和 context。script 是經過「編譯」程式，context 是給在沙箱裡面的程式碼的全域物件（global）。沙箱中的程式只能存取透過 context 指定的物件。

### 建立 script
VM 模組提供 `Script` 建構子，可以透過他來建立 `Script` 物件。
```js
const vm = require('vm');

const script = new vm.Script('i++');
```

也可以用 `vm.createScript`
```js
const vm = require('vm');

const script = vm.createScript('i++');
```

> [vm.Script](https://nodejs.org/dist/latest-v14.x/docs/api/vm.html#vm_class_vm_script)  
> vm.createScript 在 nodejs docs 上我沒有找到，但是我在自己的電腦上（node v14.15.0）測試是可以用的  

### 建立 context
vm 模組沒有提供建立 context 的建構子，我們只能透過 `vm.createContext` 來建立 context。  
注意 `vm.createContext` 不是 pure function，除了會回傳 context 以外，還會把傳入的物件變成 context，兩者傳入 `vm.isContext` 都會回傳 `true`。
```js
const vm = require('vm');

const context1 = { i: 0 };
const context2 = vm.createContext(context1);

vm.isContext(context1); // true
vm.isContext(context2); // true

// 注意，其實 context1 和 context2 指向同一個物件。
context1 === context2 // true
```

> [vm.createContext](https://nodejs.org/dist/latest-v14.x/docs/api/vm.html#vm_vm_createcontext_contextobject_options)  
> [vm.isContext](https://nodejs.org/dist/latest-v14.x/docs/api/vm.html#vm_vm_iscontext_object)  

## 執行 script（預先編譯 Script）

## 執行 script （沒有預先編譯 Script）

