Unreleased Changes
------------------

1.9.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2023-05-30)
------------------

* Feature - Log sources are now versioned. AWS log sources and custom sources will now come with a version identifier that enables producers to vend multiple schema versions to subscribers. Security Lake API have been refactored to more closely align with AWS API conventions.

1.3.0 (2023-03-15)
------------------

* Feature - Make Create/Get/ListSubscribers APIs return resource share ARN and name so they can be used to validate the RAM resource share to accept. GetDatalake can be used to track status of UpdateDatalake and DeleteDatalake requests.

1.2.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.1.0 (2023-01-03)
------------------

* Feature - Allow CreateSubscriber API to take string input that allows setting more descriptive SubscriberDescription field. Make souceTypes field required in model level for UpdateSubscriberRequest as it is required for every API call on the backend. Allow ListSubscribers take any String as nextToken param.

1.0.0 (2022-11-29)
------------------

* Feature - Initial release of `aws-sdk-securitylake`.

