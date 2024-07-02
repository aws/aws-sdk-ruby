Unreleased Changes
------------------

1.96.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.95.0 (2024-06-27)
------------------

* Feature - Doc only update for CloudFront that fixes customer-reported issue

1.94.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2024-05-21)
------------------

* Feature - Model update; no change to SDK functionality.

1.90.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.89.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.88.0 (2024-04-11)
------------------

* Feature - CloudFront origin access control extends support to AWS Lambda function URLs and AWS Elemental MediaPackage v2 origins.

1.87.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.1 (2024-01-10)
------------------

* Issue - Minor performance optimization - replace gsub with delete.

1.86.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2023-11-21)
------------------

* Feature - This release adds support for CloudFront KeyValueStore, a globally managed key value datastore associated with CloudFront Functions.

1.83.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2023-07-28)
------------------

* Feature - Add a new JavaScript runtime version for CloudFront Functions.

1.81.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2023-02-22)
------------------

* Feature - CloudFront now supports block lists in origin request policies so that you can forward all headers, cookies, or query string from viewer requests to the origin *except* for those specified in the block list.

1.75.2 (2023-02-21)
------------------

* Issue - Improve performance of URL signing

1.75.1 (2023-02-15)
------------------

* Issue - Improve performance of `UrlSigner#signed_url` (#2824).

1.75.0 (2023-02-08)
------------------

* Feature - CloudFront Origin Access Control extends support to AWS Elemental MediaStore origins.

1.74.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.73.0 (2022-12-30)
------------------

* Feature - Extend response headers policy to support removing headers from viewer responses

1.72.0 (2022-12-16)
------------------

* Feature - Updated documentation for CloudFront

1.71.0 (2022-12-07)
------------------

* Feature - Introducing UpdateDistributionWithStagingConfig that can be used to promote the staging configuration to the production.

1.70.0 (2022-11-18)
------------------

* Feature - CloudFront API support for staging distributions and associated traffic management policies.

1.69.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2022-08-31)
------------------

* Feature - Update API documentation for CloudFront origin access control (OAC)

1.67.0 (2022-08-24)
------------------

* Feature - Adds support for CloudFront origin access control (OAC), making it possible to restrict public access to S3 bucket origins in all AWS Regions, those with SSE-KMS, and more.

1.66.0 (2022-08-15)
------------------

* Feature - Adds Http 3 support to distributions

1.65.0 (2022-05-16)
------------------

* Feature - Introduced a new error (TooLongCSPInResponseHeadersPolicy) that is returned when the value of the Content-Security-Policy header in a response headers policy exceeds the maximum allowed length.

1.64.0 (2022-04-26)
------------------

* Feature - CloudFront now supports the Server-Timing header in HTTP responses sent from CloudFront. You can use this header to view metrics that help you gain insights about the behavior and performance of CloudFront. To use this header, enable it in a response headers policy.

1.63.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.61.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2021-11-02)
------------------

* Feature - CloudFront now supports response headers policies to add HTTP headers to the responses that CloudFront sends to viewers. You can use these policies to add CORS headers, control browser caching, and more, without modifying your origin or writing any code.

1.57.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2021-07-07)
------------------

* Feature - Amazon CloudFront now provides two new APIs, ListConflictingAliases and AssociateAlias, that help locate and move Alternate Domain Names (CNAMEs) if you encounter the CNAMEAlreadyExists error code.

1.52.0 (2021-06-23)
------------------

* Feature - Amazon CloudFront adds support for a new security policy, TLSv1.2_2021.

1.51.0 (2021-05-26)
------------------

* Feature - Documentation fix for CloudFront

1.50.0 (2021-04-30)
------------------

* Feature - CloudFront now supports CloudFront Functions, a native feature of CloudFront that enables you to write lightweight functions in JavaScript for high-scale, latency-sensitive CDN customizations.

1.49.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2020-12-28)
------------------

* Feature - Amazon CloudFront has deprecated the CreateStreamingDistribution and CreateStreamingDistributionWithTags APIs as part of discontinuing support for Real-Time Messaging Protocol (RTMP) distributions.

1.46.0 (2020-10-21)
------------------

