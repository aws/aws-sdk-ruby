Unreleased Changes
------------------

1.168.0 (2025-11-17)
------------------

* Feature - Adds configurations for spatial/temporal adaptive quantization in AV1 codec, and conversion to HLG output color space in H265 codec.

1.167.0 (2025-11-14)
------------------

* Feature - Removed all the value constraint (min/max) for the shape definitions (e.g. integerMin0Max3600) on the C2j models to get rid of the need to request an exemption from the SDK team whenever a shape definition (e.g. integerMin0Max3600) is changed.

1.166.0 (2025-10-22)
------------------

* Feature - Add 3 API operations for fetching alerts: ListAlerts (Channels), ListClusterAlerts (MediaLive Anywhere), and ListMultiplexAlerts

1.165.0 (2025-10-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.164.0 (2025-10-03)
------------------

* Feature - AWS Elemental MediaLive enables Mediapackage V2 users to configure ID3, KLV, Nielsen ID3, and Segment Length related parameters through the Mediapackage output group.

1.163.0 (2025-09-19)
------------------

* Feature - Add MinBitrate for QVBR mode under H264/H265/AV1 output codec. Add GopBReference, GopNumBFrames, SubGopLength fields under H265 output codec.

1.162.0 (2025-09-11)
------------------

* Feature - AWS Elemental MediaLive adds a new feature in MediaPackage output group that enables MediaPackage V2 users to control HLS-related parameters directly in MediaLive. These parameter settings are then reflected in MediaPackage outputs, providing more streamlined control over HLS configurations.

1.161.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.160.0 (2025-08-22)
------------------

* Feature - AWS Elemental MediaLive now has a field called "SubtitleRows" for controlling subtitle row count for DVB-Sub and Burn-In captions outputs

1.159.0 (2025-08-14)
------------------

* Feature - CMAF Ingest output groups in MediaLive can now accept one additional destination url for single pipeline channels and up to two additional destination urls for standard channels.

1.158.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.157.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.156.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.155.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.154.0 (2025-05-12)
------------------

* Feature - Add support to the AV1 rate control mode

1.153.0 (2025-05-07)
------------------

* Feature - Enables Updating Anywhere Settings on a MediaLive Anywhere Channel.

1.152.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.151.0 (2025-04-10)
------------------

* Feature - AWS Elemental MediaLive / Features : Add support for CMAF Ingest CaptionLanguageMappings, TimedMetadataId3 settings, and Link InputResolution.

1.150.0 (2025-04-07)
------------------

* Feature - AWS Elemental MediaLive now supports SDI inputs to MediaLive Anywhere Channels in workflows that use AWS SDKs.

1.149.0 (2025-04-02)
------------------

* Feature - Added support for SMPTE 2110 inputs when running a channel in a MediaLive Anywhere cluster. This feature enables ingestion of SMPTE 2110-compliant video, audio, and ancillary streams by reading SDP files that AWS Elemental MediaLive can retrieve from a network source.

1.148.0 (2025-03-11)
------------------

* Feature - Add an enum option DISABLED for Output Locking Mode under Global Configuration.

1.147.0 (2025-03-10)
------------------

* Feature - Adds defaultFontSize and defaultLineHeight as options in the EbuTtDDestinationSettings within the caption descriptions for an output stream.

1.146.0 (2025-02-18)
------------------

* Feature - Adds support for creating CloudWatchAlarmTemplates for AWS Elemental MediaTailor Playback Configuration resources.

1.145.0 (2025-02-12)
------------------

* Feature - Adds a RequestId parameter to all MediaLive Workflow Monitor create operations.  The RequestId parameter allows idempotent operations.

1.144.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.143.0 (2025-01-22)
------------------

* Feature - AWS Elemental MediaLive adds a new feature, ID3 segment tagging, in CMAF Ingest output groups. It allows customers to insert ID3 tags into every output segment, controlled by a newly added channel schedule action Id3SegmentTagging.

1.142.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.141.0 (2024-12-19)
------------------

* Feature - MediaLive is releasing ListVersions api

1.140.0 (2024-12-16)
------------------

* Feature - AWS Elemental MediaLive adds three new features: MediaPackage v2 endpoint support for live stream delivery, KLV metadata passthrough in CMAF Ingest output groups, and Metadata Name Modifier in CMAF Ingest output groups for customizing metadata track names in output streams.

1.139.0 (2024-12-09)
------------------

* Feature - H265 outputs now support disabling the deblocking filter.

1.138.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.137.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.136.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.135.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.134.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.133.0 (2024-09-19)
------------------

* Feature - Adds Bandwidth Reduction Filtering for HD AVC and HEVC encodes, multiplex container settings.

1.132.0 (2024-09-16)
------------------

* Feature - Removing the ON_PREMISE enum from the input settings field.

1.131.0 (2024-09-11)
------------------

* Feature - Adds AV1 Codec support, SRT ouputs, and MediaLive Anywhere support.

1.130.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.129.0 (2024-09-03)
------------------

* Feature - Added MinQP as a Rate Control option for H264 and H265 encodes.

1.128.0 (2024-08-12)
------------------

* Feature - AWS Elemental MediaLive now supports now supports editing the PID values for a Multiplex.

1.127.0 (2024-07-18)
------------------

* Feature - AWS Elemental MediaLive now supports the SRT protocol via the new SRT Caller input type.

1.126.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.125.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.124.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.123.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.122.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.121.0 (2024-05-06)
------------------

* Feature - AWS Elemental MediaLive now supports configuring how SCTE 35 passthrough triggers segment breaks in HLS and MediaPackage output groups. Previously, messages triggered breaks in all these output groups. The new option is to trigger segment breaks only in groups that have SCTE 35 passthrough enabled.

1.120.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.119.0 (2024-04-11)
------------------

* Feature - AWS Elemental MediaLive introduces workflow monitor, a new feature that enables the visualization and monitoring of your media workflows. Create signal maps of your existing workflows and monitor them by creating notification and monitoring template groups.

1.118.0 (2024-04-03)
------------------

* Feature - Cmaf Ingest outputs are now supported in Media Live

1.117.0 (2024-03-25)
------------------

* Feature - Exposing TileMedia H265 options

1.116.0 (2024-02-21)
------------------

* Feature - MediaLive now supports the ability to restart pipelines in a running channel.

1.115.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.114.0 (2023-12-21)
------------------

* Feature - MediaLive now supports the ability to configure the audio that an AWS Elemental Link UHD device produces, when the device is configured as the source for a flow in AWS Elemental MediaConnect.

1.113.0 (2023-12-04)
------------------

* Feature - Adds support for custom color correction on channels using 3D LUT files.

1.112.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.111.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.110.0 (2023-11-17)
------------------

* Feature - MediaLive has now added support for per-output static image overlay.

1.109.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.108.0 (2023-09-11)
------------------

* Feature - AWS Elemental Link now supports attaching a Link UHD device to a MediaConnect flow.

1.107.0 (2023-09-06)
------------------

* Feature - Adds advanced Output Locking options for Epoch Locking: Custom Epoch and Jam Sync Time

1.106.0 (2023-08-24)
------------------

* Feature - MediaLive now supports passthrough of KLV data to a HLS output group with a TS container. MediaLive now supports setting an attenuation mode for AC3 audio when the coding mode is 3/2 LFE. MediaLive now supports specifying whether to include filler NAL units in RTMP output group settings.

1.105.0 (2023-08-01)
------------------

* Feature - AWS Elemental Link devices now report their Availability Zone. Link devices now support the ability to change their Availability Zone.

1.104.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.103.0 (2023-07-07)
------------------

* Feature - This release enables the use of Thumbnails in AWS Elemental MediaLive.

1.102.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.101.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.100.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.99.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.98.0 (2023-03-27)
------------------

* Feature - AWS Elemental MediaLive now supports ID3 tag insertion for audio only HLS output groups. AWS Elemental Link devices now support tagging.

1.97.0 (2023-03-03)
------------------

* Feature - AWS Elemental MediaLive adds support for Nielsen watermark timezones.

1.96.0 (2023-01-19)
------------------

* Feature - AWS Elemental MediaLive adds support for SCTE 35 preRollMilliSeconds.

1.95.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.94.0 (2022-12-20)
------------------

* Feature - This release adds support for two new features to AWS Elemental MediaLive. First, you can now burn-in timecodes to your MediaLive outputs. Second, we now now support the ability to decode Dolby E audio when it comes in on an input.

1.93.0 (2022-12-09)
------------------

* Feature - Link devices now support buffer size (latency) configuration. A higher latency value means a longer delay in transmitting from the device to MediaLive, but improved resiliency. A lower latency value means a shorter delay, but less resiliency.

1.92.0 (2022-12-02)
------------------

* Feature - Updates to Event Signaling and Management (ESAM) API and documentation.

1.91.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.90.0 (2022-10-13)
------------------

* Feature - AWS Elemental MediaLive now supports forwarding SCTE-35 messages through the Event Signaling and Management (ESAM) API, and can read those SCTE-35 messages from an inactive source.

1.89.0 (2022-09-08)
------------------

* Feature - This change exposes API settings which allow Dolby Atmos and Dolby Vision to be used when running a channel using Elemental Media Live

1.88.0 (2022-07-22)
------------------

* Feature - Link devices now support remote rebooting. Link devices now support maintenance windows. Maintenance windows allow a Link device to install software updates without stopping the MediaLive channel. The channel will experience a brief loss of input from the device while updates are installed.

1.87.0 (2022-06-29)
------------------

* Feature - This release adds support for automatic renewal of MediaLive reservations at the end of each reservation term. Automatic renewal is optional. This release also adds support for labelling accessibility-focused audio and caption tracks in HLS outputs.

1.86.0 (2022-03-28)
------------------

* Feature - This release adds support for selecting a maintenance window.

1.85.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2022-01-07)
------------------

