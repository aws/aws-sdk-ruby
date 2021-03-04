Unreleased Changes
------------------

1.2.3 (2021-03-04)
------------------

* Issue - Include LICENSE, CHANGELOG, and VERSION files with this gem.

1.2.2 (2020-08-13)
------------------

* Issue - Sort query params with same names by value when signing. (#2376)

1.2.1 (2020-06-24)
------------------

* Issue - Don't overwrite `host` header in sigv4 signer if given.

1.2.0 (2020-06-17)
------------------

* Feature - Bump `aws-eventstream` dependency to `~> 1`.

1.1.4 (2020-05-28)
------------------

* Issue - Don't use `expect` header to compute Signature.

1.1.3 (2020-04-27)
------------------

* Issue - Don't rely on the set? method of credentials.

1.1.2 (2020-04-17)
------------------

* Issue - Raise errors when credentials are not set (nil or empty)

1.1.1 (2020-02-26)
------------------

* Issue - Handle signing for unknown protocols and default ports.

1.1.0 (2019-03-13)
------------------

* Feature - Support signature V4 signing per event.

1.0.3 (2018-06-28)
------------------

* Issue - Reduce memory allocation when generating signatures.

1.0.2 (2018-02-21)
------------------

* Issue - Fix Ruby warning: shadowed local variable "headers".

1.0.2 (2017-08-31)
------------------

* Issue - Update `aws-sigv4` gemspec metadata.

1.0.1 (2017-07-12)
------------------

* Issue - Make UTF-8 encoding explicit in spec test.


1.0.0 (2016-11-08)
------------------

* Feature - Initial release of the `aws-sigv4` gem.
