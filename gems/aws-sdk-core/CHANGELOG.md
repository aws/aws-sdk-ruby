Unreleased Changes
------------------

3.20.2 (2018-04-26)
------------------

* Issue - Avoiding Net::HTTP patching for Ruby 2.5

3.20.1 (2018-04-24)
------------------

* Issue - Fix parsing flattened XML shape from shape reference for S3 https://github.com/aws/aws-sdk-ruby/issues/1764

3.20.0 (2018-04-23)
------------------

* Feature - Aws::InstanceProfileCredentials - Add sending a User-Agent other than the default User-Agent in Ruby.  Adding the User-Agent `aws-sdk-ruby3/<version>` to allow protection against Server Side Request Forgery (SSRF) credential theft vectors by use of a metadata proxy.  

3.19.0 (2018-04-04)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.18.1 (2018-03-29)
------------------

* Issue - Fix undefined method `each`/`next` for `Enumerable::Enumerator` when this class exists in the environment

3.18.0 (2018-03-28)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.17.1 (2018-03-20)
------------------

* Issue - Support timestamp shape in querystring

3.17.0 (2018-02-27)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Issue - Fix Ruby warnings: Shadowed local variables "parts" and "headers"

3.16.0 (2018-02-20)
------------------

* Feature - Aws::InstanceProfileCredentials - When the `AWS_EC2_METADATA_DISABLED` environment variable is present with the value `true` (not case sensitive), the `Aws::InstanceProfileCredentials` credential provider will not be used.

3.15.0 (2018-02-06)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.14.0 (2018-01-15)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.13.1 (2018-01-12)
------------------

* Issue - Fix Ruby 2.5 warnings.

3.13.0 (2017-12-21)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.12.0 (2017-12-20)
------------------

* Feature - Adds support for credential_source when assuming a role via shared configuration.

* Issue - Update APIGateway SDK user agent pattern

3.11.0 (2017-11-29)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.10.0 (2017-11-29)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.9.0 (2017-11-20)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

3.8.0 (2017-11-19)
------------------

* Feature - Add support for APIGateway protocol and custom service build.

3.7.0 (2017-11-07)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

3.6.1 (2017-11-07)
------------------

* Issue - Update empty struct stubbing shape

3.6.0 (2017-09-20)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.5.0 (2017-09-13)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.4.0 (2017-09-12)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.3.1 (2017-09-11)
------------------

* Issue - Fix core util deep copy issue #1603

3.3.0 (2017-09-07)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.2.1 (2017-09-06)
------------------

* Issue - Remove redundant version file.

3.2.0 (2017-08-31)
------------------

* Feature - Updated the list of parameters to filter when logging.

* Issue - Update `aws-sdk-core` gemspec metadata.

* Issue - Update `aws-sdk-core` gemspec metadata

3.1.0 (2017-08-30)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.0.0 (2017-08-29)
------------------

3.0.0.rc20 (2017-08-14)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.0.0.rc19 (2017-07-31)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.0.0.rc18 (2017-07-24)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.0.0.rc17 (2017-07-12)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.0.0.rc16 (2017-07-06)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.0.0.rc15 (2017-07-06)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.0.0.rc14 (2017-06-29)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.0.0.rc13 (2017-06-26)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

* Issue - Aws::CredentialProviderChain - Fetching `AWS_PROFILE` environment variable before using `default` profile.

3.0.0.rc12 (2017-05-23)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Update throttling error pool of retry

* Feature - Update `User-Agent` format

3.0.0.rc11 (2017-05-09)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated Aws::STS::Client with the latest API changes.

3.0.0.rc10 (2017-05-09)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated Aws::STS::Client with the latest API changes.

3.0.0.rc9 (2017-05-05)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Added support for Ruby 2.4

* Issue - Revert 'cgi/util' change that breaks Ruby 2.4

3.0.0.rc8 (2017-04-21)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

3.0.0.rc7 (2017-03-09)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

3.0.0.rc6 (2017-03-08)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated Aws::STS::Client with the latest API changes.

3.0.0.rc5 (2017-03-07)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated Aws::STS::Client with the latest API changes.

3.0.0.rc4 (2017-03-07)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.0.0.rc3 (2017-01-24)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

3.0.0.rc2 (2016-12-09)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

3.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-core` gem.
