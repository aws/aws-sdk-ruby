Unreleased Changes
------------------

1.51.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2023-06-13)
------------------

* Feature - Change the Image Builder ImagePipeline dateNextRun field to more accurately describe the data.

1.46.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2023-03-30)
------------------

* Feature - Adds support for new image workflow details and image vulnerability detection.

1.44.0 (2023-01-30)
------------------

* Feature - Enabled FIPS endpoints for GovCloud (US) regions in SDK.

1.43.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.42.0 (2023-01-17)
------------------

* Feature - Add support for AWS Marketplace product IDs as input during CreateImageRecipe for the parent-image parameter. Add support for listing third-party components.

1.41.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2022-02-21)
------------------

* Feature - This release adds support to enable faster launching for Windows AMIs created by EC2 Image Builder.

1.38.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2021-12-21)
------------------

* Feature - Added a note to infrastructure configuration actions and data types concerning delivery of Image Builder event messages to encrypted SNS topics. The key that's used to encrypt the SNS topic must reside in the account that Image Builder runs under.

1.36.0 (2021-12-20)
------------------

* Feature - This release adds support for importing and exporting VM Images as part of the Image Creation workflow via EC2 VM Import/Export.

1.35.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2021-11-24)
------------------

* Feature - This release adds support for sharing AMIs with Organizations within an EC2 Image Builder Distribution Configuration.

1.33.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2021-09-28)
------------------

* Feature - Fix description for AmiDistributionConfiguration Name property, which actually refers to the output AMI name. Also updated for consistent terminology to use "base" image, and another update to fix description text.

1.30.0 (2021-09-22)
------------------

* Feature - This feature adds support for specifying GP3 volume throughput and configuring instance metadata options for instances launched by EC2 Image Builder.

1.29.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2021-08-04)
------------------

* Feature - Updated list actions to include a list of valid filters that can be used in the request.

1.27.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2021-07-23)
------------------

* Feature - Update to documentation to reapply missing change to SSM uninstall switch default value and improve description.

1.24.0 (2021-07-19)
------------------

* Feature - Documentation updates for reversal of default value for additional instance configuration SSM switch, plus improved descriptions for semantic versioning.

1.23.0 (2021-07-06)
------------------

* Feature - Adds support for specifying parameters to customize components for recipes. Expands configuration of the Amazon EC2 instances that are used for building and testing images, including the ability to specify commands to run on launch, and more control over installation and removal of the SSM agent.

1.22.0 (2021-05-14)
------------------

* Feature - Text-only updates for bundled documentation feedback tickets - spring 2021.

1.21.0 (2021-04-02)
------------------

* Feature - This release adds support for Block Device Mappings for container image builds, and adds distribution configuration support for EC2 launch templates in AMI builds.

1.20.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2021-02-25)
------------------

* Feature - This release introduces a new API (ListImagePackages) for listing packages installed on an image, and adds support for GP3 volume types, and for specifying a time zone in an image pipeline schedule.

1.18.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2020-12-17)
------------------

* Feature - This release adds support for building and distributing container images within EC2 Image Builder.

1.16.0 (2020-10-30)
------------------

* Feature - This feature increases the number of accounts that can be added to the Launch permissions within an Image Builder Distribution configuration.

1.15.0 (2020-09-30)
------------------

* Feature - EC2 Image Builder adds support for copying AMIs created by Image Builder to accounts specific to each Region.

1.14.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2020-07-28)
------------------

* Feature - This release updates distribution configurations to allow periods in AMI names.

1.11.0 (2020-07-01)
------------------

* Feature - EC2 Image Builder adds support for encrypted AMI distribution.

1.10.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2020-06-11)
------------------

* Feature - EC2 Image Builder now supports specifying a custom working directory for your build and test workflows. In addition, Image Builder now supports defining tags that are applied to ephemeral resources created by EC2 Image Builder as part of the image creation workflow.

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.8.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2020-05-14)
------------------

* Feature - This release adds a new parameter (SupportedOsVersions) to the Components API. This parameter lists the OS versions supported by a component.

1.5.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2020-04-16)
------------------

* Feature - This release includes support for additional OS Versions within EC2 Image Builder.

1.3.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2020-02-21)
------------------

* Feature - This release of EC2 Image Builder increases the maximum policy document size for Image Builder resource-based policy APIs.

1.1.0 (2020-02-07)
------------------

* Feature - This version of the SDK includes bug fixes and documentation updates.

1.0.0 (2019-12-02)
------------------

* Feature - Initial release of `aws-sdk-imagebuilder`.
