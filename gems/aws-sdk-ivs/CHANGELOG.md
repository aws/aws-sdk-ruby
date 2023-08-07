Unreleased Changes
------------------

1.38.0 (2023-07-17)
------------------

* Feature - This release provides the flexibility to configure what renditions or thumbnail qualities to record when creating recording configuration.

1.37.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2023-06-30)
------------------

* Feature - Corrects the HTTP response code in the generated docs for PutMetadata and DeleteRecordingConfiguration APIs.

1.34.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2023-06-27)
------------------

* Feature - IVS customers can now revoke the viewer session associated with an auth token, to prevent and stop playback using that token.

1.32.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2023-06-01)
------------------

* Feature - API Update for IVS Advanced Channel type

1.30.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2023-03-30)
------------------

* Feature - Amazon Interactive Video Service (IVS) now offers customers the ability to configure IVS channels to allow insecure RTMP ingest.

1.28.0 (2023-03-06)
------------------

* Feature - Updated text description in DeleteChannel, Stream, and StreamSummary.

1.27.0 (2023-02-16)
------------------

* Feature - Doc-only update. Updated text description in DeleteChannel, Stream, and StreamSummary.

1.26.0 (2023-01-20)
------------------

* Feature - API and Doc update. Update to arns field in BatchGetStreamKey. Also updates to operations and structures.

1.25.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.24.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2022-08-31)
------------------

* Feature - IVS Merge Fragmented Streams. This release adds support for recordingReconnectWindow field in IVS recordingConfigurations. For more information see https://docs.aws.amazon.com/ivs/latest/APIReference/Welcome.html

1.22.0 (2022-08-24)
------------------

* Feature - Documentation Change for IVS API Reference - Doc-only update to type field description for CreateChannel and UpdateChannel actions and for Channel data type. Also added Amazon Resource Names (ARNs) paragraph to Welcome section.

1.21.0 (2022-08-12)
------------------

* Feature - Updates various list api MaxResults ranges

1.20.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2022-01-18)
------------------

* Feature - This release adds support for the new Thumbnail Configuration property for Recording Configurations. For more information see https://docs.aws.amazon.com/ivs/latest/userguide/record-to-s3.html

1.17.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2021-11-18)
------------------

* Feature - Add APIs for retrieving stream session information and support for filtering live streams by health.  For more information, see https://docs.aws.amazon.com/ivs/latest/userguide/stream-health.html

1.14.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2021-10-18)
------------------

* Feature - Bug fix: remove unsupported maxResults and nextToken pagination parameters from ListTagsForResource

1.12.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2021-04-07)
------------------

* Feature - This release adds support for the Auto-Record to S3 feature. Amazon IVS now enables you to save your live video to Amazon S3.

1.8.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2021-02-08)
------------------

* Feature - Fixed an issue where StreamStartTime could not be unmarshalled from response. Changed DeleteChannel and DeleteStreamKey response codes to 204.

1.6.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2020-08-19)
------------------

* Feature - Amazon Interactive Video Service (IVS) now offers customers the ability to create private channels, allowing customers to restrict their streams by channel or viewer.

1.1.0 (2020-07-28)
------------------

* Feature - Added a new error code, PendingVerification, to differentiate between errors caused by insufficient IAM permissions and errors caused by account verification.

1.0.0 (2020-07-15)
------------------

* Feature - Initial release of `aws-sdk-ivs`.

