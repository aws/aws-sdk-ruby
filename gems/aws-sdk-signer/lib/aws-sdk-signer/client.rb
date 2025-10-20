# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:signer)

module Aws::Signer
  # An API client for Aws::Signer.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::WallabyService
    @identifier = :signer

    add_plugin(::Aws::Signer::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Signer::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Adds cross-account permissions to a signing profile.</p>
    # @param [Hash, Types::AddProfilePermissionRequest] params
    # @option params [String] :profile_name
    #   <p>The human-readable name of the signing profile.</p>
    # @option params [String] :profile_version
    #   <p>The version of the signing profile.</p>
    # @option params [String] :action
    #   <p>For cross-account signing. Grant a designated account permission to perform one or more of the following actions. Each action is associated with a specific API's operations. For more information about cross-account signing, see <a href="https://docs.aws.amazon.com/signer/latest/developerguide/signing-profile-cross-account.html">Using cross-account signing with signing profiles</a> in the <i>AWS Signer Developer Guide</i>.</p>
    #   		       <p>You can designate the following actions to an account.</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>signer:StartSigningJob</code>. This action isn't supported for container image workflows. For details, see <a>StartSigningJob</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>signer:SignPayload</code>. This action isn't supported for AWS Lambda workflows. For details, see <a>SignPayload</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>signer:GetSigningProfile</code>. For details, see <a>GetSigningProfile</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>signer:RevokeSignature</code>. For details, see <a>RevokeSignature</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :principal
    #   <p>The AWS principal receiving cross-account permissions. This may be an IAM role or another
    #   			AWS account ID.</p>
    # @option params [String] :revision_id
    #   <p>A unique identifier for the current profile revision.</p>
    # @option params [String] :statement_id
    #   <p>A unique identifier for the cross-account permission statement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_name: "ProfileName", # required
    #     profile_version: "ProfileVersion",
    #     action: "String", # required
    #     principal: "String", # required
    #     revision_id: "String",
    #     statement_id: "String", # required
    #   }
    #   options = {}
    #   response = client.add_profile_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revision_id: "String"
    #   }
    # @return [Types::AddProfilePermissionResponse]
    def add_profile_permission(params = {}, options = {})
      request = build_request(:add_profile_permission, params)
      request.send_request(options)
    end

    # <p>Changes the state of an <code>ACTIVE</code> signing profile to <code>CANCELED</code>.
    # 			A canceled profile is still viewable with the <code>ListSigningProfiles</code>
    # 			operation, but it cannot perform new signing jobs, and is deleted two years after
    # 			cancelation.</p>
    # @param [Hash, Types::CancelSigningProfileRequest] params
    # @option params [String] :profile_name
    #   <p>The name of the signing profile to be canceled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_name: "ProfileName", # required
    #   }
    #   options = {}
    #   response = client.cancel_signing_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_signing_profile(params = {}, options = {})
      request = build_request(:cancel_signing_profile, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific code signing job. You specify the job by using the
    # 				<code>jobId</code> value that is returned by the <a>StartSigningJob</a>
    # 			operation. </p>
    # @param [Hash, Types::DescribeSigningJobRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the signing job on input.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_signing_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     source: {
    #       s3: {
    #         bucket_name: "BucketName", # required
    #         key: "Key", # required
    #         version: "Version", # required
    #       }
    #     },
    #     signing_material: {
    #       certificate_arn: "CertificateArn", # required
    #     },
    #     platform_id: "PlatformId",
    #     platform_display_name: "DisplayName",
    #     profile_name: "ProfileName",
    #     profile_version: "ProfileVersion",
    #     overrides: {
    #       signing_configuration: {
    #         encryption_algorithm: "RSA" # One of: ["RSA", "ECDSA"],
    #         hash_algorithm: "SHA1" # One of: ["SHA1", "SHA256"]
    #       },
    #       signing_image_format: "JSON" # One of: ["JSON", "JSONEmbedded", "JSONDetached"]
    #     },
    #     signing_parameters: {
    #       "SigningParameterKey" => "SigningParameterValue"
    #     },
    #     created_at: Time.now,
    #     completed_at: Time.now,
    #     signature_expires_at: Time.now,
    #     requested_by: "RequestedBy",
    #     status: "InProgress" # One of: ["InProgress", "Failed", "Succeeded"],
    #     status_reason: "StatusReason",
    #     revocation_record: {
    #       reason: "String",
    #       revoked_at: Time.now,
    #       revoked_by: "String"
    #     },
    #     signed_object: {
    #       s3: {
    #         bucket_name: "BucketName",
    #         key: "Key"
    #       }
    #     },
    #     job_owner: "AccountId",
    #     job_invoker: "AccountId"
    #   }
    # @return [Types::DescribeSigningJobResponse]
    def describe_signing_job(params = {}, options = {})
      request = build_request(:describe_signing_job, params)
      request.send_request(options)
    end

    # <p>Retrieves the revocation status of one or more of the signing profile, signing job,
    # 			and signing certificate.</p>
    # @param [Hash, Types::GetRevocationStatusRequest] params
    # @option params [Time] :signature_timestamp
    #   <p>The timestamp of the signature that validates the profile or job.</p>
    # @option params [String] :platform_id
    #   <p>The ID of a signing platform. </p>
    # @option params [String] :profile_version_arn
    #   <p>The version of a signing profile.</p>
    # @option params [String] :job_arn
    #   <p>The ARN of a signing job.</p>
    # @option params [Array<String>] :certificate_hashes
    #   <p>A list of composite signed hashes that identify certificates.</p>
    #   		       <p>A certificate identifier consists of a subject certificate TBS hash (signed by the
    #   			parent CA) combined with a parent CA TBS hash (signed by the parent CA’s CA). Root
    #   			certificates are defined as their own CA.</p>
    #   		       <p>The following example shows how to calculate a hash for this parameter using OpenSSL
    #   			commands: </p>
    #   		
    #   			      <p>
    #               <code>openssl asn1parse -in childCert.pem -strparse 4 -out childCert.tbs</code> 
    #            </p>
    #   			      <p>
    #               <code>openssl sha384 < childCert.tbs -binary > childCertTbsHash</code> 
    #            </p>
    #   			      <p>
    #               <code>openssl asn1parse -in parentCert.pem -strparse 4 -out parentCert.tbs</code> 
    #            </p>
    #   			      <p>
    #               <code>openssl sha384 < parentCert.tbs -binary > parentCertTbsHash xxd -p
    #   				childCertTbsHash > certificateHash.hex xxd -p parentCertTbsHash >>
    #   				certificateHash.hex</code>
    #            </p>
    #   			      <p>
    #               <code>cat certificateHash.hex | tr -d '\n'</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     signature_timestamp: Time.now, # required
    #     platform_id: "PlatformId", # required
    #     profile_version_arn: "Arn", # required
    #     job_arn: "Arn", # required
    #     certificate_hashes: ["String"], # required
    #   }
    #   options = {}
    #   response = client.get_revocation_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revoked_entities: ["String"]
    #   }
    # @return [Types::GetRevocationStatusResponse]
    def get_revocation_status(params = {}, options = {})
      request = build_request(:get_revocation_status, params)
      request.send_request(options)
    end

    # <p>Returns information on a specific signing platform.</p>
    # @param [Hash, Types::GetSigningPlatformRequest] params
    # @option params [String] :platform_id
    #   <p>The ID of the target signing platform.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform_id: "PlatformId", # required
    #   }
    #   options = {}
    #   response = client.get_signing_platform(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     platform_id: "PlatformId",
    #     display_name: "DisplayName",
    #     partner: "String",
    #     target: "String",
    #     category: "AWSIoT" # One of: ["AWSIoT"],
    #     signing_configuration: {
    #       encryption_algorithm_options: { # required
    #         allowed_values: ["RSA" # One of: ["RSA", "ECDSA"]], # required
    #         default_value: "RSA" # One of: ["RSA", "ECDSA"], # required
    #       },
    #       hash_algorithm_options: { # required
    #         allowed_values: ["SHA1" # One of: ["SHA1", "SHA256"]], # required
    #         default_value: "SHA1" # One of: ["SHA1", "SHA256"], # required
    #       }
    #     },
    #     signing_image_format: {
    #       supported_formats: ["JSON" # One of: ["JSON", "JSONEmbedded", "JSONDetached"]], # required
    #       default_format: "JSON" # One of: ["JSON", "JSONEmbedded", "JSONDetached"], # required
    #     },
    #     max_size_in_mb: 1,
    #     revocation_supported: false
    #   }
    # @return [Types::GetSigningPlatformResponse]
    def get_signing_platform(params = {}, options = {})
      request = build_request(:get_signing_platform, params)
      request.send_request(options)
    end

    # <p>Returns information on a specific signing profile.</p>
    # @param [Hash, Types::GetSigningProfileRequest] params
    # @option params [String] :profile_name
    #   <p>The name of the target signing profile.</p>
    # @option params [String] :profile_owner
    #   <p>The AWS account ID of the profile owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_name: "ProfileName", # required
    #     profile_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_signing_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_name: "ProfileName",
    #     profile_version: "ProfileVersion",
    #     profile_version_arn: "Arn",
    #     revocation_record: {
    #       revocation_effective_from: Time.now,
    #       revoked_at: Time.now,
    #       revoked_by: "String"
    #     },
    #     signing_material: {
    #       certificate_arn: "CertificateArn", # required
    #     },
    #     platform_id: "PlatformId",
    #     platform_display_name: "DisplayName",
    #     signature_validity_period: {
    #       value: 1,
    #       type: "DAYS" # One of: ["DAYS", "MONTHS", "YEARS"]
    #     },
    #     overrides: {
    #       signing_configuration: {
    #         encryption_algorithm: "RSA" # One of: ["RSA", "ECDSA"],
    #         hash_algorithm: "SHA1" # One of: ["SHA1", "SHA256"]
    #       },
    #       signing_image_format: "JSON" # One of: ["JSON", "JSONEmbedded", "JSONDetached"]
    #     },
    #     signing_parameters: {
    #       "SigningParameterKey" => "SigningParameterValue"
    #     },
    #     status: "Active" # One of: ["Active", "Canceled", "Revoked"],
    #     status_reason: "String",
    #     arn: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetSigningProfileResponse]
    def get_signing_profile(params = {}, options = {})
      request = build_request(:get_signing_profile, params)
      request.send_request(options)
    end

    # <p>Lists the cross-account permissions associated with a signing profile.</p>
    # @param [Hash, Types::ListProfilePermissionsRequest] params
    # @option params [String] :profile_name
    #   <p>Name of the signing profile containing the cross-account permissions.</p>
    # @option params [String] :next_token
    #   <p>String for specifying the next set of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_name: "ProfileName", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_profile_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revision_id: "String",
    #     policy_size_bytes: 1,
    #     permissions: [
    #       {
    #         action: "String",
    #         principal: "String",
    #         statement_id: "String",
    #         profile_version: "ProfileVersion"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListProfilePermissionsResponse]
    def list_profile_permissions(params = {}, options = {})
      request = build_request(:list_profile_permissions, params)
      request.send_request(options)
    end

    # <p>Lists all your signing jobs. You can use the <code>maxResults</code> parameter to limit the
    # 			number of signing jobs that are returned in the response. If additional jobs remain to
    # 			be listed, AWS Signer returns a <code>nextToken</code> value. Use this value in
    # 			subsequent calls to <code>ListSigningJobs</code> to fetch the remaining values. You can
    # 			continue calling <code>ListSigningJobs</code> with your <code>maxResults</code>
    # 			parameter and with new values that Signer returns in the <code>nextToken</code>
    # 			parameter until all of your signing jobs have been returned. </p>
    # @param [Hash, Types::ListSigningJobsRequest] params
    # @option params [String] :status
    #   <p>A status value with which to filter your results.</p>
    # @option params [String] :platform_id
    #   <p>The ID of microcontroller platform that you specified for the distribution of your
    #   			code image.</p>
    # @option params [String] :requested_by
    #   <p>The IAM principal that requested the signing job.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of items to return in the response. Use this parameter
    #   			when paginating results. If additional items exist beyond the number you specify, the
    #   				<code>nextToken</code> element is set in the response. Use the
    #   				<code>nextToken</code> value in a subsequent request to retrieve additional items.
    #   		</p>
    # @option params [String] :next_token
    #   <p>String for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    # @option params [Boolean] :is_revoked
    #   <p>Filters results to return only signing jobs with revoked signatures.</p>
    # @option params [Time] :signature_expires_before
    #   <p>Filters results to return only signing jobs with signatures expiring before a
    #   			specified timestamp.</p>
    # @option params [Time] :signature_expires_after
    #   <p>Filters results to return only signing jobs with signatures expiring after a specified
    #   			timestamp.</p>
    # @option params [String] :job_invoker
    #   <p>Filters results to return only signing jobs initiated by a specified IAM
    #   			entity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "InProgress" # One of: ["InProgress", "Failed", "Succeeded"],
    #     platform_id: "PlatformId",
    #     requested_by: "RequestedBy",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     is_revoked: false,
    #     signature_expires_before: Time.now,
    #     signature_expires_after: Time.now,
    #     job_invoker: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_signing_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         job_id: "JobId",
    #         source: {
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             key: "Key", # required
    #             version: "Version", # required
    #           }
    #         },
    #         signed_object: {
    #           s3: {
    #             bucket_name: "BucketName",
    #             key: "Key"
    #           }
    #         },
    #         signing_material: {
    #           certificate_arn: "CertificateArn", # required
    #         },
    #         created_at: Time.now,
    #         status: "InProgress" # One of: ["InProgress", "Failed", "Succeeded"],
    #         is_revoked: false,
    #         profile_name: "ProfileName",
    #         profile_version: "ProfileVersion",
    #         platform_id: "PlatformId",
    #         platform_display_name: "DisplayName",
    #         signature_expires_at: Time.now,
    #         job_owner: "AccountId",
    #         job_invoker: "AccountId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSigningJobsResponse]
    def list_signing_jobs(params = {}, options = {})
      request = build_request(:list_signing_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all signing platforms available in AWS Signer that match the request parameters. If
    # 			additional jobs remain to be listed, Signer returns a <code>nextToken</code> value.
    # 			Use this value in subsequent calls to <code>ListSigningJobs</code> to fetch the
    # 			remaining values. You can continue calling <code>ListSigningJobs</code> with your
    # 				<code>maxResults</code> parameter and with new values that Signer returns in the
    # 				<code>nextToken</code> parameter until all of your signing jobs have been
    # 			returned.</p>
    # @param [Hash, Types::ListSigningPlatformsRequest] params
    # @option params [String] :category
    #   <p>The category type of a signing platform.</p>
    # @option params [String] :partner
    #   <p>Any partner entities connected to a signing platform.</p>
    # @option params [String] :target
    #   <p>The validation template that is used by the target signing platform.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned by this operation.</p>
    # @option params [String] :next_token
    #   <p>Value for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     category: "String",
    #     partner: "String",
    #     target: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_signing_platforms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     platforms: [
    #       {
    #         platform_id: "String",
    #         display_name: "String",
    #         partner: "String",
    #         target: "String",
    #         category: "AWSIoT" # One of: ["AWSIoT"],
    #         signing_configuration: {
    #           encryption_algorithm_options: { # required
    #             allowed_values: ["RSA" # One of: ["RSA", "ECDSA"]], # required
    #             default_value: "RSA" # One of: ["RSA", "ECDSA"], # required
    #           },
    #           hash_algorithm_options: { # required
    #             allowed_values: ["SHA1" # One of: ["SHA1", "SHA256"]], # required
    #             default_value: "SHA1" # One of: ["SHA1", "SHA256"], # required
    #           }
    #         },
    #         signing_image_format: {
    #           supported_formats: ["JSON" # One of: ["JSON", "JSONEmbedded", "JSONDetached"]], # required
    #           default_format: "JSON" # One of: ["JSON", "JSONEmbedded", "JSONDetached"], # required
    #         },
    #         max_size_in_mb: 1,
    #         revocation_supported: false
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSigningPlatformsResponse]
    def list_signing_platforms(params = {}, options = {})
      request = build_request(:list_signing_platforms, params)
      request.send_request(options)
    end

    # <p>Lists all available signing profiles in your AWS account. Returns only profiles with an
    # 				<code>ACTIVE</code> status unless the <code>includeCanceled</code> request field is
    # 			set to <code>true</code>. If additional jobs remain to be listed, AWS Signer returns a
    # 				<code>nextToken</code> value. Use this value in subsequent calls to
    # 				<code>ListSigningJobs</code> to fetch the remaining values. You can continue calling
    # 				<code>ListSigningJobs</code> with your <code>maxResults</code> parameter and with
    # 			new values that Signer returns in the <code>nextToken</code> parameter until all of
    # 			your signing jobs have been returned.</p>
    # @param [Hash, Types::ListSigningProfilesRequest] params
    # @option params [Boolean] :include_canceled
    #   <p>Designates whether to include profiles with the status of
    #   			<code>CANCELED</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of profiles to be returned.</p>
    # @option params [String] :next_token
    #   <p>Value for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    # @option params [String] :platform_id
    #   <p>Filters results to return only signing jobs initiated for a specified signing
    #   			platform.</p>
    # @option params [Array<String>] :statuses
    #   <p>Filters results to return only signing jobs with statuses in the specified
    #   			list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     include_canceled: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #     platform_id: "PlatformId",
    #     statuses: ["Active" # One of: ["Active", "Canceled", "Revoked"]]
    #   }
    #   options = {}
    #   response = client.list_signing_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profiles: [
    #       {
    #         profile_name: "ProfileName",
    #         profile_version: "ProfileVersion",
    #         profile_version_arn: "Arn",
    #         signing_material: {
    #           certificate_arn: "CertificateArn", # required
    #         },
    #         signature_validity_period: {
    #           value: 1,
    #           type: "DAYS" # One of: ["DAYS", "MONTHS", "YEARS"]
    #         },
    #         platform_id: "PlatformId",
    #         platform_display_name: "DisplayName",
    #         signing_parameters: {
    #           "SigningParameterKey" => "SigningParameterValue"
    #         },
    #         status: "Active" # One of: ["Active", "Canceled", "Revoked"],
    #         arn: "String",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSigningProfilesResponse]
    def list_signing_profiles(params = {}, options = {})
      request = build_request(:list_signing_profiles, params)
      request.send_request(options)
    end

    # <p>Returns a list of the tags associated with a signing profile resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates a signing profile. A signing profile is a code-signing template that can be used to
    # 			carry out a pre-defined signing job.
    # 			</p>
    # @param [Hash, Types::PutSigningProfileRequest] params
    # @option params [String] :profile_name
    #   <p>The name of the signing profile to be created.</p>
    # @option params [Types::SigningMaterial] :signing_material
    #   <p>The AWS Certificate Manager certificate that will be used to sign code with the new signing
    #   			profile.</p>
    # @option params [Types::SignatureValidityPeriod] :signature_validity_period
    #   <p>The default validity period override for any signature generated using this signing
    #   			profile. If unspecified, the default is 135 months.</p>
    # @option params [String] :platform_id
    #   <p>The ID of the signing platform to be created.</p>
    # @option params [Types::SigningPlatformOverrides] :overrides
    #   <p>A subfield of <code>platform</code>. This specifies any different configuration
    #   			options that you want to apply to the chosen platform (such as a different
    #   				<code>hash-algorithm</code> or <code>signing-algorithm</code>).</p>
    # @option params [Hash<String, String>] :signing_parameters
    #   <p>Map of key-value pairs for signing. These can include any information that you want to
    #   			use during signing.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to be associated with the signing profile that is being created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_name: "ProfileName", # required
    #     signing_material: {
    #       certificate_arn: "CertificateArn", # required
    #     },
    #     signature_validity_period: {
    #       value: 1,
    #       type: "DAYS" # One of: ["DAYS", "MONTHS", "YEARS"]
    #     },
    #     platform_id: "PlatformId", # required
    #     overrides: {
    #       signing_configuration: {
    #         encryption_algorithm: "RSA" # One of: ["RSA", "ECDSA"],
    #         hash_algorithm: "SHA1" # One of: ["SHA1", "SHA256"]
    #       },
    #       signing_image_format: "JSON" # One of: ["JSON", "JSONEmbedded", "JSONDetached"]
    #     },
    #     signing_parameters: {
    #       "SigningParameterKey" => "SigningParameterValue"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.put_signing_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     profile_version: "ProfileVersion",
    #     profile_version_arn: "Arn"
    #   }
    # @return [Types::PutSigningProfileResponse]
    def put_signing_profile(params = {}, options = {})
      request = build_request(:put_signing_profile, params)
      request.send_request(options)
    end

    # <p>Removes cross-account permissions from a signing profile.</p>
    # @param [Hash, Types::RemoveProfilePermissionRequest] params
    # @option params [String] :profile_name
    #   <p>A human-readable name for the signing profile with permissions to be removed.</p>
    # @option params [String] :revision_id
    #   <p>An identifier for the current revision of the signing profile permissions.</p>
    # @option params [String] :statement_id
    #   <p>A unique identifier for the cross-account permissions statement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_name: "ProfileName", # required
    #     revision_id: "String", # required
    #     statement_id: "String", # required
    #   }
    #   options = {}
    #   response = client.remove_profile_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revision_id: "String"
    #   }
    # @return [Types::RemoveProfilePermissionResponse]
    def remove_profile_permission(params = {}, options = {})
      request = build_request(:remove_profile_permission, params)
      request.send_request(options)
    end

    # <p>Changes the state of a signing job to REVOKED. This indicates that the signature is no
    # 			longer valid.</p>
    # @param [Hash, Types::RevokeSignatureRequest] params
    # @option params [String] :job_id
    #   <p>ID of the signing job to be revoked.</p>
    # @option params [String] :job_owner
    #   <p>AWS account ID of the job owner.</p>
    # @option params [String] :reason
    #   <p>The reason for revoking the signing job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     job_owner: "AccountId",
    #     reason: "RevocationReasonString", # required
    #   }
    #   options = {}
    #   response = client.revoke_signature(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def revoke_signature(params = {}, options = {})
      request = build_request(:revoke_signature, params)
      request.send_request(options)
    end

    # <p>Changes the state of a signing profile to REVOKED. This indicates that signatures
    # 			generated using the signing profile after an effective start date are no longer
    # 			valid.</p>
    # @param [Hash, Types::RevokeSigningProfileRequest] params
    # @option params [String] :profile_name
    #   <p>The name of the signing profile to be revoked.</p>
    # @option params [String] :profile_version
    #   <p>The version of the signing profile to be revoked.</p>
    # @option params [String] :reason
    #   <p>The reason for revoking a signing profile.</p>
    # @option params [Time] :effective_time
    #   <p>A timestamp for when revocation of a Signing Profile should become effective.
    #   			Signatures generated using the signing profile after this timestamp are not
    #   			trusted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_name: "ProfileName", # required
    #     profile_version: "ProfileVersion", # required
    #     reason: "RevocationReasonString", # required
    #     effective_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.revoke_signing_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def revoke_signing_profile(params = {}, options = {})
      request = build_request(:revoke_signing_profile, params)
      request.send_request(options)
    end

    # <p>Signs a binary payload and returns a signature envelope.</p>
    # @param [Hash, Types::SignPayloadRequest] params
    # @option params [String] :profile_name
    #   <p>The name of the signing profile.</p>
    # @option params [String] :profile_owner
    #   <p>The AWS account ID of the profile owner.</p>
    # @option params [String] :payload
    #   <p>Specifies the object digest (hash) to sign.</p>
    # @option params [String] :payload_format
    #   <p>Payload content type. The single valid type is
    #   				<code>application/vnd.cncf.notary.payload.v1+json</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_name: "ProfileName", # required
    #     profile_owner: "AccountId",
    #     payload: "data", # required
    #     payload_format: "String", # required
    #   }
    #   options = {}
    #   response = client.sign_payload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_owner: "AccountId",
    #     metadata: {
    #       "String" => "String"
    #     },
    #     signature: "data"
    #   }
    # @return [Types::SignPayloadResponse]
    def sign_payload(params = {}, options = {})
      request = build_request(:sign_payload, params)
      request.send_request(options)
    end

    # <p>Initiates a signing job to be performed on the code provided. Signing jobs are
    # 			viewable by the <code>ListSigningJobs</code> operation for two years after they are
    # 			performed. Note the following requirements: </p>
    # 		       <ul>
    #             <li>
    # 				           <p> You must create an Amazon S3 source bucket. For more information, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html">Creating a Bucket</a> in the
    # 						<i>Amazon S3 Getting Started Guide</i>. </p>
    # 			         </li>
    #             <li>
    # 				           <p>Your S3 source bucket must be version enabled.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You must create an S3 destination bucket. AWS Signer uses your S3 destination bucket to
    # 					write your signed code.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You specify the name of the source and destination buckets when calling the
    # 						<code>StartSigningJob</code> operation.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You must ensure the S3 buckets are from the same Region as the signing profile. Cross-Region signing isn't supported.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You must also specify a request token that identifies your request to Signer.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>You can call the <a>DescribeSigningJob</a> and the <a>ListSigningJobs</a> actions after you call
    # 			<code>StartSigningJob</code>.</p>
    # 		       <p>For a Java example that shows how to use this action, see <a href="https://docs.aws.amazon.com/signer/latest/developerguide/api-startsigningjob.html">StartSigningJob</a>.</p>
    # @param [Hash, Types::StartSigningJobRequest] params
    # @option params [Types::Source] :source
    #   <p>The S3 bucket that contains the object to sign or a BLOB that contains your raw
    #   			code.</p>
    # @option params [Types::Destination] :destination
    #   <p>The S3 bucket in which to save your signed object. The destination contains the name
    #   			of your bucket and an optional prefix.</p>
    # @option params [String] :profile_name
    #   <p>The name of the signing profile.</p>
    # @option params [String] :client_request_token
    #   <p>String that identifies the signing request. All calls after the first that use this
    #   			token return the same response as the first call.</p>
    # @option params [String] :profile_owner
    #   <p>The AWS account ID of the signing profile owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source: { # required
    #       s3: {
    #         bucket_name: "BucketName", # required
    #         key: "Key", # required
    #         version: "Version", # required
    #       }
    #     },
    #     destination: { # required
    #       s3: {
    #         bucket_name: "BucketName",
    #         prefix: "Prefix"
    #       }
    #     },
    #     profile_name: "ProfileName", # required
    #     client_request_token: "ClientRequestToken", # required
    #     profile_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.start_signing_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_owner: "AccountId"
    #   }
    # @return [Types::StartSigningJobResponse]
    def start_signing_job(params = {}, options = {})
      request = build_request(:start_signing_job, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to a signing profile. Tags are labels that you can use to
    # 			identify and organize your AWS resources. Each tag consists of a key and an optional
    # 			value. To specify the signing profile, use its Amazon Resource Name (ARN). To specify
    # 			the tag, use a key-value pair.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags to be associated with the signing profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from a signing profile. To remove the tags, specify a list of
    # 			tag keys.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to be removed from the signing profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-signer'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        successful_signing_job: Waiters::SuccessfulSigningJob
      }
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
