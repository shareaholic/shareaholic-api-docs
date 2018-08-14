Social Follow API
---

Use the Follow API to link your audience to your various social media profiles to grow your social influence on Facebook, Twitter, Pinterest, YouTube, Instagram, etc. If you're unable to use the [Shareaholic JavaScript SDK](https://www.shareaholic.com/website-tools/), you can link to these API endpoints directly.

  https://www.shareaholic.com/v2/follow/

    ?service_nickname=  (required; example: twitter)
    &username=  (required; example: beyonce)
    &api_key=   (required; example: 8943b7fd64cd8b1770ff5affa9a9437b)

For example:

    https://www.shareaholic.com/v2/follow/?service_nickname=twitter&username=beyonce&api_key=8943b7fd64cd8b1770ff5affa9a9437b

🐦[Follow me on Twitter](https://www.shareaholic.com/v2/follow/?service_nickname=twitter&username=beyonce&api_key=8943b7fd64cd8b1770ff5affa9a9437b)

#### Authentication

All API endpoints require authentication credentials to be supplied as query arguments (`api_key=...`). To get started, you'll need a free [Shareaholic user account](https://www.shareaholic.com/signup) and Site Profile ID. Signup for an account and then [add a site](https://www.shareaholic.com/sites) to get your Site Profile ID. The Site Profile ID is your API Key.

#### Alternatives for `username`

If you prefer, for any reason, not to use your service `username` in URL, you can use `app_id` or `app_id_name` as query argument.

You can find `app_id` value by clicking "code" link in Follow Buttons overview on your site's application tab on Shareaholic website. Value is shown as `data-app-id` attribute in displayed HTML.

`app_id_name` value is name of your Follow Buttons app in Shareaholic interface, with spaces replaced by underscore, for instance: `follow_buttons_after_post`. Keep in mind that if you change your Follow Buttons application name, this will change too!

#### Required query arguments

Required query argument are `api_key`, `service_nickname` and one of the following: `username`, `app_id` or `app_id_name`.

#### JavaScript/AJAX requests

It's possible to make follow request that will return JSON, just add `.js` extension to URL path. For example:

     https://www.shareaholic.com/v2/follow.js?service_nickname=twitter&username=beyonce&api_key=8943b7fd64cd8b1770ff5affa9a9437b

Response:

```javascript
{ "status_code": "200",
  "data": { "message": "follow created",
            "link": "https://twitter.com/intent/follow?screen_name=beyonce" } }
```

#### Errors and error code

On request with missing or invalid query arguments error is returned:

    https://www.shareaholic.com/v2/follow?service_nickname=twitter

```javascript
{ "errors": [{ "code": "100",
               "source": { "pointer": "/data/attributes/api-key" },
               "detail": "Invalid API Key. Register an API key for free or lookup your existing API key at https://www.shareaholic.com/sites." },
             { "code": "120",
               "source": { "pointer": "/data/attributes/username" },
               "detail": "Invalid username, app_id or app_id_name. Check out the docs at https://github.com/shareaholic/shareaholic-api-docs/blob/master/api_follow_api.md for usage examples." }] }
```

##### List of error codes

* 100 - `api_key` was not provided
* 101 - `api_key` provided is invalid
* 110 - `service_nickname` is not provided
* 111 - `service_nickname` provided is invalid
* 120 - `username` or `app_id` or `app_id_name` is missing in request or invalid value provided

#### Supported Service Nicknames

* facebook
* twitter
* mix
* tumblr
* livejournal
* linkedin
* itunes_podcast
* google_plus
* pinterest
* vk
* linkedin_company
* houzz
* instagram
* rss
* youtube
* vimeo
* flickr
* foursquare
* yelp
* bloglovin
* dribbble
* odnoklassniki
* etsy
* github
* tripadvisor
* slideshare
* polyvore
* stackoverflow
* about_me
* behance
* soundcloud
* vine
* ebay
* five_hundred_px
* bbb
* skype
* google_classroom
* zillow_digs
* disqus
* feedly
* spotify
