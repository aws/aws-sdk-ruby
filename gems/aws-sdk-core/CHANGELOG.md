Unreleased Changes
------------------

* Issue - Validate `:region` as a valid DNS host label.

3.98.0 (2020-06-05)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.97.1 (2020-06-01)
------------------

* Issue - Convert ENV['AWS_MAX_ATTEMPTS'] String value to Integer when set. (#2319)
* Issue - Handle unknown and unmodeled events from event streams by ignoring them and providing a new callback rather than raising an error.

3.97.0 (2020-05-28)
------------------
* Feature - Default endpoint_discovery to `true` for services with at least one operation that requires it.
* Feature - Updated Aws::STS::Client with the latest API changes.

3.96.1 (2020-05-18)
------------------

* Issue - Raise `ArgumentError` for XML services when required URI elements are not included.

3.96.0 (2020-05-15)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.95.0 (2020-05-07)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.94.1 (2020-05-04)
------------------

* Issue - When handling errors in XML responses, don't set a new error on the response if one is already set.

3.94.0 (2020-04-08)
------------------

* Feature - Updated the list of parameters to filter when logging.

* Issue - Update dependency on aws-eventstream

3.93.0 (2020-04-06)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.92.0 (2020-03-20)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Issue - Change the default of `sts_regional_endpoints` from 'legacy' to 'regional'.

3.91.1 (2020-03-10)
------------------

* Issue - Rescue from `JSON::ParserError` when using `Oj.mimic_JSON`. (#2247)

3.91.0 (2020-03-09)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.
* Feature - Add `standard` and `adaptive` retry modes.

3.90.1 (2020-02-14)
------------------

* Issue - Perform a case-insensitive comparison when filtering sensitive parameters from logs
* Issue - Add passthrough of region from client to STS when using `assume_role_web_identity_credentials`.

3.90.0 (2020-02-12)
------------------

* Issue - Updated the list of parameters to filter when logging.
* Issue - Parse all values from shared credentials file when using `Aws.shared_config`.
* Issue - Honor explicit profile in client config when credentials from AWS_ environment variables are present.
* Issue - Fixed a bug where `Transfer-Encoding` could never be set to `chunked` in streaming operations because all body objects (`String`, `StringIO`) would respond to `#size`.

3.89.1 (2020-01-14)
------------------

* Issue - Fix erroneously reaped sessions from `Seahorse::Client::NetHttp::ConnectionPool` due to bad `last_used` time calculation
* Issue - Use monotonic clocks when reaping sessions in `Seahorse::Client::NetHttp::ConnectionPool`
* Issue - Fix "Conn close because of keep_alive_timeout" when reusing  `Seahorse::Client::NetHttp::ConnectionPool` sessions

3.89.0 (2020-01-13)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.88.0 (2020-01-10)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.87.0 (2020-01-09)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Issue - Reuse connections even if `http_wire_trace` is true.

3.86.0 (2019-12-13)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.85.1 (2019-12-11)
------------------

* Issue - Change default timeout to 1 and number of retries to 1 for `InstanceProfileCredentials`.

3.85.0 (2019-12-09)
------------------

* Feature - Add STS Presigner module with a method to generate a presigned EKS token.

* Issue - Fix issue for log formatters in clients where http_response_body does not respond to `rewind` when using a block.

3.84.0 (2019-12-04)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.83.0 (2019-12-03)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.82.0 (2019-11-25)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.81.0 (2019-11-22)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.80.0 (2019-11-20)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.79.0 (2019-11-19)
------------------

* Feature - Support EC2 IMDS updates.

3.78.0 (2019-11-15)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.77.0 (2019-11-13)
------------------

* Feature - Support `s3_us_east_1_regional_endpoint` from `SharedConfig`

3.76.0 (2019-11-07)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.75.0 (2019-11-06)
------------------

* Feature - Remove deprecated `access_key_id`, `secret_access_key`, and `session_token` methods in credential providers.

3.74.0 (2019-11-05)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.73.0 (2019-11-04)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.72.1 (2019-10-31)
------------------

* Issue - Fix `EndpointCache#key?` to be thread safe.

3.72.0 (2019-10-24)
------------------

* Feature - Updated the list of parameters to filter when logging.

* Issue - Update minimum `aws-partition` gem dependency version

3.71.0 (2019-10-23)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Support enable STS regional endpoints by `sts_regional_endpoints: 'regional'`

3.70.0 (2019-10-22)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.69.1 (2019-10-18)
------------------

* Issue - Fix method redefinition warnings

3.69.0 (2019-10-17)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.68.1 (2019-10-02)
------------------

* Issue - Add final deprecation warnings to `access_key_id`, `secret_access_key`, and `session_token` in credential providers.

* Issue - Remove misleading IO documentation from `BlobShape` error output.

3.68.0 (2019-09-16)
------------------

* Feature - Support assuming a role with `:source_profile` from a profile that can be resolved from a `ProcessCredentials` provider.

3.67.0 (2019-09-09)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.66.0 (2019-09-04)
------------------

* Feature - Support CLI AWS_DEFAULT_PROFILE environment variable [Github Issue](https://github.com/aws/aws-sdk-ruby/issues/1452).

3.65.1 (2019-08-28)
------------------

* Issue - Auto refresh credentials for Route53 `ExpiredToken` errors.

3.65.0 (2019-08-27)
------------------

* Feature - Support assuming a role `:source_profile` profile with `AssumeRoleWebIdentityCredentials`.

3.64.0 (2019-08-20)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.63.0 (2019-08-15)
------------------

* Feature - Support passing AssumeRole `duration_seconds` from shared credentials/config file.

3.62.0 (2019-08-02)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.61.2 (2019-07-29)
------------------

* Issue - Add `Aws::STS::InvalidIdentityToken` and `Aws::Errors::NoSuchEndpointError` error for retry.

3.61.1 (2019-07-25)
------------------

* Issue - Fix default STS Client credential sourcing in `Aws::AssumeRoleWebIdentityCredentialsProvider`.

3.61.0 (2019-07-24)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.60.0 (2019-07-23)
------------------

* Feature - Updated the list of parameters to filter when logging.

* Issue - Handle `EncodingError` when using Oj gem [Github Issue](https://github.com/aws/aws-sdk-ruby/issues/1831)

3.59.0 (2019-07-03)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.58.0 (2019-07-01)
------------------

* Feature - Support `Aws::AssumeRoleWebIdentityCredentials` provider

3.57.0 (2019-06-28)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.56.0 (2019-06-17)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Support `:client_side_monitoring_host` configuration for CSM

3.55.0 (2019-06-14)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.54.2 (2019-06-03)
------------------

* Issue - Mirgate Proc.new without a block usage #2058.

3.54.1 (2019-05-30)
------------------

* Issue - Improved exception messages in credential providers to exclude detailed parse errors that may contain sensitive information.

3.54.0 (2019-05-28)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

3.53.1 (2019-05-22)
------------------

* Issue - Support #to_hash for Struct with `:members` member #2053

3.53.0 (2019-05-21)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

* Feature - Adding support for modeled exceptions

3.52.1 (2019-05-15)
------------------

* Issue - Handle paginator stubs with expression #2040

3.52.0 (2019-05-14)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

* Feature - Updated the list of parameters to filter when logging.

* Feature - Support transfer encoding and `requiresLength` trait

3.51.0 (2019-05-10)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.50.0 (2019-05-06)
------------------

* Feature - Updated Aws::STS::Client with the latest API changes.

3.49.0 (2019-04-30)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.48.6 (2019-04-26)
------------------

* Issue - Call RefreshingCredentials initialize method in ProcessCredentials to set mutex.

3.48.5 (2019-04-24)
------------------

* Issue - Add PriorRequestNotComplete to throttling errors.

3.48.4 (2019-04-18)
------------------

* Issue - Small memory retention reduction.

3.48.3 (2019-03-26)
------------------

* Issue - event header ":event-type" uses member name instead of shape name

3.48.2 (2019-03-20)
------------------

* Issue - Support signal events after request only [HTTP2]

3.48.1 (2019-03-19)
------------------

* Issue - Clean up unnecessary error output when 'http-2' gem is not present.

3.48.0 (2019-03-18)
------------------

* Feature - Updated the list of parameters to filter when logging.

* Feature - Fix http-2 Dependency for Old Ruby Versions (Github Issue #1994)

3.47.0 (2019-03-14)
------------------

* Feature - Support HTTP/2 based AWS event stream operations

3.46.2 (2019-02-19)
------------------

* Issue - Update NetHttp Patches per Ruby version (Github Issue: #1979)

3.46.1 (2019-02-12)
------------------

* Issue - Fix the issue that APIG SDK doesn't have regional endpoint related plugins.

3.46.0 (2019-01-16)
------------------

* Feature - Updated the list of parameters to filter when logging.

3.45.0 (2019-01-11)
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
