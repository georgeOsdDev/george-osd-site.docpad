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

			# Display the description if it exists
			if document.description
				description = document.description.split '¥n'
				p property:'dc:description', ->
					for statment in description
						do (statment) ->
							text statment
							br ->
			# Repositry
			if document.repositryUrl
				p ->
					text "Repositry: "
					a href:document.repositryUrl, target:"_blank", title:document.repositryName, ->
						text document.repositryName
					# Serviceurl
					if document.serviceUrl
						br ->
						text "URL: "
						a href:document.serviceUrl, target:"_blank", title:document.serviceName, ->
							text document.serviceName
					br ->
					text "TAG: "
					document.tags.forEach (tag) ->
						text "#{tag}&nbsp;"
			a '.more-link', href:document.url , ->
				text "Show detail &raquo;"
		div '.post-line',->