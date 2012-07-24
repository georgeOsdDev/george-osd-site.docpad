# -----------------------------
# Prepare

# Get our formatted site title as defined by out docpad.cson file
siteTitle = @getSiteTitle()

# Merge our site keywords with our documents keywords and stringify
siteKeywords = @site.keywords.concat(@document.keywords or []).join(', ')


# -----------------------------
# Document

doctype 5
html lang: 'en', ->

	# -----------------------------
	# Document Header

	head ->
		# -----------------------------
		# Meta Information

		# Set our charset to UFT8 (oldshool method)
		meta charset:'utf-16'

		# Set our charset to UFT8 (newschool method)
		meta 'http-equiv':'content-type', content:'text/html; charset=utf-8'

		# Always use the latest rendering engine
		meta 'http-equiv':'X-UA-Compatible', content:'IE=edge,chrome=1'

		# Set our defualt viewport (window size and scaling) for mobile devices
		meta name:'viewport', content:'width=device-width, initial-scale=1'

		# SEO: Set our page title that will show up in search engine results
		meta name:'title', content:h(siteTitle)

		# SEO: Set the name of the author who wrote this page
		meta name:'author', content:h(@document.author or @site.author)

		# SEO: Set the email of the author who wrote this page
		meta name:'email', content:h(@document.email or @site.email)

		# SEO: Set the description of this page
		meta name:'description', content:h(@document.description or @site.description)

		# SEO: Set the keywords of this page
		meta name:'keywords', content:h(siteKeywords)

		# Output meta data set by DocPad and it's plugins
		text @getBlock('meta').toHTML()

		# Page title as shown in the browser tab and window
		title @getSiteTitle()

		# -----------------------------
		# (RSS/ATOM) Feeds

		# Feed
		@site.feeds.forEach (feed) ->
			link
				href: h(feed.href)
				title: h(feed.name or feed.title or '')
				type: h(feed.type or 'application/atom+xml')
				rel: 'alternate'

		# -----------------------------
		# Stylesheets

		text @getBlock('styles').add([
			"/themes/#{@theme}/sanaroo.css"
			"/vendor/prettify.css"
			"/style.css"
		]).toHTML()

		# -----------------------------
		# IE conditional comment

		ie 'gte IE6', ->
			style 'body { behavior: url("themes/#{@theme}/ie6-hover-fix.htc"); }'
			link rel: 'stylesheet',href: '/themes/#{@theme}/ie6.css'
		ie 'gte IE7', ->
			link rel: 'stylesheet',href: '/themes/#{@theme}/ie7.css'
		ie 'gte IE8', ->
			link rel: 'stylesheet',href: '/themes/#{@theme}/ie8.css'


	# -----------------------------
	# Document Body

	body ->
		div id:'top-banner'
		div id:'wrap', ->

			# Heading
			header id:'header','.heading', ->
				h1 ->
					a href:'/',title:"return home",->
						text @site.heading
				h2 ->
					text @site.subheading


			# Nav bar
			nav ->
				ul id:'nav', ->
					@getCollection('navbar').toJSON().forEach (page,i) =>
						match = page.match or page.url
						linkclass = if @document.url.indexOf(match) is 0 then '.current' else ''
						linkTitle = h(page.linkTitle or '')
						linkUrl = h(page.url)
						li linkclass,id:"navmenu_#{i}",->
							a href:linkUrl, title:linkTitle, ->
								page.name
							span '/'
					# social links
					li id:"navmenu_social",->
						a href:'#',title:'home',->
							text 'Social'
						ul ->
							@site.social.forEach (social) ->
								li ->
									a href:social.href, title:social.title,target:"_blank", ->
											text social.text
						span '/'

			# Document
			article id:'frontpage-content',
				about: h @document.url
				datetime: h @document.date.toISOString()
				-> @content

			div class:"line"

			# AddThis Button  http://www.addthis.com/
			div id:"social-footer",class:"addthis_toolbox addthis_default_style",->
				a class:"addthis_button_preferred_1"
				a class:"addthis_button_preferred_2"
				a class:"addthis_button_compact"
				script type:"text/javascript",src:"http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4f6378c46f6668f9"

			# Search Box
			div id:'cse', ->
				text 'Loading'

			# Footer
			thisyear = new Date().getFullYear()
			yearstr = if thisyear is 2012 then "2012" else "2012-" + thisyear
			copyright = @site.copyright
			
			footer id:'footer','.footing', ->
				p id:'copyright', -> 
					"""
					#{@site.footnote} <br>
					#{(copyright.replace 'REPLACEYEARS' , yearstr)}
					"""

		# Include our scripts
		text @getBlock('scripts').add([
			'/vendor/log.js'
			'/vendor/jquery.js'
			'/vendor/modernizr.js'
			'/vendor/underscore.js'
			'/vendor/backbone.js'
			'/vendor/prettify.js'
			"/script.js"
		]).toHTML()

		# Analytics
		analytics = @site.analytics or {}
		script """
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', '#{analytics.google}']);
			_gaq.push(['_trackPageview']);
			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
			""" if analytics.google

		script src:"http://www.google.co.jp/jsapi", type:"text/javascript"
		script """
			google.load('search', '1', {language : 'en'});
			google.setOnLoadCallback(function() {
				var customSearchOptions = {};
				var customSearchControl = new google.search.CustomSearchControl(
					'008379058641507077145:vv496rydu2y', customSearchOptions);
				customSearchControl.setResultSetSize(google.search.Search.SMALL_RESULTSET);
				var options = new google.search.DrawOptions();
				options.setSearchFormRoot('cse-search-form');
				customSearchControl.draw('cse', options);			}, true);
		"""
