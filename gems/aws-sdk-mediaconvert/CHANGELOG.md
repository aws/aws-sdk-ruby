Unreleased Changes
------------------

1.113.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.111.0 (2023-06-30)
------------------

* Feature - This release includes improved color handling of overlays and general updates to user documentation.

1.110.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.109.0 (2023-06-21)
------------------

* Feature - This release introduces the bandwidth reduction filter for the HEVC encoder, increases the limits of outputs per job, and updates support for the Nagra SDK to version 1.14.7.

1.108.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.107.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.106.0 (2023-05-18)
------------------

* Feature - This release introduces a new MXF Profile for XDCAM which is strictly compliant with the SMPTE RDD 9 standard and improved handling of output name modifiers.

1.105.0 (2023-04-24)
------------------

* Feature - This release introduces a noise reduction pre-filter, linear interpolation deinterlace mode, video pass-through, updated default job settings, and expanded LC-AAC Stereo audio bitrate ranges.

1.104.0 (2023-04-10)
------------------

* Feature - AWS Elemental MediaConvert SDK now supports conversion of 608 paint-on captions to pop-on captions for SCC sources.

1.103.0 (2023-03-23)
------------------

* Feature - AWS Elemental MediaConvert SDK now supports passthrough of ID3v2 tags for audio inputs to audio-only HLS outputs.

1.102.0 (2023-03-03)
------------------

* Feature - The AWS Elemental MediaConvert SDK has improved handling for different input and output color space combinations.

1.101.0 (2023-02-27)
------------------

* Feature - The AWS Elemental MediaConvert SDK has added support for HDR10 to SDR tone mapping, and animated GIF video input sources.

1.100.0 (2023-02-06)
------------------

* Feature - The AWS Elemental MediaConvert SDK has added improved scene change detection capabilities and a bandwidth reduction filter, along with video quality enhancements, to the AVC encoder.

1.99.0 (2023-01-30)
------------------

* Feature - Enabled FIPS endpoints for GovCloud (US) regions in SDK.

1.98.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.97.0 (2023-01-12)
------------------

* Feature - The AWS Elemental MediaConvert SDK has added support for compact DASH manifest generation, audio normalization using TruePeak measurements, and the ability to clip the sample range in the color corrector.

1.96.0 (2022-12-02)
------------------

* Feature - The AWS Elemental MediaConvert SDK has added support for configurable ID3 eMSG box attributes and the ability to signal them with InbandEventStream tags in DASH and CMAF outputs.

1.95.0 (2022-11-07)
------------------

* Feature - The AWS Elemental MediaConvert SDK has added support for setting the SDR reference white point for HDR conversions and conversion of HDR10 to DolbyVision without mastering metadata.

1.94.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2022-10-14)
------------------

* Feature - MediaConvert now supports specifying the minimum percentage of the HRD buffer available at the end of each encoded video segment.

1.92.0 (2022-06-23)
------------------

* Feature - AWS Elemental MediaConvert SDK has released support for automatic DolbyVision metadata generation when converting HDR10 to DolbyVision.

1.91.0 (2022-06-14)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for rules that constrain Automatic-ABR rendition selection when generating ABR package ladders.

1.90.0 (2022-05-24)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for rules that constrain Automatic-ABR rendition selection when generating ABR package ladders.

1.89.0 (2022-04-29)
------------------

* Feature - AWS Elemental MediaConvert SDK nows supports creation of Dolby Vision profile 8.1, the ability to generate black frames of video, and introduces audio-only DASH and CMAF support.

1.88.0 (2022-04-08)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for the pass-through of WebVTT styling to WebVTT outputs, pass-through of KLV metadata to supported formats, and improved filter support for processing 444/RGB content.

1.87.0 (2022-03-08)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for reading timecode from AVCHD sources and now provides the ability to segment WebVTT at the same interval as the video and audio in HLS packages.

1.86.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2022-01-21)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for 4K AV1 output resolutions & 10-bit AV1 color, the ability to ingest sidecar Dolby Vision XML metadata files, and the ability to flag WebVTT and IMSC tracks for accessibility in HLS.

