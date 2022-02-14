Unreleased Changes
------------------

1.48.0 (2022-02-08)
------------------

* Feature - This release adds support for S3 Batch Replication. Batch Replication lets you replicate existing objects, already replicated objects to new destinations, and objects that previously failed to replicate. Customers will receive object-level visibility of progress and a detailed completion report.

1.47.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2022-01-04)
------------------

* Feature - Documentation updates for the renaming of Glacier to Glacier Flexible Retrieval.

1.45.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Fix a bug where the dualstack plugin was dropping URI paths.

1.43.0 (2021-11-22)
------------------

* Feature - Added Amazon CloudWatch publishing option for S3 Storage Lens metrics.

1.42.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Feature - Support FIPS endpoints for S3 Outposts using Bucket and Access Point ARNs.

1.41.1 (2021-10-20)
------------------

* Issue - use the correct service with the `EndpointProvider` to determine `sigv4_region`.

1.41.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-09-02)
------------------

* Feature - S3 Multi-Region Access Points provide a single global endpoint to access a data set that spans multiple S3 buckets in different AWS Regions.

1.39.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2021-07-26)
------------------

* Feature - S3 Access Point aliases can be used anywhere you use S3 bucket names to access data in S3

1.35.0 (2021-07-22)
------------------

* Feature - Documentation updates for Amazon S3-control

1.34.0 (2021-06-03)
------------------

* Feature - Amazon S3 Batch Operations now supports S3 Bucket Keys.

1.33.0 (2021-05-11)
------------------

* Feature - Documentation updates for Amazon S3-control

1.32.0 (2021-03-24)
------------------

* Feature - Documentation updates for s3-control

1.31.0 (2021-03-18)
------------------

* Feature - S3 Object Lambda is a new S3 feature that enables users to apply their own custom code to process the output of a standard S3 GET request by automatically invoking a Lambda function with a GET request

1.30.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2021-03-08)
------------------

* Feature - Documentation updates for Amazon S3

1.28.0 (2021-02-23)
------------------

* Feature - Documentation updates for s3-control

1.27.0 (2021-02-02)
------------------

* Feature - Amazon S3 Batch Operations now supports Delete Object Tagging

* Feature - Support PrivateLink using the client `:endpoint` option. This patch has several minor behavioral changes. 1) Any operation using the `outpost_id` parameter with a client configured with `:use_dualstack_endpoint` will now raise an `ArgumentError` as dualstack is not supported by S3 Outposts. 2) Fix a bug where clients configured with `:use_dualstack_endpoint` resolved to the wrong endpoint by not prefixing the account id to the host. 3) A client constructed using both `:use_dualstack_endpoint` and `:endpoint` will now raise an `ArgumentError`.

1.26.0 (2021-01-14)
------------------

* Feature - Amazon S3 Batch Operations now supports restoring objects from the S3 Intelligent-Tiering Archive Access and Deep Archive Access tiers.

1.25.0 (2020-11-18)
------------------

* Feature - AWS S3 Storage Lens provides visibility into your storage usage and activity trends at the organization or account level, with aggregations by Region, storage class, bucket, and prefix.

1.24.0 (2020-09-30)
------------------

* Feature - Amazon S3 on Outposts expands object storage to on-premises AWS Outposts environments, enabling you to store and retrieve objects using S3 APIs and features.

* Feature - Support Outpost Access Point and Outpost Bucket ARNs.

1.23.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.20.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2020-05-04)
------------------

* Feature - Amazon S3 Batch Operations now supports Object Lock.

1.16.0 (2020-03-16)
------------------

* Feature - Amazon S3 now supports Batch Operations job tagging.

1.15.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2019-12-03)
------------------

* Feature - Amazon S3 Access Points is a new S3 feature that simplifies managing data access at scale for shared data sets on Amazon S3. Access Points provide a customizable way to access the objects in a bucket, with a unique hostname and access policy that enforces the specific permissions and network controls for any request made through the access point. This represents a new way of provisioning access to shared data sets.

1.13.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2019-05-29)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2019-05-21)
------------------

* Feature - API update.

1.7.0 (2019-05-15)
------------------

* Feature - API update.

1.6.0 (2019-05-14)
------------------

* Feature - API update.

1.5.0 (2019-04-30)
------------------

* Feature - API update.

1.4.0 (2019-03-21)
------------------

* Feature - API update.

1.3.0 (2019-03-18)
------------------

* Feature - API update.

1.2.0 (2019-03-14)
------------------

* Feature - API update.

1.1.0 (2018-11-20)
------------------

* Feature - Support S3 Control plugin working with endpoint trait.

1.0.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.0.0 (2018-11-15)
------------------

* Feature - Initial release of `aws-sdk-s3control`.
