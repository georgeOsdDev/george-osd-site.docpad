---
title: "connect-ltsv-logger"
date: "2013/02/12"
layout: "product"
tags: ['product','node.js','ltsv','connect']
pageOrder: 14
repositryUrl:'https://github.com/georgeOsdDev/connect-ltsv-logger'
repositryName:'georgeOsdDev/connect-ltsv-logger'
description:"Yet Another Tethering Solution for iPhone4S."
author:'takeharu.oshida'
---

# [connect-ltsv-logger](https://github.com/georgeOsdDev/connect-ltsv-logger)

[LTSV](http://ltsv.org/) format logger for (connect|express).

This is just a wrapper of [connect.middleware.logger](http://www.senchalabs.org/connect/logger.html).

### Install
npm do
```bash
npm install connect-ltsv-logger --save
```

### Usage
```js
var express = require("express"),
    ltsvlogger = require('connect-ltsv-logger');

// define output WriteStream
var out = fs.createWriteStream("ltsv-access.log",{flags: 'a+'}),

// define tokens
var ltsv = [];
ltsv.push("host");
ltsv.push("ident");
ltsv.push("user");
ltsv.push("time");
ltsv.push("req");
ltsv.push("status");
ltsv.push("size");
ltsv.push("referer");
ltsv.push("ua");

var app = express();
app.configure(function(){
  // app.set(/*snip*/)
  // ...

  app.use(ltsvlogger({format:ltsv,stream:out}));

  // app.use(/*snip*/)
  // ...
});
```

Log file will be written with LTSV format.
```bash
tail -f ltsv-access.log
host:127.0.0.1<TAB>ident:-<TAB>user:-<TAB>time:[13/Feb/2013:19:15:44 +09:00]<TAB>req:GET /stylesheets/style.css HTTP/1.1<TAB>status:200<TAB>size:110<TAB>referer:http://localhost:3001/<TAB>ua:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17
```

### Licence

Source code can be found on [github](https://github.com/georgeOsdDev/connect-ltsv-logger), licenced under [MIT](http://opensource.org/licenses/mit-license.php).

Developed by [Takeharu.Oshida](http://about.me/takeharu.oshida)

### Technique
* Node.js
  * connect
  * ltsv

### Repositry
 * [georgeOsdDev/connect-ltsv-logger](https://github.com/georgeOsdDev/connect-ltsv-logger)
