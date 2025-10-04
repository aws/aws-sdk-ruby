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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::CognitoSync
  # An API client for Aws::CognitoSync.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSCognitoSyncService

    add_plugin(::Aws::CognitoSync::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CognitoSync::EndpointProvider)
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

    # <p>Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    # @param [Hash, Types::BulkPublishRequest] params
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #   }
    #   options = {}
    #   response = client.bulk_publish(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId"
    #   }
    # @return [Types::BulkPublishResponse]
    def bulk_publish(params = {}, options = {})
      request = build_request(:bulk_publish, params)
      request.send_request(options)
    end

    # <p>Deletes the specific dataset. The dataset will be deleted permanently, and the action can't
    #          be undone. Datasets that this dataset was merged with will no longer report the merge. Any
    #          subsequent operation on this dataset will result in a
    #             ResourceNotFoundException.</p>
    #           <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @option params [String] :dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #   }
    #   options = {}
    #   response = client.delete_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset: {
    #       identity_id: "IdentityId",
    #       dataset_name: "DatasetName",
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       last_modified_by: "String",
    #       data_storage: 1,
    #       num_records: 1
    #     }
    #   }
    # @return [Types::DeleteDatasetResponse]
    def delete_dataset(params = {}, options = {})
      request = build_request(:delete_dataset, params)
      request.send_request(options)
    end

    # <p>Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each
    #          identity has access only to its own data. Thus, the credentials used to make this API call
    #          need to have access to the identity data.</p>
    #       <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.</p>
    # @param [Hash, Types::DescribeDatasetRequest] params
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @option params [String] :dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset: {
    #       identity_id: "IdentityId",
    #       dataset_name: "DatasetName",
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       last_modified_by: "String",
    #       data_storage: 1,
    #       num_records: 1
    #     }
    #   }
    # @return [Types::DescribeDatasetResponse]
    def describe_dataset(params = {}, options = {})
      request = build_request(:describe_dataset, params)
      request.send_request(options)
    end

    # <p>Gets usage details (for example, data storage) about a particular identity pool.</p>
    #       <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    # 
    #       <examples>
    #          <example>
    #             <name>DescribeIdentityPoolUsage</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 8dc0e749-c8cd-48bd-8520-da6be00d528b
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.DescribeIdentityPoolUsage
    # HOST: cognito-sync.us-east-1.amazonaws.com:443
    # X-AMZ-DATE: 20141111T205737Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature=<signature>
    #  
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#DescribeIdentityPoolUsage",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "IDENTITY_POOL_ID"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 8dc0e749-c8cd-48bd-8520-da6be00d528b
    # content-type: application/json
    # content-length: 271
    # date: Tue, 11 Nov 2014 20:57:37 GMT
    #  
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#DescribeIdentityPoolUsageResponse",
    #         "IdentityPoolUsage":
    #         {
    #             "DataStorage": 0,
    #             "IdentityPoolId": "IDENTITY_POOL_ID",
    #             "LastModifiedDate": 1.413231134115E9,
    #             "SyncSessionsCount": null
    #         }
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    # @param [Hash, Types::DescribeIdentityPoolUsageRequest] params
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for
    #         example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
    #         generation is unique within a region.
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #   }
    #   options = {}
    #   response = client.describe_identity_pool_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_usage: {
    #       identity_pool_id: "IdentityPoolId",
    #       sync_sessions_count: 1,
    #       data_storage: 1,
    #       last_modified_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeIdentityPoolUsageResponse]
    def describe_identity_pool_usage(params = {}, options = {})
      request = build_request(:describe_identity_pool_usage, params)
      request.send_request(options)
    end

    # <p>Gets usage information for an identity, including number of datasets and data usage.</p>
    #       <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>
    #       <examples>
    #          <example>
    #             <name>DescribeIdentityUsage</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 33f9b4e4-a177-4aad-a3bb-6edb7980b283
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.DescribeIdentityUsage
    # HOST: cognito-sync.us-east-1.amazonaws.com:443
    # X-AMZ-DATE: 20141111T215129Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature=<signature>
    #  
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#DescribeIdentityUsage",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "IDENTITY_POOL_ID",
    #         "IdentityId": "IDENTITY_ID"
    #     }
    # }
    #                </request>
    #             <response>
    #                1.1 200 OK
    # x-amzn-requestid: 33f9b4e4-a177-4aad-a3bb-6edb7980b283
    # content-type: application/json
    # content-length: 318
    # date: Tue, 11 Nov 2014 21:51:29 GMT
    #  
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#DescribeIdentityUsageResponse",
    #         "IdentityUsage":
    #         {
    #             "DataStorage": 16,
    #             "DatasetCount": 1,
    #             "IdentityId": "IDENTITY_ID",
    #             "IdentityPoolId": "IDENTITY_POOL_ID",
    #             "LastModifiedDate": 1.412974081336E9
    #         }
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    # @param [Hash, Types::DescribeIdentityUsageRequest] params
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for
    #         example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
    #         generation is unique within a region.
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #   }
    #   options = {}
    #   response = client.describe_identity_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_usage: {
    #       identity_id: "IdentityId",
    #       identity_pool_id: "IdentityPoolId",
    #       last_modified_date: Time.now,
    #       dataset_count: 1,
    #       data_storage: 1
    #     }
    #   }
    # @return [Types::DescribeIdentityUsageResponse]
    def describe_identity_usage(params = {}, options = {})
      request = build_request(:describe_identity_usage, params)
      request.send_request(options)
    end

    # <p>Get the status of the last BulkPublish operation for an identity pool.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    # @param [Hash, Types::GetBulkPublishDetailsRequest] params
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #   }
    #   options = {}
    #   response = client.get_bulk_publish_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId",
    #     bulk_publish_start_time: Time.now,
    #     bulk_publish_complete_time: Time.now,
    #     bulk_publish_status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #     failure_message: "String"
    #   }
    # @return [Types::GetBulkPublishDetailsResponse]
    def get_bulk_publish_details(params = {}, options = {})
      request = build_request(:get_bulk_publish_details, params)
      request.send_request(options)
    end

    # <p>Gets the events and the corresponding Lambda functions associated with an identity pool.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    # @param [Hash, Types::GetCognitoEventsRequest] params
    # @option params [String] :identity_pool_id
    #   <p>The Cognito Identity Pool ID for the request</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #   }
    #   options = {}
    #   response = client.get_cognito_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: {
    #       "CognitoEventType" => "LambdaFunctionArn"
    #     }
    #   }
    # @return [Types::GetCognitoEventsResponse]
    def get_cognito_events(params = {}, options = {})
      request = build_request(:get_cognito_events, params)
      request.send_request(options)
    end

    # <p>Gets the configuration settings of an identity pool.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    #       <examples>
    #          <example>
    #             <name>GetIdentityPoolConfiguration</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: b1cfdd4b-f620-4fe4-be0f-02024a1d33da
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.GetIdentityPoolConfiguration
    # HOST: cognito-sync.us-east-1.amazonaws.com
    # X-AMZ-DATE: 20141004T195722Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature=<signature>
    # 
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#GetIdentityPoolConfiguration",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "ID_POOL_ID"
    #     }
    # }
    #                
    #             </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: b1cfdd4b-f620-4fe4-be0f-02024a1d33da
    # date: Sat, 04 Oct 2014 19:57:22 GMT
    # content-type: application/json
    # content-length: 332
    # 
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#GetIdentityPoolConfigurationResponse",
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "PushSync":
    #         {
    #             "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"],
    #             "RoleArn": "ROLEARN"
    #         }
    #     },
    #     "Version": "1.0"
    # }
    #  </response>
    #          </example>
    #       </examples>
    # @param [Hash, Types::GetIdentityPoolConfigurationRequest] params
    # @option params [String] :identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. This is the ID of the pool for which to return a configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #   }
    #   options = {}
    #   response = client.get_identity_pool_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId",
    #     push_sync: {
    #       application_arns: ["ApplicationArn"],
    #       role_arn: "AssumeRoleArn"
    #     },
    #     cognito_streams: {
    #       stream_name: "StreamName",
    #       role_arn: "AssumeRoleArn",
    #       streaming_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::GetIdentityPoolConfigurationResponse]
    def get_identity_pool_configuration(params = {}, options = {})
      request = build_request(:get_identity_pool_configuration, params)
      request.send_request(options)
    end

    # <p>Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to
    #          its own data. Thus, the credentials used to make this API call need to have access to the
    #          identity data.</p>
    #       <p>ListDatasets can be called with temporary user credentials provided by Cognito
    #          Identity or with developer credentials. You should use the Cognito Identity credentials to
    #          make this API call.</p>
    #       <examples>
    #          <example>
    #             <name>ListDatasets</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 15225768-209f-4078-aaed-7494ace9f2db
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListDatasets
    # HOST: cognito-sync.us-east-1.amazonaws.com:443
    # X-AMZ-DATE: 20141111T215640Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature=<signature>
    #  
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#ListDatasets",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "IDENTITY_POOL_ID",
    #         "IdentityId": "IDENTITY_ID",
    #         "MaxResults": "3"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 15225768-209f-4078-aaed-7494ace9f2db, 15225768-209f-4078-aaed-7494ace9f2db
    # content-type: application/json
    # content-length: 355
    # date: Tue, 11 Nov 2014 21:56:40 GMT
    #  
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#ListDatasetsResponse",
    #         "Count": 1,
    #         "Datasets": [
    #         {
    #             "CreationDate": 1.412974057151E9,
    #             "DataStorage": 16,
    #             "DatasetName": "my_list",
    #             "IdentityId": "IDENTITY_ID",
    #             "LastModifiedBy": "123456789012",
    #             "LastModifiedDate": 1.412974057244E9,
    #             "NumRecords": 1
    #         }],
    #         "NextToken": null
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    # @param [Hash, Types::ListDatasetsRequest] params
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @option params [String] :next_token
    #   A pagination token for obtaining the next
    #         page of results.
    # @option params [Integer] :max_results
    #   The maximum number of results to be
    #         returned.
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datasets: [
    #       {
    #         identity_id: "IdentityId",
    #         dataset_name: "DatasetName",
    #         creation_date: Time.now,
    #         last_modified_date: Time.now,
    #         last_modified_by: "String",
    #         data_storage: 1,
    #         num_records: 1
    #       }
    #     ],
    #     count: 1,
    #     next_token: "String"
    #   }
    # @return [Types::ListDatasetsResponse]
    def list_datasets(params = {}, options = {})
      request = build_request(:list_datasets, params)
      request.send_request(options)
    end

    # <p>Gets a list of identity pools registered with Cognito.</p>
    #       <p>ListIdentityPoolUsage can only be called with developer credentials. You
    #          cannot make this API call with the temporary user credentials provided by Cognito
    #          Identity.</p>
    #       <examples>
    #          <example>
    #             <name>ListIdentityPoolUsage</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 9be7c425-ef05-48c0-aef3-9f0ff2fe17d3
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListIdentityPoolUsage
    # HOST: cognito-sync.us-east-1.amazonaws.com:443
    # X-AMZ-DATE: 20141111T211414Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature=<signature>
    #  
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#ListIdentityPoolUsage",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "MaxResults": "2"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 9be7c425-ef05-48c0-aef3-9f0ff2fe17d3
    # content-type: application/json
    # content-length: 519
    # date: Tue, 11 Nov 2014 21:14:14 GMT
    #  
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#ListIdentityPoolUsageResponse",
    #         "Count": 2,
    #         "IdentityPoolUsages": [
    #         {
    #             "DataStorage": 0,
    #             "IdentityPoolId": "IDENTITY_POOL_ID",
    #             "LastModifiedDate": 1.413836234607E9,
    #             "SyncSessionsCount": null
    #         },
    #         {
    #             "DataStorage": 0,
    #             "IdentityPoolId": "IDENTITY_POOL_ID",
    #             "LastModifiedDate": 1.410892165601E9,
    #             "SyncSessionsCount": null
    #         }],
    #         "MaxResults": 2,
    #         "NextToken": "dXMtZWFzdC0xOjBjMWJhMDUyLWUwOTgtNDFmYS1hNzZlLWVhYTJjMTI1Zjg2MQ=="
    #     },
    #     "Version": "1.0"
    # }               
    #                </response>
    #          </example>
    #       </examples>
    # @param [Hash, Types::ListIdentityPoolUsageRequest] params
    # @option params [String] :next_token
    #   A pagination token for obtaining
    #         the next page of results.
    # @option params [Integer] :max_results
    #   The maximum number of results to
    #         be returned.
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_identity_pool_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_usages: [
    #       {
    #         identity_pool_id: "IdentityPoolId",
    #         sync_sessions_count: 1,
    #         data_storage: 1,
    #         last_modified_date: Time.now
    #       }
    #     ],
    #     max_results: 1,
    #     count: 1,
    #     next_token: "String"
    #   }
    # @return [Types::ListIdentityPoolUsageResponse]
    def list_identity_pool_usage(params = {}, options = {})
      request = build_request(:list_identity_pool_usage, params)
      request.send_request(options)
    end

    # <p>Gets paginated records, optionally changed after a particular sync count for a dataset and
    #          identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus,
    #          the credentials used to make this API call need to have access to the identity data.</p>
    #       <p>ListRecords can be called with temporary user credentials provided by Cognito
    #          Identity or with developer credentials. You should use Cognito Identity credentials to make
    #          this API call.</p>
    #       <examples>
    #          <example>
    #             <name>ListRecords</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: b3d2e31e-d6b7-4612-8e84-c9ba288dab5d
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListRecords
    # HOST: cognito-sync.us-east-1.amazonaws.com:443
    # X-AMZ-DATE: 20141111T183230Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature=<signature>
    #  
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#ListRecords",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "IDENTITY_POOL_ID",
    #         "IdentityId": "IDENTITY_ID",
    #         "DatasetName": "newDataSet"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: b3d2e31e-d6b7-4612-8e84-c9ba288dab5d
    # content-type: application/json
    # content-length: 623
    # date: Tue, 11 Nov 2014 18:32:30 GMT
    #  
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#ListRecordsResponse",
    #         "Count": 0,
    #         "DatasetDeletedAfterRequestedSyncCount": false,
    #         "DatasetExists": false,
    #         "DatasetSyncCount": 0,
    #         "LastModifiedBy": null,
    #         "MergedDatasetNames": null,
    #         "NextToken": null,
    #         "Records": [],
    #         "SyncSessionToken": "SYNC_SESSION_TOKEN"
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    # @param [Hash, Types::ListRecordsRequest] params
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @option params [String] :dataset_name
    #   A string of up to 128 characters. Allowed
    #         characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
    # @option params [Integer] :last_sync_count
    #   The last server sync count for this
    #         record.
    # @option params [String] :next_token
    #   A pagination token for obtaining the next
    #         page of results.
    # @option params [Integer] :max_results
    #   The maximum number of results to be
    #         returned.
    # @option params [String] :sync_session_token
    #   A token containing a session ID,
    #         identity ID, and expiration.
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #     last_sync_count: 1,
    #     next_token: "String",
    #     max_results: 1,
    #     sync_session_token: "SyncSessionToken"
    #   }
    #   options = {}
    #   response = client.list_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [
    #       {
    #         key: "RecordKey",
    #         value: "RecordValue",
    #         sync_count: 1,
    #         last_modified_date: Time.now,
    #         last_modified_by: "String",
    #         device_last_modified_date: Time.now
    #       }
    #     ],
    #     next_token: "String",
    #     count: 1,
    #     dataset_sync_count: 1,
    #     last_modified_by: "String",
    #     merged_dataset_names: ["String"],
    #     dataset_exists: false,
    #     dataset_deleted_after_requested_sync_count: false,
    #     sync_session_token: "String"
    #   }
    # @return [Types::ListRecordsResponse]
    def list_records(params = {}, options = {})
      request = build_request(:list_records, params)
      request.send_request(options)
    end

    # <p>Registers a device to receive push sync notifications.</p><p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>
    #       <examples>
    #          <example>
    #             <name>RegisterDevice</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 368f9200-3eca-449e-93b3-7b9c08d8e185
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.RegisterDevice
    # HOST: cognito-sync.us-east-1.amazonaws.com
    # X-AMZ-DATE: 20141004T194643Z
    # X-AMZ-SECURITY-TOKEN: <securitytoken>
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature=<signature>
    # 
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#RegisterDevice",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "IdentityId": "IDENTITY_ID",
    #         "Platform": "GCM",
    #         "Token": "PUSH_TOKEN"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 368f9200-3eca-449e-93b3-7b9c08d8e185
    # date: Sat, 04 Oct 2014 19:46:44 GMT
    # content-type: application/json
    # content-length: 145
    # 
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#RegisterDeviceResponse",
    #         "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014"
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    # @param [Hash, Types::RegisterDeviceRequest] params
    # @option params [String] :identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. Here, the ID of the pool that the identity belongs to.</p>
    # @option params [String] :identity_id
    #   <p>The unique ID for this identity.</p>
    # @option params [String] :platform
    #   <p>The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).</p>
    # @option params [String] :token
    #   <p>The push token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     platform: "APNS" # One of: ["APNS", "APNS_SANDBOX", "GCM", "ADM"], # required
    #     token: "PushToken", # required
    #   }
    #   options = {}
    #   response = client.register_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_id: "DeviceId"
    #   }
    # @return [Types::RegisterDeviceResponse]
    def register_device(params = {}, options = {})
      request = build_request(:register_device, params)
      request.send_request(options)
    end

    # <p>Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    # @param [Hash, Types::SetCognitoEventsRequest] params
    # @option params [String] :identity_pool_id
    #   <p>The Cognito Identity Pool to use when configuring Cognito Events</p>
    # @option params [Hash<String, String>] :events
    #   <p>The events to configure</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     events: { # required
    #       "CognitoEventType" => "LambdaFunctionArn"
    #     }
    #   }
    #   options = {}
    #   response = client.set_cognito_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_cognito_events(params = {}, options = {})
      request = build_request(:set_cognito_events, params)
      request.send_request(options)
    end

    # <p>Sets the necessary configuration for push sync.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    #       <examples>
    #          <example>
    #             <name>SetIdentityPoolConfiguration</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: a46db021-f5dd-45d6-af5b-7069fa4a211b
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.SetIdentityPoolConfiguration
    # HOST: cognito-sync.us-east-1.amazonaws.com
    # X-AMZ-DATE: 20141004T200006Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature=<signature>
    # 
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#SetIdentityPoolConfiguration",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "PushSync":
    #         {
    #             "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"],
    #             "RoleArn": "ROLEARN"
    #         }
    #     }
    # }
    #             </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: a46db021-f5dd-45d6-af5b-7069fa4a211b
    # date: Sat, 04 Oct 2014 20:00:06 GMT
    # content-type: application/json
    # content-length: 332
    # 
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#SetIdentityPoolConfigurationResponse",
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "PushSync":
    #         {
    #             "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"],
    #             "RoleArn": "ROLEARN"
    #         }
    #     },
    #     "Version": "1.0"
    # }
    #             </response>
    #          </example>
    #       </examples>
    # @param [Hash, Types::SetIdentityPoolConfigurationRequest] params
    # @option params [String] :identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. This is the ID of the pool to modify.</p>
    # @option params [Types::PushSync] :push_sync
    #   <p>Options to apply to this identity pool for push synchronization.</p>
    # @option params [Types::CognitoStreams] :cognito_streams
    #   Options to apply to this identity pool for Amazon Cognito streams.
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     push_sync: {
    #       application_arns: ["ApplicationArn"],
    #       role_arn: "AssumeRoleArn"
    #     },
    #     cognito_streams: {
    #       stream_name: "StreamName",
    #       role_arn: "AssumeRoleArn",
    #       streaming_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    #   options = {}
    #   response = client.set_identity_pool_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId",
    #     push_sync: {
    #       application_arns: ["ApplicationArn"],
    #       role_arn: "AssumeRoleArn"
    #     },
    #     cognito_streams: {
    #       stream_name: "StreamName",
    #       role_arn: "AssumeRoleArn",
    #       streaming_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::SetIdentityPoolConfigurationResponse]
    def set_identity_pool_configuration(params = {}, options = {})
      request = build_request(:set_identity_pool_configuration, params)
      request.send_request(options)
    end

    # <p>Subscribes to receive notifications when a dataset is modified by another device.</p><p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>
    #       <examples>
    #          <example>
    #             <name>SubscribeToDataset</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 8b9932b7-201d-4418-a960-0a470e11de9f
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.SubscribeToDataset
    # HOST: cognito-sync.us-east-1.amazonaws.com
    # X-AMZ-DATE: 20141004T195350Z
    # X-AMZ-SECURITY-TOKEN: <securitytoken>
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature=<signature>
    # 
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#SubscribeToDataset",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "IdentityId": "IDENTITY_ID",
    #         "DatasetName": "Rufus",
    #         "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 8b9932b7-201d-4418-a960-0a470e11de9f
    # date: Sat, 04 Oct 2014 19:53:50 GMT
    # content-type: application/json
    # content-length: 99
    # 
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#SubscribeToDatasetResponse"
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    # @param [Hash, Types::SubscribeToDatasetRequest] params
    # @option params [String] :identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. The ID of the pool to which the identity belongs.</p>
    # @option params [String] :identity_id
    #   <p>Unique ID for this identity.</p>
    # @option params [String] :dataset_name
    #   <p>The name of the dataset to subcribe to.</p>
    # @option params [String] :device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #     device_id: "DeviceId", # required
    #   }
    #   options = {}
    #   response = client.subscribe_to_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SubscribeToDatasetResponse]
    def subscribe_to_dataset(params = {}, options = {})
      request = build_request(:subscribe_to_dataset, params)
      request.send_request(options)
    end

    # <p>Unsubscribes from receiving notifications when a dataset is modified by another device.</p><p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>
    #       <examples>
    #          <example>
    #             <name>UnsubscribeFromDataset</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZ-REQUESTSUPERTRACE: true
    # X-AMZN-REQUESTID: 676896d6-14ca-45b1-8029-6d36b10a077e
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.UnsubscribeFromDataset
    # HOST: cognito-sync.us-east-1.amazonaws.com
    # X-AMZ-DATE: 20141004T195446Z
    # X-AMZ-SECURITY-TOKEN: <securitytoken>
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature=<signature>
    # 
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#UnsubscribeFromDataset",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "IdentityId": "IDENTITY_ID",
    #         "DatasetName": "Rufus",
    #         "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 676896d6-14ca-45b1-8029-6d36b10a077e
    # date: Sat, 04 Oct 2014 19:54:46 GMT
    # content-type: application/json
    # content-length: 103
    # 
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#UnsubscribeFromDatasetResponse"
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    # @param [Hash, Types::UnsubscribeFromDatasetRequest] params
    # @option params [String] :identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. The ID of the pool to which this identity belongs.</p>
    # @option params [String] :identity_id
    #   <p>Unique ID for this identity.</p>
    # @option params [String] :dataset_name
    #   <p>The name of the dataset from which to unsubcribe.</p>
    # @option params [String] :device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #     device_id: "DeviceId", # required
    #   }
    #   options = {}
    #   response = client.unsubscribe_from_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UnsubscribeFromDatasetResponse]
    def unsubscribe_from_dataset(params = {}, options = {})
      request = build_request(:unsubscribe_from_dataset, params)
      request.send_request(options)
    end

    # <p>Posts updates to records and adds and deletes records for a dataset and user.</p>
    #       <p>The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count.</p><p>For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0.</p>
    #       <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>
    # @param [Hash, Types::UpdateRecordsRequest] params
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    # @option params [String] :dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    # @option params [String] :device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    # @option params [Array<Types::RecordPatch>] :record_patches
    #   A list of patch
    #         operations.
    # @option params [String] :sync_session_token
    #   The SyncSessionToken returned by a
    #         previous call to ListRecords for this dataset and identity.
    # @option params [String] :client_context
    #   Intended to supply a device ID that
    #         will populate the lastModifiedBy field referenced in other methods. The
    #            ClientContext field is not yet implemented.
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #     device_id: "DeviceId",
    #     record_patches: [
    #       {
    #         op: "replace" # One of: ["replace", "remove"], # required
    #         key: "RecordKey", # required
    #         value: "RecordValue",
    #         sync_count: 1, # required
    #         device_last_modified_date: Time.now
    #       }
    #     ],
    #     sync_session_token: "SyncSessionToken", # required
    #     client_context: "ClientContext"
    #   }
    #   options = {}
    #   response = client.update_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [
    #       {
    #         key: "RecordKey",
    #         value: "RecordValue",
    #         sync_count: 1,
    #         last_modified_date: Time.now,
    #         last_modified_by: "String",
    #         device_last_modified_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::UpdateRecordsResponse]
    def update_records(params = {}, options = {})
      request = build_request(:update_records, params)
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
      context[:gem_name] = 'aws-sdk-cognitosync'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
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
