Share API
---

Use the Share API to quickly connect your siteto each of the major social networks for sharing. It's 100% FREE to use, simple, reliable, fast. Used & seen by millions every day.

Documentation coming Soon


Share Counters
---

Service | JSONP | Server Side
--- | --- | ---
Facebook | ✔ | ✔
Twitter |  | 
LinkedIn | ✔ | ✔
Pinterest | ✔ | ✔
Yummly | ✔ | ✔
Delicious |  | ✔
Google+ |  | ✔
Reddit |  | ✔
StumbleUpon |  | ✔
VK |  | ✔
Fancy |  | ✔
Buffer |  | ✔

Shareaholic JavaScript SDK looks for the following hints, *in this specific order*, to determine the URL to display Share Counts for:

1. **The "data-link" attribute**.  For example:
`<div class='shareaholic-canvas' data-app='share_buttons' data-app-id="xxx" data-title='Page Title' data-link='http://www.yourwebsite.com/'></div>`
2. **Shareaholic URL Meta Tag**. For example: `<meta name="shareaholic:url" content="http://www.yourwebsite.com/" />`
3. **Canonical Meta Tag**. For example: `<link rel="canonical" href="https://blog.shareaholic.com/" />`
4. **Open Graph URL Meta Tag**. For example: `<meta name="og:url" content="http://www.yourwebsite.com/" />`
5. The URL displayed in the web browser address bar

> * Note: if you're using either our WordPress or Drupal plugin, data-link and the Shareaholic URL Meta tags are set automatically.
