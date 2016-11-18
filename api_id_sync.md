Identity Match Service
---

The partner initiated identity match is used to create a mapping between Shareaholic UUIDs and partner UUIDs.

  http://pixel.shareaholic.com/sync
  
    ?r=       (required; example: http://www.customer.com/?id=${u_id})

Upon receiving the request for the tag from the user's browser, Shareaholic issues a 302 redirect to the specified URL. This 302 redirect includes the Shareaholic UUID (${u_id}). We recommend storing the exact string returned by the Identity Match service in your match table.

For example, you could supply this base URL (r):

    http://pixel.shareaholic.com/sync?r=http://example.com/partners_api?partner_uid=${u_id}

The service would then redirect to a URL like this:

    http://example.com/partners_api?partner_uid=123456789

This 302 redirect includes the Shareaholic UUID.

In order for you to use this service, the redirect domain (r) needs to be whitelisted by Shareaholic. If you're interested in using this service, please contact us.