* Feature - This release adds support for selecting the Program Date Time (PDT) Clock source algorithm for HLS outputs.

1.82.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2021-11-19)
------------------

* Feature - This release adds support for specifying a SCTE-35 PID on input. MediaLive now supports SCTE-35 PID selection on inputs containing one or more active SCTE-35 PIDs.

1.79.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2021-10-11)
------------------

* Feature - This release adds support for Transport Stream files as an input type to MediaLive encoders.

1.76.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.75.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2021-07-22)
------------------

* Feature - MediaLive now supports passing through style data on WebVTT caption outputs.

1.72.0 (2021-06-11)
------------------

* Feature - AWS MediaLive now supports OCR-based conversion of DVB-Sub and SCTE-27 image-based source captions to WebVTT, and supports ingest of ad avail decorations in HLS input manifests.

1.71.0 (2021-06-04)
------------------

* Feature - Add support for automatically setting the H.264 adaptive quantization and GOP B-frame fields.

1.70.0 (2021-04-06)
------------------

* Feature - MediaLive VPC outputs update to include Availability Zones, Security groups, Elastic Network Interfaces, and Subnet Ids in channel response

1.69.0 (2021-04-05)
------------------

* Feature - MediaLive now support HTML5 Motion Graphics overlay

1.68.0 (2021-03-25)
------------------

