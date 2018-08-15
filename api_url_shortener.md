URL Shortener API
---

Use the URL Shortener API to shorten any link using a shortening service that you specify.

  https://www.shareaholic.com/v2/share/shorten_link

    ?url=       (required; example: http://www.google.com/)
    &service=   (optional; tinyurl | bitly | jmp | google | shrlc)
    &api_key=   (optional)
    &login=     (optional)

Example 1:

```html
https://www.shareaholic.com/v2/share/shorten_link?url=http://google.com/&service=shrlc
```

Success result:

```javascript
{
  "status_code": "200",
  "data": "https://go.shr.lc/2sZ8JZo"
}
```

🔗[Try Me: Shorten URL - http://google.com](https://www.shareaholic.com/v2/share/shorten_link?url=http://google.com/&service=shrlc)

You can further customize this option with your own `bitly` and `google` key if you'd like by passing in an additional `api_key` and/or `login` parameters. If you pass this, the URL Shortener API will use your key to shorten the link.

Example 2 (with custom key):

```html
https://www.shareaholic.com/v2/share/shorten_link?url=http://google.com/&service=bitly&api_key=[INSERT YOUR BITLY API KEY]&login=[INSERT YOUR BITLY LOGIN]
```

Success result:
  
```javascript
{
  "status_code": "200",
  "data": "http://bit.ly/18yU7Q9"
}
```

Error result:

```javascript
{
  "errors": [
    {
      "code": "150",
      "source": {
        "pointer": "/data/attributes/url"
      },
      "detail": "Invalid or no URL provided"
    }
  ]
}
```

#### Safety

URL Shortener API also checks if the provided `URL` is safe or not with the help of [Google Safe Browsing](https://safebrowsing.google.com/). In the case of unsafe URL, you will receive original URL and message that indicates why the URL is not safe.

For example:

```html
https://shareaholic.com/v2/share/shorten_link?url=http://testsafebrowsing.appspot.com/apiv4/ANY_PLATFORM/MALWARE/URL/&service=google
```

Result:

```javascript
{
  "errors": [
    {
      "code": "145",
      "source": {
        "pointer": "/data/attributes/short-url"
      },
      "detail": "Unsafe URL: Malware (Any platform)"
    }
  ]
}
```

#### List of possible error codes:

* 145 - URL shortening problem or unsafe URL
* 150 - Invalid or no `url` provided
