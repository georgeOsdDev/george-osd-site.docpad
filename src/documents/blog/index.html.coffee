---
name: 'Blog'
linkTitle: 'View articles'
pageOrder: 3
layout: 'page'
navbar:true
---
section id:"main", ->
	div id:"content", ->
		h2 '.page-title',->
			text 'Blog'
		p '.page-description', ->
			'What I experienced and was impressed'
		# Post Listing
		text @partial 'list-documents.html.coffee', {
			documents: @getCollection('posts').toJSON()
		}
