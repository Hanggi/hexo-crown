---
layout: test2
title: 测试文章标题内容
date: 2017-04-23 22:14:43
tags: [test, "vvv"]
photos: ['https://cdn-images-1.medium.com/max/800/1*5_tFHdYviPtE0J-jJ0TRrg.png']
---

啊啊啊啊 
<!--more-->
嗯嗯嗯呃？？？


-------



现实世界的光照是极其复杂的，而且会受到诸多因素的影响，这是以目前我们所拥有的处理能力无法模拟的。因此OpenGL的光照仅仅使用了简化的模型并基于对现实的估计来进行模拟，这样处理起来会更容易一些，而且看起来也差不多一样。这些光照模型都是基于我们对光的物理特性的理解。

其中一个模型被称为冯氏光照模型(Phong Lighting Model)。冯氏光照模型的主要结构由3个元素组成：环境(Ambient)、漫反射(Diffuse)和镜面(Specular)光照。这些光照元素看起来像下面这样：


###### 环境光照(Ambient Lighting)
即使在黑暗的情况下，世界上也仍然有一些光亮(月亮、一个来自远处的光)，所以物体永远不会是完全黑暗的。我们使用环境光照来模拟这种情况，也就是无论如何永远都给物体一些颜色。

###### 漫反射光照(Diffuse Lighting)
模拟一个发光物对物体的方向性影响(Directional Impact)。它是冯氏光照模型最显著的组成部分。面向光源的一面比其他面会更亮。

###### 镜面光照(Specular Lighting)
模拟有光泽物体上面出现的亮点。镜面光照的颜色，相比于物体的颜色更倾向于光的颜色。

---
###### OpenGL场景中模型颜色的产生，大致为如下的流程图所描述：

* 当不开启光照时，使用顶点颜色来产生整个表面的颜色 (ex: glColor3f(1,0,1.0,1.0))
用glShadeModel可以设置表面内部像素颜色产生的方式: GL_FLAT/GL_SMOOTH.

* 一般而言，开启光照后，在场景中至少需要有一个光源


```
（GL_LIGHT0...GL_LIGHT7）
```

![alt text](https://raw.githubusercontent.com/mariaclark1123/mariaclark1123.github.io/master/srcimage/atten_pic.png "Title")

通过glEnable(GL_LIGHT0) glDisable(GL_LIGHT0) 来开启和关闭指定的光源。


###### --- 全局环境光 ---


```c
GLfloat glAmbient[] = {0.6, 0,6, 0,6, 1.0};
glLightModelfv(GL_LIGHT_MODEL_AMBIENT, gAmbient);
```


* 设置光源的光分量 -- 环境光/漫色光/镜面光默认情况下：


```
GL_LIGHT0...GL_LIGHT7 的GL_AMBIENT值为(0.0, 0.0, 0.0, 1.0)
GL_LIGHT0的GL_DIFFUSE和GL_SPECULAR值为(1.0, 1.0, 1.0, 1.0)
GL_LIGHT1...GL_LIGHT7 的GL_DIFFUSE和GL_SPECULAR值为(0.0, 0.0, 0.0, 0.0)
```

    
* 我们需要自己定义光源的光分量：

   
```c
 GLfloat lightAmbient[] = {1.0, 1.0, 1.0, 1.0};
 GLfloat lightDiffuse[]   = {1.0, 1.0, 1.0, 1.0};
 GLfloat lightSpecular[] = {0.5, 0.5, 0.5, 1.0};
 glLightfv(GL_LIGHT0, GL_AMBIENT, lightAmbient);
 glLightfv(GL_LIGHT0, GL_DIFFUSE, lightDiffuse);
 glLightfv(GL_LIGHT0, GL_SPECULAR, lightSpecular);
```


* 设置光源的位置和方向

###### -- 平行光 -- 没有位置只有方向 (w = 0)


```     
GLfloat lightPosition[] = {8.5, 5.0, -2.0, 0.0}; // w=0.0
glLightfv(GL_LIGHT0, GL_POSITION, lightPosition);
```

             
###### -- 点光源 -- 有位置没有方向 (w != 0)

             
```c
GLfloat lightPosition[] = {8.5, 5.0, -2.0, 1.0}; // w不为0
glLightfv(GL_LIGHT0, GL_POSITION, lightPosition);
```


###### -- 聚光灯 -- 有位置有方向 (w != 0)

