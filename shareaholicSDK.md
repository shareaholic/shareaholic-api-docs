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

###### Success callback API

The api object returned in the success callback will give you the ability to
subscribe to events generated by user interactions with the UI.

```
// subscribing to events
function onClose() {
  console.log('modal was closed');
}

// subscribe
api.on('modal.close', onClose);

// unsubscribe
api.off('modal.close', onClose);
```

API methods:

* `on`: pass a topic and callback function for notifications on that topic
* `off`: pass a topic and the callback function used to subscribe

API topics:

* `modal.close`: the modal window has been closed

## shareaholic.js API

If shareaholic.js is [installed on your page](https://support.shareaholic.com/hc/en-us/articles/200803757-Installing-and-Setting-Up-Shareaholic-on-Your-Site),
you have access to the shareaholic.js API which can provide programmatic access to Shareaholic
functionality.

If you want to use the API, we recommend doing it in a separate `<script>` tag like this:
```
<script>
(function(s,r){;s[r]=s[r]||function(){(s[r].q=s[r].q||[]).push(arguments)}})(window,'Shareaholic');

// perform calls here
Shareaholic('getShareCounts', (counts) => { /* ... */ });
</script>
```

The first bit of code ensures that your command will be received regardless of when it is done. You
can even include this code block before the shareaholic.js code block.

### getShareCounts API

Any page that has the SDK installed can use the Shareaholic API to get per-service share counts
(using the shareaholic.com configuration for your site).

Here is the TypeScript definition for the call:
```
Shareaholic('getShareCounts', cb: ({ [service: string]: number }) => void);
Shareaholic('getShareCounts', { services?: string[], url?: string }, cb: ({ [service: string]: number }) => void);
Shareaholic('getShareCounts', { services?: string[], url?: string[] }, cb: ({ [url: string]: { [service: string]: number } }) => void);
```
Note how the response varies depending on whether a single or multiple URLs are passed in.

* `services`: List of services to get counts for, such as `['facebook', 'pinterest']`. Defaults to
  all services we support counts for.
* `url`: A single URL or list of URLs to get counts for. Defaults to the canonical URL on the
  current page.

Example usages:
```
Shareaholic(
    'getShareCounts',
    { services: ['facebook', 'pinterest'], url: 'https://www.shareaholic.com/blog' },
    (counts) => /* ... */,
);
// counts value will be { facebook: 44, pinterest: 8, total: 53 }

Shareaholic(
    'getShareCounts',
    { services: ['facebook', 'pinterest'],
    url: ['https://www.shareaholic.com/blog', 'https://www.shareaholic.com/blog/gigya-best-social-sharing-alternative/'] },
    (counts) => /* ... */,
);
// counts value will be {
//                        'https://www.shareaholic.com/blog/gigya-best-social-sharing-alternative/': { facebook: 4, pinterest: 0, total: 4 },
//                        'https://www.shareaholic.com/blog': { facebook: 44, pinterest: 8, total: 52 }
//                      }
```

Given an HTML structure like:
```
<div id="fb-share-counts">-</div>
```
Here's how you would update the contents of the div:
```
Shareaholic(
    'getShareCounts',
    { services: ['facebook'] },
    (counts) => {
        document.querySelector('#fb-share-counts').innerText = counts.facebook;
    },
);
```

[More examples](https://www.shareaholic.com/sharecounter#code)

