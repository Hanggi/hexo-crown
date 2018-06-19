---
title: electron-note
date: 2018-06-07 11:17:55
tags:
---

基于Web技术的跨平台桌面应用，并整合Angular项目实现。

<!-- more -->

项目使用Electron 2.0.0


## 快速启动 ##

官方提供一个 quick start 项目库，可以直接克隆过来执行。

```bash
$ git clone git@github.com:electron/electron-quick-start.git
$ code electron-quick-start
```

以下是启动所需要的基本文件：
+ `package.json` - Points to the app's main file and lists its details and dependencies.
+ `main.js` - Starts the app and creates a browser window to render HTML. This is the app's main process.
+ `index.html` - A web page to render. This is the app's renderer process.

进入项目后需要安装依赖，完成后就可以启动实例。

```bash
$ npm install
$ npm start
```

## 整合Angular ##

使用一个框架来构建应用程序是很必要的，这里使用Angular。

在项目中创建一个Angular应用：

```bash
$ ng new angular
```

这里使用最新版本的Angular-cli生成。
