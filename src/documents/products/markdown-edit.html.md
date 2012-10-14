---
title: "Markdown-Edit"
date: "2012/10/14"
layout: "product"
tags: ['product','javascript','github','markdown','editor','API']
pageOrder: 11
repositryUrl:'https://github.com/georgeOsdDev/markdown-edit'
repositryName:'georgeOsdDev/markdown-edit'
serviceUrl:'http://georgeosddev.github.com/markdown-edit/'
serviceName:'Markdown-Edit'
description:"Online Markdown Editor/Viewer."
author:'takeharu.oshida'
---

### Markdown-Edit
This is a online markdown editor/viewer.
This help you to edit markdown document with the power of web technology.

![Screen Shot](http://georgeosddev.github.com/markdown-edit/images/ScreenShot.png)

#### Demo
[Apps](http://georgeosddev.github.com/markdown-edit)

#### Feature
##### Editor
Part of Editor is depend on [CodeMirror](http://codemirror.net/).It enabeles

* Display **line number**.
* **Match Brackets** in the document.
* Visible `Tab` key
* **Highlight syntax** of markdown.
* **Drag and Drop** file read.

For more option, see [programming API](http://codemirror.net/doc/manual.html) of CodeMirror, and Hack [Markdown Edit](http://github.com/georgeosddev/markdown-edit)
  
##### Converter
To Convert markdown to html, Markdown-Edit use [Github's API](http://developer.github.com/v3/markdown/#render-a-markdown-document-in-raw-mode).

> The raw API is not JSON-based. It takes a Markdown document as plaintext `text/plain` or `text/x-markdown` and renders it as plain Markdown without a repository context (just like a README.md file is rendered – this is the simplest way to preview a readme online).

For more infomation, See official Guide 
* [GitHub API v3](http://developer.github.com/v3/markdown/)
* [github-flavored-markdown](http://github.github.com/github-flavored-markdown/)

*NOTICE* : [GitHub API v3](http://developer.github.com/v3/#rate-limiting) is limited 5000requests per hour. <br>

##### Viewer
To display converted HTML like Github, Markdown-Edit apply github-style.css.(This css is based on [github/gollum](https://raw.github.com/github/gollum/master/lib/gollum/frontend/public/gollum/css/template.css)) and [Font Awesome](http://fortawesome.github.com/Font-Awesome/).

```html
&lt;link rel="stylesheet" href="vendor/font-awesome-2.0/css/font-awesome.css"&gt;
&lt;link rel="stylesheet" href="css/github-style.css"&gt;
```

If you want to see law html what [Github's API](http://developer.github.com/v3/markdown/#render-a-markdown-document-in-raw-mode) responsed, click `Raw .html` button on navbar.

#### Getting Started

##### Install On your local PC

###### Download Sources

use git

```bash
git clone http://github.com/georegeosddev/markdown-edit.git
```

Or download from [Here](https://github.com/georgeOsdDev/markdown-edit/zipball/master)

###### Deploy to some web server
To avoid ajax error yous should deploy whole files to some web server.

If you are using mac,
```bash
ln -s /path/to/markdown-edit ~/Sites/markdown-edit
```
Then access http://localhost/~usernamehere/markdown-edit

If you have installed python,this way is very easy.
```bash
cd /path/to/markdown-edit
python -m SimpleHTTPServer 4567
```
Then access http://localhost:4567

*NOTICE* :[Google Chrome](https://www.google.com/intl/en/chrome/browser/) upper v22.0 is most desirable browser.


### Technique
* Client-side
 * javascript
 * ajax
 * Blob Object
 * Library & API
  * [CodeMirror](http://codemirror.net/).
  * [Github](http://developer.github.com/) for API and style.
  * [Twitter Bootstrap](http://twitter.github.com/bootstrap/) with [Font Awesome](http://fortawesome.github.com/Font-Awesome/).
  * [HTML5 ★ BOILERPLATE](http://html5boilerplate.com/).
  * [jQuery](http://jquery.com/).
* Host
  * github-pages

### Repositry
 * [georgeOsdDev/markdown-edit](https://github.com/georgeOsdDev/markdown-edit)

### License

Licensed under the [MIT License](http://opensource.org/licenses/mit-license.php)
