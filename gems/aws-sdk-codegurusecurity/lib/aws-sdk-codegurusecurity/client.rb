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

module Aws::CodeGuruSecurity
  # An API client for Aws::CodeGuruSecurity.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AwsCodeGuruSecurity

    add_plugin(::Aws::CodeGuruSecurity::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CodeGuruSecurity::EndpointProvider)
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

    # <p>Returns a list of requested findings from standard scans.</p>
    # @param [Hash, Types::BatchGetFindingsRequest] params
    # @option params [Array<Types::FindingIdentifier>] :finding_identifiers
    #   <p>A list of finding identifiers. Each identifier consists of a <code>scanName</code> and a <code>findingId</code>. You retrieve the <code>findingId</code> when you call <code>GetFindings</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_identifiers: [ # required
    #       {
    #         scan_name: "String", # required
    #         finding_id: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [ # required
    #       {
    #         created_at: Time.now,
    #         description: "String",
    #         generator_id: "String",
    #         id: "String",
    #         updated_at: Time.now,
    #         type: "String",
    #         status: "Closed" # One of: ["Closed", "Open", "All"],
    #         resource: {
    #           id: "String",
    #           sub_resource_id: "String"
    #         },
    #         vulnerability: {
    #           reference_urls: ["String"],
    #           related_vulnerabilities: ["String"],
    #           id: "String",
    #           file_path: {
    #             name: "String",
    #             path: "String",
    #             start_line: 1,
    #             end_line: 1,
    #             code_snippet: [
    #               {
    #                 number: 1,
    #                 content: "String"
    #               }
    #             ]
    #           },
    #           item_count: 1
    #         },
    #         severity: "Critical" # One of: ["Critical", "High", "Medium", "Low", "Info"],
    #         remediation: {
    #           recommendation: {
    #             text: "String",
    #             url: "String"
    #           },
    #           suggested_fixes: [
    #             {
    #               description: "String",
    #               code: "String"
    #             }
    #           ]
    #         },
    #         title: "String",
    #         detector_tags: ["String"],
    #         detector_id: "String",
    #         detector_name: "String",
    #         rule_id: "String"
    #       }
    #     ],
    #     failed_findings: [ # required
    #       {
    #         scan_name: "ScanName", # required
    #         finding_id: "String", # required
    #         error_code: "DUPLICATE_IDENTIFIER" # One of: ["DUPLICATE_IDENTIFIER", "ITEM_DOES_NOT_EXIST", "INTERNAL_ERROR", "INVALID_FINDING_ID", "INVALID_SCAN_NAME"], # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetFindingsResponse]
    def batch_get_findings(params = {}, options = {})
      request = build_request(:batch_get_findings, params)
      request.send_request(options)
    end

    # <p>Use to create a scan using code uploaded to an Amazon S3 bucket.</p>
    # @param [Hash, Types::CreateScanRequest] params
    # @option params [String] :client_token
    #   <p>The idempotency token for the request. Amazon CodeGuru Security uses this value to prevent the accidental creation of duplicate scans if there are failures and retries.</p>
    # @option params [Types::ResourceId] :resource_id
    #   <p>The identifier for the resource object to be scanned.</p>
    # @option params [String] :scan_name
    #   <p>The unique name that CodeGuru Security uses to track revisions across multiple scans of the same resource. Only allowed for a <code>STANDARD</code> scan type. </p>
    # @option params [String] :scan_type
    #   <p>The type of scan, either <code>Standard</code> or <code>Express</code>. Defaults to <code>Standard</code> type if missing.</p> <p> <code>Express</code> scans run on limited resources and use a limited set of detectors to analyze your code in near-real time. <code>Standard</code> scans have standard resource limits and use the full set of detectors to analyze your code.</p>
    # @option params [String] :analysis_type
    #   <p>The type of analysis you want CodeGuru Security to perform in the scan, either <code>Security</code> or <code>All</code>. The <code>Security</code> type only generates findings related to security. The <code>All</code> type generates both security findings and quality findings. Defaults to <code>Security</code> type if missing.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An array of key-value pairs used to tag a scan. A tag is a custom attribute label with two parts:</p> <ul> <li> <p>A tag key. For example, <code>CostCenter</code>, <code>Environment</code>, or <code>Secret</code>. Tag keys are case sensitive.</p> </li> <li> <p>An optional tag value field. For example, <code>111122223333</code>, <code>Production</code>, or a team name. Omitting the tag value is the same as using an empty string. Tag values are case sensitive.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     resource_id: { # required
    #       # One of:
    #       code_artifact_id: "Uuid"
    #     },
    #     scan_name: "ScanName", # required
    #     scan_type: "Standard" # One of: ["Standard", "Express"],
    #     analysis_type: "Security" # One of: ["Security", "All"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_name: "ScanName", # required
    #     run_id: "Uuid", # required
    #     resource_id: { # required
    #       # One of:
    #       code_artifact_id: "Uuid"
    #     },
    #     scan_state: "InProgress" # One of: ["InProgress", "Successful", "Failed"], # required
    #     scan_name_arn: "ScanNameArn"
    #   }
    # @return [Types::CreateScanResponse]
    def create_scan(params = {}, options = {})
      request = build_request(:create_scan, params)
      request.send_request(options)
    end

    # <p>Generates a pre-signed URL, request headers used to upload a code resource, and code artifact identifier for the uploaded resource.</p> <p>You can upload your code resource to the URL with the request headers using any HTTP client.</p>
    # @param [Hash, Types::CreateUploadUrlRequest] params
    # @option params [String] :scan_name
    #   <p>The name of the scan that will use the uploaded resource. CodeGuru Security uses the unique scan name to track revisions across multiple scans of the same resource. Use this <code>scanName</code> when you call <code>CreateScan</code> on the code resource you upload to this URL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_name: "ScanName", # required
    #   }
    #   options = {}
    #   response = client.create_upload_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_url: "S3Url", # required
    #     request_headers: { # required
    #       "HeaderKey" => "HeaderValue"
    #     },
    #     code_artifact_id: "Uuid", # required
    #   }
    # @return [Types::CreateUploadUrlResponse]
    def create_upload_url(params = {}, options = {})
      request = build_request(:create_upload_url, params)
      request.send_request(options)
    end

    # <p>Use to get the encryption configuration for an account.</p>
    # @param [Hash, Types::GetAccountConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encryption_config: { # required
    #       kms_key_arn: "KmsKeyArn"
    #     }
    #   }
    # @return [Types::GetAccountConfigurationResponse]
    def get_account_configuration(params = {}, options = {})
      request = build_request(:get_account_configuration, params)
      request.send_request(options)
    end

    # <p>Returns a list of all findings generated by a particular scan.</p>
    # @param [Hash, Types::GetFindingsRequest] params
    # @option params [String] :scan_name
    #   <p>The name of the scan you want to retrieve findings from.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the <code>nextToken</code> value returned from the previous request to continue listing results after the first page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. Use this parameter when paginating results. If additional results exist beyond the number you specify, the <code>nextToken</code> element is returned in the response. Use <code>nextToken</code> in a subsequent request to retrieve additional results. If not specified, returns 1000 results.</p>
    # @option params [String] :status
    #   <p>The status of the findings you want to get. Pass either <code>Open</code>, <code>Closed</code>, or <code>All</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_name: "ScanName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "Closed" # One of: ["Closed", "Open", "All"]
    #   }
    #   options = {}
    #   response = client.get_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [
    #       {
    #         created_at: Time.now,
    #         description: "String",
    #         generator_id: "String",
    #         id: "String",
    #         updated_at: Time.now,
    #         type: "String",
    #         status: "Closed" # One of: ["Closed", "Open", "All"],
    #         resource: {
    #           id: "String",
    #           sub_resource_id: "String"
    #         },
    #         vulnerability: {
    #           reference_urls: ["String"],
    #           related_vulnerabilities: ["String"],
    #           id: "String",
    #           file_path: {
    #             name: "String",
    #             path: "String",
    #             start_line: 1,
    #             end_line: 1,
    #             code_snippet: [
    #               {
    #                 number: 1,
    #                 content: "String"
    #               }
    #             ]
    #           },
    #           item_count: 1
    #         },
    #         severity: "Critical" # One of: ["Critical", "High", "Medium", "Low", "Info"],
    #         remediation: {
    #           recommendation: {
    #             text: "String",
    #             url: "String"
    #           },
    #           suggested_fixes: [
    #             {
    #               description: "String",
    #               code: "String"
    #             }
    #           ]
    #         },
    #         title: "String",
    #         detector_tags: ["String"],
    #         detector_id: "String",
    #         detector_name: "String",
    #         rule_id: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetFindingsResponse]
    def get_findings(params = {}, options = {})
      request = build_request(:get_findings, params)
      request.send_request(options)
    end

    # <p>Returns a summary of metrics for an account from a specified date, including number of open findings, the categories with most findings, the scans with most open findings, and scans with most open critical findings. </p>
    # @param [Hash, Types::GetMetricsSummaryRequest] params
    # @option params [Time] :date
    #   <p>The date you want to retrieve summary metrics from, rounded to the nearest day. The date must be within the past two years.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     date: Time.now, # required
    #   }
    #   options = {}
    #   response = client.get_metrics_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metrics_summary: {
    #       date: Time.now,
    #       open_findings: {
    #         info: 1.0,
    #         low: 1.0,
    #         medium: 1.0,
    #         high: 1.0,
    #         critical: 1.0
    #       },
    #       categories_with_most_findings: [
    #         {
    #           category_name: "String",
    #           finding_number: 1
    #         }
    #       ],
    #       scans_with_most_open_findings: [
    #         {
    #           scan_name: "String",
    #           finding_number: 1
    #         }
    #       ],
    #       scans_with_most_open_critical_findings: [
    #         {
    #           scan_name: "String",
    #           finding_number: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetMetricsSummaryResponse]
    def get_metrics_summary(params = {}, options = {})
      request = build_request(:get_metrics_summary, params)
      request.send_request(options)
    end

    # <p>Returns details about a scan, including whether or not a scan has completed.</p>
    # @param [Hash, Types::GetScanRequest] params
    # @option params [String] :scan_name
    #   <p>The name of the scan you want to view details about.</p>
    # @option params [String] :run_id
    #   <p>UUID that identifies the individual scan run you want to view details about. You retrieve this when you call the <code>CreateScan</code> operation. Defaults to the latest scan run if missing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_name: "ScanName", # required
    #     run_id: "Uuid"
    #   }
    #   options = {}
    #   response = client.get_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_name: "ScanName", # required
    #     run_id: "Uuid", # required
    #     scan_state: "InProgress" # One of: ["InProgress", "Successful", "Failed"], # required
    #     created_at: Time.now, # required
    #     analysis_type: "Security" # One of: ["Security", "All"], # required
    #     updated_at: Time.now,
    #     number_of_revisions: 1,
    #     scan_name_arn: "ScanNameArn",
    #     error_message: "ErrorMessage"
    #   }
    # @return [Types::GetScanResponse]
    def get_scan(params = {}, options = {})
      request = build_request(:get_scan, params)
      request.send_request(options)
    end

    # <p>Returns metrics about all findings in an account within a specified time range.</p>
    # @param [Hash, Types::ListFindingsMetricsRequest] params
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the <code>nextToken</code> value returned from the previous request to continue listing results after the first page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. Use this parameter when paginating results. If additional results exist beyond the number you specify, the <code>nextToken</code> element is returned in the response. Use <code>nextToken</code> in a subsequent request to retrieve additional results. If not specified, returns 1000 results.</p>
    # @option params [Time] :start_date
    #   <p>The start date of the interval which you want to retrieve metrics from. Rounds to the nearest day.</p>
    # @option params [Time] :end_date
    #   <p>The end date of the interval which you want to retrieve metrics from. Round to the nearest day.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #   }
    #   options = {}
    #   response = client.list_findings_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings_metrics: [
    #       {
    #         date: Time.now,
    #         new_findings: {
    #           info: 1.0,
    #           low: 1.0,
    #           medium: 1.0,
    #           high: 1.0,
    #           critical: 1.0
    #         },
    #         closed_findings: {
    #           info: 1.0,
    #           low: 1.0,
    #           medium: 1.0,
    #           high: 1.0,
    #           critical: 1.0
    #         },
    #         open_findings: {
    #           info: 1.0,
    #           low: 1.0,
    #           medium: 1.0,
    #           high: 1.0,
    #           critical: 1.0
    #         },
    #         mean_time_to_close: {
    #           info: 1.0,
    #           low: 1.0,
    #           medium: 1.0,
    #           high: 1.0,
    #           critical: 1.0
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFindingsMetricsResponse]
    def list_findings_metrics(params = {}, options = {})
      request = build_request(:list_findings_metrics, params)
      request.send_request(options)
    end

    # <p>Returns a list of all scans in an account. Does not return <code>EXPRESS</code> scans.</p>
    # @param [Hash, Types::ListScansRequest] params
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the <code>nextToken</code> value returned from the previous request to continue listing results after the first page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. Use this parameter when paginating results. If additional results exist beyond the number you specify, the <code>nextToken</code> element is returned in the response. Use <code>nextToken</code> in a subsequent request to retrieve additional results. If not specified, returns 100 results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_scans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         scan_state: "InProgress" # One of: ["InProgress", "Successful", "Failed"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now,
    #         scan_name: "ScanName", # required
    #         run_id: "Uuid", # required
    #         scan_name_arn: "ScanNameArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListScansResponse]
    def list_scans(params = {}, options = {})
      request = build_request(:list_scans, params)
      request.send_request(options)
    end

    # <p>Returns a list of all tags associated with a scan.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the <code>ScanName</code> object. You can retrieve this ARN by calling <code>CreateScan</code>, <code>ListScans</code>, or <code>GetScan</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ScanNameArn", # required
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

    # <p>Use to add one or more tags to an existing scan.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the <code>ScanName</code> object. You can retrieve this ARN by calling <code>CreateScan</code>, <code>ListScans</code>, or <code>GetScan</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An array of key-value pairs used to tag an existing scan. A tag is a custom attribute label with two parts:</p> <ul> <li> <p>A tag key. For example, <code>CostCenter</code>, <code>Environment</code>, or <code>Secret</code>. Tag keys are case sensitive.</p> </li> <li> <p>An optional tag value field. For example, <code>111122223333</code>, <code>Production</code>, or a team name. Omitting the tag value is the same as using an empty string. Tag values are case sensitive.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ScanNameArn", # required
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

    # <p>Use to remove one or more tags from an existing scan.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the <code>ScanName</code> object. You can retrieve this ARN by calling <code>CreateScan</code>, <code>ListScans</code>, or <code>GetScan</code>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys for each tag you want to remove from a scan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ScanNameArn", # required
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

    # <p>Use to update the encryption configuration for an account.</p>
    # @param [Hash, Types::UpdateAccountConfigurationRequest] params
    # @option params [Types::EncryptionConfig] :encryption_config
    #   <p>The customer-managed KMS key ARN you want to use for encryption. If not specified, CodeGuru Security will use an AWS-managed key for encryption. If you previously specified a customer-managed KMS key and want CodeGuru Security to use an AWS-managed key for encryption instead, pass nothing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     encryption_config: { # required
    #       kms_key_arn: "KmsKeyArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_account_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encryption_config: { # required
    #       kms_key_arn: "KmsKeyArn"
    #     }
    #   }
    # @return [Types::UpdateAccountConfigurationResponse]
    def update_account_configuration(params = {}, options = {})
      request = build_request(:update_account_configuration, params)
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
      context[:gem_name] = 'aws-sdk-codegurusecurity'
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
