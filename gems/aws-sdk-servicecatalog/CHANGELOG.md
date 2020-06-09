Unreleased Changes
------------------

1.40.0 (2020-06-05)
------------------

* Feature - This release adds support for DescribeProduct and DescribeProductAsAdmin by product name, DescribeProvisioningArtifact by product name or provisioning artifact name, returning launch paths as part of DescribeProduct output and adds maximum length for provisioning artifact name and provisioning artifact description.

1.39.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2020-03-27)
------------------

* Feature - Added "LocalRoleName" as an acceptable Parameter for Launch type in CreateConstraint and UpdateConstraint APIs

1.36.0 (2020-03-20)
------------------

* Feature - Added "productId" and "portfolioId" to responses from CreateConstraint, UpdateConstraint, ListConstraintsForPortfolio, and DescribeConstraint APIs

1.35.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2020-02-19)
------------------

* Feature - The "ListPortfolioAccess" API now has a new optional parameter "OrganizationParentId". When it is provided and if the portfolio with the "PortfolioId" given was shared with an organization or organizational unit with "OrganizationParentId", all accounts in the organization sub-tree under parent which inherit an organizational portfolio share will be listed, rather than all accounts with external shares. To accommodate long lists returned from the new option, the API now supports pagination.

1.33.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2019-07-10)
------------------

* Feature - This release adds support for Parameters in ExecuteProvisionedProductServiceAction and adds functionality to get the default parameter values for a Self-Service Action execution against a Provisioned Product via DescribeServiceActionExecutionParameters

1.30.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2019-06-17)
------------------

* Feature - Restrict concurrent calls by a single customer account for CreatePortfolioShare and DeletePortfolioShare when sharing/unsharing to an Organization.

1.28.0 (2019-06-12)
------------------

* Feature - This release adds a new field named Guidance to update provisioning artifact, this field can be set by the administrator to provide guidance to end users about which provisioning artifacts to use.

1.27.0 (2019-05-30)
------------------

* Feature - Service Catalog ListStackInstancesForProvisionedProduct API enables customers to get details of a provisioned product with type "CFN_STACKSET". By passing the provisioned product id, the API will list account, region and status of each stack instances that are associated with this provisioned product.

1.26.0 (2019-05-22)
------------------

* Feature - Service Catalog UpdateProvisionedProductProperties API enables customers to manage provisioned product ownership. Administrators can now update the user associated to a provisioned product to another user within the same account allowing the new user to describe, update, terminate and execute service actions in that Service Catalog resource. New owner will also be able to list and describe all past records executed for that provisioned product.

1.25.0 (2019-05-21)
------------------

* Feature - API update.

1.24.0 (2019-05-15)
------------------

* Feature - API update.

1.23.0 (2019-05-14)
------------------

* Feature - API update.

1.22.0 (2019-05-08)
------------------

* Feature - API update.

1.21.0 (2019-04-30)
------------------

* Feature - API update.

1.20.0 (2019-03-28)
------------------

* Feature - API update.

1.19.0 (2019-03-21)
------------------

* Feature - API update.

1.18.0 (2019-03-18)
------------------

* Feature - API update.

1.17.0 (2019-03-14)
------------------

* Feature - API update.

1.16.0 (2019-02-05)
------------------

* Feature - API update.

1.15.0 (2018-12-07)
------------------

* Feature - API update.

1.14.0 (2018-11-20)
------------------

* Feature - API update.

1.13.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.13.0 (2018-11-14)
------------------

* Feature - API update.

1.12.0 (2018-11-01)
------------------

* Feature - API update.

1.11.0 (2018-10-24)
------------------

* Feature - API update.

1.10.0 (2018-10-23)
------------------

* Feature - API update.

1.9.0 (2018-10-15)
------------------

* Feature - API update.

1.8.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.7.0 (2018-09-05)
------------------

* Feature - API update.

1.6.0 (2018-06-26)
------------------

* Feature - API update.

1.5.0 (2018-05-16)
------------------

* Feature - API update.

1.4.0 (2018-03-01)
------------------

* Feature - API update.

1.3.0 (2018-02-06)
------------------

* Feature - API update.

1.2.0 (2017-12-05)
------------------

* Feature - API update.

1.1.0 (2017-09-14)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-servicecatalog` gemspec metadata.

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

1.0.0.rc9 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc7 (2017-06-29)
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

* Feature - Initial preview release of the `aws-sdk-servicecatalog` gem.
