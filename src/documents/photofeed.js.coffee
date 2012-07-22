# read feed url and display images
window.document.body.onload = ->
  feedurl = $("#feedurl").text()
  reedfeed = (url) ->
    #console.log url

  setTimeout (reedfeed feedurl, 1000)