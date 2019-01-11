Unreleased Changes
------------------

* Feature - Improve Query protocol handling of empty responses, to ensure response is an instance of `Aws::EmptyStructure` rather than the class `Aws::EmptyStructure` itself.
* Issue - Plugin updates to support client-side monitoring.

3.44.2 (2019-01-04)
------------------

* Issue - Update to code paths and plugins for future SDK instrumentation and telemetry.

3.44.1 (2018-12-17)
------------------

* Issue - Update sensitive filtering logic to include `#to_s` calls of shapes.

3.44.0 (2018-12-07)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.43.0 (2018-12-04)
------------------

* Feature - Update user agent structure.

3.42.0 (2018-11-29)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.41.0 (2018-11-28)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.40.0 (2018-11-27)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.39.0 (2018-11-20)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

* Feature - Adding support for endpoint trait (host prefix) per operation, to disable this feature, set `:disable_host_prefix_injection` to `false` for the client.

3.38.0 (2018-11-12)
------------------

* Feature - Updated the list of parameters to filter when logging.

* Feature - Adding `TransactionInProgressException` for throttling retry

3.37.0 (2018-11-08)
------------------

* Feature - Adding support for endpoint discovery per operation, to enable this feature, set `:endpoint_discovery` to `true` for the client. Note: only available for services with endpoint discovery support.

3.36.0 (2018-10-30)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.35.0 (2018-10-24)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

3.34.0 (2018-10-23)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Allow 429 response code to trigger throttle detection

3.33.0 (2018-10-22)
------------------

* Feature - Update to code paths and plugins for future SDK instrumentation and telemetry.

3.32.0 (2018-10-18)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.31.0 (2018-10-16)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.30.0 (2018-10-04)
------------------

* Feature - Adds to code paths and plugins for future SDK instrumentation and telemetry.

3.29.0 (2018-09-28)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.28.0 (2018-09-25)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.27.1 (2018-09-21)
------------------

* Issue - Fixes a bug in the `:response_target` plugin error callback. Under certain circumstances a special body object can be removed before its error callback is triggered, breaking retry logic.

3.27.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry to aws-sdk-sts.

3.26.0 (2018-09-05)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

3.25.0 (2018-08-29)
------------------

* Feature - Updated the list of parameters to filter when logging.

* Issue - Add `:exclude_presign` option for #api_requests at client stubbing to allow excluding non-sent request from presigned url (Github Issue #1866)

3.24.1 (2018-08-13)
------------------

* Issue - Update `ca-bundle.crt` file with newer root certificate authorities.

3.24.0 (2018-08-03)
------------------

* Feature - Extensible Credential Providers, allows you to declare an executable to be run that outputs the credentials as a JSON payload allowing you to develop custom credential providers and easily add them to the credential resolution chain, [Docs](https://docs.aws.amazon.com/cli/latest/topic/config-vars.html#sourcing-credentials-from-external-processes)

3.23.0 (2018-07-31)
------------------

* Feature - Add Logged API Requests interface to stubbed clients

3.22.1 (2018-06-28)
------------------

* Issue - Performance enhancement to instance credential providers, to use a more precisely scoped Time parsing method for improved performance.

3.22.0 (2018-06-26)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Allows you to set custom paths to shared config and shared credential files via the `AWS_CONFIG_FILE` and `AWS_SHARED_CREDENTIALS_FILE` environment variables.

* Feature - Flexible retry strategies. Provides the `:retry_max_delay`, `:retry_base_delay`, and `:retry_jitter` options, which modify the default backoff strategy without the need to define a full retry lambda from scratch.

3.21.3 (2018-06-20)
------------------

* Issue - Fix to support URI encoded characters in http_proxy

3.21.2 (2018-05-22)
------------------

* Issue - Update `EventEmitter` to `Aws::EventEmitter` [Github Issue](https://github.com/aws/aws-sdk-ruby/issues/1791)

3.21.1 (2018-05-18)
------------------

* Issue - Remove `raw_stream` tracking, [Github Issue](https://github.com/aws/aws-sdk-ruby/issues/1786)

3.21.0 (2018-05-17)
------------------

* Feature - Support `vnd.amazon.event-stream` binary stream protocol over HTTP1.1

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