1.83.0 (2022-01-03)
------------------

* Feature - AWS Elemental MediaConvert SDK has added strength levels to the Sharpness Filter and now permits OGG files to be specified as sidecar audio inputs.

1.82.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2021-11-12)
------------------

* Feature - AWS Elemental MediaConvert SDK has added automatic modes for GOP configuration and added the ability to ingest screen recordings generated by Safari on MacOS 12 Monterey.

1.79.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2021-10-20)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for specifying caption time delta in milliseconds and the ability to apply color range legalization to source content other than AVC video.

1.77.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2021-10-08)
------------------

* Feature - AWS Elemental MediaConvert has added the ability to set account policies which control access restrictions for HTTP, HTTPS, and S3 content sources.

1.75.0 (2021-09-23)
------------------

* Feature - This release adds style and positioning support for caption or subtitle burn-in from rich text sources such as TTML. This release also introduces configurable image-based trick play track generation.

1.74.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2021-08-24)
------------------

* Feature - AWS Elemental MediaConvert SDK has added MBAFF encoding support for AVC video and the ability to pass encryption context from the job settings to S3.

1.72.0 (2021-08-03)
------------------

* Feature - AWS Elemental MediaConvert SDK has added control over the passthrough of XDS captions metadata to outputs.

1.71.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2021-07-09)
------------------

* Feature - MediaConvert now supports color, style and position information passthrough from 608 and Teletext to SRT and WebVTT subtitles. MediaConvert now also supports Automatic QVBR quality levels for QVBR RateControlMode.

1.68.0 (2021-06-28)
------------------

* Feature - MediaConvert adds support for HDR10+, ProRes 4444,  and XAVC outputs, ADM/DAMF support for Dolby Atmos ingest, and alternative audio and WebVTT caption ingest via HLS inputs. MediaConvert also now supports creating trickplay outputs for Roku devices for HLS, CMAF, and DASH output groups.

1.67.0 (2021-05-10)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for Kantar SNAP File Audio Watermarking with a Kantar Watermarking account, and Display Definition Segment(DDS) segment data controls for DVB-Sub caption outputs.

1.66.0 (2021-04-26)
------------------

* Feature - Documentation updates for mediaconvert

1.65.0 (2021-04-01)
------------------

* Feature - MediaConvert now supports HLS ingest, sidecar WebVTT ingest, Teletext color & style passthrough to TTML subtitles, TTML to WebVTT subtitle conversion with style, & DRC profiles in AC3 audio.

1.64.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2021-02-09)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for WMA audio only ingest, SMPTE-TT text and image caption ingest, and MPEG-2 video in MXF OP1a outputs.

1.62.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.61.0 (2021-01-07)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for I-Frame-only HLS manifest generation in CMAF outputs.

1.60.0 (2020-11-24)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for Vorbis and Opus audio in OGG/OGA containers.

1.59.0 (2020-11-11)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for Automated ABR encoding and improved the reliability of embedded captions in accelerated outputs.

1.58.0 (2020-10-05)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for AVC-I and VC3 encoding in the MXF OP1a container, Nielsen non-linear watermarking, and InSync FrameFormer frame rate conversion.

1.57.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2020-08-27)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for WebM DASH outputs as well as H.264 4:2:2 10-bit output in MOV and MP4.

1.54.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2020-06-18)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for NexGuard FileMarker SDK, which allows NexGuard partners to watermark proprietary content in mezzanine and OTT streaming contexts.

1.51.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.51.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2020-06-03)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for the encoding of VP8 or VP9 video in WebM container with Vorbis or Opus audio.

1.49.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2020-04-30)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for including AFD signaling in MXF wrapper.

1.46.0 (2020-04-16)
------------------

* Feature - AWS Elemental MediaConvert now allows you to specify your input captions frame rate for SCC captions sources.

1.45.0 (2020-04-08)
------------------

* Feature - AWS Elemental MediaConvert SDK adds support for queue hopping. Jobs can now hop from their original queue to a specified alternate queue, based on the maximum wait time that you specify in the job settings.

