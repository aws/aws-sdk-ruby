Unreleased Changes
------------------

1.46.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2020-05-20)
------------------

* Feature - AWS Elemental MediaLive now supports the ability to ingest the content that is streaming from an AWS Elemental Link device: https://aws.amazon.com/medialive/features/link/. This release also adds support for SMPTE-2038 and input state waiters.

1.44.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-04-28)
------------------

* Feature - AWS Elemental MediaLive now supports several new features: enhanced VQ for H.264 (AVC) output encodes; passthrough of timed metadata and of Nielsen ID3 metadata in fMP4 containers in HLS outputs; the ability to generate a SCTE-35 sparse track without additional segmentation, in Microsoft Smooth outputs;  the ability to select the audio from a TS input by specifying the audio track; and conversion of HDR colorspace in the input to an SDR colorspace in the output.

1.42.0 (2020-04-08)
------------------

* Feature - AWS Elemental MediaLive now supports Automatic Input Failover. This feature provides resiliency upstream of the channel, before ingest starts.

1.41.0 (2020-03-09)
------------------

* Feature - AWS Elemental MediaLive now supports the ability to configure the Preferred Channel Pipeline for channels contributing to a Multiplex.

1.40.0 (2019-12-17)
------------------

* Feature - AWS Elemental MediaLive now supports HLS ID3 segment tagging, HLS redundant manifests for CDNs that support different publishing/viewing endpoints, fragmented MP4 (fMP4), and frame capture intervals specified in milliseconds.

1.39.0 (2019-11-25)
------------------

* Feature - AWS Elemental MediaLive now supports the ability to create a multiple program transport stream (MPTS).

1.38.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2019-09-12)
------------------

* Feature - AWS Elemental MediaLive now supports High Efficiency Video Coding (HEVC) for standard-definition (SD), high-definition (HD), and ultra-high-definition (UHD) encoding with HDR support.Encoding with HEVC offers a number of advantages. While UHD video requires an advanced codec beyond H.264 (AVC), high frame rate (HFR) or High Dynamic Range (HDR) content in HD also benefit from HEVC's advancements. In addition, benefits can be achieved with HD and SD content even if HDR and HFR are not needed.

1.36.0 (2019-07-25)
------------------

* Feature - AWS Elemental MediaLive is adding Input Clipping, Immediate Mode Input Switching, and Dynamic Inputs.

1.35.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2019-05-21)
------------------

* Feature - API update.

1.32.0 (2019-05-16)
------------------

* Feature - API update.

1.31.0 (2019-05-15)
------------------

* Feature - API update.

1.30.0 (2019-05-14)
------------------

* Feature - API update.

1.29.0 (2019-05-03)
------------------

* Feature - API update.

1.28.0 (2019-04-05)
------------------

* Feature - API update.

1.27.0 (2019-03-28)
------------------

* Feature - API update.

1.26.0 (2019-03-21)
------------------

* Feature - API update.

1.25.0 (2019-03-18)
------------------

* Feature - API update.

1.24.0 (2019-03-14)
------------------

* Feature - API update.

1.23.0 (2019-03-07)
------------------

* Feature - API update.

1.22.0 (2019-03-05)
------------------

* Feature - API update.

1.21.0 (2019-02-20)
------------------

* Feature - API update.

1.20.0 (2019-02-07)
------------------

* Feature - API update.

1.19.0 (2019-01-25)
------------------

* Feature - API update.

1.18.0 (2018-12-20)
------------------

* Feature - API update.

1.17.0 (2018-12-06)
------------------

* Feature - API update.

1.16.0 (2018-11-20)
------------------

* Feature - API update.

1.15.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.15.0 (2018-11-08)
------------------

* Feature - API update.

1.14.0 (2018-10-24)
------------------

* Feature - API update.

1.13.0 (2018-10-23)
------------------

* Feature - API update.

1.12.0 (2018-10-18)
------------------

* Feature - API update.

1.11.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.10.0 (2018-09-05)
------------------

* Feature - API update.

1.9.0 (2018-08-23)
------------------

* Feature - API update.

1.8.0 (2018-06-26)
------------------

* Feature - API update.

1.7.0 (2018-06-20)
------------------

* Feature - API update.

1.6.0 (2018-06-07)
------------------

* Feature - API update.

1.5.0 (2018-04-20)
------------------

* Feature - API update.

1.4.0 (2018-03-20)
------------------

* Feature - API update.

1.3.0 (2018-03-07)
------------------

* Feature - API update.

1.2.0 (2018-02-08)
------------------

* Feature - API update.

1.1.0 (2018-01-26)
------------------

* Feature - API update.

1.0.0 (2017-11-27)
------------------

* Feature - Initial release of `aws-sdk-medialive`.
