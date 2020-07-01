Unreleased Changes
------------------

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