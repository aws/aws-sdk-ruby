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

module Aws::Macie2
  # An API client for Aws::Macie2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Macie2

    add_plugin(::Aws::Macie2::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Macie2::EndpointProvider)
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

    # <p>Accepts an Amazon Macie membership invitation that was received from a specific account.</p>
    # @param [Hash, Types::AcceptInvitationRequest] params
    # @option params [String] :administrator_account_id
    #   <p>The Amazon Web Services account ID for the account that sent the invitation.</p>
    # @option params [String] :invitation_id
    #   <p>The unique identifier for the invitation to accept.</p>
    # @option params [String] :master_account
    #   <p>(Deprecated) The Amazon Web Services account ID for the account that sent the invitation. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     administrator_account_id: "__string",
    #     invitation_id: "__string", # required
    #     master_account: "__string"
    #   }
    #   options = {}
    #   response = client.accept_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AcceptInvitationResponse]
    def accept_invitation(params = {}, options = {})
      request = build_request(:accept_invitation, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more custom data identifiers.</p>
    # @param [Hash, Types::BatchGetCustomDataIdentifiersRequest] params
    # @option params [Array<String>] :ids
    #   <p>An array of custom data identifier IDs, one for each custom data identifier to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ids: ["__string"]
    #   }
    #   options = {}
    #   response = client.batch_get_custom_data_identifiers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_data_identifiers: [
    #       {
    #         arn: "__string",
    #         created_at: Time.now,
    #         deleted: false,
    #         description: "__string",
    #         id: "__string",
    #         name: "__string"
    #       }
    #     ],
    #     not_found_identifier_ids: ["__string"]
    #   }
    # @return [Types::BatchGetCustomDataIdentifiersResponse]
    def batch_get_custom_data_identifiers(params = {}, options = {})
      request = build_request(:batch_get_custom_data_identifiers, params)
      request.send_request(options)
    end

    # <p>Changes the status of automated sensitive data discovery for one or more accounts.</p>
    # @param [Hash, Types::BatchUpdateAutomatedDiscoveryAccountsRequest] params
    # @option params [Array<Types::AutomatedDiscoveryAccountUpdate>] :accounts
    #   <p>An array of objects, one for each account to change the status of automated sensitive data discovery for. Each object specifies the Amazon Web Services account ID for an account and a new status for that account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accounts: [
    #       {
    #         account_id: "__string",
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_automated_discovery_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         account_id: "__string",
    #         error_code: "ACCOUNT_PAUSED" # One of: ["ACCOUNT_PAUSED", "ACCOUNT_NOT_FOUND"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateAutomatedDiscoveryAccountsResponse]
    def batch_update_automated_discovery_accounts(params = {}, options = {})
      request = build_request(:batch_update_automated_discovery_accounts, params)
      request.send_request(options)
    end

    # <p>Creates and defines the settings for an allow list.</p>
    # @param [Hash, Types::CreateAllowListRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @option params [Types::AllowListCriteria] :criteria
    #   <p>The criteria that specify the text or text pattern to ignore. The criteria can be the location and name of an S3 object that lists specific text to ignore (s3WordsList), or a regular expression (regex) that defines a text pattern to ignore.</p>
    # @option params [String] :description
    #   <p>A custom description of the allow list. The description can contain as many as 512 characters.</p>
    # @option params [String] :name
    #   <p>A custom name for the allow list. The name can contain as many as 128 characters.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the allow list.</p> <p>An allow list can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "__string", # required
    #     criteria: { # required
    #       regex: "__stringMin1Max512PatternSS",
    #       s3_words_list: {
    #         bucket_name: "__stringMin3Max255PatternAZaZ093255", # required
    #         object_key: "__stringMin1Max1024PatternSS", # required
    #       }
    #     },
    #     description: "__stringMin1Max512PatternSS",
    #     name: "__stringMin1Max128Pattern", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_allow_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922",
    #     id: "__stringMin22Max22PatternAZ0922"
    #   }
    # @return [Types::CreateAllowListResponse]
    def create_allow_list(params = {}, options = {})
      request = build_request(:create_allow_list, params)
      request.send_request(options)
    end

    # <p>Creates and defines the settings for a classification job.</p>
    # @param [Hash, Types::CreateClassificationJobRequest] params
    # @option params [Array<String>] :allow_list_ids
    #   <p>An array of unique identifiers, one for each allow list for the job to use when it analyzes data.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @option params [Array<String>] :custom_data_identifier_ids
    #   <p>An array of unique identifiers, one for each custom data identifier for the job to use when it analyzes data. To use only managed data identifiers, don't specify a value for this property and specify a value other than NONE for the managedDataIdentifierSelector property.</p>
    # @option params [String] :description
    #   <p>A custom description of the job. The description can contain as many as 200 characters.</p>
    # @option params [Boolean] :initial_run
    #   <p>For a recurring job, specifies whether to analyze all existing, eligible objects immediately after the job is created (true). To analyze only those objects that are created or changed after you create the job and before the job's first scheduled run, set this value to false.</p> <p>If you configure the job to run only once, don't specify a value for this property.</p>
    # @option params [String] :job_type
    #   <p>The schedule for running the job. Valid values are:</p> <ul><li><p>ONE_TIME - Run the job only once. If you specify this value, don't specify a value for the scheduleFrequency property.</p></li> <li><p>SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the scheduleFrequency property to specify the recurrence pattern for the job.</p></li></ul>
    # @option params [Array<String>] :managed_data_identifier_ids
    #   <p>An array of unique identifiers, one for each managed data identifier for the job to include (use) or exclude (not use) when it analyzes data. Inclusion or exclusion depends on the managed data identifier selection type that you specify for the job (managedDataIdentifierSelector).</p> <p>To retrieve a list of valid values for this property, use the ListManagedDataIdentifiers operation.</p>
    # @option params [String] :managed_data_identifier_selector
    #   <p>The selection type to apply when determining which managed data identifiers the job uses to analyze data. Valid values are:</p> <ul><li><p>ALL - Use all managed data identifiers. If you specify this value, don't specify any values for the managedDataIdentifierIds property.</p></li> <li><p>EXCLUDE - Use all managed data identifiers except the ones specified by the managedDataIdentifierIds property.</p></li> <li><p>INCLUDE - Use only the managed data identifiers specified by the managedDataIdentifierIds property.</p></li> <li><p>NONE - Don't use any managed data identifiers. If you specify this value, specify at least one value for the customDataIdentifierIds property and don't specify any values for the managedDataIdentifierIds property.</p></li> <li><p>RECOMMENDED (default) - Use the recommended set of managed data identifiers. If you specify this value, don't specify any values for the managedDataIdentifierIds property.</p></li></ul> <p>If you don't specify a value for this property, the job uses the recommended set of managed data identifiers.</p> <p>If the job is a recurring job and you specify ALL or EXCLUDE, each job run automatically uses new managed data identifiers that are released. If you don't specify a value for this property or you specify RECOMMENDED for a recurring job, each job run automatically uses all the managed data identifiers that are in the recommended set when the run starts.</p> <p>To learn about individual managed data identifiers or determine which ones are in the recommended set, see <a href="https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html">Using managed data identifiers</a> or <a href="https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-mdis-recommended.html">Recommended managed data identifiers</a> in the <i>Amazon Macie User Guide</i>.</p>
    # @option params [String] :name
    #   <p>A custom name for the job. The name can contain as many as 500 characters.</p>
    # @option params [Types::S3JobDefinition] :s3_job_definition
    #   <p>The S3 buckets that contain the objects to analyze, and the scope of that analysis.</p>
    # @option params [Integer] :sampling_percentage
    #   <p>The sampling depth, as a percentage, for the job to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.</p>
    # @option params [Types::JobScheduleFrequency] :schedule_frequency
    #   <p>The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the jobType property to ONE_TIME.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the job.</p> <p>A job can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     allow_list_ids: ["__string"],
    #     client_token: "__string", # required
    #     custom_data_identifier_ids: ["__string"],
    #     description: "__string",
    #     initial_run: false,
    #     job_type: "ONE_TIME" # One of: ["ONE_TIME", "SCHEDULED"], # required
    #     managed_data_identifier_ids: ["__string"],
    #     managed_data_identifier_selector: "ALL" # One of: ["ALL", "EXCLUDE", "INCLUDE", "NONE", "RECOMMENDED"],
    #     name: "__string", # required
    #     s3_job_definition: { # required
    #       bucket_criteria: {
    #         excludes: {
    #           and: [
    #             {
    #               simple_criterion: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"],
    #                 values: ["__string"]
    #               },
    #               tag_criterion: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 tag_values: [
    #                   {
    #                     key: "__string",
    #                     value: "__string"
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         },
    #         includes: {
    #           and: [
    #             {
    #               simple_criterion: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"],
    #                 values: ["__string"]
    #               },
    #               tag_criterion: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 tag_values: [
    #                   {
    #                     key: "__string",
    #                     value: "__string"
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       bucket_definitions: [
    #         {
    #           account_id: "__string", # required
    #           buckets: ["__string"], # required
    #         }
    #       ],
    #       scoping: {
    #         excludes: {
    #           and: [
    #             {
    #               simple_scope_term: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "OBJECT_EXTENSION" # One of: ["OBJECT_EXTENSION", "OBJECT_LAST_MODIFIED_DATE", "OBJECT_SIZE", "OBJECT_KEY"],
    #                 values: ["__string"]
    #               },
    #               tag_scope_term: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "__string",
    #                 tag_values: [
    #                   {
    #                     key: "__string",
    #                     value: "__string"
    #                   }
    #                 ],
    #                 target: "S3_OBJECT" # One of: ["S3_OBJECT"]
    #               }
    #             }
    #           ]
    #         },
    #         includes: {
    #           and: [
    #             {
    #               simple_scope_term: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "OBJECT_EXTENSION" # One of: ["OBJECT_EXTENSION", "OBJECT_LAST_MODIFIED_DATE", "OBJECT_SIZE", "OBJECT_KEY"],
    #                 values: ["__string"]
    #               },
    #               tag_scope_term: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "__string",
    #                 tag_values: [
    #                   {
    #                     key: "__string",
    #                     value: "__string"
    #                   }
    #                 ],
    #                 target: "S3_OBJECT" # One of: ["S3_OBJECT"]
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     sampling_percentage: 1,
    #     schedule_frequency: {
    #       daily_schedule: {
    #       },
    #       monthly_schedule: {
    #         day_of_month: 1
    #       },
    #       weekly_schedule: {
    #         day_of_week: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #       }
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_classification_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "__string",
    #     job_id: "__string"
    #   }
    # @return [Types::CreateClassificationJobResponse]
    def create_classification_job(params = {}, options = {})
      request = build_request(:create_classification_job, params)
      request.send_request(options)
    end

    # <p>Creates and defines the criteria and other settings for a custom data identifier.</p>
    # @param [Hash, Types::CreateCustomDataIdentifierRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :description
    #   <p>A custom description of the custom data identifier. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a custom data identifier. Other users of your account might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    # @option params [Array<String>] :ignore_words
    #   <p>An array that lists specific character sequences (<i>ignore words</i>) to exclude from the results. If the text matched by the regular expression contains any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4-90 UTF-8 characters. Ignore words are case sensitive.</p>
    # @option params [Array<String>] :keywords
    #   <p>An array that lists specific character sequences (<i>keywords</i>), one of which must precede and be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3-90 UTF-8 characters. Keywords aren't case sensitive.</p>
    # @option params [Integer] :maximum_match_distance
    #   <p>The maximum number of characters that can exist between the end of at least one complete character sequence specified by the keywords array and the end of the text that matches the regex pattern. If a complete keyword precedes all the text that matches the pattern and the keyword is within the specified distance, Amazon Macie includes the result. The distance can be 1-300 characters. The default value is 50.</p>
    # @option params [String] :name
    #   <p>A custom name for the custom data identifier. The name can contain as many as 128 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a custom data identifier. Other users of your account might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    # @option params [String] :regex
    #   <p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>
    # @option params [Array<Types::SeverityLevel>] :severity_levels
    #   <p>The severity to assign to findings that the custom data identifier produces, based on the number of occurrences of text that match the custom data identifier's detection criteria. You can specify as many as three SeverityLevel objects in this array, one for each severity: LOW, MEDIUM, or HIGH. If you specify more than one, the occurrences thresholds must be in ascending order by severity, moving from LOW to HIGH. For example, 1 for LOW, 50 for MEDIUM, and 100 for HIGH. If an S3 object contains fewer occurrences than the lowest specified threshold, Amazon Macie doesn't create a finding.</p> <p>If you don't specify any values for this array, Macie creates findings for S3 objects that contain at least one occurrence of text that matches the detection criteria, and Macie assigns the MEDIUM severity to those findings.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the custom data identifier.</p> <p>A custom data identifier can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "__string",
    #     description: "__string",
    #     ignore_words: ["__string"],
    #     keywords: ["__string"],
    #     maximum_match_distance: 1,
    #     name: "__string", # required
    #     regex: "__string", # required
    #     severity_levels: [
    #       {
    #         occurrences_threshold: 1, # required
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"], # required
    #       }
    #     ],
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_custom_data_identifier(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_data_identifier_id: "__string"
    #   }
    # @return [Types::CreateCustomDataIdentifierResponse]
    def create_custom_data_identifier(params = {}, options = {})
      request = build_request(:create_custom_data_identifier, params)
      request.send_request(options)
    end

    # <p>Creates and defines the criteria and other settings for a findings filter.</p>
    # @param [Hash, Types::CreateFindingsFilterRequest] params
    # @option params [String] :action
    #   <p>The action to perform on findings that match the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :description
    #   <p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users of your account might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    # @option params [Types::FindingCriteria] :finding_criteria
    #   <p>The criteria to use to filter findings.</p>
    # @option params [String] :name
    #   <p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users of your account might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    # @option params [Integer] :position
    #   <p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the filter.</p> <p>A findings filter can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: "ARCHIVE" # One of: ["ARCHIVE", "NOOP"], # required
    #     client_token: "__string",
    #     description: "__string",
    #     finding_criteria: { # required
    #       criterion: {
    #         "__string" => {
    #           eq: ["__string"],
    #           eq_exact_match: ["__string"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           neq: ["__string"]
    #         }
    #       }
    #     },
    #     name: "__string", # required
    #     position: 1,
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_findings_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     id: "__string"
    #   }
    # @return [Types::CreateFindingsFilterResponse]
    def create_findings_filter(params = {}, options = {})
      request = build_request(:create_findings_filter, params)
      request.send_request(options)
    end

    # <p>Sends an Amazon Macie membership invitation to one or more accounts.</p>
    # @param [Hash, Types::CreateInvitationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>An array that lists Amazon Web Services account IDs, one for each account to send the invitation to.</p>
    # @option params [Boolean] :disable_email_notification
    #   <p>Specifies whether to send the invitation as an email message. If this value is false, Amazon Macie sends the invitation (as an email message) to the email address that you specified for the recipient's account when you associated the account with your account. The default value is false.</p>
    # @option params [String] :message
    #   <p>Custom text to include in the email message that contains the invitation. The text can contain as many as 80 alphanumeric characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["__string"], # required
    #     disable_email_notification: false,
    #     message: "__string"
    #   }
    #   options = {}
    #   response = client.create_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #       {
    #         account_id: "__string",
    #         error_code: "ClientError" # One of: ["ClientError", "InternalError"],
    #         error_message: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateInvitationsResponse]
    def create_invitations(params = {}, options = {})
      request = build_request(:create_invitations, params)
      request.send_request(options)
    end

    # <p>Associates an account with an Amazon Macie administrator account.</p>
    # @param [Hash, Types::CreateMemberRequest] params
    # @option params [Types::AccountDetail] :account
    #   <p>The details of the account to associate with the administrator account.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the account in Amazon Macie.</p> <p>An account can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account: { # required
    #       account_id: "__string", # required
    #       email: "__string", # required
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string"
    #   }
    # @return [Types::CreateMemberResponse]
    def create_member(params = {}, options = {})
      request = build_request(:create_member, params)
      request.send_request(options)
    end

    # <p>Creates sample findings.</p>
    # @param [Hash, Types::CreateSampleFindingsRequest] params
    # @option params [Array<String>] :finding_types
    #   <p>An array of finding types, one for each type of sample finding to create. To create a sample of every type of finding that Amazon Macie supports, don't include this array in your request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_types: ["SensitiveData:S3Object/Multiple" # One of: ["SensitiveData:S3Object/Multiple", "SensitiveData:S3Object/Financial", "SensitiveData:S3Object/Personal", "SensitiveData:S3Object/Credentials", "SensitiveData:S3Object/CustomIdentifier", "Policy:IAMUser/S3BucketPublic", "Policy:IAMUser/S3BucketSharedExternally", "Policy:IAMUser/S3BucketReplicatedExternally", "Policy:IAMUser/S3BucketEncryptionDisabled", "Policy:IAMUser/S3BlockPublicAccessDisabled", "Policy:IAMUser/S3BucketSharedWithCloudFront"]]
    #   }
    #   options = {}
    #   response = client.create_sample_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateSampleFindingsResponse]
    def create_sample_findings(params = {}, options = {})
      request = build_request(:create_sample_findings, params)
      request.send_request(options)
    end

    # <p>Declines Amazon Macie membership invitations that were received from specific accounts.</p>
    # @param [Hash, Types::DeclineInvitationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>An array that lists Amazon Web Services account IDs, one for each account that sent an invitation to decline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.decline_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #       {
    #         account_id: "__string",
    #         error_code: "ClientError" # One of: ["ClientError", "InternalError"],
    #         error_message: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::DeclineInvitationsResponse]
    def decline_invitations(params = {}, options = {})
      request = build_request(:decline_invitations, params)
      request.send_request(options)
    end

    # <p>Deletes an allow list.</p>
    # @param [Hash, Types::DeleteAllowListRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @option params [String] :ignore_job_checks
    #   <p>Specifies whether to force deletion of the allow list, even if active classification jobs are configured to use the list.</p> <p>When you try to delete an allow list, Amazon Macie checks for classification jobs that use the list and have a status other than COMPLETE or CANCELLED. By default, Macie rejects your request if any jobs meet these criteria. To skip these checks and delete the list, set this value to true. To delete the list only if no active jobs are configured to use it, set this value to false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #     ignore_job_checks: "__string"
    #   }
    #   options = {}
    #   response = client.delete_allow_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAllowListResponse]
    def delete_allow_list(params = {}, options = {})
      request = build_request(:delete_allow_list, params)
      request.send_request(options)
    end

    # <p>Soft deletes a custom data identifier.</p>
    # @param [Hash, Types::DeleteCustomDataIdentifierRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_data_identifier(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomDataIdentifierResponse]
    def delete_custom_data_identifier(params = {}, options = {})
      request = build_request(:delete_custom_data_identifier, params)
      request.send_request(options)
    end

    # <p>Deletes a findings filter.</p>
    # @param [Hash, Types::DeleteFindingsFilterRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_findings_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFindingsFilterResponse]
    def delete_findings_filter(params = {}, options = {})
      request = build_request(:delete_findings_filter, params)
      request.send_request(options)
    end

    # <p>Deletes Amazon Macie membership invitations that were received from specific accounts.</p>
    # @param [Hash, Types::DeleteInvitationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>An array that lists Amazon Web Services account IDs, one for each account that sent an invitation to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.delete_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #       {
    #         account_id: "__string",
    #         error_code: "ClientError" # One of: ["ClientError", "InternalError"],
    #         error_message: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteInvitationsResponse]
    def delete_invitations(params = {}, options = {})
      request = build_request(:delete_invitations, params)
      request.send_request(options)
    end

    # <p>Deletes the association between an Amazon Macie administrator account and an account.</p>
    # @param [Hash, Types::DeleteMemberRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMemberResponse]
    def delete_member(params = {}, options = {})
      request = build_request(:delete_member, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes for an account.</p>
    # @param [Hash, Types::DescribeBucketsRequest] params
    # @option params [Hash<String, Types::BucketCriteriaAdditionalProperties>] :criteria
    #   <p>The criteria to use to filter the query results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response. The default value is 50.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @option params [Types::BucketSortCriteria] :sort_criteria
    #   <p>The criteria to use to sort the query results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     criteria: {
    #       "__string" => {
    #         eq: ["__string"],
    #         gt: 1,
    #         gte: 1,
    #         lt: 1,
    #         lte: 1,
    #         neq: ["__string"],
    #         prefix: "__string"
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "__string",
    #     sort_criteria: {
    #       attribute_name: "__string",
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.describe_buckets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     buckets: [
    #       {
    #         account_id: "__string",
    #         allows_unencrypted_object_uploads: "TRUE" # One of: ["TRUE", "FALSE", "UNKNOWN"],
    #         automated_discovery_monitoring_status: "MONITORED" # One of: ["MONITORED", "NOT_MONITORED"],
    #         bucket_arn: "__string",
    #         bucket_created_at: Time.now,
    #         bucket_name: "__string",
    #         classifiable_object_count: 1,
    #         classifiable_size_in_bytes: 1,
    #         error_code: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "BUCKET_COUNT_EXCEEDS_QUOTA"],
    #         error_message: "__string",
    #         job_details: {
    #           is_defined_in_job: "TRUE" # One of: ["TRUE", "FALSE", "UNKNOWN"],
    #           is_monitored_by_job: "TRUE" # One of: ["TRUE", "FALSE", "UNKNOWN"],
    #           last_job_id: "__string",
    #           last_job_run_time: Time.now
    #         },
    #         last_automated_discovery_time: Time.now,
    #         last_updated: Time.now,
    #         object_count: 1,
    #         object_count_by_encryption_type: {
    #           customer_managed: 1,
    #           kms_managed: 1,
    #           s3_managed: 1,
    #           unencrypted: 1,
    #           unknown: 1
    #         },
    #         public_access: {
    #           effective_permission: "PUBLIC" # One of: ["PUBLIC", "NOT_PUBLIC", "UNKNOWN"],
    #           permission_configuration: {
    #             account_level_permissions: {
    #               block_public_access: {
    #                 block_public_acls: false,
    #                 block_public_policy: false,
    #                 ignore_public_acls: false,
    #                 restrict_public_buckets: false
    #               }
    #             },
    #             bucket_level_permissions: {
    #               access_control_list: {
    #                 allows_public_read_access: false,
    #                 allows_public_write_access: false
    #               },
    #               block_public_access: {
    #                 block_public_acls: false,
    #                 block_public_policy: false,
    #                 ignore_public_acls: false,
    #                 restrict_public_buckets: false
    #               },
    #               bucket_policy: {
    #                 allows_public_read_access: false,
    #                 allows_public_write_access: false
    #               }
    #             }
    #           }
    #         },
    #         region: "__string",
    #         replication_details: {
    #           replicated: false,
    #           replicated_externally: false,
    #           replication_accounts: ["__string"]
    #         },
    #         sensitivity_score: 1,
    #         server_side_encryption: {
    #           kms_master_key_id: "__string",
    #           type: "NONE" # One of: ["NONE", "AES256", "aws:kms", "aws:kms:dsse"]
    #         },
    #         shared_access: "EXTERNAL" # One of: ["EXTERNAL", "INTERNAL", "NOT_SHARED", "UNKNOWN"],
    #         size_in_bytes: 1,
    #         size_in_bytes_compressed: 1,
    #         tags: [
    #           {
    #             key: "__string",
    #             value: "__string"
    #           }
    #         ],
    #         unclassifiable_object_count: {
    #           file_type: 1,
    #           storage_class: 1,
    #           total: 1
    #         },
    #         unclassifiable_object_size_in_bytes: {
    #           file_type: 1,
    #           storage_class: 1,
    #           total: 1
    #         },
    #         versioning: false
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::DescribeBucketsResponse]
    def describe_buckets(params = {}, options = {})
      request = build_request(:describe_buckets, params)
      request.send_request(options)
    end

    # <p>Retrieves the status and settings for a classification job.</p>
    # @param [Hash, Types::DescribeClassificationJobRequest] params
    # @option params [String] :job_id
    #   <p>The unique identifier for the classification job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_classification_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     allow_list_ids: ["__string"],
    #     client_token: "__string",
    #     created_at: Time.now,
    #     custom_data_identifier_ids: ["__string"],
    #     description: "__string",
    #     initial_run: false,
    #     job_arn: "__string",
    #     job_id: "__string",
    #     job_status: "RUNNING" # One of: ["RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"],
    #     job_type: "ONE_TIME" # One of: ["ONE_TIME", "SCHEDULED"],
    #     last_run_error_status: {
    #       code: "NONE" # One of: ["NONE", "ERROR"]
    #     },
    #     last_run_time: Time.now,
    #     managed_data_identifier_ids: ["__string"],
    #     managed_data_identifier_selector: "ALL" # One of: ["ALL", "EXCLUDE", "INCLUDE", "NONE", "RECOMMENDED"],
    #     name: "__string",
    #     s3_job_definition: {
    #       bucket_criteria: {
    #         excludes: {
    #           and: [
    #             {
    #               simple_criterion: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"],
    #                 values: ["__string"]
    #               },
    #               tag_criterion: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 tag_values: [
    #                   {
    #                     key: "__string",
    #                     value: "__string"
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         },
    #         includes: {
    #           and: [
    #             {
    #               simple_criterion: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"],
    #                 values: ["__string"]
    #               },
    #               tag_criterion: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 tag_values: [
    #                   {
    #                     key: "__string",
    #                     value: "__string"
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       bucket_definitions: [
    #         {
    #           account_id: "__string", # required
    #           buckets: ["__string"], # required
    #         }
    #       ],
    #       scoping: {
    #         excludes: {
    #           and: [
    #             {
    #               simple_scope_term: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "OBJECT_EXTENSION" # One of: ["OBJECT_EXTENSION", "OBJECT_LAST_MODIFIED_DATE", "OBJECT_SIZE", "OBJECT_KEY"],
    #                 values: ["__string"]
    #               },
    #               tag_scope_term: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "__string",
    #                 tag_values: [
    #                   {
    #                     key: "__string",
    #                     value: "__string"
    #                   }
    #                 ],
    #                 target: "S3_OBJECT" # One of: ["S3_OBJECT"]
    #               }
    #             }
    #           ]
    #         },
    #         includes: {
    #           and: [
    #             {
    #               simple_scope_term: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "OBJECT_EXTENSION" # One of: ["OBJECT_EXTENSION", "OBJECT_LAST_MODIFIED_DATE", "OBJECT_SIZE", "OBJECT_KEY"],
    #                 values: ["__string"]
    #               },
    #               tag_scope_term: {
    #                 comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                 key: "__string",
    #                 tag_values: [
    #                   {
    #                     key: "__string",
    #                     value: "__string"
    #                   }
    #                 ],
    #                 target: "S3_OBJECT" # One of: ["S3_OBJECT"]
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     sampling_percentage: 1,
    #     schedule_frequency: {
    #       daily_schedule: {
    #       },
    #       monthly_schedule: {
    #         day_of_month: 1
    #       },
    #       weekly_schedule: {
    #         day_of_week: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #       }
    #     },
    #     statistics: {
    #       approximate_number_of_objects_to_process: 1.0,
    #       number_of_runs: 1.0
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     user_paused_details: {
    #       job_expires_at: Time.now,
    #       job_imminent_expiration_health_event_arn: "__string",
    #       job_paused_at: Time.now
    #     }
    #   }
    # @return [Types::DescribeClassificationJobResponse]
    def describe_classification_job(params = {}, options = {})
      request = build_request(:describe_classification_job, params)
      request.send_request(options)
    end

    # <p>Retrieves the Amazon Macie configuration settings for an organization in Organizations.</p>
    # @param [Hash, Types::DescribeOrganizationConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_enable: false,
    #     max_account_limit_reached: false
    #   }
    # @return [Types::DescribeOrganizationConfigurationResponse]
    def describe_organization_configuration(params = {}, options = {})
      request = build_request(:describe_organization_configuration, params)
      request.send_request(options)
    end

    # <p>Disables Amazon Macie and deletes all settings and resources for a Macie account.</p>
    # @param [Hash, Types::DisableMacieRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disable_macie(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableMacieResponse]
    def disable_macie(params = {}, options = {})
      request = build_request(:disable_macie, params)
      request.send_request(options)
    end

    # <p>Disables an account as the delegated Amazon Macie administrator account for an organization in Organizations.</p>
    # @param [Hash, Types::DisableOrganizationAdminAccountRequest] params
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services account ID of the delegated Amazon Macie administrator account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.disable_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableOrganizationAdminAccountResponse]
    def disable_organization_admin_account(params = {}, options = {})
      request = build_request(:disable_organization_admin_account, params)
      request.send_request(options)
    end

    # <p>Disassociates a member account from its Amazon Macie administrator account.</p>
    # @param [Hash, Types::DisassociateFromAdministratorAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disassociate_from_administrator_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateFromAdministratorAccountResponse]
    def disassociate_from_administrator_account(params = {}, options = {})
      request = build_request(:disassociate_from_administrator_account, params)
      request.send_request(options)
    end

    # <p>(Deprecated) Disassociates a member account from its Amazon Macie administrator account. This operation has been replaced by the <link  linkend="DisassociateFromAdministratorAccount">DisassociateFromAdministratorAccount</link> operation.</p>
    # @param [Hash, Types::DisassociateFromMasterAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disassociate_from_master_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateFromMasterAccountResponse]
    def disassociate_from_master_account(params = {}, options = {})
      request = build_request(:disassociate_from_master_account, params)
      request.send_request(options)
    end

    # <p>Disassociates an Amazon Macie administrator account from a member account.</p>
    # @param [Hash, Types::DisassociateMemberRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.disassociate_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateMemberResponse]
    def disassociate_member(params = {}, options = {})
      request = build_request(:disassociate_member, params)
      request.send_request(options)
    end

    # <p>Enables Amazon Macie and specifies the configuration settings for a Macie account.</p>
    # @param [Hash, Types::EnableMacieRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :finding_publishing_frequency
    #   <p>Specifies how often to publish updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly Amazon CloudWatch Events).</p>
    # @option params [String] :status
    #   <p>Specifies the new status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to ENABLED.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "__string",
    #     finding_publishing_frequency: "FIFTEEN_MINUTES" # One of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"],
    #     status: "PAUSED" # One of: ["PAUSED", "ENABLED"]
    #   }
    #   options = {}
    #   response = client.enable_macie(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableMacieResponse]
    def enable_macie(params = {}, options = {})
      request = build_request(:enable_macie, params)
      request.send_request(options)
    end

    # <p>Designates an account as the delegated Amazon Macie administrator account for an organization in Organizations.</p>
    # @param [Hash, Types::EnableOrganizationAdminAccountRequest] params
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account_id: "__string", # required
    #     client_token: "__string"
    #   }
    #   options = {}
    #   response = client.enable_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableOrganizationAdminAccountResponse]
    def enable_organization_admin_account(params = {}, options = {})
      request = build_request(:enable_organization_admin_account, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the Amazon Macie administrator account for an account.</p>
    # @param [Hash, Types::GetAdministratorAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_administrator_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     administrator: {
    #       account_id: "__string",
    #       invitation_id: "__string",
    #       invited_at: Time.now,
    #       relationship_status: "Enabled" # One of: ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #     }
    #   }
    # @return [Types::GetAdministratorAccountResponse]
    def get_administrator_account(params = {}, options = {})
      request = build_request(:get_administrator_account, params)
      request.send_request(options)
    end

    # <p>Retrieves the settings and status of an allow list.</p>
    # @param [Hash, Types::GetAllowListRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_allow_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922",
    #     created_at: Time.now,
    #     criteria: {
    #       regex: "__stringMin1Max512PatternSS",
    #       s3_words_list: {
    #         bucket_name: "__stringMin3Max255PatternAZaZ093255", # required
    #         object_key: "__stringMin1Max1024PatternSS", # required
    #       }
    #     },
    #     description: "__stringMin1Max512PatternSS",
    #     id: "__stringMin22Max22PatternAZ0922",
    #     name: "__stringMin1Max128Pattern",
    #     status: {
    #       code: "OK" # One of: ["OK", "S3_OBJECT_NOT_FOUND", "S3_USER_ACCESS_DENIED", "S3_OBJECT_ACCESS_DENIED", "S3_THROTTLED", "S3_OBJECT_OVERSIZE", "S3_OBJECT_EMPTY", "UNKNOWN_ERROR"], # required
    #       description: "__stringMin1Max1024PatternSS"
    #     },
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::GetAllowListResponse]
    def get_allow_list(params = {}, options = {})
      request = build_request(:get_allow_list, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration settings and status of automated sensitive data discovery for an organization or standalone account.</p>
    # @param [Hash, Types::GetAutomatedDiscoveryConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_automated_discovery_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_enable_organization_members: "ALL" # One of: ["ALL", "NEW", "NONE"],
    #     classification_scope_id: "ClassificationScopeId",
    #     disabled_at: Time.now,
    #     first_enabled_at: Time.now,
    #     last_updated_at: Time.now,
    #     sensitivity_inspection_template_id: "SensitivityInspectionTemplateId",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    # @return [Types::GetAutomatedDiscoveryConfigurationResponse]
    def get_automated_discovery_configuration(params = {}, options = {})
      request = build_request(:get_automated_discovery_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) aggregated statistical data about all the S3 buckets that Amazon Macie monitors and analyzes for an account.</p>
    # @param [Hash, Types::GetBucketStatisticsRequest] params
    # @option params [String] :account_id
    #   <p>The unique identifier for the Amazon Web Services account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "__string"
    #   }
    #   options = {}
    #   response = client.get_bucket_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bucket_count: 1,
    #     bucket_count_by_effective_permission: {
    #       publicly_accessible: 1,
    #       publicly_readable: 1,
    #       publicly_writable: 1,
    #       unknown: 1
    #     },
    #     bucket_count_by_encryption_type: {
    #       kms_managed: 1,
    #       s3_managed: 1,
    #       unencrypted: 1,
    #       unknown: 1
    #     },
    #     bucket_count_by_object_encryption_requirement: {
    #       allows_unencrypted_object_uploads: 1,
    #       denies_unencrypted_object_uploads: 1,
    #       unknown: 1
    #     },
    #     bucket_count_by_shared_access_type: {
    #       external: 1,
    #       internal: 1,
    #       not_shared: 1,
    #       unknown: 1
    #     },
    #     bucket_statistics_by_sensitivity: {
    #       classification_error: {
    #         classifiable_size_in_bytes: 1,
    #         publicly_accessible_count: 1,
    #         total_count: 1,
    #         total_size_in_bytes: 1
    #       },
    #       not_classified: {
    #         classifiable_size_in_bytes: 1,
    #         publicly_accessible_count: 1,
    #         total_count: 1,
    #         total_size_in_bytes: 1
    #       },
    #       not_sensitive: {
    #         classifiable_size_in_bytes: 1,
    #         publicly_accessible_count: 1,
    #         total_count: 1,
    #         total_size_in_bytes: 1
    #       },
    #       sensitive: {
    #         classifiable_size_in_bytes: 1,
    #         publicly_accessible_count: 1,
    #         total_count: 1,
    #         total_size_in_bytes: 1
    #       }
    #     },
    #     classifiable_object_count: 1,
    #     classifiable_size_in_bytes: 1,
    #     last_updated: Time.now,
    #     object_count: 1,
    #     size_in_bytes: 1,
    #     size_in_bytes_compressed: 1,
    #     unclassifiable_object_count: {
    #       file_type: 1,
    #       storage_class: 1,
    #       total: 1
    #     },
    #     unclassifiable_object_size_in_bytes: {
    #       file_type: 1,
    #       storage_class: 1,
    #       total: 1
    #     }
    #   }
    # @return [Types::GetBucketStatisticsResponse]
    def get_bucket_statistics(params = {}, options = {})
      request = build_request(:get_bucket_statistics, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration settings for storing data classification results.</p>
    # @param [Hash, Types::GetClassificationExportConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_classification_export_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       s3_destination: {
    #         bucket_name: "__string", # required
    #         key_prefix: "__string",
    #         kms_key_arn: "__string", # required
    #       }
    #     }
    #   }
    # @return [Types::GetClassificationExportConfigurationResponse]
    def get_classification_export_configuration(params = {}, options = {})
      request = build_request(:get_classification_export_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the classification scope settings for an account.</p>
    # @param [Hash, Types::GetClassificationScopeRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_classification_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ClassificationScopeId",
    #     name: "ClassificationScopeName",
    #     s3: {
    #       excludes: { # required
    #         bucket_names: ["S3BucketName"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetClassificationScopeResponse]
    def get_classification_scope(params = {}, options = {})
      request = build_request(:get_classification_scope, params)
      request.send_request(options)
    end

    # <p>Retrieves the criteria and other settings for a custom data identifier.</p>
    # @param [Hash, Types::GetCustomDataIdentifierRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_custom_data_identifier(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     created_at: Time.now,
    #     deleted: false,
    #     description: "__string",
    #     id: "__string",
    #     ignore_words: ["__string"],
    #     keywords: ["__string"],
    #     maximum_match_distance: 1,
    #     name: "__string",
    #     regex: "__string",
    #     severity_levels: [
    #       {
    #         occurrences_threshold: 1, # required
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"], # required
    #       }
    #     ],
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetCustomDataIdentifierResponse]
    def get_custom_data_identifier(params = {}, options = {})
      request = build_request(:get_custom_data_identifier, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) aggregated statistical data about findings.</p>
    # @param [Hash, Types::GetFindingStatisticsRequest] params
    # @option params [Types::FindingCriteria] :finding_criteria
    #   <p>The criteria to use to filter the query results.</p>
    # @option params [String] :group_by
    #   <p>The finding property to use to group the query results. Valid values are:</p> <ul><li><p>classificationDetails.jobId - The unique identifier for the classification job that produced the finding.</p></li> <li><p>resourcesAffected.s3Bucket.name - The name of the S3 bucket that the finding applies to.</p></li> <li><p>severity.description - The severity level of the finding, such as High or Medium.</p></li> <li><p>type - The type of finding, such as Policy:IAMUser/S3BucketPublic and SensitiveData:S3Object/Personal.</p></li></ul>
    # @option params [Integer] :size
    #   <p>The maximum number of items to include in each page of the response.</p>
    # @option params [Types::FindingStatisticsSortCriteria] :sort_criteria
    #   <p>The criteria to use to sort the query results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_criteria: {
    #       criterion: {
    #         "__string" => {
    #           eq: ["__string"],
    #           eq_exact_match: ["__string"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           neq: ["__string"]
    #         }
    #       }
    #     },
    #     group_by: "resourcesAffected.s3Bucket.name" # One of: ["resourcesAffected.s3Bucket.name", "type", "classificationDetails.jobId", "severity.description"], # required
    #     size: 1,
    #     sort_criteria: {
    #       attribute_name: "groupKey" # One of: ["groupKey", "count"],
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_finding_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     counts_by_group: [
    #       {
    #         count: 1,
    #         group_key: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::GetFindingStatisticsResponse]
    def get_finding_statistics(params = {}, options = {})
      request = build_request(:get_finding_statistics, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of one or more findings.</p>
    # @param [Hash, Types::GetFindingsRequest] params
    # @option params [Array<String>] :finding_ids
    #   <p>An array of strings that lists the unique identifiers for the findings to retrieve. You can specify as many as 50 unique identifiers in this array.</p>
    # @option params [Types::SortCriteria] :sort_criteria
    #   <p>The criteria for sorting the results of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_ids: ["__string"], # required
    #     sort_criteria: {
    #       attribute_name: "__string",
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [
    #       {
    #         account_id: "__string",
    #         archived: false,
    #         category: "CLASSIFICATION" # One of: ["CLASSIFICATION", "POLICY"],
    #         classification_details: {
    #           detailed_results_location: "__string",
    #           job_arn: "__string",
    #           job_id: "__string",
    #           origin_type: "SENSITIVE_DATA_DISCOVERY_JOB" # One of: ["SENSITIVE_DATA_DISCOVERY_JOB", "AUTOMATED_SENSITIVE_DATA_DISCOVERY"],
    #           result: {
    #             additional_occurrences: false,
    #             custom_data_identifiers: {
    #               detections: [
    #                 {
    #                   arn: "__string",
    #                   count: 1,
    #                   name: "__string",
    #                   occurrences: {
    #                     cells: [
    #                       {
    #                         cell_reference: "__string",
    #                         column: 1,
    #                         column_name: "__string",
    #                         row: 1
    #                       }
    #                     ],
    #                     line_ranges: [
    #                       {
    #                         end: 1,
    #                         start: 1,
    #                         start_column: 1
    #                       }
    #                     ],
    #                     offset_ranges: [
    #                       {
    #                         end: 1,
    #                         start: 1,
    #                         start_column: 1
    #                       }
    #                     ],
    #                     pages: [
    #                       {
    #                         line_range: {
    #                           end: 1,
    #                           start: 1,
    #                           start_column: 1
    #                         },
    #                         offset_range: {
    #                           end: 1,
    #                           start: 1,
    #                           start_column: 1
    #                         },
    #                         page_number: 1
    #                       }
    #                     ],
    #                     records: [
    #                       {
    #                         json_path: "__string",
    #                         record_index: 1
    #                       }
    #                     ]
    #                   }
    #                 }
    #               ],
    #               total_count: 1
    #             },
    #             mime_type: "__string",
    #             sensitive_data: [
    #               {
    #                 category: "FINANCIAL_INFORMATION" # One of: ["FINANCIAL_INFORMATION", "PERSONAL_INFORMATION", "CREDENTIALS", "CUSTOM_IDENTIFIER"],
    #                 detections: [
    #                   {
    #                     count: 1,
    #                     occurrences: {
    #                       cells: [
    #                         {
    #                           cell_reference: "__string",
    #                           column: 1,
    #                           column_name: "__string",
    #                           row: 1
    #                         }
    #                       ],
    #                       line_ranges: [
    #                         {
    #                           end: 1,
    #                           start: 1,
    #                           start_column: 1
    #                         }
    #                       ],
    #                       offset_ranges: [
    #                         {
    #                           end: 1,
    #                           start: 1,
    #                           start_column: 1
    #                         }
    #                       ],
    #                       pages: [
    #                         {
    #                           line_range: {
    #                             end: 1,
    #                             start: 1,
    #                             start_column: 1
    #                           },
    #                           offset_range: {
    #                             end: 1,
    #                             start: 1,
    #                             start_column: 1
    #                           },
    #                           page_number: 1
    #                         }
    #                       ],
    #                       records: [
    #                         {
    #                           json_path: "__string",
    #                           record_index: 1
    #                         }
    #                       ]
    #                     },
    #                     type: "__string"
    #                   }
    #                 ],
    #                 total_count: 1
    #               }
    #             ],
    #             size_classified: 1,
    #             status: {
    #               code: "__string",
    #               reason: "__string"
    #             }
    #           }
    #         },
    #         count: 1,
    #         created_at: Time.now,
    #         description: "__string",
    #         id: "__string",
    #         partition: "__string",
    #         policy_details: {
    #           action: {
    #             action_type: "AWS_API_CALL" # One of: ["AWS_API_CALL"],
    #             api_call_details: {
    #               api: "__string",
    #               api_service_name: "__string",
    #               first_seen: Time.now,
    #               last_seen: Time.now
    #             }
    #           },
    #           actor: {
    #             domain_details: {
    #               domain_name: "__string"
    #             },
    #             ip_address_details: {
    #               ip_address_v4: "__string",
    #               ip_city: {
    #                 name: "__string"
    #               },
    #               ip_country: {
    #                 code: "__string",
    #                 name: "__string"
    #               },
    #               ip_geo_location: {
    #                 lat: 1.0,
    #                 lon: 1.0
    #               },
    #               ip_owner: {
    #                 asn: "__string",
    #                 asn_org: "__string",
    #                 isp: "__string",
    #                 org: "__string"
    #               }
    #             },
    #             user_identity: {
    #               assumed_role: {
    #                 access_key_id: "__string",
    #                 account_id: "__string",
    #                 arn: "__string",
    #                 principal_id: "__string",
    #                 session_context: {
    #                   attributes: {
    #                     creation_date: Time.now,
    #                     mfa_authenticated: false
    #                   },
    #                   session_issuer: {
    #                     account_id: "__string",
    #                     arn: "__string",
    #                     principal_id: "__string",
    #                     type: "__string",
    #                     user_name: "__string"
    #                   }
    #                 }
    #               },
    #               aws_account: {
    #                 account_id: "__string",
    #                 principal_id: "__string"
    #               },
    #               aws_service: {
    #                 invoked_by: "__string"
    #               },
    #               federated_user: {
    #                 access_key_id: "__string",
    #                 account_id: "__string",
    #                 arn: "__string",
    #                 principal_id: "__string",
    #                 session_context: {
    #                   attributes: {
    #                     creation_date: Time.now,
    #                     mfa_authenticated: false
    #                   },
    #                   session_issuer: {
    #                     account_id: "__string",
    #                     arn: "__string",
    #                     principal_id: "__string",
    #                     type: "__string",
    #                     user_name: "__string"
    #                   }
    #                 }
    #               },
    #               iam_user: {
    #                 account_id: "__string",
    #                 arn: "__string",
    #                 principal_id: "__string",
    #                 user_name: "__string"
    #               },
    #               root: {
    #                 account_id: "__string",
    #                 arn: "__string",
    #                 principal_id: "__string"
    #               },
    #               type: "AssumedRole" # One of: ["AssumedRole", "IAMUser", "FederatedUser", "Root", "AWSAccount", "AWSService"]
    #             }
    #           }
    #         },
    #         region: "__string",
    #         resources_affected: {
    #           s3_bucket: {
    #             allows_unencrypted_object_uploads: "TRUE" # One of: ["TRUE", "FALSE", "UNKNOWN"],
    #             arn: "__string",
    #             created_at: Time.now,
    #             default_server_side_encryption: {
    #               encryption_type: "NONE" # One of: ["NONE", "AES256", "aws:kms", "UNKNOWN", "aws:kms:dsse"],
    #               kms_master_key_id: "__string"
    #             },
    #             name: "__string",
    #             owner: {
    #               display_name: "__string",
    #               id: "__string"
    #             },
    #             public_access: {
    #               effective_permission: "PUBLIC" # One of: ["PUBLIC", "NOT_PUBLIC", "UNKNOWN"],
    #               permission_configuration: {
    #                 account_level_permissions: {
    #                   block_public_access: {
    #                     block_public_acls: false,
    #                     block_public_policy: false,
    #                     ignore_public_acls: false,
    #                     restrict_public_buckets: false
    #                   }
    #                 },
    #                 bucket_level_permissions: {
    #                   access_control_list: {
    #                     allows_public_read_access: false,
    #                     allows_public_write_access: false
    #                   },
    #                   block_public_access: {
    #                     block_public_acls: false,
    #                     block_public_policy: false,
    #                     ignore_public_acls: false,
    #                     restrict_public_buckets: false
    #                   },
    #                   bucket_policy: {
    #                     allows_public_read_access: false,
    #                     allows_public_write_access: false
    #                   }
    #                 }
    #               }
    #             },
    #             tags: [
    #               {
    #                 key: "__string",
    #                 value: "__string"
    #               }
    #             ]
    #           },
    #           s3_object: {
    #             bucket_arn: "__string",
    #             e_tag: "__string",
    #             extension: "__string",
    #             key: "__string",
    #             last_modified: Time.now,
    #             path: "__string",
    #             public_access: false,
    #             server_side_encryption: {
    #               encryption_type: "NONE" # One of: ["NONE", "AES256", "aws:kms", "UNKNOWN", "aws:kms:dsse"],
    #               kms_master_key_id: "__string"
    #             },
    #             size: 1,
    #             storage_class: "STANDARD" # One of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "ONEZONE_IA", "GLACIER", "GLACIER_IR", "OUTPOSTS"],
    #             tags: [
    #               {
    #                 key: "__string",
    #                 value: "__string"
    #               }
    #             ],
    #             version_id: "__string"
    #           }
    #         },
    #         sample: false,
    #         schema_version: "__string",
    #         severity: {
    #           description: "Low" # One of: ["Low", "Medium", "High"],
    #           score: 1
    #         },
    #         title: "__string",
    #         type: "SensitiveData:S3Object/Multiple" # One of: ["SensitiveData:S3Object/Multiple", "SensitiveData:S3Object/Financial", "SensitiveData:S3Object/Personal", "SensitiveData:S3Object/Credentials", "SensitiveData:S3Object/CustomIdentifier", "Policy:IAMUser/S3BucketPublic", "Policy:IAMUser/S3BucketSharedExternally", "Policy:IAMUser/S3BucketReplicatedExternally", "Policy:IAMUser/S3BucketEncryptionDisabled", "Policy:IAMUser/S3BlockPublicAccessDisabled", "Policy:IAMUser/S3BucketSharedWithCloudFront"],
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetFindingsResponse]
    def get_findings(params = {}, options = {})
      request = build_request(:get_findings, params)
      request.send_request(options)
    end

    # <p>Retrieves the criteria and other settings for a findings filter.</p>
    # @param [Hash, Types::GetFindingsFilterRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_findings_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action: "ARCHIVE" # One of: ["ARCHIVE", "NOOP"],
    #     arn: "__string",
    #     description: "__string",
    #     finding_criteria: {
    #       criterion: {
    #         "__string" => {
    #           eq: ["__string"],
    #           eq_exact_match: ["__string"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           neq: ["__string"]
    #         }
    #       }
    #     },
    #     id: "__string",
    #     name: "__string",
    #     position: 1,
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetFindingsFilterResponse]
    def get_findings_filter(params = {}, options = {})
      request = build_request(:get_findings_filter, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration settings for publishing findings to Security Hub.</p>
    # @param [Hash, Types::GetFindingsPublicationConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_findings_publication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_hub_configuration: {
    #       publish_classification_findings: false, # required
    #       publish_policy_findings: false, # required
    #     }
    #   }
    # @return [Types::GetFindingsPublicationConfigurationResponse]
    def get_findings_publication_configuration(params = {}, options = {})
      request = build_request(:get_findings_publication_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the count of Amazon Macie membership invitations that were received by an account.</p>
    # @param [Hash, Types::GetInvitationsCountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_invitations_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invitations_count: 1
    #   }
    # @return [Types::GetInvitationsCountResponse]
    def get_invitations_count(params = {}, options = {})
      request = build_request(:get_invitations_count, params)
      request.send_request(options)
    end

    # <p>Retrieves the status and configuration settings for an Amazon Macie account.</p>
    # @param [Hash, Types::GetMacieSessionRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_macie_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_at: Time.now,
    #     finding_publishing_frequency: "FIFTEEN_MINUTES" # One of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"],
    #     service_role: "__string",
    #     status: "PAUSED" # One of: ["PAUSED", "ENABLED"],
    #     updated_at: Time.now
    #   }
    # @return [Types::GetMacieSessionResponse]
    def get_macie_session(params = {}, options = {})
      request = build_request(:get_macie_session, params)
      request.send_request(options)
    end

    # <p>(Deprecated) Retrieves information about the Amazon Macie administrator account for an account. This operation has been replaced by the <link  linkend="GetAdministratorAccount">GetAdministratorAccount</link> operation.</p>
    # @param [Hash, Types::GetMasterAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_master_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     master: {
    #       account_id: "__string",
    #       invitation_id: "__string",
    #       invited_at: Time.now,
    #       relationship_status: "Enabled" # One of: ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #     }
    #   }
    # @return [Types::GetMasterAccountResponse]
    def get_master_account(params = {}, options = {})
      request = build_request(:get_master_account, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an account that's associated with an Amazon Macie administrator account.</p>
    # @param [Hash, Types::GetMemberRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "__string",
    #     administrator_account_id: "__string",
    #     arn: "__string",
    #     email: "__string",
    #     invited_at: Time.now,
    #     master_account_id: "__string",
    #     relationship_status: "Enabled" # One of: ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"],
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::GetMemberResponse]
    def get_member(params = {}, options = {})
      request = build_request(:get_member, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) sensitive data discovery statistics and the sensitivity score for an S3 bucket.</p>
    # @param [Hash, Types::GetResourceProfileRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_resource_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_updated_at: Time.now,
    #     sensitivity_score: 1,
    #     sensitivity_score_overridden: false,
    #     statistics: {
    #       total_bytes_classified: 1,
    #       total_detections: 1,
    #       total_detections_suppressed: 1,
    #       total_items_classified: 1,
    #       total_items_sensitive: 1,
    #       total_items_skipped: 1,
    #       total_items_skipped_invalid_encryption: 1,
    #       total_items_skipped_invalid_kms: 1,
    #       total_items_skipped_permission_denied: 1
    #     }
    #   }
    # @return [Types::GetResourceProfileResponse]
    def get_resource_profile(params = {}, options = {})
      request = build_request(:get_resource_profile, params)
      request.send_request(options)
    end

    # <p>Retrieves the status and configuration settings for retrieving occurrences of sensitive data reported by findings.</p>
    # @param [Hash, Types::GetRevealConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_reveal_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       kms_key_id: "__stringMin1Max2048",
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     retrieval_configuration: {
    #       external_id: "__string",
    #       retrieval_mode: "CALLER_CREDENTIALS" # One of: ["CALLER_CREDENTIALS", "ASSUME_ROLE"], # required
    #       role_name: "__stringMin1Max64PatternW"
    #     }
    #   }
    # @return [Types::GetRevealConfigurationResponse]
    def get_reveal_configuration(params = {}, options = {})
      request = build_request(:get_reveal_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves occurrences of sensitive data reported by a finding.</p>
    # @param [Hash, Types::GetSensitiveDataOccurrencesRequest] params
    # @option params [String] :finding_id
    #   <p>The unique identifier for the finding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_sensitive_data_occurrences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error: "__string",
    #     sensitive_data_occurrences: {
    #       "__string" => [
    #         {
    #           value: "__stringMin1Max128", # required
    #         }
    #       ]
    #     },
    #     status: "SUCCESS" # One of: ["SUCCESS", "PROCESSING", "ERROR"]
    #   }
    # @return [Types::GetSensitiveDataOccurrencesResponse]
    def get_sensitive_data_occurrences(params = {}, options = {})
      request = build_request(:get_sensitive_data_occurrences, params)
      request.send_request(options)
    end

    # <p>Checks whether occurrences of sensitive data can be retrieved for a finding.</p>
    # @param [Hash, Types::GetSensitiveDataOccurrencesAvailabilityRequest] params
    # @option params [String] :finding_id
    #   <p>The unique identifier for the finding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_sensitive_data_occurrences_availability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"],
    #     reasons: ["OBJECT_EXCEEDS_SIZE_QUOTA" # One of: ["OBJECT_EXCEEDS_SIZE_QUOTA", "UNSUPPORTED_OBJECT_TYPE", "UNSUPPORTED_FINDING_TYPE", "INVALID_CLASSIFICATION_RESULT", "OBJECT_UNAVAILABLE", "ACCOUNT_NOT_IN_ORGANIZATION", "MISSING_GET_MEMBER_PERMISSION", "ROLE_TOO_PERMISSIVE", "MEMBER_ROLE_TOO_PERMISSIVE", "INVALID_RESULT_SIGNATURE", "RESULT_NOT_SIGNED"]]
    #   }
    # @return [Types::GetSensitiveDataOccurrencesAvailabilityResponse]
    def get_sensitive_data_occurrences_availability(params = {}, options = {})
      request = build_request(:get_sensitive_data_occurrences_availability, params)
      request.send_request(options)
    end

    # <p>Retrieves the settings for the sensitivity inspection template for an account.</p>
    # @param [Hash, Types::GetSensitivityInspectionTemplateRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_sensitivity_inspection_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "__string",
    #     excludes: {
    #       managed_data_identifier_ids: ["__string"]
    #     },
    #     includes: {
    #       allow_list_ids: ["__string"],
    #       custom_data_identifier_ids: ["__string"],
    #       managed_data_identifier_ids: ["__string"]
    #     },
    #     name: "__string",
    #     sensitivity_inspection_template_id: "SensitivityInspectionTemplateId"
    #   }
    # @return [Types::GetSensitivityInspectionTemplateResponse]
    def get_sensitivity_inspection_template(params = {}, options = {})
      request = build_request(:get_sensitivity_inspection_template, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) quotas and aggregated usage data for one or more accounts.</p>
    # @param [Hash, Types::GetUsageStatisticsRequest] params
    # @option params [Array<Types::UsageStatisticsFilter>] :filter_by
    #   <p>An array of objects, one for each condition to use to filter the query results. If you specify more than one condition, Amazon Macie uses an AND operator to join the conditions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @option params [Types::UsageStatisticsSortBy] :sort_by
    #   <p>The criteria to use to sort the query results.</p>
    # @option params [String] :time_range
    #   <p>The inclusive time period to query usage data for. Valid values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value, Amazon Macie provides usage data for the preceding 30 days.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_by: [
    #       {
    #         comparator: "GT" # One of: ["GT", "GTE", "LT", "LTE", "EQ", "NE", "CONTAINS"],
    #         key: "accountId" # One of: ["accountId", "serviceLimit", "freeTrialStartDate", "total"],
    #         values: ["__string"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "__string",
    #     sort_by: {
    #       key: "accountId" # One of: ["accountId", "total", "serviceLimitValue", "freeTrialStartDate"],
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     },
    #     time_range: "MONTH_TO_DATE" # One of: ["MONTH_TO_DATE", "PAST_30_DAYS"]
    #   }
    #   options = {}
    #   response = client.get_usage_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     records: [
    #       {
    #         account_id: "__string",
    #         automated_discovery_free_trial_start_date: Time.now,
    #         free_trial_start_date: Time.now,
    #         usage: [
    #           {
    #             currency: "USD" # One of: ["USD"],
    #             estimated_cost: "__string",
    #             service_limit: {
    #               is_service_limited: false,
    #               unit: "TERABYTES" # One of: ["TERABYTES"],
    #               value: 1
    #             },
    #             type: "DATA_INVENTORY_EVALUATION" # One of: ["DATA_INVENTORY_EVALUATION", "SENSITIVE_DATA_DISCOVERY", "AUTOMATED_SENSITIVE_DATA_DISCOVERY", "AUTOMATED_OBJECT_MONITORING"]
    #           }
    #         ]
    #       }
    #     ],
    #     time_range: "MONTH_TO_DATE" # One of: ["MONTH_TO_DATE", "PAST_30_DAYS"]
    #   }
    # @return [Types::GetUsageStatisticsResponse]
    def get_usage_statistics(params = {}, options = {})
      request = build_request(:get_usage_statistics, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) aggregated usage data for an account.</p>
    # @param [Hash, Types::GetUsageTotalsRequest] params
    # @option params [String] :time_range
    #   <p>The inclusive time period to retrieve the data for. Valid values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value for this parameter, Amazon Macie provides aggregated usage data for the preceding 30 days.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     time_range: "__string"
    #   }
    #   options = {}
    #   response = client.get_usage_totals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     time_range: "MONTH_TO_DATE" # One of: ["MONTH_TO_DATE", "PAST_30_DAYS"],
    #     usage_totals: [
    #       {
    #         currency: "USD" # One of: ["USD"],
    #         estimated_cost: "__string",
    #         type: "DATA_INVENTORY_EVALUATION" # One of: ["DATA_INVENTORY_EVALUATION", "SENSITIVE_DATA_DISCOVERY", "AUTOMATED_SENSITIVE_DATA_DISCOVERY", "AUTOMATED_OBJECT_MONITORING"]
    #       }
    #     ]
    #   }
    # @return [Types::GetUsageTotalsResponse]
    def get_usage_totals(params = {}, options = {})
      request = build_request(:get_usage_totals, params)
      request.send_request(options)
    end

    # <p>Retrieves a subset of information about all the allow lists for an account.</p>
    # @param [Hash, Types::ListAllowListsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_allow_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     allow_lists: [
    #       {
    #         arn: "__stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922",
    #         created_at: Time.now,
    #         description: "__stringMin1Max512PatternSS",
    #         id: "__stringMin22Max22PatternAZ0922",
    #         name: "__stringMin1Max128Pattern",
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListAllowListsResponse]
    def list_allow_lists(params = {}, options = {})
      request = build_request(:list_allow_lists, params)
      request.send_request(options)
    end

    # <p>Retrieves the status of automated sensitive data discovery for one or more accounts.</p>
    # @param [Hash, Types::ListAutomatedDiscoveryAccountsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The Amazon Web Services account ID for each account, for as many as 50 accounts. To retrieve the status for multiple accounts, append the accountIds parameter and argument for each account, separated by an ampersand (&amp;). To retrieve the status for all the accounts in an organization, omit this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["__string"],
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_automated_discovery_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         account_id: "__string",
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListAutomatedDiscoveryAccountsResponse]
    def list_automated_discovery_accounts(params = {}, options = {})
      request = build_request(:list_automated_discovery_accounts, params)
      request.send_request(options)
    end

    # <p>Retrieves a subset of information about one or more classification jobs.</p>
    # @param [Hash, Types::ListClassificationJobsRequest] params
    # @option params [Types::ListJobsFilterCriteria] :filter_criteria
    #   <p>The criteria to use to filter the results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @option params [Types::ListJobsSortCriteria] :sort_criteria
    #   <p>The criteria to use to sort the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_criteria: {
    #       excludes: [
    #         {
    #           comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #           key: "jobType" # One of: ["jobType", "jobStatus", "createdAt", "name"],
    #           values: ["__string"]
    #         }
    #       ],
    #       includes: [
    #         {
    #           comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #           key: "jobType" # One of: ["jobType", "jobStatus", "createdAt", "name"],
    #           values: ["__string"]
    #         }
    #       ]
    #     },
    #     max_results: 1,
    #     next_token: "__string",
    #     sort_criteria: {
    #       attribute_name: "createdAt" # One of: ["createdAt", "jobStatus", "name", "jobType"],
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_classification_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         bucket_criteria: {
    #           excludes: {
    #             and: [
    #               {
    #                 simple_criterion: {
    #                   comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                   key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"],
    #                   values: ["__string"]
    #                 },
    #                 tag_criterion: {
    #                   comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                   tag_values: [
    #                     {
    #                       key: "__string",
    #                       value: "__string"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ]
    #           },
    #           includes: {
    #             and: [
    #               {
    #                 simple_criterion: {
    #                   comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                   key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"],
    #                   values: ["__string"]
    #                 },
    #                 tag_criterion: {
    #                   comparator: "EQ" # One of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"],
    #                   tag_values: [
    #                     {
    #                       key: "__string",
    #                       value: "__string"
    #                     }
    #                   ]
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         bucket_definitions: [
    #           {
    #             account_id: "__string", # required
    #             buckets: ["__string"], # required
    #           }
    #         ],
    #         created_at: Time.now,
    #         job_id: "__string",
    #         job_status: "RUNNING" # One of: ["RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"],
    #         job_type: "ONE_TIME" # One of: ["ONE_TIME", "SCHEDULED"],
    #         last_run_error_status: {
    #           code: "NONE" # One of: ["NONE", "ERROR"]
    #         },
    #         name: "__string",
    #         user_paused_details: {
    #           job_expires_at: Time.now,
    #           job_imminent_expiration_health_event_arn: "__string",
    #           job_paused_at: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListClassificationJobsResponse]
    def list_classification_jobs(params = {}, options = {})
      request = build_request(:list_classification_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves a subset of information about the classification scope for an account.</p>
    # @param [Hash, Types::ListClassificationScopesRequest] params
    # @option params [String] :name
    #   <p>The name of the classification scope to retrieve the unique identifier for.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_classification_scopes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     classification_scopes: [
    #       {
    #         id: "ClassificationScopeId",
    #         name: "ClassificationScopeName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListClassificationScopesResponse]
    def list_classification_scopes(params = {}, options = {})
      request = build_request(:list_classification_scopes, params)
      request.send_request(options)
    end

    # <p>Retrieves a subset of information about the custom data identifiers for an account.</p>
    # @param [Hash, Types::ListCustomDataIdentifiersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_custom_data_identifiers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "__string",
    #         created_at: Time.now,
    #         description: "__string",
    #         id: "__string",
    #         name: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListCustomDataIdentifiersResponse]
    def list_custom_data_identifiers(params = {}, options = {})
      request = build_request(:list_custom_data_identifiers, params)
      request.send_request(options)
    end

    # <p>Retrieves a subset of information about one or more findings.</p>
    # @param [Hash, Types::ListFindingsRequest] params
    # @option params [Types::FindingCriteria] :finding_criteria
    #   <p>The criteria to use to filter the results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @option params [Types::SortCriteria] :sort_criteria
    #   <p>The criteria to use to sort the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_criteria: {
    #       criterion: {
    #         "__string" => {
    #           eq: ["__string"],
    #           eq_exact_match: ["__string"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           neq: ["__string"]
    #         }
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "__string",
    #     sort_criteria: {
    #       attribute_name: "__string",
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding_ids: ["__string"],
    #     next_token: "__string"
    #   }
    # @return [Types::ListFindingsResponse]
    def list_findings(params = {}, options = {})
      request = build_request(:list_findings, params)
      request.send_request(options)
    end

    # <p>Retrieves a subset of information about all the findings filters for an account.</p>
    # @param [Hash, Types::ListFindingsFiltersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_findings_filters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings_filter_list_items: [
    #       {
    #         action: "ARCHIVE" # One of: ["ARCHIVE", "NOOP"],
    #         arn: "__string",
    #         id: "__string",
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListFindingsFiltersResponse]
    def list_findings_filters(params = {}, options = {})
      request = build_request(:list_findings_filters, params)
      request.send_request(options)
    end

    # <p>Retrieves information about Amazon Macie membership invitations that were received by an account.</p>
    # @param [Hash, Types::ListInvitationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invitations: [
    #       {
    #         account_id: "__string",
    #         invitation_id: "__string",
    #         invited_at: Time.now,
    #         relationship_status: "Enabled" # One of: ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListInvitationsResponse]
    def list_invitations(params = {}, options = {})
      request = build_request(:list_invitations, params)
      request.send_request(options)
    end

    # <p>Retrieves information about all the managed data identifiers that Amazon Macie currently provides.</p>
    # @param [Hash, Types::ListManagedDataIdentifiersRequest] params
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_managed_data_identifiers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         category: "FINANCIAL_INFORMATION" # One of: ["FINANCIAL_INFORMATION", "PERSONAL_INFORMATION", "CREDENTIALS", "CUSTOM_IDENTIFIER"],
    #         id: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListManagedDataIdentifiersResponse]
    def list_managed_data_identifiers(params = {}, options = {})
      request = build_request(:list_managed_data_identifiers, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the accounts that are associated with an Amazon Macie administrator account.</p>
    # @param [Hash, Types::ListMembersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @option params [String] :only_associated
    #   <p>Specifies which accounts to include in the response, based on the status of an account's relationship with the administrator account. By default, the response includes only current member accounts. To include all accounts, set this value to false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     only_associated: "__string"
    #   }
    #   options = {}
    #   response = client.list_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [
    #       {
    #         account_id: "__string",
    #         administrator_account_id: "__string",
    #         arn: "__string",
    #         email: "__string",
    #         invited_at: Time.now,
    #         master_account_id: "__string",
    #         relationship_status: "Enabled" # One of: ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"],
    #         tags: {
    #           "__string" => "__string"
    #         },
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListMembersResponse]
    def list_members(params = {}, options = {})
      request = build_request(:list_members, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the delegated Amazon Macie administrator account for an organization in Organizations.</p>
    # @param [Hash, Types::ListOrganizationAdminAccountsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_organization_admin_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_accounts: [
    #       {
    #         account_id: "__string",
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLING_IN_PROGRESS"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListOrganizationAdminAccountsResponse]
    def list_organization_admin_accounts(params = {}, options = {})
      request = build_request(:list_organization_admin_accounts, params)
      request.send_request(options)
    end

    # <p>Retrieves information about objects that Amazon Macie selected from an S3 bucket for automated sensitive data discovery.</p>
    # @param [Hash, Types::ListResourceProfileArtifactsRequest] params
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "__string",
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_resource_profile_artifacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     artifacts: [
    #       {
    #         arn: "__string", # required
    #         classification_result_status: "__string", # required
    #         sensitive: false
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListResourceProfileArtifactsResponse]
    def list_resource_profile_artifacts(params = {}, options = {})
      request = build_request(:list_resource_profile_artifacts, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the types and amount of sensitive data that Amazon Macie found in an S3 bucket.</p>
    # @param [Hash, Types::ListResourceProfileDetectionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket that the request applies to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_resource_profile_detections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detections: [
    #       {
    #         arn: "__string",
    #         count: 1,
    #         id: "__string",
    #         name: "__string",
    #         suppressed: false,
    #         type: "CUSTOM" # One of: ["CUSTOM", "MANAGED"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListResourceProfileDetectionsResponse]
    def list_resource_profile_detections(params = {}, options = {})
      request = build_request(:list_resource_profile_detections, params)
      request.send_request(options)
    end

    # <p>Retrieves a subset of information about the sensitivity inspection template for an account.</p>
    # @param [Hash, Types::ListSensitivityInspectionTemplatesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_sensitivity_inspection_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     sensitivity_inspection_templates: [
    #       {
    #         id: "__string",
    #         name: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListSensitivityInspectionTemplatesResponse]
    def list_sensitivity_inspection_templates(params = {}, options = {})
      request = build_request(:list_sensitivity_inspection_templates, params)
      request.send_request(options)
    end

    # <p>Retrieves the tags (keys and values) that are associated with an Amazon Macie resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds or updates the configuration settings for storing data classification results.</p>
    # @param [Hash, Types::PutClassificationExportConfigurationRequest] params
    # @option params [Types::ClassificationExportConfiguration] :configuration
    #   <p>The location to store data classification results in, and the encryption settings to use when storing results in that location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration: { # required
    #       s3_destination: {
    #         bucket_name: "__string", # required
    #         key_prefix: "__string",
    #         kms_key_arn: "__string", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_classification_export_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       s3_destination: {
    #         bucket_name: "__string", # required
    #         key_prefix: "__string",
    #         kms_key_arn: "__string", # required
    #       }
    #     }
    #   }
    # @return [Types::PutClassificationExportConfigurationResponse]
    def put_classification_export_configuration(params = {}, options = {})
      request = build_request(:put_classification_export_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the configuration settings for publishing findings to Security Hub.</p>
    # @param [Hash, Types::PutFindingsPublicationConfigurationRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @option params [Types::SecurityHubConfiguration] :security_hub_configuration
    #   <p>The configuration settings that determine which findings to publish to Security Hub.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "__string",
    #     security_hub_configuration: {
    #       publish_classification_findings: false, # required
    #       publish_policy_findings: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_findings_publication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutFindingsPublicationConfigurationResponse]
    def put_findings_publication_configuration(params = {}, options = {})
      request = build_request(:put_findings_publication_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves (queries) statistical data and other information about Amazon Web Services resources that Amazon Macie monitors and analyzes for an account.</p>
    # @param [Hash, Types::SearchResourcesRequest] params
    # @option params [Types::SearchResourcesBucketCriteria] :bucket_criteria
    #   <p>The filter conditions that determine which S3 buckets to include or exclude from the query results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response. The default value is 50.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    # @option params [Types::SearchResourcesSortCriteria] :sort_criteria
    #   <p>The criteria to use to sort the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_criteria: {
    #       excludes: {
    #         and: [
    #           {
    #             simple_criterion: {
    #               comparator: "EQ" # One of: ["EQ", "NE"],
    #               key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS", "AUTOMATED_DISCOVERY_MONITORING_STATUS"],
    #               values: ["__string"]
    #             },
    #             tag_criterion: {
    #               comparator: "EQ" # One of: ["EQ", "NE"],
    #               tag_values: [
    #                 {
    #                   key: "__string",
    #                   value: "__string"
    #                 }
    #               ]
    #             }
    #           }
    #         ]
    #       },
    #       includes: {
    #         and: [
    #           {
    #             simple_criterion: {
    #               comparator: "EQ" # One of: ["EQ", "NE"],
    #               key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS", "AUTOMATED_DISCOVERY_MONITORING_STATUS"],
    #               values: ["__string"]
    #             },
    #             tag_criterion: {
    #               comparator: "EQ" # One of: ["EQ", "NE"],
    #               tag_values: [
    #                 {
    #                   key: "__string",
    #                   value: "__string"
    #                 }
    #               ]
    #             }
    #           }
    #         ]
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "__string",
    #     sort_criteria: {
    #       attribute_name: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "RESOURCE_NAME", "S3_CLASSIFIABLE_OBJECT_COUNT", "S3_CLASSIFIABLE_SIZE_IN_BYTES"],
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.search_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     matching_resources: [
    #       {
    #         matching_bucket: {
    #           account_id: "__string",
    #           automated_discovery_monitoring_status: "MONITORED" # One of: ["MONITORED", "NOT_MONITORED"],
    #           bucket_name: "__string",
    #           classifiable_object_count: 1,
    #           classifiable_size_in_bytes: 1,
    #           error_code: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "BUCKET_COUNT_EXCEEDS_QUOTA"],
    #           error_message: "__string",
    #           job_details: {
    #             is_defined_in_job: "TRUE" # One of: ["TRUE", "FALSE", "UNKNOWN"],
    #             is_monitored_by_job: "TRUE" # One of: ["TRUE", "FALSE", "UNKNOWN"],
    #             last_job_id: "__string",
    #             last_job_run_time: Time.now
    #           },
    #           last_automated_discovery_time: Time.now,
    #           object_count: 1,
    #           object_count_by_encryption_type: {
    #             customer_managed: 1,
    #             kms_managed: 1,
    #             s3_managed: 1,
    #             unencrypted: 1,
    #             unknown: 1
    #           },
    #           sensitivity_score: 1,
    #           size_in_bytes: 1,
    #           size_in_bytes_compressed: 1,
    #           unclassifiable_object_count: {
    #             file_type: 1,
    #             storage_class: 1,
    #             total: 1
    #           },
    #           unclassifiable_object_size_in_bytes: {
    #             file_type: 1,
    #             storage_class: 1,
    #             total: 1
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::SearchResourcesResponse]
    def search_resources(params = {}, options = {})
      request = build_request(:search_resources, params)
      request.send_request(options)
    end

    # <p>Adds or updates one or more tags (keys and values) that are associated with an Amazon Macie resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the resource.</p> <p>A resource can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string"
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

    # <p>Tests criteria for a custom data identifier.</p>
    # @param [Hash, Types::TestCustomDataIdentifierRequest] params
    # @option params [Array<String>] :ignore_words
    #   <p>An array that lists specific character sequences (<i>ignore words</i>) to exclude from the results. If the text matched by the regular expression contains any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4-90 UTF-8 characters. Ignore words are case sensitive.</p>
    # @option params [Array<String>] :keywords
    #   <p>An array that lists specific character sequences (<i>keywords</i>), one of which must precede and be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3-90 UTF-8 characters. Keywords aren't case sensitive.</p>
    # @option params [Integer] :maximum_match_distance
    #   <p>The maximum number of characters that can exist between the end of at least one complete character sequence specified by the keywords array and the end of the text that matches the regex pattern. If a complete keyword precedes all the text that matches the pattern and the keyword is within the specified distance, Amazon Macie includes the result. The distance can be 1-300 characters. The default value is 50.</p>
    # @option params [String] :regex
    #   <p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>
    # @option params [String] :sample_text
    #   <p>The sample text to inspect by using the custom data identifier. The text can contain as many as 1,000 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ignore_words: ["__string"],
    #     keywords: ["__string"],
    #     maximum_match_distance: 1,
    #     regex: "__string", # required
    #     sample_text: "__string", # required
    #   }
    #   options = {}
    #   response = client.test_custom_data_identifier(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     match_count: 1
    #   }
    # @return [Types::TestCustomDataIdentifierResponse]
    def test_custom_data_identifier(params = {}, options = {})
      request = build_request(:test_custom_data_identifier, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags (keys and values) from an Amazon Macie resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>One or more tags (keys) to remove from the resource. In an HTTP request to remove multiple tags, append the tagKeys parameter and argument for each tag to remove, separated by an ampersand (&amp;).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
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

    # <p>Updates the settings for an allow list.</p>
    # @param [Hash, Types::UpdateAllowListRequest] params
    # @option params [Types::AllowListCriteria] :criteria
    #   <p>The criteria that specify the text or text pattern to ignore. The criteria can be the location and name of an S3 object that lists specific text to ignore (s3WordsList), or a regular expression that defines a text pattern to ignore (regex).</p> <p>You can change a list's underlying criteria, such as the name of the S3 object or the regular expression to use. However, you can't change the type from s3WordsList to regex or the other way around.</p>
    # @option params [String] :description
    #   <p>A custom description of the allow list. The description can contain as many as 512 characters.</p>
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @option params [String] :name
    #   <p>A custom name for the allow list. The name can contain as many as 128 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     criteria: { # required
    #       regex: "__stringMin1Max512PatternSS",
    #       s3_words_list: {
    #         bucket_name: "__stringMin3Max255PatternAZaZ093255", # required
    #         object_key: "__stringMin1Max1024PatternSS", # required
    #       }
    #     },
    #     description: "__stringMin1Max512PatternSS",
    #     id: "__string", # required
    #     name: "__stringMin1Max128Pattern", # required
    #   }
    #   options = {}
    #   response = client.update_allow_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922",
    #     id: "__stringMin22Max22PatternAZ0922"
    #   }
    # @return [Types::UpdateAllowListResponse]
    def update_allow_list(params = {}, options = {})
      request = build_request(:update_allow_list, params)
      request.send_request(options)
    end

    # <p>Changes the configuration settings and status of automated sensitive data discovery for an organization or standalone account.</p>
    # @param [Hash, Types::UpdateAutomatedDiscoveryConfigurationRequest] params
    # @option params [String] :auto_enable_organization_members
    #   <p>Specifies whether to automatically enable automated sensitive data discovery for accounts in the organization. Valid values are: ALL (default), enable it for all existing accounts and new member accounts; NEW, enable it only for new member accounts; and, NONE, don't enable it for any accounts.</p> <p>If you specify NEW or NONE, automated sensitive data discovery continues to be enabled for any existing accounts that it's currently enabled for. To enable or disable it for individual member accounts, specify NEW or NONE, and then enable or disable it for each account by using the BatchUpdateAutomatedDiscoveryAccounts operation.</p>
    # @option params [String] :status
    #   <p>The new status of automated sensitive data discovery for the organization or account. Valid values are: ENABLED, start or resume all automated sensitive data discovery activities; and, DISABLED, stop performing all automated sensitive data discovery activities.</p> <p>If you specify DISABLED for an administrator account, you also disable automated sensitive data discovery for all member accounts in the organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_enable_organization_members: "ALL" # One of: ["ALL", "NEW", "NONE"],
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.update_automated_discovery_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAutomatedDiscoveryConfigurationResponse]
    def update_automated_discovery_configuration(params = {}, options = {})
      request = build_request(:update_automated_discovery_configuration, params)
      request.send_request(options)
    end

    # <p>Changes the status of a classification job.</p>
    # @param [Hash, Types::UpdateClassificationJobRequest] params
    # @option params [String] :job_id
    #   <p>The unique identifier for the classification job.</p>
    # @option params [String] :job_status
    #   <p>The new status for the job. Valid values are:</p> <ul><li><p>CANCELLED - Stops the job permanently and cancels it. This value is valid only if the job's current status is IDLE, PAUSED, RUNNING, or USER_PAUSED.</p> <p>If you specify this value and the job's current status is RUNNING, Amazon Macie immediately begins to stop all processing tasks for the job. You can't resume or restart a job after you cancel it.</p></li> <li><p>RUNNING - Resumes the job. This value is valid only if the job's current status is USER_PAUSED.</p> <p>If you paused the job while it was actively running and you specify this value less than 30 days after you paused the job, Macie immediately resumes processing from the point where you paused the job. Otherwise, Macie resumes the job according to the schedule and other settings for the job.</p></li> <li><p>USER_PAUSED - Pauses the job temporarily. This value is valid only if the job's current status is IDLE, PAUSED, or RUNNING. If you specify this value and the job's current status is RUNNING, Macie immediately begins to pause all processing tasks for the job.</p> <p>If you pause a one-time job and you don't resume it within 30 days, the job expires and Macie cancels the job. If you pause a recurring job when its status is RUNNING and you don't resume it within 30 days, the job run expires and Macie cancels the run. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "__string", # required
    #     job_status: "RUNNING" # One of: ["RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"], # required
    #   }
    #   options = {}
    #   response = client.update_classification_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateClassificationJobResponse]
    def update_classification_job(params = {}, options = {})
      request = build_request(:update_classification_job, params)
      request.send_request(options)
    end

    # <p>Updates the classification scope settings for an account.</p>
    # @param [Hash, Types::UpdateClassificationScopeRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @option params [Types::S3ClassificationScopeUpdate] :s3
    #   <p>The S3 buckets to add or remove from the exclusion list defined by the classification scope.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #     s3: {
    #       excludes: { # required
    #         bucket_names: ["S3BucketName"], # required
    #         operation: "ADD" # One of: ["ADD", "REPLACE", "REMOVE"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_classification_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateClassificationScopeResponse]
    def update_classification_scope(params = {}, options = {})
      request = build_request(:update_classification_scope, params)
      request.send_request(options)
    end

    # <p>Updates the criteria and other settings for a findings filter.</p>
    # @param [Hash, Types::UpdateFindingsFilterRequest] params
    # @option params [String] :action
    #   <p>The action to perform on findings that match the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :description
    #   <p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users of your account might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    # @option params [Types::FindingCriteria] :finding_criteria
    #   <p>The criteria to use to filter findings.</p>
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @option params [String] :name
    #   <p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users of your account might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    # @option params [Integer] :position
    #   <p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: "ARCHIVE" # One of: ["ARCHIVE", "NOOP"],
    #     client_token: "__string",
    #     description: "__string",
    #     finding_criteria: {
    #       criterion: {
    #         "__string" => {
    #           eq: ["__string"],
    #           eq_exact_match: ["__string"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           neq: ["__string"]
    #         }
    #       }
    #     },
    #     id: "__string", # required
    #     name: "__string",
    #     position: 1
    #   }
    #   options = {}
    #   response = client.update_findings_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     id: "__string"
    #   }
    # @return [Types::UpdateFindingsFilterResponse]
    def update_findings_filter(params = {}, options = {})
      request = build_request(:update_findings_filter, params)
      request.send_request(options)
    end

    # <p>Suspends or re-enables Amazon Macie, or updates the configuration settings for a Macie account.</p>
    # @param [Hash, Types::UpdateMacieSessionRequest] params
    # @option params [String] :finding_publishing_frequency
    #   <p>Specifies how often to publish updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly Amazon CloudWatch Events).</p>
    # @option params [String] :status
    #   <p>Specifies a new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_publishing_frequency: "FIFTEEN_MINUTES" # One of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"],
    #     status: "PAUSED" # One of: ["PAUSED", "ENABLED"]
    #   }
    #   options = {}
    #   response = client.update_macie_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMacieSessionResponse]
    def update_macie_session(params = {}, options = {})
      request = build_request(:update_macie_session, params)
      request.send_request(options)
    end

    # <p>Enables an Amazon Macie administrator to suspend or re-enable Macie for a member account.</p>
    # @param [Hash, Types::UpdateMemberSessionRequest] params
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @option params [String] :status
    #   <p>Specifies the new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #     status: "PAUSED" # One of: ["PAUSED", "ENABLED"], # required
    #   }
    #   options = {}
    #   response = client.update_member_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMemberSessionResponse]
    def update_member_session(params = {}, options = {})
      request = build_request(:update_member_session, params)
      request.send_request(options)
    end

    # <p>Updates the Amazon Macie configuration settings for an organization in Organizations.</p>
    # @param [Hash, Types::UpdateOrganizationConfigurationRequest] params
    # @option params [Boolean] :auto_enable
    #   <p>Specifies whether to enable Amazon Macie automatically for accounts that are added to the organization in Organizations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_enable: false, # required
    #   }
    #   options = {}
    #   response = client.update_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateOrganizationConfigurationResponse]
    def update_organization_configuration(params = {}, options = {})
      request = build_request(:update_organization_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the sensitivity score for an S3 bucket.</p>
    # @param [Hash, Types::UpdateResourceProfileRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket that the request applies to.</p>
    # @option params [Integer] :sensitivity_score_override
    #   <p>The new sensitivity score for the bucket. Valid values are: 100, assign the maximum score and apply the <i>Sensitive</i> label to the bucket; and, null (empty), assign a score that Amazon Macie calculates automatically after you submit the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     sensitivity_score_override: 1
    #   }
    #   options = {}
    #   response = client.update_resource_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateResourceProfileResponse]
    def update_resource_profile(params = {}, options = {})
      request = build_request(:update_resource_profile, params)
      request.send_request(options)
    end

    # <p>Updates the sensitivity scoring settings for an S3 bucket.</p>
    # @param [Hash, Types::UpdateResourceProfileDetectionsRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket that the request applies to.</p>
    # @option params [Array<Types::SuppressDataIdentifier>] :suppress_data_identifiers
    #   <p>An array of objects, one for each custom data identifier or managed data identifier that detected a type of sensitive data to exclude from the bucket's score. To include all sensitive data types in the score, don't specify any values for this array.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     suppress_data_identifiers: [
    #       {
    #         id: "__string",
    #         type: "CUSTOM" # One of: ["CUSTOM", "MANAGED"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_resource_profile_detections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateResourceProfileDetectionsResponse]
    def update_resource_profile_detections(params = {}, options = {})
      request = build_request(:update_resource_profile_detections, params)
      request.send_request(options)
    end

    # <p>Updates the status and configuration settings for retrieving occurrences of sensitive data reported by findings.</p>
    # @param [Hash, Types::UpdateRevealConfigurationRequest] params
    # @option params [Types::RevealConfiguration] :configuration
    #   <p>The KMS key to use to encrypt the sensitive data, and the status of the configuration for the Amazon Macie account.</p>
    # @option params [Types::UpdateRetrievalConfiguration] :retrieval_configuration
    #   <p>The access method and settings to use when retrieving the sensitive data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration: { # required
    #       kms_key_id: "__stringMin1Max2048",
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     retrieval_configuration: {
    #       retrieval_mode: "CALLER_CREDENTIALS" # One of: ["CALLER_CREDENTIALS", "ASSUME_ROLE"], # required
    #       role_name: "__stringMin1Max64PatternW"
    #     }
    #   }
    #   options = {}
    #   response = client.update_reveal_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       kms_key_id: "__stringMin1Max2048",
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     retrieval_configuration: {
    #       external_id: "__string",
    #       retrieval_mode: "CALLER_CREDENTIALS" # One of: ["CALLER_CREDENTIALS", "ASSUME_ROLE"], # required
    #       role_name: "__stringMin1Max64PatternW"
    #     }
    #   }
    # @return [Types::UpdateRevealConfigurationResponse]
    def update_reveal_configuration(params = {}, options = {})
      request = build_request(:update_reveal_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the settings for the sensitivity inspection template for an account.</p>
    # @param [Hash, Types::UpdateSensitivityInspectionTemplateRequest] params
    # @option params [String] :description
    #   <p>A custom description of the template. The description can contain as many as 200 characters.</p>
    # @option params [Types::SensitivityInspectionTemplateExcludes] :excludes
    #   <p>The managed data identifiers to explicitly exclude (not use) when performing automated sensitive data discovery.</p> <p>To exclude an allow list or custom data identifier that's currently included by the template, update the values for the SensitivityInspectionTemplateIncludes.allowListIds and SensitivityInspectionTemplateIncludes.customDataIdentifierIds properties, respectively.</p>
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource that the request applies to.</p>
    # @option params [Types::SensitivityInspectionTemplateIncludes] :includes
    #   <p>The allow lists, custom data identifiers, and managed data identifiers to explicitly include (use) when performing automated sensitive data discovery.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "__string",
    #     excludes: {
    #       managed_data_identifier_ids: ["__string"]
    #     },
    #     id: "__string", # required
    #     includes: {
    #       allow_list_ids: ["__string"],
    #       custom_data_identifier_ids: ["__string"],
    #       managed_data_identifier_ids: ["__string"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_sensitivity_inspection_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateSensitivityInspectionTemplateResponse]
    def update_sensitivity_inspection_template(params = {}, options = {})
      request = build_request(:update_sensitivity_inspection_template, params)
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
      context[:gem_name] = 'aws-sdk-macie2'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        finding_revealed: Waiters::FindingRevealed
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
