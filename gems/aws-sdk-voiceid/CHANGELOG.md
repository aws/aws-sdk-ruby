Unreleased Changes
------------------

1.8.0 (2022-06-02)
------------------

* Feature - Added a new attribute ServerSideEncryptionUpdateDetails to Domain and DomainSummary.

1.7.0 (2022-05-25)
------------------

* Feature - VoiceID will now automatically expire Speakers if they haven't been accessed for Enrollment, Re-enrollment or Successful Auth for three years. The Speaker APIs now return a "LastAccessedAt" time for Speakers, and the EvaluateSession API returns "SPEAKER_EXPIRED" Auth Decision for EXPIRED Speakers.

1.6.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2021-09-27)
------------------

* Feature - Initial release of `aws-sdk-voiceid`.

