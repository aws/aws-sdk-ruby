2.0.0.rc15
---

* Feature - Aws::S3::Client - Enabling url-encoding of Amazon S3 keys by default.
  Keys are decoded before response data is returned. See #95,
  a632f575d9ac870199904560a143dd31a14e45c7.

* Feature - Aws::ElasticLoadBalancing::Client - Added support for the new tagging
  operations. See b2f6f8f108a9b491d9c5a910bed5eef483250036.

* Feature - Coverage - Now generating coverage reports during Travis builds
  and reporting via Coveralls.io. See 8cf92e64447fa240dacba68075023d5a6d5186b5.

* Upgrading - Aws::DynamoDB::Client - Added a plugin that simplifies working
  with DynamoDB attribute values. Enabled by default, to restore default
  behavior, use `:simple_attributes => false`. See
  d758cde57a776bc9ec1124a70e93c09c0f8b3634.

* Issue - Documentation - Now loading API files with UTF-8 encoding.
  See #92, 9539636b7cee27c531ce2744c40f9a743c9dccc9.

2.0.0.rc1 - 2.0.0.rc14
---

* No changelog.

