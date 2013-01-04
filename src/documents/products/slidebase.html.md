---
title: "Slidebase"
date: "2012/01/04"
layout: "product"
tags: ['product','coffee-script','webService','presentation']
pageOrder: 12
repositryUrl:'https://github.com/georgeOsdDev/SlideBase'
repositryName:'georgeOsdDev/SlideBase'
description:"Presentation Tool using webSocket."
author:'takeharu.oshida'
---

SlideBase is a presentation tool using webSocket.
It broadcast presentater's action and guests comment (|| feedback) to the all browser who watch the slides.
If you need documents as PDF, It provides cake command

    cake png && cake pdf

[More detail](http://george-osd-blog.heroku.com/14)

### Technique
* Node.js
  * express
  * ejs
  * connect
  * connect-redis
  * cookie
  * underscore
  * coffee-script
  * socket.io
* Redis
* Phantom.js
* ImageMagick

### Repositry
 * [georgeOsdDev/SlideBase](https://github.com/georgeOsdDev/SlideBase)
