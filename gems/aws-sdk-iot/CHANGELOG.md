Unreleased Changes
------------------

1.56.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2020-08-12)
------------------

* Feature - Audit finding suppressions: Device Defender enables customers to turn off non-compliant findings for specific resources on a per check basis.

1.54.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2020-06-15)
------------------

* Feature - Added support for job executions rollout configuration, job abort configuration, and job executions timeout configuration for AWS IoT Over-the-Air (OTA) Update Feature.

1.51.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.51.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2020-04-30)
------------------

* Feature - AWS IoT Core released Fleet Provisioning for scalable onboarding of IoT devices to the cloud. This release includes support for customer's Lambda functions to validate devices during onboarding. Fleet Provisioning also allows devices to send Certificate Signing Requests (CSR) to AWS IoT Core for signing and getting a unique certificate. Lastly,  AWS IoT Core added a feature to register the same certificate for multiple accounts in the same region without needing to register the certificate authority (CA).

1.47.0 (2020-04-24)
------------------

* Feature - This release adds a new exception type to the AWS IoT SetV2LoggingLevel API.

1.46.0 (2020-04-01)
------------------

* Feature - This release introduces Dimensions for AWS IoT Device Defender. Dimensions can be used in Security Profiles to collect and monitor fine-grained metrics.

1.45.0 (2020-03-12)
------------------

* Feature - As part of this release, we are extending capability of AWS IoT Rules Engine to support IoT Cloudwatch log action. The IoT Cloudwatch log rule action lets you send messages from IoT sensors and applications to Cloudwatch logs for troubleshooting and debugging.

1.44.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-02-04)
------------------

* Feature - Updated ThrottlingException documentation to report that the error code is 400, and not 429, to reflect actual system behaviour.

1.42.0 (2019-12-17)
------------------

* Feature - Added a new Over-the-Air (OTA) Update feature that allows you to use different, or multiple, protocols to transfer an image from the AWS cloud to IoT devices.

1.41.0 (2019-11-25)
------------------

* Feature - This release adds: 1) APIs for fleet provisioning claim and template, 2) endpoint configuration and custom domains, 3) support for enhanced custom authentication, d) support for 4 additional audit checks: Device and CA certificate key quality checks, IoT role alias over-permissive check and IoT role alias access to unused services check, 5) extended capability of AWS IoT Rules Engine to support IoT SiteWise rule action. The IoT SiteWise rule action lets you send messages from IoT sensors and applications to IoT SiteWise asset properties

1.40.0 (2019-11-19)
------------------

* Feature - As part of this release, we are extending the capability of AWS IoT Rules Engine to send messages directly to customer's own web services/applications. Customers can now create topic rules with HTTP actions to route messages from IoT Core directly to URL's that they own. Ownership is proved by creating and confirming topic rule destinations.

1.39.0 (2019-11-13)
------------------

* Feature - This release adds the custom fields definition support in the index definition for AWS IoT Fleet Indexing Service. Custom fields can be used as an aggregation field to run aggregations with both existing GetStatistics API and newly added GetCardinality, GetPercentiles APIs. GetStatistics will return all statistics (min/max/sum/avg/count...) with this release. For more information, please refer to our latest documentation: https://docs.aws.amazon.com/iot/latest/developerguide/iot-indexing.html

1.38.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2019-08-09)
------------------

* Feature - This release adds Quality of Service (QoS) support for AWS IoT rules engine republish action.

1.36.0 (2019-08-05)
------------------

* Feature - In this release, AWS IoT Device Defender introduces audit mitigation actions that can be applied to audit findings to help mitigate security issues.

1.35.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2019-05-21)
------------------

* Feature - API update.

1.31.0 (2019-05-15)
------------------

* Feature - API update.

1.30.0 (2019-05-14)
------------------

* Feature - API update.

1.29.0 (2019-03-21)
------------------

* Feature - API update.

1.28.0 (2019-03-21)
------------------

* Feature - API update.

1.27.0 (2019-03-18)
------------------

* Feature - API update.

1.26.0 (2019-03-14)
------------------

* Feature - API update.

1.25.0 (2019-03-11)
------------------

* Feature - API update.

1.24.0 (2019-02-19)
------------------

* Feature - API update.

1.23.0 (2019-02-15)
------------------

* Feature - API update.

1.22.0 (2019-01-10)
------------------

* Feature - API update.

1.21.0 (2018-11-27)
------------------

* Feature - API update.

1.20.0 (2018-11-20)
------------------

* Feature - API update.

1.19.0 (2018-11-19)
------------------

* Feature - API update.

1.18.0 (2018-10-24)
------------------

* Feature - API update.

1.17.0 (2018-10-23)
------------------

* Feature - API update.

1.16.0 (2018-10-08)
------------------

* Feature - API update.

1.15.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.14.0 (2018-09-05)
------------------

* Feature - API update.

1.13.0 (2018-08-27)
------------------

* Feature - API update.

1.12.0 (2018-08-23)
------------------

* Feature - API update.

1.11.0 (2018-07-31)
------------------

* Feature - API update.

1.10.0 (2018-07-30)
------------------

* Feature - API update.

1.9.0 (2018-06-26)
------------------

* Feature - API update.

1.8.0 (2018-06-01)
------------------

* Feature - API update.

1.7.0 (2018-05-25)
------------------

* Feature - API update.

1.6.0 (2018-05-18)
------------------

* Feature - API update.

1.5.0 (2018-04-23)
------------------

* Feature - API update.

1.4.0 (2018-03-12)
------------------

* Feature - API update.

1.3.0 (2017-12-20)
------------------

* Feature - API update.

1.2.0 (2017-12-05)
------------------

* Feature - API update.

1.1.0 (2017-11-29)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-iot` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc11 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc10 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-12)
------------------

* Feature - API update.

1.0.0.rc7 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc6 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc3 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc2 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-iot` gem.