1.44.0 (2020-03-17)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for: AV1 encoding in File Group MP4, DASH and CMAF DASH outputs; PCM/WAV audio output in MPEG2-TS containers; and Opus audio in Webm inputs.

1.43.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-02-05)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for fine-tuned QVBR quality level.

1.41.0 (2020-01-17)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for MP3 audio only outputs.

1.40.0 (2019-11-25)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for 8K outputs and support for QuickTime Animation Codec (RLE) inputs.

1.39.0 (2019-11-15)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for DolbyVision encoding, and SCTE35 & ESAM insertion to DASH ISO EMSG.

1.38.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2019-10-09)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for Dolby Atmos encoding, up to 36 outputs, accelerated transcoding with frame capture and preferred acceleration feature.

1.36.0 (2019-09-16)
------------------

* Feature - AWS Elemental MediaConvert SDK has added support for multi-DRM SPEKE with CMAF outputs, MP3 ingest, and options for improved video quality.

1.35.0 (2019-08-28)
------------------

* Feature - This release adds the ability to send a job to an on-demand queue while simulating the performance of a job sent to a reserved queue. Use this setting to estimate the number of reserved transcoding slots (RTS) you need for a reserved queue.

1.34.0 (2019-08-09)
------------------

* Feature - AWS Elemental MediaConvert has added support for multi-DRM SPEKE with CMAF outputs, MP3 ingest, and options for improved video quality.

1.33.0 (2019-07-30)
------------------

* Feature - MediaConvert adds support for specifying priority (-50 to 50) on jobs submitted to on demand or reserved queues

1.32.0 (2019-07-25)
------------------

* Feature - AWS Elemental MediaConvert has added several features including support for: audio normalization using ITU BS.1770-3, 1770-4 algorithms, extension of job progress indicators, input cropping rectangle & output position rectangle filters per input, and dual SCC caption mapping to additional codecs and containers.

1.31.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2019-05-21)
------------------

* Feature - API update.

1.28.0 (2019-05-15)
------------------

* Feature - API update.

1.27.0 (2019-05-14)
------------------

* Feature - API update.

1.26.0 (2019-05-03)
------------------

* Feature - API update.

1.25.0 (2019-04-05)
------------------

* Feature - API update.

1.24.0 (2019-03-25)
------------------

* Feature - API update.

1.23.0 (2019-03-21)
------------------

* Feature - API update.

1.22.0 (2019-03-18)
------------------

* Feature - API update.

1.21.0 (2019-03-14)
------------------

* Feature - API update.

1.20.0 (2019-02-26)
------------------

* Feature - API update.

1.19.0 (2019-01-14)
------------------

* Feature - API update.

1.18.0 (2018-11-20)
------------------

* Feature - API update.

1.17.0 (2018-11-19)
------------------

* Feature - API update.

1.16.0 (2018-10-24)
------------------

* Feature - API update.

1.15.0 (2018-10-23)
------------------

* Feature - API update.

1.14.0 (2018-10-11)
------------------

* Feature - API update.

1.13.0 (2018-09-21)
------------------

* Feature - API update.

1.12.0 (2018-09-06)
------------------

* Feature - API update.

1.11.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.10.0 (2018-09-05)
------------------

* Feature - API update.

1.9.0 (2018-08-20)
------------------

* Feature - API update.

1.8.0 (2018-08-16)
------------------

* Feature - API update.

1.7.0 (2018-08-10)
------------------

* Feature - API update.

1.6.0 (2018-07-31)
------------------

* Feature - API update.

1.5.0 (2018-07-06)
------------------

* Feature - API update.

1.4.0 (2018-06-26)
------------------

* Feature - API update.

1.3.0 (2018-06-15)
------------------

* Feature - API update.

1.2.0 (2018-06-04)
------------------

* Feature - API update.

1.1.0 (2018-02-15)
------------------

* Feature - API update.

1.0.0 (2017-11-27)
------------------

* Feature - Initial release of `aws-sdk-mediaconvert`.
