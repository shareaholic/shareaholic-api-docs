Recommendations & Related Content API
---

Shareaholic Recommendations & Related Content API surfaces contextually relevant content from a given website and around the web that is personalized to a given reader.

  http(s)://recommendations.shareaholic.com/v4/recommend
  
    ?url=         (required; example: http://www.google.com/ - the canonical url of the source page)
    &internal=    (required; integer - the number of internal pages to return in the response. The actual amount returned may be less than requested)
    &sponsored=   (optional; integer -  Indicates the number of sponsored pages to return in the response. The actual amount returned may be less than requested)
    &api_key=     (required)
    
**Example request:**

    http://recommendations.shareaholic.com/v4/recommend?url=http%3A%2F%2Ferincooks.com&internal=6&sponsored=0&api_key=3d0c541a698210cd569a9368ded0a742
  
**Example response:**
  
  ```json
  {
      "id": "689e6322-d2b1-47af-a385-cb6a9051a0e0",
      "timestamp": "2014-09-30T18:07:46.666Z",
      "request": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.2 Safari/537.36",
          "remote_address": "0.00.000.000:123",
          "forwarded_for": [
              "12.12.12.12"
          ],
          "api_key": "3d0c541a698210cd569a9368ded0a742",
          "url": "http://erincooks.com",
          "sponsored": 0,
          "internal": 6
      },
      "internal": [
          {
              "page_id": 5844667,
              "url": "http://erincooks.com/a-public-service-announcement-from-erincookscom/",
              "title": "A Public Service Announcement From ErinCooks.com",
              "description": "Friends, Romans, Cookbook collectors -- if you signed up for gmail a million years ago (like I did) and you pride yourself on the fact that you own your first and last name @gmail.com without a rid...",
              "image_url": "http://erincooks.com/images/links/cloverfield.jpg",
              "score": 1
          },
          {
              "page_id": 5843573,
              "url": "http://erincooks.com/very-fond-of-food/",
              "title": "Very Fond of Food",
              "description": "Note: This recipe and accompanying text originally appeared  as a guest post on Eat Boutique. I'm a bit embarrassed to admit this, but I flipped through Sophie Dahl's new cookbook, Very Fond of Foo...",
              "image_url": "http://media.erincooks.com/images/2012/05/asparagus4.jpg",
              "score": 1
          },
          {
              "page_id": 5843248,
              "url": "http://erincooks.com/review-boston-organics-2/",
              "title": "Review: Boston Organics",
              "description": "My Boston Organics order was waiting for me when I got home from work.  I was looking forward to it all day.  When I opened the bright green box I found the following items inside: Bananas, Green B...",
              "image_url": "http://erincooks.com/images/boston/boston1.jpg",
              "score": 1
          },
          {
              "page_id": 5844935,
              "url": "http://erincooks.com/the-bodega-party-in-a-box/",
              "title": "The Bodega Party in a Box",
              "description": "The brilliant Bodega Party in a Box kit arrived today. The Neighbors Project seriously out did themselves in the categories of overall functionality and cuteness. I am so excited to have a Bodega P...",
              "image_url": "http://media.erincooks.com/images/bodega/bodega1.jpg",
              "score": 1
          },
          {
              "page_id": 5843655,
              "url": "http://erincooks.com/17-and-baking/",
              "title": "Please Welcome Elissa of 17 and Baking",
              "description": "My friend Erin emailed recently alerting me to a program at Dine and Dish that paired new food bloggers with a more experienced counterpart. This mentoring gig sounded like a fun project so I signe...",
              "image_url": "http://media.erincooks.com/images/2009/04/17-and-baking-2.jpg",
              "score": 1
          },
          {
              "page_id": 5843239,
              "url": "http://erincooks.com/kitchen-little-in-mystic-ct/",
              "title": "Kitchen Little in Mystic, CT",
              "description": "On Monday morning I awoke to the official end of summer curled up in a cozy twin bed in CK's grandparent's house in Niantic, Connecticut. The air in the bedroom was crisp and cool and I was starvin...",
              "image_url": "http://media.erincooks.com/images/2010/09/kitchen_little4.jpg",
              "score": 1
          }
      ],
      "sponsored": []
  }
  ```

  
**Response codes:**

  * 200 OK
  * 202 Accepted - Recommendations are not yet available for the provided api_key and/or url
  * 400 Bad Request - api_key or url are missing or malformed
