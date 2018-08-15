Related Content & Native Ads API
---

Shareaholic Related Content & Native Ads API surfaces contextually relevant content from a given website and native ads from across the web that are personalized to a given site visitor.

  https://recs.shareaholic.com/rec/
  
    ?api_key=   (required)
    &location=  (required; example: http://www.google.com/ - url of the source page)
    &internal=  (required; integer - the number of internal pages to return in the response. The actual amount returned may be less than requested)
    &sponsored= (optional; integer -  Indicates the number of sponsored pages to return in the response. The actual amount returned may be less than requested)
    &canonical= (optional; the canonical URL of the page if known)

**Example request:**

    https://recs.shareaholic.com/rec/?location=http%3A%2F%2Fwww.drewlepp.com%2Fblog%2Fwhat-the-wine-world-can-teach-us-about-user-experience%2F&url=http%3A%2F%2Fwww.drewlepp.com%2Fblog%2Fwhat-the-wine-world-can-teach-us-about-user-experience%2F&canonical=http%3A%2F%2Fwww.drewlepp.com%2Fblog%2Fwhat-the-wine-world-can-teach-us-about-user-experience%2F&internal=18&sponsored=0&api_key=e0fcc37ce89b4f078ce9c78f645793aa
  
**Example response:**
  
  ```json
{
  "id": "dbc481e8-8578-47e7-b771-57683c32ee61",
  "timestamp": "2018-06-25T22:29:14.379Z",
  "request": {
    "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36",
    "forwarded_for": [
      "24.2.156.215"
    ],
    "remote_address": "10.0.128.175:63874",
    "url": "http://www.drewlepp.com/blog/what-the-wine-world-can-teach-us-about-user-experience/",
    "api_key": "e0fcc37ce89b4f078ce9c78f645793aa",
    "internal": 3,
    "sponsored": 0
  },
  "internal": [
    {
      "source": 5,
      "content_id": "30a7c949-7762-49c3-b44b-c29d17ff85fd",
      "url": "http://www.drewlepp.com/blog/can-we-design-happiness/",
      "title": "Can We Design Happiness? · Drew Lepp - UX, UI Designer - Washington, DC",
      "description": "You’ve seen the headlines: Facebook is making us lonely (The Atlantic); How Facebook makes us unhappy (The New Yorker); ",
      "author": "Drew Lepp",
      "image_url": "//www.drewlepp.com/blog/wp-content/uploads/2016/08/design-happiness-ux-5-1024x448.jpg",
      "score": 11,
      "published_date": "2016-08-15T20:21:50.000Z",
      "modified_date": "2016-10-20T23:35:19.000Z",
      "channel_id": "turbo",
      "display_url": "http://www.drewlepp.com/blog/can-we-design-happiness/"
    },
    {
      "source": 4,
      "content_id": "c3ce2e51-7338-45a6-b1d2-3ea6691db8e2",
      "url": "http://www.drewlepp.com/blog/user-happiness-care-can-measure/",
      "title": "User Happiness: what is it, why should you care about it, and how can you measure it? · Drew Lepp - UX, UI Designer - Washington, DC",
      "description": "When designing a website or product, user happiness is a simple concept that becomes far more complicated in practice. When a product is designed beautifully, everybody wins. When your product enriches your users’ lives in some meaningful way, they can become brand advocates, are more patient when the occasional issue arises and pay for your …",
      "author": "Drew Lepp",
      "image_url": "//www.drewlepp.com/blog/wp-content/uploads/2014/11/measure_user_happiness1-e1416063828545.png",
      "score": 23,
      "published_date": "2014-11-04T03:45:39.000Z",
      "modified_date": "2016-10-20T23:35:19.000Z",
      "channel_id": "intrec",
      "display_url": "http://www.drewlepp.com/blog/user-happiness-care-can-measure/"
    },
    {
      "source": 4,
      "content_id": "000e5a0a-a184-4455-af33-af455ef7d2b5",
      "url": "http://www.drewlepp.com/blog/in-praise-of-simplicity-5-fundamentals-for-designing-a-simple-product/",
      "title": "In Praise of Simplicity: 5 Fundamentals for Designing an Elegant Application · Drew Lepp - UX, UI Designer - Washington, DC",
      "description": "There’s a little rule we have around here and it comes off this quote by Leonardo da Vinci, who knew a thing or two about design, and had some pretty good advice on the topic: The first question is “Why?” Why should things be more simple?What does “simple” mean, anyway? Shouldn’t we aim to build …",
      "author": "Drew Lepp",
      "image_url": "//www.drewlepp.com/blog/wp-content/uploads/2014/10/ux_payments1-e1416063732546.jpg",
      "score": 17,
      "published_date": "2014-10-13T16:52:45.000Z",
      "modified_date": "2016-10-20T23:35:19.000Z",
      "channel_id": "intrec",
      "display_url": "http://www.drewlepp.com/blog/in-praise-of-simplicity-5-fundamentals-for-designing-a-simple-product/"
    }
  ]
}
  ```

  
#### Response codes

* 200 OK
* 202 Accepted - Recommendations are not yet available for the provided api_key and/or url
* 400 Bad Request - api_key or location are missing or malformed
