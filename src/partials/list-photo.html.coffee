# Document List
nav 'typeof':'dc:collection', ->
	unless @documents.length
		p -> 'No Contents &#x2639;'
		return
	@documents.forEach (document) ->
		li '.list-style-none','typeof':'soic:post', about:document.url, ->
			# Display a header link
			h3 '.post-title', ->
				a href:document.url, property:'dc:title', ->
					text document.title
			h3 '.post-meta', property:'dc:date', ->
				document.date


			# Display the image if it exists
			if document.image
				path = document.image
				path = "/images#{document.image}" if not path.match /^http/
				a href:document.url, ->
					img '.post-image', width:"200", height:"200", src:path
			# Display the description if it exists
			if document.description
				description = document.description.split '¥n'
				p property:'dc:description', ->
					for statment in description
						do (statment) ->
							text statment
							br ->
			# RSS
			if document.feed
				p ->
					text "Feed url:"
					br ->
					a href:document.feed,target:"_blank",->
						text document.feed

			a '.more-link', href:document.url , ->
				text "Read More &raquo;"
		div '.post-line',->