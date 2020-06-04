Unreleased Changes
------------------

1.14.0 (2020-06-04)
------------------

* Feature - You can now restrict direct access to AWS Elemental MediaPackage by securing requests for VOD content using CDN authorization. With CDN authorization, content requests require a specific HTTP header and authorization code.

1.13.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2020-04-23)
------------------

* Feature - Adds tagging support for PackagingGroups, PackagingConfigurations, and Assets

1.10.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2020-02-13)
------------------

* Feature - Adds support for DASH with multiple media presentation description periods triggered by presence of SCTE-35 ad markers in the manifest.Also adds optional configuration for DASH SegmentTemplateFormat to refer to segments by Number with Duration, Number with Timeline or Time with Timeline and compact the manifest by combining duplicate SegmentTemplate tags.

1.8.0 (2019-11-25)
------------------

* Feature - Adds a domain name to PackagingGroups, representing the fully qualified domain name for Assets created in the group.

1.7.0 (2019-11-22)
------------------

* Feature - Includes the submission time of Asset ingestion request in the API response for Create/List/Describe Assets.

1.6.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2019-08-23)
------------------

* Feature - Adds optional Constant Initialization Vector (IV) to HLS Encryption for MediaPackage VOD.

1.4.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2019-05-21)
------------------

* Feature - API update.

1.0.0 (2019-05-20)
------------------

* Feature - Initial release of `aws-sdk-mediapackagevod`.

