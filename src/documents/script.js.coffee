# Coded in CoffeeScript: http://coffee-script.org

# Your CoffeeScript code goes here
console.log "Hello! I'm working!"

# Source code syntax highlight
$('pre').addClass "prettyprint"
prettyPrint()

# hide footer social icons
$('#social-footer').addClass "display-none" if (0 < $('#social-sidebar').size())

# navbar style class
$('#nav li').each (navmenu,i) ->
	if ($(this).hasClass 'current') and (($(this).attr 'id') isnt 'navmenu_0') then $('#navmenu_0').removeClass 'current' 


# Back to top button
backToDiv = """
<div id='back-to-top' style='position:fixed;right:10px;bottom:10px'>
	<a href='#'><img src='/images/common/back-to-top.png' alt='↑'></a>
</div>
"""
$('body').append(backToDiv)
$('#back-to-top').hide()
#back-to-topを表示、スクロールが戻ったら非表示
$(window).scroll ->
	if ($ this).scrollTop() > 60 then $('#back-to-top').fadeIn() else $('#back-to-top').fadeOut()
	return;
$('#back-to-top a').click ->
	$('body').animate(scrollTop:0, 500)
	return false
return