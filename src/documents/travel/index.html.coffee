---
name: 'Travel'
linkTitle: 'good places'
pageOrder: 4
layout: 'page'
navbar:true
---
section id:"main", ->
	div id:"content", ->
		h2 '.page-title',->
			'Travel'
		p '.page-description', ->
			'My Travel Log.'
		# Post Listing
		text @partial 'list-travel.html.coffee', {
			documents: @getCollection('travels').toJSON()
		}