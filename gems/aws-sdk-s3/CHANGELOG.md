Unreleased Changes
------------------

1.17.0 (2018-07-11)
------------------

* Feature - API update.

1.16.1 (2018-07-10)
------------------

* Issue - Avoids region redirects for FIPS endpoints

1.16.0 (2018-06-28)
------------------

* Feature - Supports `:version_id` for resource `#download_file` helper.

* Issue - Reduce memory allocation in checksum and signature generation.

* Issue - Ensure file handlers are closed when an exception is raised in `Aws::S3::FileUploader`.

1.15.0 (2018-06-26)
------------------

* Feature - API update.

1.14.0 (2018-06-13)
------------------

* Feature - Adds support for `Aws::S3::Object#upload_stream`, allowing streaming uploads outside of a File-based interface.

1.13.0 (2018-05-22)
------------------

* Feature - API update.

* Issue - Update EventEmitter to Aws::EventEmitter

1.12.0 (2018-05-18)
------------------

* Feature - API update.

1.11.0 (2018-05-17)
------------------

* Feature - Support S3 `SelectObjectContent` API

1.10.0 (2018-05-07)
------------------

* Feature - API update.

1.9.1 (2018-04-19)
------------------

* Issue - S3 accelerate endpoint doesn't work with 'expect' header

1.9.0 (2018-04-04)
------------------

* Feature - API update.

1.8.2 (2018-02-23)
------------------

* Issue - Add support for AES/CBC/PKCS7Padding to encryption client.

1.8.1 (2018-02-16)
------------------

* Issue - Enhance S3 Multipart Downloader performance #1709

* Issue - Fix Ruby 2.5 warnings.

1.8.0 (2017-11-29)
------------------

* Feature - API update.

1.7.0 (2017-11-17)
------------------

* Feature - API update.

* Issue - Fix S3 unit test with latest endpoint

1.6.0 (2017-11-07)
------------------

* Feature - API update.

* Issue - Update S3 unit test with latest endpoint

1.5.0 (2017-10-06)
------------------

* Feature - API update.

* Issue - Update OJ Json parser error code
* Issue - Fix typo

1.4.0 (2017-09-14)
------------------

* Feature - API update.

1.3.0 (2017-09-13)
------------------

* Feature - API update.

1.2.0 (2017-09-07)
------------------

* Feature - API update.

1.1.0 (2017-09-01)
------------------

* Feature - API update.

* Issue - Add object streaming behavior smoke test

* Issue - Update `aws-sdk-s3` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc15 (2017-08-15)
------------------

* Feature - API update.

* Issue - Aws::S3 - Fix Multipart Downloader bug issue #1566, now file batches exist in a newly created tmp directory under destination directory.

1.0.0.rc14 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc13 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc10 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc9 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc8 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-09)
------------------

* Issue - Correct dependency on `aws-sdk-kms` gem.

1.0.0.rc6 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-05)
------------------

* Feature - Aws::S3 - Added Multipart Download Helper feature to support different `:mode` ("auto", "single_request", "get_range") in downloading large objects with `#download_file` in multipart when possible.

1.0.0.rc4 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc3 (2017-03-09)
------------------

* Issue - Correct dependency on `aws-sdk-kms` gem.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-s3` gem.

