---
layout: default
---

# Title
if @document.title
	section id:"main", ->
		div id:"content", property: 'sioc:content',->
			h2 ->
				a '.page-link', href:@document.url, ->
					strong '.post-title', property:'dcterms:title', ->
						@document.title
				@content
			p id:"feedurl",->
				text @document.feed
			h2 "Under Construction...&#x2639;"		
text @getBlock('scripts').add(["/photofeed.js"]).toHTML()
