---
name: 'Photo'
linkTitle: 'View photo'
pageOrder: 5
layout: 'page'
navbar:true
---
section id:"main", ->
	div id:"content", ->
		h2 '.page-title',->
			'Photo'
		p '.page-description', ->
			'copyright &copy; Takeharu.Oshida'
		# Post Listing
		text @partial 'list-photo.html.coffee', {
			documents: @getCollection('photos').toJSON()
		}