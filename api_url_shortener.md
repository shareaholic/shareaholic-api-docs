URL Shortener API
---

Shareaholic can automatically shorten any link for you using a shortening service that you specify.

  https://shareaholic.com/v2/share/shorten_link
  
    ?url=       (required; example: http://www.google.com/)
    &service=   (optional; tinyurl | bitly | jmp | google | shrlc)
    &api_key=   (optional)
    &login=     (optional)
    
  Example 1:

    https://shareaholic.com/v2/share/shorten_link?url=http://google.com/&service=google
  
  Success result:

    {"status_code":"200","data":"http://goo.gl/2C60w"}

You can further customize this option with your own bitly and google key if you'd like by passing in additional `api_key` and/or `login` parameters. If you pass this, the API will use your key to shorten the link.

  Example 2:

    https://shareaholic.com/v2/share/shorten_link?url=http://google.com/&service=bitly&api_key=[INSERT YOUR BITLY API KEY]&login=[INSERT YOUR BITLY LOGIN]

  Success result:

    {"status_code":"200","data":"http://bit.ly/18yU7Q9"}

  Error result:
  
    {"status_code":"400","data":{"message":"Invalid URI"}}
    
  URL shortening also checks if URL is safe or not. In the case of unsafe URL, you will receive original URL and message that indicates why URL is not safe. For example:
  
    https://shareaholic.com/v2/share/shorten_link?url=http://testsafebrowsing.appspot.com/apiv4/ANY_PLATFORM/MALWARE/URL/&service=google
  
 Result:
 
   {"status_code":"200","data":"http://testsafebrowsing.appspot.com/apiv4/ANY_PLATFORM/MALWARE/URL/","shortening_error":"Unsafe URL: Malware (Any platform)"}

    
