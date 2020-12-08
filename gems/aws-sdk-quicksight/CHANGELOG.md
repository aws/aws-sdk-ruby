Unreleased Changes
------------------

1.38.0 (2020-12-08)
------------------

* Feature - Added new parameters for join optimization.

1.37.0 (2020-11-24)
------------------

* Feature - Support for embedding without user registration. New enum EmbeddingIdentityType. A potential breaking change. Affects code that refers IdentityType enum type directly instead of literal string value.

1.36.0 (2020-11-16)
------------------

* Feature - Adding new parameters for dashboard persistence

1.35.0 (2020-11-11)
------------------

* Feature - QuickSight now supports Column-level security and connecting to Oracle data source.

1.34.0 (2020-10-23)
------------------

* Feature - Support description on columns.

1.33.0 (2020-10-01)
------------------

* Feature - QuickSight now supports connecting to AWS Timestream data source

1.32.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2020-09-23)
------------------

* Feature - Added Sheet information to DescribeDashboard, DescribeTemplate and DescribeAnalysis API response.

1.30.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-09-08)
------------------

* Feature - Adds tagging support for QuickSight customization resources.  A user can now specify a list of tags when creating a customization resource and use a customization ARN in QuickSight's tagging APIs.

1.28.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2020-08-17)
------------------

* Feature - Amazon QuickSight now supports programmatic creation and management of analyses with new APIs.

1.26.0 (2020-07-22)
------------------

* Feature - New API operations - GetSessionEmbedUrl, CreateNamespace, DescribeNamespace, ListNamespaces, DeleteNamespace, DescribeAccountSettings, UpdateAccountSettings, CreateAccountCustomization, DescribeAccountCustomization, UpdateAccountCustomization, DeleteAccountCustomization. Modified API operations to support custom permissions restrictions - RegisterUser, UpdateUser, UpdateDashboardPermissions

1.25.0 (2020-07-06)
------------------

* Feature - Add Theme APIs and update Dashboard APIs to support theme overrides.

1.24.0 (2020-06-26)
------------------

* Feature - Added support for cross-region DataSource credentials copying.

1.23.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.22.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2020-05-26)
------------------

* Feature - Add DataSetArns to QuickSight DescribeDashboard API response.

1.19.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.1 (2020-03-02)
------------------

* Issue - Republish the previously yanked version.

1.17.0 (2020-02-28)
------------------

* Issue - This version has been yanked. (#2239)
* Feature - Added SearchDashboards API that allows listing of dashboards that a specific user has access to.

1.16.0 (2019-12-09)
------------------

* Feature - Documentation updates for QuickSight

1.15.0 (2019-11-26)
------------------

* Feature - Documentation updates for QuickSight

1.14.0 (2019-11-20)
------------------

* Feature - Amazon QuickSight now supports programmatic creation and management of data sources, data sets, dashboards and templates with new APIs. Templates hold dashboard metadata, and can be used to create copies connected to the same or different dataset as required. Also included in this release are APIs for SPICE ingestions, fine-grained access control over AWS resources using AWS Identity and Access Management (IAM) policies, as well AWS tagging. APIs are supported for both Standard and Enterprise Edition, with edition-specific support for specific functionality.

1.13.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2019-07-10)
------------------

* Feature - Amazon QuickSight now supports embedding dashboards for all non-federated QuickSight users. This includes IAM users, AD users and users from the QuickSight user pool. The get-dashboard-embed-url API accepts QUICKSIGHT as identity type with a user ARN to authenticate the embeddable dashboard viewer as a non-federated user.

1.10.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2019-06-17)
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

1.5.0 (2019-03-21)
------------------

* Feature - API update.

1.4.0 (2019-03-18)
------------------

* Feature - API update.

1.3.0 (2019-03-14)
------------------

* Feature - API update.

1.2.0 (2019-03-11)
------------------

* Feature - API update.

1.1.0 (2018-12-17)
------------------

* Feature - API update.

1.0.0 (2018-11-20)
------------------

* Feature - Initial release of `aws-sdk-quicksight`.