Unreleased Changes
------------------

1.126.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.125.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.124.0 (2025-06-30)
------------------

* Feature - Updated IAM ServiceSpecificCredential support to include expiration, API Key output format instead of username and password for services that will support API keys, and the ability to list credentials for all users in the account for a given service configuration.

1.123.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.122.0 (2025-05-12)
------------------

* Feature - Updating the endpoint list for the Identity and access management (IAM) service

1.121.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.120.0 (2025-03-27)
------------------

* Feature - Update IAM dual-stack endpoints for BJS, IAD and PDT partitions

1.119.0 (2025-03-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.118.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.117.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.116.0 (2025-02-04)
------------------

* Feature - This release adds support for accepting encrypted SAML assertions. Customers can now configure their identity provider to encrypt the SAML assertions it sends to IAM.

1.115.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.114.0 (2024-11-14)
------------------

* Feature - This release includes support for five new APIs and changes to existing APIs that give AWS Organizations customers the ability to use temporary root credentials, targeted to member accounts in the organization.

1.113.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.111.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.110.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.109.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.108.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.107.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.106.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.105.0 (2024-08-15)
------------------

* Feature - Make the LastUsedDate field in the GetAccessKeyLastUsed response optional. This may break customers who only call the API for access keys with a valid LastUsedDate. This fixes a deserialization issue for access keys without a LastUsedDate, because the field was marked as required but could be null.

1.104.0 (2024-08-01)
------------------

* Feature - Add v2 smoke tests and smithy smokeTests trait for SDK testing.

1.103.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.102.0 (2024-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.101.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.100.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.99.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.98.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.97.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.96.0 (2024-04-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.95.0 (2024-04-11)
------------------

* Feature - For CreateOpenIDConnectProvider API, the ThumbprintList parameter is no longer required.

1.94.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2023-12-26)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.92.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.90.0 (2023-11-06)
------------------

* Feature - Add partitional endpoint for iso-e.

1.89.0 (2023-10-25)
------------------

* Feature - Updates to GetAccessKeyLastUsed action to replace NoSuchEntity error with AccessDeniedException error.

1.88.0 (2023-10-24)
------------------

* Feature - Add the partitional endpoint for IAM in iso-f.

1.87.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2023-07-13)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.85.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2023-06-26)
------------------

* Feature - Support for a new API "GetMFADevice" to present MFA device metadata such as device certifications

1.81.0 (2023-06-16)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.80.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2023-06-06)
------------------

* Feature - This release updates the AccountAlias regex pattern with the same length restrictions enforced by the length constraint.

1.78.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2023-03-22)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.76.0 (2023-03-14)
------------------

* Feature - Documentation only updates to correct customer-reported issues

1.75.0 (2023-02-01)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.74.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.73.0 (2022-10-26)
------------------

* Feature - Doc only update that corrects instances of CLI not using an entity.

1.72.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2022-10-13)
------------------

* Feature - Documentation updates for the AWS Identity and Access Management API Reference.

1.70.0 (2022-08-24)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.69.0 (2022-06-08)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.68.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2022-02-17)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.66.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.61.0 (2021-09-22)
------------------

* Feature - Added changes to OIDC API about not using port numbers in the URL.

1.60.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2021-07-21)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.56.0 (2021-07-07)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.55.0 (2021-06-02)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.54.0 (2021-05-20)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.53.0 (2021-05-19)
------------------

* Feature - Add pagination to ListUserTags operation

1.52.0 (2021-03-29)
------------------

* Feature - AWS Identity and Access Management GetAccessKeyLastUsed API will throw a custom error if customer public key is not found for access keys.

1.51.0 (2021-03-23)
------------------

* Feature - Documentation updates for IAM operations and descriptions.

1.50.0 (2021-03-16)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.49.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2021-02-12)
------------------

* Feature - AWS Identity and Access Management now supports tagging for the following resources: customer managed policies, identity providers, instance profiles, server certificates, and virtual MFA devices.

1.47.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-06-24)
------------------

* Feature - Documentation updates for iam

1.41.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.40.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2020-06-03)
------------------

* Feature - GenerateServiceLastAccessedDetails will now return ActionLastAccessed details for certain S3 control plane actions

1.38.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-04-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2020-04-06)
------------------

* Feature - Documentation updates for AWS Identity and Access Management (IAM).

1.34.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-01-23)
------------------

* Feature - This release enables the Identity and Access Management policy simulator to simulate permissions boundary policies.

1.32.0 (2019-11-19)
------------------

* Feature - IAM reports the timestamp when a role's credentials were last used to make an AWS request. This helps you identify unused roles and remove them confidently from your AWS accounts.

1.31.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2019-09-17)
------------------

* Feature - Documentation updates for iam

1.29.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2019-07-12)
------------------

* Feature - Removed exception that was indicated but never thrown for IAM GetAccessKeyLastUsed API

1.27.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2019-06-21)
------------------

* Feature - We are making it easier for you to manage your permission guardrails i.e. service control policies by enabling you to retrieve the last timestamp when an AWS service was accessed within an account or AWS Organizations entity.

1.25.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2019-06-04)
------------------

* Feature - This release adds validation for policy path field. This field is now restricted to be max 512 characters.

1.23.0 (2019-05-21)
------------------

* Feature - API update.

1.22.0 (2019-05-15)
------------------

* Feature - API update.

1.21.0 (2019-05-14)
------------------

* Feature - API update.

1.20.0 (2019-05-06)
------------------

* Feature - API update.

1.19.0 (2019-04-26)
------------------

* Feature - API update.

1.18.0 (2019-04-04)
------------------

* Feature - API update.

1.17.0 (2019-03-22)
------------------

* Feature - API update.

1.16.0 (2019-03-21)
------------------

* Feature - API update.

1.15.0 (2019-03-18)
------------------

* Feature - API update.

1.14.0 (2019-03-14)
------------------

* Feature - API update.

1.13.0 (2018-12-07)
------------------

* Feature - API update.

1.12.0 (2018-11-20)
------------------

* Feature - API update.

1.11.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.11.0 (2018-11-15)
------------------

* Feature - API update.

1.10.0 (2018-10-24)
------------------

* Feature - API update.

1.9.0 (2018-10-23)
------------------

* Feature - API update.

1.8.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.7.0 (2018-09-05)
------------------

* Feature - API update.

1.6.0 (2018-07-12)
------------------

* Feature - API update.

1.5.0 (2018-06-26)
------------------

* Feature - API update.

1.4.0 (2018-03-28)
------------------

* Feature - API update.

1.3.0 (2017-09-18)
------------------

* Feature - API update.

1.2.0 (2017-09-14)
------------------

* Feature - API update.

1.1.0 (2017-09-13)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-iam` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc13 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc12 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc8 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-09)
------------------

* Feature - API update.

* Issue - Fix resource model load path

1.0.0.rc4 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc3 (2017-03-07)
------------------

* Feature - API update.

1.0.0.rc2 (2017-01-24)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-iam` gem.
