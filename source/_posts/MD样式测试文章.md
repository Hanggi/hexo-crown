---
title: Markdown样式测试文章
date: 2017-09-08 10:21:48
tags: [test]
---

```
/*********************************************************************
        ___   __
       /  /\ /  /\                                             ___
      /  / //  / /                                            /__/\
     /  /_//  / /______     ______     ______     ______     _\__\/
    /  ___   / //  _   \   /  _   \   /  _   \   /  _   \   /  /\
   /  / //  / //  / /  /\ /  / /  /\ /  / /  /\ /  / /  /\ /  / /
  /  / //  / //  /_/  / //  / /  / //  /_/  / //  /_/  / //  / /
 /__/ //  / / \___/|_/ //__/ /__/ / \___   / / \___   / //__/ /
 \__\/ \__\/   \__\\_\/ \__\/\__\/ _ \ /  / / __\ /  / / \__\/
                                  / /_/  / / / /_/  / /
                                  \_____/ /  \_____/ /     
                                   \____\/    \____\/

*********************************************************************/
```


$$
x^{y^z}=(1+e^x)^{-2xy^w}
$$

$$
f([\frac{1+\{x,y\}}{(\frac{x}{y}+\frac{y}{x})(u+1)}+a]^{3\2})
$$

<!-- more -->

This is an H1
=============

This is an H2
-------------

# 标题测试文 # #

现实世界的光照是极其复杂的，而且会受到诸多因素的影响，这是以目前我们所拥有的处理能力无法模拟的。因此OpenGL的光照仅仅使用了简化的模型并基于对现实的估计来进行模拟，这样处理起来会更容易一些，而且看起来也差不多一样。这些光照模型都是基于我们对光的物理特性的理解。

## 标题测试文 ##  ##

现实世界的光照是极其复杂的，而且会受到诸多因素的影响，这是以目前我们所拥有的处理能力无法模拟的。因此OpenGL的光照仅仅使用了简化的模型并基于对现实的估计来进行模拟，这样处理起来会更容易一些，而且看起来也差不多一样。这些光照模型都是基于我们对光的物理特性的理解。

### 标题测试文 ### ###

现实世界的光照是极其复杂的，而且会受到诸多因素的影响，这是以目前我们所拥有的处理能力无法模拟的。因此OpenGL的光照仅仅使用了简化的模型并基于对现实的估计来进行模拟，这样处理起来会更容易一些，而且看起来也差不多一样。这些光照模型都是基于我们对光的物理特性的理解。

#### 标题测试文 #### #####

现实世界的光照是极其复杂的，而且会受到诸多因素的影响，这是以目前我们所拥有的处理能力无法模拟的。因此OpenGL的光照仅仅使用了简化的模型并基于对现实的估计来进行模拟，这样处理起来会更容易一些，而且看起来也差不多一样。这些光照模型都是基于我们对光的物理特性的理解。

##### 标题测试文 ##### #####

现实世界的光照是极其复杂的，而且会受到诸多因素的影响，这是以目前我们所拥有的处理能力无法模拟的。因此OpenGL的光照仅仅使用了简化的模型并基于对现实的估计来进行模拟，这样处理起来会更容易一些，而且看起来也差不多一样。这些光照模型都是基于我们对光的物理特性的理解。

###### 标题测试文 ###### ######

现实世界的光照是极其复杂的，而且会受到诸多因素的影响，这是以目前我们所拥有的处理能力无法模拟的。因此OpenGL的光照仅仅使用了简化的模型并基于对现实的估计来进行模拟，这样处理起来会更容易一些，而且看起来也差不多一样。这些光照模型都是基于我们对光的物理特性的理解。

> \>This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
> consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
> Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.
> 
> Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
> id sem consectetuer libero luctus adipiscing.

> This is the first level of quoting.
>
> > \> \>This is nested blockquote.
>
> Back to the first level.

> ## 这是一个标题。
> 
> 1.   这是第一行列表项。
> 2.   这是第二行列表项。
> 
> 给出一些例子代码：
> 
>     return shell_exec("echo $input | $markdown_script");


----

代码段

```js
\````
const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World\n');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
```

----


* Red * *
* Green *
* Blue *

+   +Red
+   +Green
+   +Blue

-   -Red
-   -Green
-   -Blue

1.  Bird
2.  McHale
3.  Parish

*   A list item with a blockquote:

    > This is a blockquote
    > inside a list item.



*This [*] text will be italic*
_This [_] will also be italic_

**This [**] text will be bold**
__This [__] will also be bold__

_You **can** combine them_


This is [an example](http://example.com/ "Title") inline link.

[This link](http://example.net/) has no title attribute.

First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column

![alt text](https://raw.githubusercontent.com/mariaclark1123/mariaclark1123.github.io/master/srcimage/atten_pic.png "Title")

![alt text](http://mariaclark1123.github.io/srcimage/ssh1.webp "图片")

- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item