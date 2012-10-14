text """
<?xml version='1.0' encoding='utf-8'?>
<feed xmlns='http://www.w3.org/2005/Atom'>
  <title>#{@site.title}</title>
  <link href='#{@site.url}/atom.xml' rel='self'></link>
  <link href='#{@site.url}'></link>
  <updated>#{@site.date.toISOString()}</updated>
  <id>#{@site.url}</id>
  <author>
    <name>#{@site.author}</name>
    <email>#{@site.email}</email>
  </author>
"""
home = @site.url
@getCollection('posts').toJSON().forEach (document) ->
  text """
    <entry>
      <title>#{document.title}</title>
      <link href='#{home} /#{document.urls[0]}'/>
      <updated>#{document.date.toISOString()}</updated>
      <id>#{document.urls[1]}</id>
      <content type='text/plain'>#{document.description}</content>
    </entry>
  """

text "</feed>"
