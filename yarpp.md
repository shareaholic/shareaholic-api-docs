YARPP SDK
=========

# Installation

```html
<!-- YARPP -->
<link rel='preload' href='//cdn.yarpp.com/assets/pub/yarpp.js' as='script' />
<script>
(function(y,a,r,p,s){;y[s]=y[s]||function(){(y[s].q=y[s].q||[]).push(arguments)};b=a.createElement(r),c=a.getElementsByTagName(r)[0];b.async=1;b.src=p;c.parentNode.insertBefore(b,c)})(window,document,'script','//cdn.yarpp.com/assets/pub/yarpp.js','Yarpp');
Yarpp('init',siteId);
</script>
<!-- End YARPP -->
```

This creates a window.Yarpp object where API commands can be executed, installs the yarpp.js
script, and queues the init command for YARPP. The siteId variable should be replaced with your
site ID. If you also use Shareaholic on your page, the siteId for YARPP and Shareaholic must be the
same.

# Commands

## init

The init command will initialize YARPP and add analytics tracking to a page.

# Analytics

YARPP will track pageviews, recommendation impressions (defined as a recommendation being loaded on
a page), recommendation views (defined as a recommendation being viewable on a user's screen), and
recommendation clicks. Recommendation links are identified using a CSS selector. The default
selector, `.yarpp-related`, is valid for most cases, but it can be overridden to support custom
templates by setting `window._YARPP_SETTINGS`:

```html
<script>
window._YARPP_SETTINGS = {
  analytics: {
    selector: '.yarpp-related'
  }
};
</script>
```

YARPP will find all anchor elements that are children of the selector. Furthermore, links that match
the selector can be ignored by setting the `data-yarpp-noanalytics` attribute or adding the
`yarpp-noanalytics` class to the anchor elements.

Example of matching and non-matching elements:
```html
<script>
window._YARPP_SETTINGS = {
  analytics: {
    selector: '.yarpp-related'
  }
};
</script>
<div class="yarpp-related">
  <a href="https://one.com">One</a> <!-- match - child of selector -->
  <a href="https://two.com" data-yarpp-noanalytics="1">Two</a> <!-- no match - ignored data attribute -->
  <a href="https://three.com" class="yarpp-noanalytics">Three</a> <!-- no match - ignored class -->
</div>
<a href="https://four.com" class="yarpp-related">Four</a> <!-- match - matches selector exactly -->
```
