Unreleased Changes
------------------

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