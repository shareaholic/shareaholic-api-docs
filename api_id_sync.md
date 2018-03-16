Identity Match Service
---

The partner initiated identity match is used to create a mapping between Shareaholic UUIDs and partner UUIDs.

  http://pixel.shareaholic.com/sync
  
    ?r=       (required; example: http://www.customer.com/?id=${u_id}. Should be URL-encoded.)

Upon receiving the request for the tag from the user's browser, Shareaholic issues a 302 redirect to the specified URL. This 302 redirect includes the Shareaholic UUID (${u_id}). We recommend storing the exact string returned by the Identity Match service in your match table.

For example, you could supply the following redirect URL (r):

    http://pixel.shareaholic.com/sync?r=http://example.com/partners_api?partner_uid=${u_id}

The service would then redirect to a URL (r) like this:

    http://example.com/partners_api?partner_uid=123456789

This 302 redirect includes the Shareaholic UUID.

The protocol may be either `http` or `https`. The following are examples of valid match tag URLs:

    http://pixel.shareaholic.com/sync?r=http://example.com/partners_api?partner_uid=${u_id}
    https://pixel.shareaholic.com/sync?r=http://example.com/partners_api?partner_uid=${u_id}
 
**In order for you to use this service, your redirect URL (r) needs to be whitelisted by Shareaholic. If you're interested in using this service, please [contact us](https://shareaholic.com/contact).**
