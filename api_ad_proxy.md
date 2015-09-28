Ad Proxy API
---

The Ad Proxy serves sponsored advertisements and a publisher's own related content

  http(s)://recs.shareaholic.com/rec/
  
    ?location=  (required; example: http://www.google.com/ - url of the source page)
    &internal=  (required; integer - the number of internal pages to return in the response. The actual amount returned may be less than requested)
    &api_key=   (required)
    &sponsored= (optional; integer -  Indicates the number of sponsored pages to return in the response. The actual amount returned may be less than requested)
    &canonical= (optional; the canonical URL of the page if known)
    
**Example request:**

    http://recs.shareaholic.com/rec/?location=http%3A%2F%2Fwww.drewlepp.com%2Fblog%2Fwhat-the-wine-world-can-teach-us-about-user-experience%2F&url=http%3A%2F%2Fwww.drewlepp.com%2Fblog%2Fwhat-the-wine-world-can-teach-us-about-user-experience%2F&canonical=http%3A%2F%2Fwww.drewlepp.com%2Fblog%2Fwhat-the-wine-world-can-teach-us-about-user-experience%2F&internal=18&sponsored=0&api_key=e0fcc37ce89b4f078ce9c78f645793aa
  
**Example response:**
  
  ```json
{
    "id": "f7bf52e1-57fa-473d-9a19-0f914f7d74c8",
    "timestamp": "2015-09-23T15:08:38.082Z",
    "request": {
        "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36",
        "forwarded_for": [
            "96.89.219.86"
        ],
        "remote_address": "10.11.200.36:32972",
        "api_key": "e0fcc37ce89b4f078ce9c78f645793aa",
        "url": "http://www.drewlepp.com/blog/what-the-wine-world-can-teach-us-about-user-experience/",
        "sponsored": 0,
        "internal": 18
    },
    "internal": [{
        "source": 3,
        "content_id": "b88879cbbfb03ee4961619458e7abce9",
        "url": "http://www.drewlepp.com/blog/ux-resources/",
        "title": "UX Resources",
        "description": "Like Ron Swanson, my recommendation is essentially a guarantee. These are amazing UXÂ resources to help you understand the field of user experience and beyond. A bit of everything: UX, UI and Front-End Engineering alistapart.com A List Apart explores the design, development, and meaning of web content, with a special focus on web standards and best â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2014/10/user_research1.jpg",
        "score": 13,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "e35f303e566b4b8afac6382a16fcc803",
        "url": "http://www.drewlepp.com/blog/the-ultimate-marketing-site-launch-checklist-to-get-happy-users/",
        "title": "The Ultimate Marketing Site Launch Checklist to Get Happy Users",
        "description": "Youâ€™ve checked your links, tested on different browsers, and settled on the perfect tagline to get your productâ€™s message acrossâ€¦ â€¦But something else to keep in mind when preparing your website for launch is how every element of your site will affect its usersâ€™ happiness. According to on an intensive study by user researcher, Pamela â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2015/05/ux-website-design-checklist2-e1433019675520-1024x499.jpg",
        "score": 12,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "baa3fc7d2e840a3b619847a1b9ac063a",
        "url": "http://www.drewlepp.com/blog/ux/",
        "title": "What is UX?",
        "description": "On a recent Thursday evening, I stepped outside my little design bubble and attended a panel discussion called â€œHow to Sell Design Thinking to your Company or Client.â€ Overall, the food was good and discussion was interesting, insightful and funny (which Iâ€™ve found to beÂ rare for some of these events). Â Most interesting to me, one â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2013/11/ux_explaination.jpg",
        "score": 11,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "f72746b8e9ad63399034b60084a01f23",
        "url": "http://www.drewlepp.com/blog/why-and-how-to-incorporate-copywriting-in-your-design-process/",
        "title": "How to Bring Copywriting into Your Design Process - Drew Lepp Designers | UX UI Designer",
        "description": "Copywriting, written content strategy and messaging help complete an authentic trustworthy experience within your user experience design.",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2015/03/copywriting2-1024x339.jpg",
        "score": 10,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "2ab635c42e2b959d054f8ccc2c32d7ea",
        "url": "http://www.drewlepp.com/blog/5-big-benefits-design-thinking/",
        "title": "5 Big Benefits of Design Thinking",
        "description": "I dream big. I always have and there are no signs of slowing down any time soon. But, an occasional peril of â€œThe Big Thinkerâ€ is dreaming a little too big, getting overwhelmed with wonderful ideas and eventually abandoning the project without creating something of tangible value. Recognizing this as a personal fault, Iâ€™m always â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2014/11/design-thinking.jpg",
        "score": 9,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "9570e015bcc1b5bb821c918a417e55a8",
        "url": "http://www.drewlepp.com/blog/can-machine-learning-improve-user-experience/",
        "title": "How to Improve UX with Machine Leaning: A Wonderful Lesson from Netflix and More",
        "description": "Netflix instant streaming is both one of the best and the worst products to be developed in the recent years. Best, because its helped make sitting at home for eight hours on a Saturday,Â binge watching the latest â€œwater cooler TVâ€ almost feel productive. And I LOVEÂ being productive (especially whileÂ sitting motionless and eating cookies by the â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2014/11/machine_learning-e1416062283732.jpg",
        "score": 8,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "58ff0bf9c34afa3ecc3e05c4a2ddd274",
        "url": "http://www.drewlepp.com/blog/ux-design-results-significant-return-investment-roi/",
        "title": "The ROI* of UX Design",
        "description": "Understand the value and return on investment or ROI of UX or user experience design",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2014/11/stripes_money-1024x546.jpg",
        "score": 7,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "cdeb25c36e7453a4b02829c333135c87",
        "url": "http://www.drewlepp.com/blog/four-storytelling-techniques-for-user-experience-designers/",
        "title": "Four Storytelling Techniques For User Experience Designers",
        "description": "Thereâ€™s a lot of talk about storytelling in these days. But a lot of it is quite clichÃ©. The focus of storytelling in business has become very out of balance. Most of the ideas about storytelling in business focus on using storytelling to craft a story for your customer â€“ a story thatâ€™s marketing focused. â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2015/07/sarahdoody1.png",
        "score": 6,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "35ceca20c4882dfb463ef714cd20bf60",
        "url": "http://www.drewlepp.com/blog/futura/",
        "title": "An ode to the geometry, grace and glory of Futura.",
        "description": "Note: This was written in 2009 when I had my original blog post. Some of the references may be dated but most of my thoughts are still the same. IÂ definitelyÂ canâ€™t handle a Â Red Bull + Vodka like I did years ago. Todayâ€™s mini moment is brought to us by Paul Renner, the humble typographer, designer â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2013/11/futura-1024x460.jpg",
        "score": 5,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "9331e079b04d65957935296076f73b9f",
        "url": "http://www.drewlepp.com/blog/why-you-need-user-interviews/",
        "title": "Why you NEED user interviews",
        "description": "Before we start investigating the whys, whens, and hows of conducting user interviews, itâ€™s important to get a sense of what, exactly, user interviews can do for you and your new product or service. As any entrepreneur can attest, when youâ€™re devoting every thought of every waking hour to the development of a new idea, â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2014/10/user_research1.jpg",
        "score": 4,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "d8510e5a5d522265c67a149ed1769313",
        "url": "http://www.drewlepp.com/blog/how-non-profits-can-use-ux-to-create-impact/",
        "title": "Interview: How Non-Profits can use UX to Create Impact",
        "description": "Here, we are firm believers in how design can be used to create positive experiences, help people flourish and ultimately change the world in some way. We were fortunate to be able to talk to designer and co-founder of GreatPositive, Matthew Martindale about how design can help non-profits increase their impact. Talk a bit about â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2015/05/matthew-ux-for-non-profits.png",
        "score": 3,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "3f1895f8c73d7891439e6118d76fc28b",
        "url": "http://www.drewlepp.com/blog/dont-overthink-ok-trust-intuition/",
        "title": "Donâ€™t Overthink It: Why it's OKÂ to Trust Your Intuition",
        "description": "If youâ€™re anything like me, when working on a user-centered design project, youâ€™re much more comfortable relying on carefully collected data from actual or potential users than on the opinion of one personâ€”even (or especially) if that person is you. But in the real world, sometimes the data just isnâ€™t there or pressure to meet â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2015/02/brain2-1024x467.jpg",
        "score": 2,
        "channel_id": "internal"
    }, {
        "source": 3,
        "content_id": "faf949248ff2b57ee20c5fecc79e5dd2",
        "url": "http://www.drewlepp.com/blog/think-like-designer/",
        "title": "6 Ways to Think Like a Designer",
        "description": "In order to think like a designer, letâ€™s talk about what â€œdesignerâ€ and â€œdesignâ€ really mean.Â I have two favorite definitions. The first comes from Wikipedia. Very succinctly, it states: â€œAÂ designerÂ is a person whoÂ designs.â€œ The second:Â â€œDesign: being creative with a purpose.â€ The truth is, every single person is capable of doing both of those things. Designer â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2015/01/thinklikeadesigner-1024x512.jpg",
        "score": 1,
        "channel_id": "internal"
    }, {
        "source": 4,
        "content_id": "db6d5df76df9d5cf757b8e3ae9dd5fd9debc79ed7ce9fd5d",
        "url": "http://www.drewlepp.com/blog/ux/",
        "title": "What is UX?",
        "description": "On a recent Thursday evening, I stepped outside my little design bubble and attended a panel discussion called â€œHow to Sell Design Thinking to your Company or Client.â€ Overall, the food was good and discussion was interesting, insightful and funny (which Iâ€™ve found to beÂ rare for some of these events). Â Most interesting to me, one â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2013/11/ux_explaination.jpg",
        "score": 4611686014132420600,
        "channel_id": "core-recommender"
    }, {
        "source": 4,
        "content_id": "d7bd7bedb6b673879a77475fddbd3869cedfd36e1ef35e1e",
        "url": "http://www.drewlepp.com/blog/why-and-how-to-incorporate-copywriting-in-your-design-process/",
        "title": "How to Bring Copywriting into Your Design Process - Drew Lepp Designers | UX UI Designer",
        "description": "Copywriting, written content strategy and messaging help complete an authentic trustworthy experience within your user experience design.",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2015/03/copywriting2-1024x339.jpg",
        "score": 4611686014132420600,
        "channel_id": "core-recommender"
    }, {
        "source": 4,
        "content_id": "d3adb56b5efcd9ce35d38777f39eb5d5b7f577d79cedee38",
        "url": "http://www.drewlepp.com/blog/the-ultimate-marketing-site-launch-checklist-to-get-happy-users/",
        "title": "The Ultimate Marketing Site Launch Checklist to Get Happy Users",
        "description": "Youâ€™ve checked your links, tested on different browsers, and settled on the perfect tagline to get your productâ€™s message acrossâ€¦ â€¦But something else to keep in mind when preparing your website for launch is how every element of your site will affect its usersâ€™ happiness. According to on an intensive study by user researcher, Pamela â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2015/05/ux-website-design-checklist2-e1433019675520-1024x499.jpg",
        "score": 4611686014132420600,
        "channel_id": "core-recommender"
    }, {
        "source": 4,
        "content_id": "ddb6ddd35edf6bbd5eefbd1ce776bd6b5edcd5ee3a69c739",
        "url": "http://www.drewlepp.com/blog/can-machine-learning-improve-user-experience/",
        "title": "How to Improve UX with Machine Leaning: A Wonderful Lesson from Netflix and More",
        "description": "Netflix instant streaming is both one of the best and the worst products to be developed in the recent years. Best, because its helped make sitting at home for eight hours on a Saturday,Â binge watching the latest â€œwater cooler TVâ€ almost feel productive. And I LOVEÂ being productive (especially whileÂ sitting motionless and eating cookies by the â€¦",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2014/11/machine_learning-e1416062283732.jpg",
        "score": 4611686014132420600,
        "channel_id": "core-recommender"
    }, {
        "source": 4,
        "content_id": "7bdd9cf5fd34f36dda6f8f1c6bb7def3d7bcd9c71f71c6f7",
        "url": "http://www.drewlepp.com/blog/ux-design-results-significant-return-investment-roi/",
        "title": "The ROI* of UX Design",
        "description": "Understand the value and return on investment or ROI of UX or user experience design",
        "image_url": "http://www.drewlepp.com/blog/wp-content/uploads/2014/11/stripes_money-1024x546.jpg",
        "score": 4611686014132420600,
        "channel_id": "core-recommender"
    }]
}
  ```

  
**Response codes:**

  * 200 OK
  * 202 Accepted - Recommendations are not yet available for the provided api_key and/or url
  * 400 Bad Request - api_key or location are missing or malformed
