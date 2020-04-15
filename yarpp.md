YARPP SDK
=========

# Installation

```
<script>
(function(i,s,o,g,r){;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)};a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//dsms0mj1bbhn4.cloudfront.net/assets/pub/yarpp.js','Yarpp');
Yarpp('init',siteId);
</script>
```

This creates a window.Yarpp object where API commands can be executed, installs the yarpp.js
script, and queues the init command for YARPP. The siteId variable should be replaced with your
site ID.

# Commands

## init

The init command will initialize YARPP and add analytics tracking to a page.

# Analytics

YARPP will track pageviews, recommendation impressions (defined as a recommendation being loaded on
a page), recommendation views (defined as a recommendation being viewable on a user's screen), and
recommendation clicks. Recommendation links are identified using a CSS selector. While the default
selector is valid for most cases, it can be overridden for more complicated use cases by setting
`window._YARPP_SETTINGS`:

```
<script>
window._YARPP_SETTINGS = {
  analytics: {
    selector: '.yarpp-related a'
  }
};
</script>
```

Furthermore, links that match the selector can be ignored by setting the `data-yarpp-noanalytics`
attribute or adding the `yarpp-noanalytics` class to the anchor elements. So the following URLs
would both be ignored by analytics:

```
<a href="https://yarpp.com" data-yarpp-noanalytics="1">YARPP</a>
<a href="https://yarpp.com" class="yarpp-noanalytics">YARPP</a>
```
