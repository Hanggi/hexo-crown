---
title: Angular Cheats
date: 2018-05-05 23:53:35
tags:
---

Angular 一些使用技巧

<!-- more -->

我们可以使用`ng-cli`生成编译文件，但这个过程会产生几个问题：

1. 首先是需要生产环境模式，这样出来的文件优化得也更好。这个可以使用`--prod`选项实现。
2. 其次是，我们有可能并没有使用 angular 开发整个网站，而是在某个子路由下，这时候可以使用 `--base-href=/ng` 命令修改 index.html 中的 `<base>` 标签内容。
3. 最后是生成文件的静态内容的地址问题，很多情况下这些静态内容并不会放在静态页面的根目录下。这时可以使用部署地址命令 `--deploy-url=/ng_static/`，这样 angular 就会去这个目录查找你的文件了。

```js
ng build --prod --base-href=/ng --deploy-url=/dist/
```

-------------

有一个经常遇到的问题就是，你绑定了一个数据到页面，例如：__{{data.name}}__。但是这个数据可能还没有收到请求，这样这部分数据就会报错，虽然并无大碍，因为数据返回后就会更新出来。
这时候一个简单的方法就是在数据上价格问好

```html
<div>
  {{data?.name}}
</div>
```

这样就不会报错了。

-------------

在开发中，我们经常会使用 `ng serve` 来辅助我们，非常好用，他不仅会开启一个 :4200 端口的本地服务，还会进行实时脏检查，堪称神器。
但是我们经常会遇到一个棘手的问题就是，ng serve 监听4200端口，而应用中的请求也会发送给4200端口，但是本地服务程序不可能再设在4200端口了。悲催的我们只能把请求改成 `localhost:3000/` 然后发布前改回来。千万不要这么做，因为我们可以把指定请求转发给别的端口：

```bash
$ ng serve --proxy-config proxy.conf.json
```

首先设置一个proxy，文件就放在当前目录。内容：

```json
{
  "/v1/*": {
    "target": "http://localhost:3000",
    "secure": false,
    "logLevel": "debug",
    "changeOrigin": true
  }
}
```

意思就是说，所有api版本为1的请求都转发到3000端口。


===================================

## Angular with elec ##

首先下载elec的快速启动包：

```bash
git clone https://github.com/electron/electron-quick-start
cd electron-quick-start
npm i
```

这样一个快速启动的elec安装完成，接下来新建angular：

```bash
ng new angular
```

需要设置几个简单的东西。一个是ng的分发设置：

```json
"dist": "ng build --prod --output-path=../dist --base-href=./ && cp ../dist/index.html ../"
```

还有就是elec的启动文件目录：

```js
    ...
    mainWindow.loadFile('dist/index.html')
    ...
```

更改默认样式文件格式：

```
ng config defaults.styleExt=scss
```

## Angular material ##

基本安装：

```bash
npm i --save @angular/material @angular/cdk @angular/animations
```

在style.css里加载基本主题

```css
@import "~@angular/material/prebuilt-themes/indigo-pink.css";
```

hammerjs

```bash
npm i --save hammerjs
```

并加载到 `src/main.ts` 里 ： `import 'hammerjs';`

index.html 里加上icons：

```html
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
```

