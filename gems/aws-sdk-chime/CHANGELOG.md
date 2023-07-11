Unreleased Changes
------------------

1.77.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.75.0 (2023-06-29)
------------------

* Feature - The Amazon Chime SDK APIs in the Chime namespace are no longer supported.  Customers should use APIs in the dedicated Amazon Chime SDK namespaces: ChimeSDKIdentity, ChimeSDKMediaPipelines, ChimeSDKMeetings, ChimeSDKMessaging, and ChimeSDKVoice.

1.74.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.72.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2023-04-20)
------------------

* Feature - Adds support for Hindi and Thai languages and additional Amazon Transcribe parameters to the StartMeetingTranscription API.

1.70.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.69.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2022-07-27)
------------------

* Feature - Chime VoiceConnector will now support ValidateE911Address which will allow customers to prevalidate their addresses included in their SIP invites for emergency calling

1.67.0 (2022-03-11)
------------------

* Feature - Chime VoiceConnector Logging APIs will now support MediaMetricLogs. Also CreateMeetingDialOut now returns AccessDeniedException.

1.66.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2021-11-18)
------------------

* Feature - Adds new Transcribe API parameters to StartMeetingTranscription, including support for content identification and redaction (PII & PHI), partial results stabilization, and custom language models.

1.61.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2021-10-22)
------------------

* Feature - Chime VoiceConnector and VoiceConnectorGroup APIs will now return an ARN.

1.59.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2021-10-07)
------------------

* Feature - This release enables customers to configure Chime MediaCapturePipeline via API.

1.57.0 (2021-09-14)
------------------

* Feature - Adds support for SipHeaders parameter for CreateSipMediaApplicationCall.

1.56.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2021-08-10)
------------------

* Feature - Add support for "auto" in Region field of StartMeetingTranscription API request.

1.54.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2021-07-29)
------------------

* Feature - Adds support for live transcription of meetings with Amazon Transcribe and Amazon Transcribe Medical.  The new APIs, StartMeetingTranscription and StopMeetingTranscription, control the generation of user-attributed transcriptions sent to meeting clients via Amazon Chime SDK data messages.

1.52.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2021-07-16)
------------------

* Feature - This SDK release adds Account Status as one of the attributes in Account API response

1.50.0 (2021-07-07)
------------------

* Feature - Releasing new APIs for AWS Chime MediaCapturePipeline

1.49.0 (2021-06-24)
------------------

* Feature - Adds EventIngestionUrl field to MediaPlacement

1.48.0 (2021-06-17)
------------------

* Feature - This release adds a new API UpdateSipMediaApplicationCall, to update an in-progress call for SipMediaApplication.

1.47.0 (2021-06-10)
------------------

* Feature - This SDK release adds support for UpdateAccount API to allow users to update their default license on Chime account.

1.46.0 (2021-05-04)
------------------

* Feature - This release adds the ability to search for and order international phone numbers for Amazon Chime SIP media applications.

1.45.0 (2021-05-03)
------------------

* Feature - Added new BatchCreateChannelMembership API to support multiple membership creation for channels

1.44.0 (2021-05-03)
------------------

* Feature - Added new BatchCreateChannelMembership API to support multiple membership creation for channels

1.43.0 (2021-04-29)
------------------

* Feature - Increase AppInstanceUserId length to 64 characters

1.42.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-01-19)
------------------

* Feature - Add support for specifying ChimeBearer header as part of the request for Amazon Chime SDK messaging APIs. Documentation updates.

1.39.0 (2020-11-20)
------------------

* Feature - The Amazon Chime SDK for messaging provides the building blocks needed to build chat and other real-time collaboration features.

1.38.0 (2020-11-17)
------------------

* Feature - This release adds CRUD APIs for Amazon Chime SipMediaApplications and SipRules. It also adds the API for creating outbound PSTN calls for Amazon Chime meetings.

1.37.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2020-08-20)
------------------

