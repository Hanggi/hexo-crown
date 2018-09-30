---
title: 以太坊开发——web3
date: 2018-09-29 22:38:57
tags:
---

Ethereum is an open-source, public, blockchain-based distributed computing platform and operating system featuring smart contract (scripting) functionality. It supports a modified version of Nakamoto consensus via transaction-based state transitions.

<!-- more -->

直入主题：

为了进行以太坊开发我们需要一个 以太坊JS接口库 —— [web3.js](https://github.com/ethereum/web3.js/ "web3")

安装 web3 模块：
```js
$ npm install web3 --save
```

创建实例：
```js
var Web3    = require('web3');

let web3 = new Web3(
    new Web3.providers.HttpProvider("https://kovan.infura.io/<API KEY>"));
```
这里创建web3实例时可以使用本地节点也可以用远程节点，这里使用测试网络为例。

官方创建实例方法如下：
```js
if (typeof web3 !== 'undefined') {
    web3 = new Web3(web3.currentProvider);
} else {
    // Set the provider you want from Web3.providers
    web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
}
```


----


以下是常用方法：

```js
// 生成账户对象
let account = await web3.eth.accounts.create();
//Generates an account object with private key and public key.

// 使用个人密码加密密钥
let keystore = await account.encrypt(password);
// or
web3.eth.accounts.encrypt(privateKey, password);
//Encrypts a private key to the web3 keystore v3 standard.


```