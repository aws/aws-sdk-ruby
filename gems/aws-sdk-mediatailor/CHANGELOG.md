Unreleased Changes
------------------

1.68.0 (2023-07-13)
------------------

* Feature - Adds categories to MediaTailor channel assembly alerts

1.67.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2023-07-07)
------------------

* Feature - The AWS Elemental MediaTailor SDK for Channel Assembly has added support for EXT-X-CUE-OUT and EXT-X-CUE-IN tags to specify ad breaks in HLS outputs, including support for EXT-OATCLS, EXT-X-ASSET, and EXT-X-CUE-OUT-CONT accessory tags.

1.65.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.61.0 (2023-05-05)
------------------

* Feature - This release adds support for AFTER_LIVE_EDGE mode configuration for avail suppression, and adding a fill-policy setting that sets the avail suppression to PARTIAL_AVAIL or FULL_AVAIL_ONLY when AFTER_LIVE_EDGE is enabled.

1.60.0 (2023-02-01)
------------------

* Feature - The AWS Elemental MediaTailor SDK for Channel Assembly has added support for program updates, and the ability to clip the end of VOD sources in programs.

1.59.0 (2023-01-27)
------------------

* Feature - This release introduces the As Run logging type, along with API and documentation updates.

1.58.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.57.0 (2022-10-28)
------------------

* Feature - This release introduces support for SCTE-35 segmentation descriptor messages which can be sent within time signal messages.

1.56.0 (2022-10-25)
------------------

* Feature - This release is a documentation update

1.55.0 (2022-04-21)
------------------

* Feature - This release introduces tiered channels and adds support for live sources. Customers using a STANDARD channel can now create programs using live sources.

1.54.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2022-01-20)
------------------

* Feature - This release adds support for multiple Segment Delivery Configurations. Users can provide a list of names and URLs when creating or editing a source location. When retrieving content, users can send a header to choose which URL should be used to serve content.

1.51.0 (2022-01-06)
------------------

* Feature - This release adds support for filler slate when updating MediaTailor channels that use the linear playback mode.

1.50.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2021-10-12)
------------------

* Feature - MediaTailor now supports ad prefetching.

1.45.0 (2021-09-22)
------------------

* Feature - This release adds support to configure logs for playback configuration.

1.44.0 (2021-09-01)
------------------

* Feature - This release adds support for wall clock programs in LINEAR channels.

1.43.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-07-08)
------------------

* Feature - Add ListAlerts for Channel, Program, Source Location, and VOD Source to return alerts for resources.

1.40.0 (2021-06-23)
------------------

* Feature - Update GetChannelSchedule to return information on ad breaks.

1.39.0 (2021-06-16)
------------------

* Feature - Adds AWS Secrets Manager Access Token Authentication for Source Locations

1.38.0 (2021-03-16)
------------------

* Feature - MediaTailor channel assembly is a new manifest-only service that allows you to assemble linear streams using your existing VOD content.

1.37.0 (2021-03-12)
------------------

* Feature - MediaTailor channel assembly is a new manifest-only service that allows you to assemble linear streams using your existing VOD content.

1.36.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2021-02-15)
------------------

* Feature - MediaTailor now supports specifying aliases for dynamic variables. This allows use cases such as binding multiple origin domains to a single MediaTailor playback configuration.

1.34.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-10-23)
------------------

* Feature - MediaTailor now supports ad marker passthrough for HLS. Use AdMarkerPassthrough to pass EXT-X-CUE-IN, EXT-X-CUE-OUT, and EXT-X-SPLICEPOINT-SCTE35 from origin manifests into personalized manifests.

1.32.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-06-23)
------------------

* Feature - AWS Elemental MediaTailor SDK now allows configuration of Bumper.

1.28.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.28.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2020-04-16)
------------------

* Feature - AWS Elemental MediaTailor SDK now allows configuration of Avail Suppression.

1.24.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2020-02-14)
------------------

* Feature - AWS Elemental MediaTailor SDK now allows configuration of Personalization Threshold for HLS and DASH streams.

1.22.0 (2019-11-26)
------------------

* Feature - AWS Elemental MediaTailor SDK now allows configuration of the Live Pre-Roll feature for HLS and DASH streams.

1.21.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2019-05-21)
------------------

* Feature - API update.

1.16.0 (2019-05-15)
------------------

* Feature - API update.

1.15.0 (2019-05-14)
------------------

* Feature - API update.

1.14.0 (2019-04-24)
------------------

* Feature - API update.

1.13.0 (2019-03-21)
------------------

* Feature - API update.

1.12.0 (2019-03-18)
------------------

* Feature - API update.

1.11.0 (2019-03-14)
------------------

* Feature - API update.

1.10.0 (2019-02-13)
------------------

* Feature - API update.

1.9.0 (2018-12-05)
------------------

* Feature - API update.

1.8.0 (2018-11-20)
------------------

* Feature - API update.

1.7.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.7.0 (2018-11-14)
------------------

* Feature - API update.

1.6.0 (2018-10-24)
------------------

* Feature - API update.

1.5.0 (2018-10-23)
------------------

* Feature - API update.

1.4.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.3.0 (2018-09-05)
------------------

* Feature - API update.

1.2.0 (2018-06-26)
------------------

* Feature - API update.

1.1.0 (2018-06-08)
------------------

* Feature - API update.

1.0.0 (2018-06-01)
------------------

* Feature - Initial release of `aws-sdk-mediatailor`.
