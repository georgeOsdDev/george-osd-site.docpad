# read feed url and display images
window.document.body.onload = ->
  feedurl = $("#feedurl").text()
  readfeed = (url) ->
    feed = new google.feeds.Feed url
    feed.load = (result) ->
      console.log result
      return
    return

  # google.load "feeds", "1"
  # google.setOnLoadCallback readfeed(feedurl)