* Feature - Documentation updates for chime

1.33.0 (2020-07-31)
------------------

* Feature - This release increases the CreateMeetingWithAttendee max attendee limit to 10.

1.32.0 (2020-07-01)
------------------

* Feature - This release supports third party emergency call routing configuration for Amazon Chime Voice Connectors.

1.31.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-06-15)
------------------

* Feature - feature: Chime: This release introduces the ability to create an AWS Chime SDK meeting with attendees.

1.29.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.29.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2020-05-20)
------------------

* Feature - Amazon Chime enterprise account administrators can now set custom retention policies on chat data in the Amazon Chime application.

1.26.0 (2020-05-19)
------------------

* Feature - You can now receive Voice Connector call events through SNS or SQS.

1.25.0 (2020-05-18)
------------------

* Feature - Amazon Chime now supports redacting chat messages.

1.24.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2020-04-08)
------------------

* Feature - feature: Chime: This release introduces the ability to tag Amazon Chime SDK meeting resources.  You can use tags to organize and identify your resources for cost allocation.

1.22.0 (2020-04-06)
------------------

* Feature - Amazon Chime proxy phone sessions let you provide two users with a shared phone number to communicate via voice or text for up to 12 hours without revealing personal phone numbers. When users call or message the provided phone number, they are connected to the other party and their private phone numbers are replaced with the shared number in Caller ID.

1.21.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2020-02-18)
------------------

* Feature - Added AudioFallbackUrl to support Chime SDK client.

1.19.0 (2020-02-12)
------------------

* Feature - Documentation updates for Amazon Chime

1.18.0 (2020-01-10)
------------------

* Feature - Add shared profile support to new and existing users

1.17.0 (2019-11-20)
------------------

* Feature - Adds APIs to create and manage meeting session resources for the Amazon Chime SDK

1.16.0 (2019-11-15)
------------------

* Feature - This release adds support for Chime Room Management APIs

1.15.0 (2019-10-24)
------------------

* Feature - This release introduces Voice Connector PDX region and defaults previously created Voice Connectors to IAD. You can create Voice Connector Groups and add region specific Voice Connectors to direct telephony traffic across AWS regions in case of regional failures. With this release you can add phone numbers to Voice Connector Groups and can bulk move phone numbers between Voice Connectors, between Voice Connector and Voice Connector Groups and between Voice Connector Groups. Voice Connector now supports additional settings to enable SIP Log capture. This is in addition to the launch of Voice Connector Cloud Watch metrics in this release. This release also supports assigning outbound calling name (CNAM) to AWS account and individual phone numbers assigned to Voice Connectors. * Voice Connector now supports a setting to enable real time audio streaming delivered via Kinesis Audio streams. Please note that recording Amazon Chime Voice Connector calls with this feature maybe be subject to laws or regulations regarding the recording of telephone calls and other electronic communications. AWS Customer and their end users' have the responsibility to comply with all applicable laws regarding the recording, including properly notifying all participants in a recorded session or to a recorded communication that the session or communication is being recorded and obtain their consent.

1.14.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-05-28)
------------------

* Feature - This release adds the ability to search and order toll free phone numbers for Voice Connectors.

1.9.0 (2019-05-21)
------------------

* Feature - API update.

1.8.0 (2019-05-15)
------------------

* Feature - API update.

1.7.0 (2019-05-14)
------------------

* Feature - API update.

1.6.0 (2019-03-21)
------------------

* Feature - API update.

1.5.0 (2019-03-18)
------------------

* Feature - API update.

1.4.0 (2019-03-14)
------------------

* Feature - API update.

1.3.0 (2019-02-15)
------------------

* Feature - API update.

1.2.0 (2018-11-20)
------------------

* Feature - API update.

1.1.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.1.0 (2018-11-13)
------------------

* Feature - API update.

1.0.0 (2018-10-30)
------------------

* Feature - Initial release of `aws-sdk-chime`.
