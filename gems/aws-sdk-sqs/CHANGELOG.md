Unreleased Changes
------------------

1.70.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2023-11-09)
------------------

* Feature - This release enables customers to call SQS using AWS JSON-1.0 protocol and bug fix.

1.66.0 (2023-11-08)
------------------

* Feature - This release enables customers to call SQS using AWS JSON-1.0 protocol.

1.65.0 (2023-10-31)
------------------

* Feature - Update `QueuePoller` to allow for the definition of an `after_empty_receive` callback which is triggered when a polling request returns no records.

1.64.0 (2023-10-02)
------------------

* Feature - Update QueuePoller to handle duplicate messages before yielding. Fixes bug in (#2913).

1.63.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2023-07-28)
------------------

* Feature - Documentation changes related to SQS APIs.

1.61.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2023-06-06)
------------------

* Feature - Amazon SQS adds three new APIs - StartMessageMoveTask, CancelMessageMoveTask, and ListMessageMoveTasks to automate redriving messages from dead-letter queues to source queues or a custom destination.

1.56.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2023-05-05)
------------------

* Feature - Revert previous SQS protocol change.

1.54.0 (2023-05-04)
------------------

* Feature - This release enables customers to call SQS using AWS JSON-1.0 protocol.

1.53.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.52.1 (2022-12-02)
------------------

* Issue - Raise ArgumentError when QueuePoller's :max_number_of_messages is not a positive integer.

1.52.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.1 (2022-05-02)
------------------

* Issue - Parse the region from the `queue_url` param only if the component is exactly `sqs`.

1.51.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2021-11-23)
------------------

* Feature - Amazon SQS adds a new queue attribute, SqsManagedSseEnabled, which enables server-side queue encryption using SQS owned encryption keys.

1.46.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2021-08-31)
------------------

* Feature - Amazon SQS adds a new queue attribute, RedriveAllowPolicy, which includes the dead-letter queue redrive permission parameters. It defines which source queues can specify dead-letter queues as a JSON object.

1.42.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-07-01)
------------------

* Feature - Documentation updates for Amazon SQS.

1.39.0 (2021-05-27)
------------------

* Feature - Documentation updates for Amazon SQS for General Availability of high throughput for FIFO queues.

1.38.0 (2021-03-25)
------------------

* Feature - Documentation updates for Amazon SQS

1.37.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2020-12-17)
------------------

* Feature - Amazon SQS adds queue attributes to enable high throughput FIFO.

1.34.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2020-08-31)
------------------

* Feature - Documentation updates for SQS.

1.31.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2020-06-22)
------------------

* Feature - AWS SQS adds pagination support for ListQueues and ListDeadLetterSourceQueues APIs

1.27.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.27.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.1 (2019-11-08)
------------------

* Issue - Support VPC Endpoint pattern in Aws::SQS::Plugins::QueueUrl (Github #2114)

1.23.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2019-08-28)
------------------

* Feature - Added support for message system attributes, which currently lets you send AWS X-Ray trace IDs through Amazon SQS.

1.21.0 (2019-08-21)
------------------

* Feature - This release provides a way to add metadata tags to a queue when it is created. You can use tags to organize and identify your Amazon SQS queues for cost allocation.

1.20.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2019-07-19)
------------------

* Feature - This release updates the information about the availability of FIFO queues and includes miscellaneous fixes.

1.18.1 (2019-07-17)
------------------

* Issue - Skip `:message_attributes` validation for empty attributes. (Github Issue #2081)

1.18.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2019-05-21)
------------------

* Feature - API update.

1.15.0 (2019-05-15)
------------------

* Feature - API update.

1.14.0 (2019-05-14)
------------------

* Feature - API update.

1.13.0 (2019-03-21)
------------------

* Feature - API update.

1.12.0 (2019-03-18)
------------------

* Feature - API update.

1.11.0 (2019-03-14)
------------------

* Feature - API update.

1.10.0 (2018-11-20)
------------------

* Feature - API update.

1.9.0 (2018-10-24)
------------------

* Feature - API update.

1.8.0 (2018-10-23)
------------------

* Feature - API update.

1.7.0 (2018-09-26)
------------------

* Feature - API update.

1.6.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.5.0 (2018-09-05)
------------------

* Feature - API update.

1.4.0 (2018-06-26)
------------------

* Feature - API update.

1.3.0 (2017-10-19)
------------------

* Feature - API update.

1.2.0 (2017-10-06)
------------------

* Feature - API update.

1.1.0 (2017-09-14)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-sqs` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc14 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc13 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc9 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc8 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-05)
------------------

* Feature - API update.

1.0.0.rc4 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc3 (2017-01-24)
------------------

* Feature - API update.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-sqs` gem.
