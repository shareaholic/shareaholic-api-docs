Shareaholic Content Meta Tags
---

If you would like, you can provide Shareaholic with more information about your content. This is done via Shareaholic Content Meta Tags.  These meta tags are placed in the `<head>` of your webpage. You can also use a generic meta tag, an Open Graph tag (og:), Twitter tag (twitter:) or a Shareaholic-specific meta tag. The latter overrides the former in all cases.

Note: At some point, you may run your site through a W3C validator. All Shareaholic Meta Tags are officially registered with W3.org and should not return any warnings.

| Tag | Description | Example |
|-----|-------------|---------|
|shareaholic:url |The canonical URL for the webpage|`<meta name='shareaholic:url' content='https://www.shareaholic.com/blog/pinterest-for-business-tactics/' />`|
|shareaholic:image|The URL of the image that represents the webpage|`<meta name='shareaholic:image' content='https://www.shareaholic.com/blog/wp-content/uploads/2014/08/pinterest-tablet.jpg' />`|
|shareaholic:title|The title that represents the webpage|`<meta name='shareaholic:title' content='3 Brand New Ways Your Business Can Use Pinterest' />`|
|shareaholic:article_author_name|The name of the author of the content of the webpage|`<meta name='shareaholic:article_author_name' content='Nicole Kohler' />`|
|shareaholic:article_author|An URL to the profile of the author of the content of the webpage|`<meta name='shareaholic:article_author' content='https://www.shareaholic.com/blog/author/dwong/' />`|
|shareaholic:keywords|Keywords associated with the content of the webpage|`<meta name='shareaholic:keywords' content='business, guest post, marketing, nicole kohler, pinterest' />`  You may also disambiguate or classify keywords into tags (tag:), categories (cat:) and type (type:). For example: `<meta name='shareaholic:keywords' content='tag:a11y, tag:accessibility, tag:ada, tag:wcag, cat:product updates, type:post' />`|
|shareaholic:language|Language of the content of the webpage|`<meta name='shareaholic:language' content='en-US' />`|
|shareaholic:article_published_time|(ISO 8601) - Timestamp for when the content of the webpage was first published|`<meta name='shareaholic:article_published_time' content='2014-08-05T17:53:26+00:00' />`|
|shareaholic:article_modified_time|(ISO 8601) - Timestamp for when the content on the webpage was last modified|`<meta name='shareaholic:article_modified_time' content='2014-08-19T12:48:49+00:00' />`|
|shareaholic:site_name|The site name which should be displayed for the overall site|`<meta name='shareaholic:site_name' content='The Shareaholic Content Marketing Blog' />`|


Shareaholic Feature Meta Tags
---

| Tag | Description | Example |
|-----|-------------|---------|
|shareaholic:site_id|Your Shareaholic API Key / Site ID|`<meta name='shareaholic:site_id' content='ca08ce11cc98198581a18ece230ab4e2' />`|
|shareaholic:article_visibility|Exclude from Recommendation Engine|`<meta name='shareaholic:article_visibility' content='private' />`|
|shareaholic:article_visibility|Exclude from Recommendation Engine and all Analytics|`<meta name='shareaholic:article_visibility' content='draft' />`|
|shareaholic:shareable_page|Whether the webpage is shareable|`<meta name='shareaholic:shareable_page' content='true' />`|
|shareaholic:outstreamads|Disables Outstream Video Ads|`<meta name='shareaholic:outstreamads' content='disabled' />`|
|shareaholic:drupal_version|Shareaholic for Drupal module version (automatically added by module)|`<meta name='shareaholic:drupal_version' content='7.x-3.6' />`|
|shareaholic:wp_version|Shareaholic for WordPress plugin version (automatically added by plugin)|`<meta name='shareaholic:wp_version' content='7.5.0.3' />`|
