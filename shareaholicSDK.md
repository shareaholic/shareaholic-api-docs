Shareaholic SDK
===================

### Sharing public API

Using the sharing service and UI via JavaScript:

Staging (Unstable):
```
<script>
  window.ShareaholicBookmarklet = window.ShareaholicBookmarklet || [];
  ShareaholicBookmarklet.push([
    'share', {
      service: 'facebook',
      link: 'http://www.example.com',
      title: 'test title',
      summary: 'this is cool'
    }, 
    function (err) {
      console.log('Sharing invoked ');
      console.log(err);
    }])
</script>

<script 
  type="text/javascript" 
  src="//d2062rwknz205x.cloudfront.net/v2/ShareaholicBookmarklet.js"
  data-shr-debug="true"
  data-shr-assetbase="//d2062rwknz205x.cloudfront.net/v2/"
  data-shr-namespace="ShareaholicBookmarklet"
  data-shr-entrypoint="shrMain.js">
</script>
```

Production:

```
<script>
  window.ShareaholicBookmarklet = window.ShareaholicBookmarklet || [];
  ShareaholicBookmarklet.push([
    'share', {
      service: 'facebook',
      link: 'http://www.example.com',
      title: 'test title',
      summary: 'this is cool'
    }, 
    function (err) {
      console.log('Sharing invoked ');
      console.log(err);
    }])
</script>

<script 
  type="text/javascript" 
  src="//dsms0mj1bbhn4.cloudfront.net/v2/ShareaholicBookmarklet.js"
  data-shr-assetbase="//dsms0mj1bbhn4.cloudfront.net/v2/"
  data-shr-namespace="ShareaholicBookmarklet"
  data-shr-entrypoint="shrMain.js">
</script>
```

#### Invoking a share command

```
ShareaholicBookmarklet.push([
  'share', {
    service: 'all'
  }, 
  function onInvoked(err) {
    // err is falsy if there was no error
  }
]);
```

##### Sharing command object

All of the fields in the command object are optional EXCEPT for `service`. If 
you do not specify the any of the other fields the SDK will do it's best to try 
and scrape the required fields from the page. 

  * `service` - the service name you wish to share via or `all`
  * `title` - the title of the item
  * `link` -  link to the item
  * `summary` - summary text for the item
  * `image` - image to share
  * `images` -  an array of images to share
  * `short_link` - shortened link to the item
  * `media_link` - link to media to share,
  * `link_title` - title for the link being shared,
  * `source` - defaults to `Shareaholic`

