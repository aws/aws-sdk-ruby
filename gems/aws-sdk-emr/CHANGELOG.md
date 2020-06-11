Unreleased Changes
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.30.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-06-01)
------------------

* Feature - Amazon EMR now supports encrypting log files with AWS Key Management Service (KMS) customer managed keys.

1.28.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2020-04-21)
------------------

* Feature - Amazon EMR adds support for configuring a managed scaling policy for an Amazon EMR cluster. This enables automatic resizing of a cluster to optimize for job execution speed and reduced cluster cost.

1.25.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2019-11-22)
------------------

* Feature - Amazon EMR adds support for concurrent step execution and cancelling running steps. Amazon EMR has added a new Outpost ARN field in the ListCluster and DescribeCluster API responses that is populated for clusters launched in an AWS Outpost subnet.

1.23.0 (2019-11-15)
------------------

* Feature - Access to the cluster ARN makes it easier for you to author resource-level permissions policies in AWS Identity and Access Management. To simplify the process of obtaining the cluster ARN, Amazon EMR has added a new field containing the cluster ARN to all API responses that include the cluster ID.

1.22.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2019-08-16)
------------------

* Feature - Amazon EMR  has introduced an account level configuration called Block Public Access that allows you to block clusters with ports open to traffic from public IP sources (i.e. 0.0.0.0/0 for IPv4 and ::/0 for IPv6) from launching.  Individual ports or port ranges can be added as exceptions to allow public access.

1.20.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2019-05-21)
------------------

* Feature - API update.

1.16.0 (2019-05-15)
------------------

* Feature - API update.

1.15.0 (2019-05-14)
------------------

* Feature - API update.

1.14.0 (2019-04-01)
------------------

* Feature - API update.

1.13.0 (2019-03-22)
------------------

* Feature - API update.

1.12.0 (2019-03-21)
------------------

* Feature - API update.

1.11.0 (2019-03-18)
------------------

* Feature - API update.

1.10.0 (2019-03-14)
------------------

* Feature - API update.

1.9.0 (2019-01-11)
------------------

* Feature - API update.

1.8.0 (2018-11-20)
------------------

* Feature - API update.

1.7.0 (2018-10-24)
------------------

* Feature - API update.

1.6.0 (2018-10-23)
------------------

* Feature - API update.

1.5.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.4.0 (2018-09-05)
------------------

* Feature - API update.

1.3.0 (2018-07-12)
------------------

* Feature - API update.

1.2.0 (2018-06-26)
------------------

* Feature - API update.

1.1.0 (2017-11-22)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-emr` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc12 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc11 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-20)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc7 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc6 (2017-06-29)
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

* Feature - Initial preview release of the `aws-sdk-emr` gem.