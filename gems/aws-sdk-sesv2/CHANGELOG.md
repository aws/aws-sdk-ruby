Unreleased Changes
------------------

1.11.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2020-08-18)
------------------

* Feature - This release includes new APIs to allow customers to add or remove email addresses from their account-level suppression list in bulk.

1.9.0 (2020-07-30)
------------------

* Feature - This release makes more API operations available to customers in version 2 of the Amazon SES API. With these additions, customers can now access sending authorization, custom verification email, and template API operations.  With this release, Amazon SES is also providing new and updated APIs to allow customers to request production access.

1.8.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2020-06-18)
------------------

* Feature - You can now configure Amazon SES to send event notifications when the delivery of an email is delayed because of a temporary issue. For example, you can receive a notification if the recipient's inbox is full, or if there's a temporary problem with the receiving email server.

1.6.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.6.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2019-12-13)
------------------

* Feature - Added the ability to use your own public-private key pair to configure DKIM authentication for a domain identity.

1.1.0 (2019-11-25)
------------------

* Feature - This release includes support for automatically suppressing email addresses that result in hard bounce or complaint events at the account level, and for managing addresses on this account-level suppression list.

1.0.0 (2019-11-13)
------------------

* Feature - Initial release of `aws-sdk-sesv2`.