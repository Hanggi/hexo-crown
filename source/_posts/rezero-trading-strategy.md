---
title: 从零开始写策略
date: 2018-10-12 14:39:11
tags:
---


从零开始学习写交易策略

<!-- more -->

越来越多的人加入到了加密货币交易当中，而日常生活中我们无法时时刻刻盯着盘面看，这样一来自动化的交易策略变得必不可少。

近年来最流行的编程语言莫过于Python了。Python拥有丰富的科学计算和图形显示库，使得它作为机器学习，大数据分析和量化交易首选语言。而且Python作为脚本语言有着优雅易学的特点，因此也深受广大编程新人喜爱。

让我们用Python实现我们第一个量化交易策略。


# 1, 交易策略环境搭建

编写Python非常简单，在编写程序之前我们需要搭建简易环境、下载必要的软件。我们的编程既可以在Windows下进行，也可以在Mac OS下进行。

首先我们要下载python，进入[Python官网](https://www.python.org/downloads/ "Python")点击下载获取最新的Python。Mac用户可以使用brew安装。Python目前存在两种版本2.x和3.x这两个版本对我们编写策略并没有什么影响我们直接下载最新的3.7.0。

初次之外我们还需要一个编辑器，这里最推荐的是Pycharm，但是Pycharm专业版是收费的，所以我们用VSCode。点击[VSCode官网](https://code.visualstudio.com/ "VScode")下载最新的VSCode。

为了测试我们的Python有没有安装正常，我们打开控制台进行测试。Windows用户打开PowerShell（打开开始菜单搜索，通常是第一个），Mac用户打开终端。

输入(\$为输入行，请忽略\$符号)：
```bash
$ Python -V
Python 3.7.0
```

如果你看到下方输出的Python 3.7.0的字样说明你安装正确，有些人的电脑已经装了Python，所以下方显示的可能是2.7.x，这时只要输入`Python3 -V`就可以看到我们安装的最新版本了。

同时你也获得了Python的包管理工具`pip`。

输入：
```bash
$ pip -V
pip 18.1 from /usr/local/lib/python3.7/site-packages/pip (python 3.7)
```

这里显示的是你的依赖包未来将安装进去的位置。

同理使用`pip3 -V`可以查看3.x版本对应的包管理器。

# 2, 第一个Python程序

```python
print("Hello Word!")
```

执行：

```bash
$ python hellow.py
Hello World!
```

# 3, 显示策略盘面

要实现交易策略首先要分析盘面，通常我们会交易所网站上查看实时的交易记录，也就是我们俗说的K线。

# 4, 标明指数

# 5, 移动平均线