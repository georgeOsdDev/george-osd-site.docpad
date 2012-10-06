---
name: 'Products'
linkTitle: 'My Product'
pageOrder: 2
layout: 'page'
navbar:true
---
section id:"main", ->
	div id:"content", ->
		h2 '.page-title',->
			'Products'
		p '.page-description', ->
			'Services and Snippets I created.'
		# Post Listing
		text @partial 'list-products.html.coffee', {
			documents: @getCollection('products').toJSON().reverse()
		}