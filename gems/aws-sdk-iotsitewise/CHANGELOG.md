Unreleased Changes
------------------

1.39.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2021-11-29)
------------------

* Feature - AWS IoT SiteWise now supports retention configuration for the hot tier storage.

1.35.0 (2021-11-24)
------------------

* Feature - AWS IoT SiteWise now accepts data streams that aren't associated with any asset properties. You can organize data by updating data stream associations.

1.34.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2021-08-23)
------------------

* Feature - Documentation updates for AWS IoT SiteWise

1.30.0 (2021-08-16)
------------------

* Feature - AWS IoT SiteWise added query window for the interpolation interval. AWS IoT SiteWise computes each interpolated value by using data points from the timestamp of each interval minus the window to the timestamp of each interval plus the window.

1.29.0 (2021-08-03)
------------------

* Feature - My AWS Service (placeholder) - This release introduces custom Intervals and offset for tumbling window in metric for AWS IoT SiteWise.

1.28.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2021-07-29)
------------------

* Feature - Added support for AWS IoT SiteWise Edge. You can now create an AWS IoT SiteWise gateway that runs on AWS IoT Greengrass V2. With the gateway,  you can collect local server and equipment data, process the data, and export the selected data from the edge to the AWS Cloud.

1.26.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2021-07-15)
------------------

* Feature - Update the default endpoint for the APIs used to manage asset models, assets, gateways, tags, and account configurations. If you have firewalls with strict egress rules, configure the rules to grant you access to api.iotsitewise.[region].amazonaws.com or api.iotsitewise.[cn-region].amazonaws.com.cn.

1.24.0 (2021-07-07)
------------------

* Feature - This release add storage configuration APIs for AWS IoT SiteWise.

1.23.0 (2021-05-27)
------------------

* Feature - IoT SiteWise Monitor Portal API updates to add alarms feature configuration.

1.22.0 (2021-05-18)
------------------

* Feature - Documentation updates for AWS IoT SiteWise.

1.21.0 (2021-04-28)
------------------

* Feature - AWS IoT SiteWise interpolation API will get interpolated values for an asset property per specified time interval during a period of time.

1.20.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2021-02-08)
------------------

* Feature - Recall CreatePresignedPortalUrl API

1.18.0 (2021-02-03)
------------------

* Feature - Update AccessPolicy API input to support IAM role for IAM mode. Iam role is added as part of accessPolicyIdentity.

1.17.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2020-12-11)
------------------

* Feature - Added the ListAssetRelationships operation and support for composite asset models, which represent structured sets of properties within asset models.

1.15.0 (2020-11-24)
------------------

* Feature - This release adds support for customer managed customer master key (CMK) based encryption in IoT SiteWise.

1.14.0 (2020-11-16)
------------------

* Feature - This release supports Unicode characters for string operations in formulae computes in SiteWise. For more information, search for SiteWise in Amazon What's new or refer the SiteWise documentation.

1.13.0 (2020-11-06)
------------------

* Feature - Remove the CreatePresignedPortalUrl API

1.12.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2020-09-21)
------------------

* Feature - This release supports IAM mode for SiteWise Monitor portals

1.10.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2020-08-24)
------------------

* Feature - Add traversalDirection to ListAssociatedAssetsRequest and add portal status to ListPortalsResponse

1.7.0 (2020-07-06)
------------------

* Feature - This release supports optional start date and end date parameters for the GetAssetPropertyValueHistory API.

1.6.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.5.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2020-05-22)
------------------

* Feature - This release adds support for the standard deviation auto-computed aggregate and improved support for portal logo images in SiteWise.

1.2.0 (2020-05-12)
------------------

* Feature - Documentation updates for iot-bifrost

1.1.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2020-04-29)
------------------

* Feature - Initial release of `aws-sdk-iotsitewise`.