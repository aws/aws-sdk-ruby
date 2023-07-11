Unreleased Changes
------------------

1.47.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2023-07-06)
------------------

* Feature - Added paginator support to several APIs. Added the ISOLATED enum value to AssetState.

1.45.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2023-02-06)
------------------

* Feature - Adds OrderType to Order structure. Adds PreviousOrderId and PreviousLineItemId to LineItem structure. Adds new line item status REPLACED. Increases maximum length of pagination token.

1.41.0 (2023-01-31)
------------------

* Feature - Enabled FIPS endpoints for GovCloud (US) regions in SDK.

1.40.0 (2023-01-27)
------------------

* Feature - Adding support for payment term in GetOrder, CreateOrder responses.

1.39.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.38.0 (2023-01-13)
------------------

* Feature - This release adds POWER_30_KVA as an option for PowerDrawKva. PowerDrawKva is part of the RackPhysicalProperties structure in the CreateSite request.

1.37.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2022-10-05)
------------------

* Feature - This release adds the Asset state information to the ListAssets response. The ListAssets request supports filtering on Asset state.

1.35.0 (2022-07-14)
------------------

* Feature - This release adds the ShipmentInformation and AssetInformationList fields to the GetOrder API response.

1.34.0 (2022-06-20)
------------------

* Feature - This release adds the AssetLocation structure to the ListAssets response. AssetLocation includes the RackElevation for an Asset.

1.33.0 (2022-06-13)
------------------

* Feature - This release adds API operations AWS uses to install Outpost servers.

1.32.0 (2022-05-12)
------------------

* Feature - Documentation updates for AWS Outposts.

1.31.0 (2022-05-02)
------------------

* Feature - This release adds a new API called ListAssets to the Outposts SDK, which lists the hardware assets in an Outpost.

1.30.0 (2022-03-11)
------------------

* Feature - This release adds address filters for listSites

1.29.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2021-12-08)
------------------

* Feature - This release adds the UpdateOutpost API.

1.25.0 (2021-11-30)
------------------

* Feature - This release adds the SupportedHardwareType parameter to CreateOutpost.

1.24.0 (2021-11-26)
------------------

* Feature - This release adds new APIs for working with Outpost sites and orders.

1.23.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2021-09-03)
------------------

* Feature - This release adds a new API CreateOrder.

1.20.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2021-07-08)
------------------

* Feature - Added property filters for listOutposts

1.16.0 (2021-05-26)
------------------

* Feature - Add ConflictException to DeleteOutpost, CreateOutpost

1.15.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2020-12-21)
------------------

* Feature - In this release, AWS Outposts adds support for three new APIs: TagResource, UntagResource, and ListTagsForResource. Customers can now manage tags for their resources through the SDK.

1.12.0 (2020-11-23)
------------------

* Feature - Support specifying tags during the creation of the Outpost resource. Tags are now returned in the response body of Outpost APIs.

1.11.0 (2020-11-18)
------------------

* Feature - Mark the Name parameter in CreateOutpost as required.

1.10.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

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

1.3.0 (2020-03-19)
------------------

* Feature - Documentation updates for AWS Outposts.

1.2.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2020-02-25)
------------------

* Feature - This release adds DeleteSite and DeleteOutpost.

1.0.0 (2019-12-03)
------------------

* Feature - Initial release of `aws-sdk-outposts`.
