---
title: "VoiceShortcut"
date: "2012/03/18"
layout: "product"
tags: ['product','HTML5','webService']
pageOrder: 5
repositryUrl:'https://github.com/georgeOsdDev/voiceShortcut'
repositryName:'georgeOsdDev/voiceShortcut'
serviceUrl:'http://voiceshortcut.cloudfoundry.com/'
serviceName:'voiceshortcut on cloudfoundry'
description:"This is my first web service.¥n Using Siri on iOS, You can exec some command with voice."
author:'takeharu.oshida'
---

This is my first web service.
This site offers some shortcut commands with your voice.
Access [Voiceshortcut](http://voiceshortcut.cloudfoundry.com/) with your iPhone/iPadand say any command through Siri.


### Technique
* HTML5 & CSS3 & javascript
  * Twitter Bootstrap
  * Responsive Web Design
  * iOS url scheme
* Ruby
  * Sinatra web server
* Host
  * CloudFoundry

This site is just a signle static HTML page.
So Deployed on sinatra web server created below little code.

    require 'rubygems'
    require 'sinatra'
    get('/') { open('public/index.html').read }


### Repositry
 * [georgeOsdDev/voiceShortcut](https://github.com/georgeOsdDev/voiceShortcut)
