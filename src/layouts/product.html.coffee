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
					small '.post-meta', property:'dc:date', ->
						" #{@document.date.toShortDateString()}"
			@content


# @TODO
# search same tag documents
# list related documents 
# 
# Related Posts
# relatedPosts = []
# for document in @document.relatedDocuments or []
#   if document.url.indexOf('/blog') is 0 and document.url.indexOf('/blog/index') isnt 0
#     relatedPosts.push(document)
# if relatedPosts.length
#   section '.related-documents', ->
#     h2 -> 'Related Posts'
#     text @partial 'document-list.html.coffee', {
#       documents: relatedPosts
#     }

		div id:"sidebar", -> 
			h3 ".sidebar-title", ->
				"Get In Touch"
			p ->
				"Sorry comment form is not offerd, if you have any comments,please contact me or share this page using one of the options below."
			b ->
				"Twitter"
			p ->
				a href:"http://twitter.com/george_osd/",target:"_blank",->
					text "@georgeOsd"
			b ->
				"share this page"
			# AddThis Button  http://www.addthis.com/
			div  id:"social-sidebar", class:"addthis_toolbox addthis_default_style ",->
				a class:"addthis_button_preferred_1"
				a class:"addthis_button_preferred_2"
				a class:"addthis_button_compact"
				script type:"text/javascript",src:"http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4f6378c46f6668f9"