* Feature - EML now supports handling HDR10 and HLG 2020 color space from a Link input.

1.67.0 (2021-03-11)
------------------

* Feature - MediaLive supports the ability to apply a canned ACL to output sent to an AWS S3 bucket; supports ability to specify position for EBU-TT and TTML output captions converted from Teletext source.

1.66.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2021-03-05)
------------------

* Feature - Medialive now supports the ability to transfer AWS Elemental Link devices to another region.

1.64.0 (2021-02-15)
------------------

* Feature - AWS MediaLive now supports Automatic-Input-Failover for CDI Inputs.

1.63.0 (2021-02-02)
------------------

* Feature - AWS Elemental MediaLive now supports Image Media Playlists on HLS outputs, version 0.4 (trick-mode).

1.62.0 (2021-01-29)
------------------

* Feature - AWS Elemental MediaLive now supports output to a private VPC. When this property is specified, the output will egress from a user specified VPC.

1.61.0 (2020-12-04)
------------------

* Feature - AWS Elemental MediaLive now supports black video and audio silence as new conditions to trigger automatic input failover.

1.60.0 (2020-11-19)
------------------

* Feature - The AWS Elemental MediaLive APIs and SDKs now support the ability to see the software update status on Link devices

1.59.0 (2020-11-06)
------------------

* Feature - Support for SCTE35 ad markers in OnCuePoint style in RTMP outputs.

1.58.0 (2020-10-30)
------------------

* Feature - Support for HLS discontinuity tags in the child manifests. Support for incomplete segment behavior in the media output. Support for automatic input failover condition settings.

1.57.0 (2020-10-16)
------------------

* Feature - The AWS Elemental MediaLive APIs and SDKs now support the ability to transfer the ownership of MediaLive Link devices across AWS accounts.

1.56.0 (2020-10-09)
------------------

* Feature - WAV audio output. Extracting ancillary captions in MP4 file inputs. Priority on channels feeding a multiplex (higher priority channels will tend to have higher video quality).

1.55.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2020-09-18)
------------------

* Feature - AWS Elemental MediaLive now supports batch operations, which allow users to start, stop, and delete multiple MediaLive resources with a single request.

1.53.0 (2020-09-15)
------------------

* Feature - AWS Elemental MediaLive now supports CDI (Cloud Digital Interface) inputs which enable uncompressed video from applications on Elastic Cloud Compute (EC2), AWS Media Services, and from AWS partners

1.52.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2020-07-28)
------------------

* Feature - AWS Elemental MediaLive now supports several new features: EBU-TT-D captions in Microsoft Smooth outputs; interlaced video in HEVC outputs; video noise reduction (using temporal filtering) in HEVC outputs.

1.50.0 (2020-07-22)
------------------

* Feature - The AWS Elemental MediaLive APIs and SDKs now support the ability to get thumbnails for MediaLive devices that are attached or not attached to a channel. Previously, this thumbnail feature was available only on the console.

1.49.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2020-06-19)
------------------

* Feature - AWS Elemental MediaLive now supports Input Prepare schedule actions. This feature improves existing input switching by allowing users to prepare an input prior to switching to it.

1.47.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.47.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

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
