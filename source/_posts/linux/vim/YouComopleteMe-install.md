---
title: YouComopleteMe install
tags:
  - vim
  - YCM
  - complete
  - completing
  - dev
category: vim
categories:
  - linux
  - vim
date: 2021-05-17 17:28:06
---

# 下載 source code
1. 編輯 ~/.vimrc
```vim
Plug 'Valloric/YouCompleteMe'
```
2. 接著按下 <kbd>esc</kbd> <kbd>:w | so %</kbd> 載入設定
3. 接著 <kbd>:PlugInstall</kbd> 下載 source code
4. 存檔離開


# 編譯
1. 執行 `sudo apt install python3-dev build-essential`
2. 進入 `~/.vim/plugged/YouCompleteMe` 
3. 執行 `./install.py --help` 並挑選需要的選項
4. 執行 `./install.py <你要的選項>`