* Feature - CloudFront adds support for managing the public keys for signed URLs and signed cookies directly in CloudFront (it no longer requires the AWS root account).

1.45.0 (2020-10-21)
------------------

* Feature - CloudFront adds support for managing the public keys for signed URLs and signed cookies directly in CloudFront (it no longer requires the AWS root account).

1.44.0 (2020-10-19)
------------------

* Feature - Amazon CloudFront adds support for Origin Shield.

1.43.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-09-17)
------------------

* Feature - Documentation updates for CloudFront

1.41.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2020-09-10)
------------------

* Feature - Cloudfront adds support for Brotli. You can enable brotli caching and compression support by enabling it in your Cache Policy.

1.39.0 (2020-08-31)
------------------

* Feature - CloudFront now supports real-time logging for CloudFront distributions. CloudFront real-time logs are more detailed, configurable, and are available in real time.

1.38.0 (2020-08-28)
------------------

* Feature - You can now manage CloudFront's additional, real-time metrics with the CloudFront API.

1.37.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.1 (2020-08-19)
------------------

* Issue - Use Aws::Json for parsing instead of JSON

1.36.0 (2020-07-30)
------------------

* Feature - Documentation updates for CloudFront

1.35.0 (2020-07-20)
------------------

* Feature - CloudFront adds support for cache policies and origin request policies. With these new policies, you can now more granularly control the query string, header, and cookie values that are included in the cache key and in requests that CloudFront sends to your origin.

1.34.0 (2020-07-07)
------------------

* Feature - Amazon CloudFront adds support for a new security policy, TLSv1.2_2019.

1.33.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2020-06-16)
------------------

* Feature - Documentation updates for CloudFront

1.30.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.30.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-06-05)
------------------

* Feature - Amazon CloudFront adds support for configurable origin connection attempts and origin connection timeout.

1.28.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.1 (2020-05-18)
------------------

* Issue - Split on first instance of `://` in `Aws::CloudFront::Signer` to handle 3rd party s3:// urls.

1.27.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2020-02-04)
------------------

* Feature - Documentation updates for CloudFront

1.24.0 (2019-12-18)
------------------

* Feature - Documentation updates for CloudFront

1.23.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.1 (2019-09-19)
------------------

* Issue - Fix url argument of #signed_cookie.

1.22.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2019-06-14)
------------------

* Feature - A new datatype in the CloudFront API, AliasICPRecordal, provides the ICP recordal status for CNAMEs associated with distributions. AWS services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content publicly on an alternate domain name, also known as a CNAME, that they have added to CloudFront. The status value is returned in the CloudFront response; you cannot configure it yourself. The status is set to APPROVED for all CNAMEs (aliases) in regions outside of China.

1.18.0 (2019-05-21)
------------------

* Feature - API update.

1.17.0 (2019-05-15)
------------------

* Feature - API update.

1.16.0 (2019-05-14)
------------------

* Feature - API update.

1.15.0 (2019-03-22)
------------------

* Feature - API update.

1.14.0 (2019-03-21)
------------------

* Feature - API update.

1.13.0 (2019-03-18)
------------------

* Feature - API update.

1.12.0 (2019-03-14)
------------------

* Feature - API update.

1.11.0 (2018-11-20)
------------------

* Feature - API update.

1.10.1 (2018-11-09)
------------------

* Issue - Update operation names sending over the wire. This has zero affect on current API code usage.

1.10.0 (2018-10-24)
------------------

* Feature - API update.

1.9.0 (2018-10-23)
------------------

* Feature - API update.

1.8.0 (2018-09-25)
------------------

* Feature - API update.

1.7.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.6.0 (2018-09-05)
------------------

* Feature - API update.

1.5.0 (2018-08-14)
------------------

* Feature - API update.

1.4.0 (2018-06-27)
------------------

* Feature - API update.

1.3.0 (2018-06-26)
------------------

* Feature - API update.

1.2.0 (2018-04-02)
------------------

* Feature - API update.

1.1.0 (2017-10-26)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-cloudfront` gemspec metadata.

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

1.0.0.rc9 (2017-07-12)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc7 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc3 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-cloudfront` gem.
