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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:securitylake)

module Aws::SecurityLake
  # An API client for Aws::SecurityLake.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SecurityLake
    @identifier = :securitylake

    add_plugin(::Aws::SecurityLake::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SecurityLake::EndpointProvider)
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

    # <p>Adds a natively supported Amazon Web Services service as an Amazon Security Lake source. Enables
    #          source types for member accounts in required Amazon Web Services Regions, based on the
    #          parameters you specify. You can choose any source type in any Region for either accounts
    #          that are part of a trusted organization or standalone accounts. Once you add an Amazon Web Services service as a source, Security Lake starts collecting logs and events from it.</p>
    #          <p>You can use this API only to enable natively supported Amazon Web Services services as a
    #          source. Use <code>CreateCustomLogSource</code> to enable data collection from a custom
    #          source.</p>
    # @param [Hash, Types::CreateAwsLogSourceRequest] params
    # @option params [Array<Types::AwsLogSourceConfiguration>] :sources
    #   <p>Specify the natively-supported Amazon Web Services service to add as a source in Security Lake.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sources: [ # required
    #       {
    #         accounts: ["AwsAccountId"],
    #         regions: ["Region"], # required
    #         source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"], # required
    #         source_version: "AwsLogSourceVersion"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_aws_log_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed: ["AwsAccountId"]
    #   }
    # @return [Types::CreateAwsLogSourceResponse]
    def create_aws_log_source(params = {}, options = {})
      request = build_request(:create_aws_log_source, params)
      request.send_request(options)
    end

    # <p>Adds a third-party custom source in Amazon Security Lake, from the Amazon Web Services Region
    #          where you want to create a custom source. Security Lake can collect logs and events from
    #          third-party custom sources. After creating the appropriate IAM role to
    #          invoke Glue crawler, use this API to add a custom source name in Security Lake. This
    #          operation creates a partition in the Amazon S3 bucket for Security Lake as the target
    #          location for log files from the custom source. In addition, this operation also creates an
    #          associated Glue table and an Glue crawler.</p>
    # @param [Hash, Types::CreateCustomLogSourceRequest] params
    # @option params [String] :source_name
    #   <p>Specify the name for a third-party custom source. This must be a Regionally unique
    #            value. The <code>sourceName</code> you enter here, is used in the
    #               <code>LogProviderRole</code> name which follows the convention
    #               <code>AmazonSecurityLake-Provider-{name of the custom source}-{region}</code>. You must
    #            use a <code>CustomLogSource</code> name that is shorter than or equal to 20 characters.
    #            This ensures that the <code>LogProviderRole</code> name is below the 64 character
    #            limit.</p>
    # @option params [String] :source_version
    #   <p>Specify the source version for the third-party custom source, to limit log collection to
    #            a specific version of custom data source.</p>
    # @option params [Array<String>] :event_classes
    #   <p>The Open Cybersecurity Schema Framework (OCSF) event classes which describes the type of
    #            data that the custom source will send to Security Lake. For the list of supported event classes, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/adding-custom-sources.html#ocsf-eventclass">Amazon Security Lake User Guide</a>.</p>
    # @option params [Types::CustomLogSourceConfiguration] :configuration
    #   <p>The configuration used for the third-party custom source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_name: "CustomLogSourceName", # required
    #     source_version: "CustomLogSourceVersion",
    #     event_classes: ["OcsfEventClass"],
    #     configuration: { # required
    #       crawler_configuration: { # required
    #         role_arn: "RoleArn", # required
    #       },
    #       provider_identity: { # required
    #         principal: "AwsPrincipal", # required
    #         external_id: "ExternalId", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_custom_log_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source: {
    #       source_name: "CustomLogSourceName",
    #       source_version: "CustomLogSourceVersion",
    #       provider: {
    #         role_arn: "RoleArn",
    #         location: "S3URI"
    #       },
    #       attributes: {
    #         crawler_arn: "AmazonResourceName",
    #         database_arn: "AmazonResourceName",
    #         table_arn: "AmazonResourceName"
    #       }
    #     }
    #   }
    # @return [Types::CreateCustomLogSourceResponse]
    def create_custom_log_source(params = {}, options = {})
      request = build_request(:create_custom_log_source, params)
      request.send_request(options)
    end

    # <p>Initializes an Amazon Security Lake instance with the provided (or default) configuration. You
    #          can enable Security Lake in Amazon Web Services Regions with customized settings before enabling
    #          log collection in Regions. To specify particular Regions, configure these Regions using the
    #             <code>configurations</code> parameter. If you have already enabled Security Lake in a Region
    #          when you call this command, the command will update the Region if you provide new
    #          configuration parameters. If you have not already enabled Security Lake in the Region when you
    #          call this API, it will set up the data lake in the Region with the specified
    #          configurations.</p>
    #          <p>When you enable Security Lake, it starts ingesting security data after the
    #             <code>CreateAwsLogSource</code> call and after you create subscribers using the <code>CreateSubscriber</code> API. This includes ingesting security data from
    #          sources, storing data, and making data accessible to subscribers. Security Lake also enables
    #          all the existing settings and resources that it stores or maintains for your Amazon Web Services account in the current Region, including security log and event data. For
    #          more information, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/what-is-security-lake.html">Amazon Security Lake User
    #             Guide</a>.</p>
    # @param [Hash, Types::CreateDataLakeRequest] params
    # @option params [Array<Types::DataLakeConfiguration>] :configurations
    #   <p>Specify the Region or Regions that will contribute data to the rollup region.</p>
    # @option params [String] :meta_store_manager_role_arn
    #   <p>The Amazon Resource Name (ARN) used to create and update the Glue table.
    #            This table contains partitions generated by the ingestion and normalization of
    #             Amazon Web Services log sources and custom sources.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects, one for each tag to associate with the data lake configuration. For each tag, you must specify both a tag key and a tag value. A tag 
    #            value cannot be null, but it can be an empty string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configurations: [ # required
    #       {
    #         region: "Region", # required
    #         encryption_configuration: {
    #           kms_key_id: "String"
    #         },
    #         lifecycle_configuration: {
    #           expiration: {
    #             days: 1
    #           },
    #           transitions: [
    #             {
    #               storage_class: "DataLakeStorageClass",
    #               days: 1
    #             }
    #           ]
    #         },
    #         replication_configuration: {
    #           regions: ["Region"],
    #           role_arn: "RoleArn"
    #         }
    #       }
    #     ],
    #     meta_store_manager_role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_data_lake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_lakes: [
    #       {
    #         data_lake_arn: "AmazonResourceName", # required
    #         region: "Region", # required
    #         s3_bucket_arn: "S3BucketArn",
    #         encryption_configuration: {
    #           kms_key_id: "String"
    #         },
    #         lifecycle_configuration: {
    #           expiration: {
    #             days: 1
    #           },
    #           transitions: [
    #             {
    #               storage_class: "DataLakeStorageClass",
    #               days: 1
    #             }
    #           ]
    #         },
    #         replication_configuration: {
    #           regions: ["Region"],
    #           role_arn: "RoleArn"
    #         },
    #         create_status: "INITIALIZED" # One of: ["INITIALIZED", "PENDING", "COMPLETED", "FAILED"],
    #         update_status: {
    #           request_id: "String",
    #           status: "INITIALIZED" # One of: ["INITIALIZED", "PENDING", "COMPLETED", "FAILED"],
    #           exception: {
    #             reason: "String",
    #             code: "String"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::CreateDataLakeResponse]
    def create_data_lake(params = {}, options = {})
      request = build_request(:create_data_lake, params)
      request.send_request(options)
    end

    # <p>Creates the specified notification subscription in Amazon Security Lake for the organization
    #          you specify. The notification subscription is created for exceptions that cannot be resolved by Security Lake automatically.</p>
    # @param [Hash, Types::CreateDataLakeExceptionSubscriptionRequest] params
    # @option params [String] :subscription_protocol
    #   <p>The subscription protocol to which exception notifications are posted.</p>
    # @option params [String] :notification_endpoint
    #   <p>The Amazon Web Services account where you want to receive exception notifications.</p>
    # @option params [Integer] :exception_time_to_live
    #   <p>The expiration period and time-to-live (TTL). It is the duration of time until which the exception message remains.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_protocol: "SubscriptionProtocol", # required
    #     notification_endpoint: "SafeString", # required
    #     exception_time_to_live: 1
    #   }
    #   options = {}
    #   response = client.create_data_lake_exception_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateDataLakeExceptionSubscriptionResponse]
    def create_data_lake_exception_subscription(params = {}, options = {})
      request = build_request(:create_data_lake_exception_subscription, params)
      request.send_request(options)
    end

    # <p>Automatically enables Amazon Security Lake for new member accounts in your organization.
    #          Security Lake is not automatically enabled for any existing member accounts in your
    #          organization.</p>
    #          <p>This operation merges the new data lake organization configuration with the existing configuration for Security Lake in your organization. If you want to create a new data lake organization configuration, you must delete the existing one using <a href="https://docs.aws.amazon.com/security-lake/latest/APIReference/API_DeleteDataLakeOrganizationConfiguration.html">DeleteDataLakeOrganizationConfiguration</a>.</p>
    # @param [Hash, Types::CreateDataLakeOrganizationConfigurationRequest] params
    # @option params [Array<Types::DataLakeAutoEnableNewAccountConfiguration>] :auto_enable_new_account
    #   <p>Enable Security Lake with the specified configuration settings, to begin collecting security
    #            data for new accounts in your organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_enable_new_account: [
    #       {
    #         region: "Region", # required
    #         sources: [ # required
    #           {
    #             source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #             source_version: "AwsLogSourceVersion"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_data_lake_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateDataLakeOrganizationConfigurationResponse]
    def create_data_lake_organization_configuration(params = {}, options = {})
      request = build_request(:create_data_lake_organization_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a subscriber for accounts that are already enabled in Amazon Security Lake. You can
    #          create a subscriber with access to data in the current Amazon Web Services Region.</p>
    # @param [Hash, Types::CreateSubscriberRequest] params
    # @option params [Types::AwsIdentity] :subscriber_identity
    #   <p>The Amazon Web Services identity used to access your data.</p>
    # @option params [String] :subscriber_name
    #   <p>The name of your Security Lake subscriber account.</p>
    # @option params [String] :subscriber_description
    #   <p>The description for your subscriber account in Security Lake.</p>
    # @option params [Array<Types::LogSourceResource>] :sources
    #   <p>The supported Amazon Web Services services from which logs and events are collected.
    #            Security Lake supports log and event collection for natively supported Amazon Web Services services.</p>
    # @option params [Array<String>] :access_types
    #   <p>The Amazon S3 or Lake Formation access type.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects, one for each tag to associate with the subscriber. For each tag, you must specify both a tag key and a tag value. A tag 
    #            value cannot be null, but it can be an empty string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscriber_identity: { # required
    #       principal: "AwsPrincipal", # required
    #       external_id: "ExternalId", # required
    #     },
    #     subscriber_name: "String", # required
    #     subscriber_description: "DescriptionString",
    #     sources: [{ # required
    #       # One of:
    #       aws_log_source: {
    #         source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #         source_version: "AwsLogSourceVersion"
    #       },
    #       custom_log_source: {
    #         source_name: "CustomLogSourceName",
    #         source_version: "CustomLogSourceVersion",
    #         provider: {
    #           role_arn: "RoleArn",
    #           location: "S3URI"
    #         },
    #         attributes: {
    #           crawler_arn: "AmazonResourceName",
    #           database_arn: "AmazonResourceName",
    #           table_arn: "AmazonResourceName"
    #         }
    #       }
    #     }],
    #     access_types: ["LAKEFORMATION" # One of: ["LAKEFORMATION", "S3"]],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriber: {
    #       subscriber_id: "UUID", # required
    #       subscriber_arn: "AmazonResourceName", # required
    #       subscriber_identity: { # required
    #         principal: "AwsPrincipal", # required
    #         external_id: "ExternalId", # required
    #       },
    #       subscriber_name: "SafeString", # required
    #       subscriber_description: "SafeString",
    #       sources: [{ # required
    #         # One of:
    #         aws_log_source: {
    #           source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #           source_version: "AwsLogSourceVersion"
    #         },
    #         custom_log_source: {
    #           source_name: "CustomLogSourceName",
    #           source_version: "CustomLogSourceVersion",
    #           provider: {
    #             role_arn: "RoleArn",
    #             location: "S3URI"
    #           },
    #           attributes: {
    #             crawler_arn: "AmazonResourceName",
    #             database_arn: "AmazonResourceName",
    #             table_arn: "AmazonResourceName"
    #           }
    #         }
    #       }],
    #       access_types: ["LAKEFORMATION" # One of: ["LAKEFORMATION", "S3"]],
    #       role_arn: "RoleArn",
    #       s3_bucket_arn: "S3BucketArn",
    #       subscriber_endpoint: "SafeString",
    #       subscriber_status: "ACTIVE" # One of: ["ACTIVE", "DEACTIVATED", "PENDING", "READY"],
    #       resource_share_arn: "ResourceShareArn",
    #       resource_share_name: "ResourceShareName",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreateSubscriberResponse]
    def create_subscriber(params = {}, options = {})
      request = build_request(:create_subscriber, params)
      request.send_request(options)
    end

    # <p>Notifies the subscriber when new data is written to the data lake for the sources that
    #          the subscriber consumes in Security Lake. You can create only one subscriber notification per
    #          subscriber.</p>
    # @param [Hash, Types::CreateSubscriberNotificationRequest] params
    # @option params [String] :subscriber_id
    #   <p>The subscriber ID for the notification subscription.</p>
    # @option params [Types::NotificationConfiguration] :configuration
    #   <p>Specify the configuration using which you want to create the subscriber
    #            notification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscriber_id: "UUID", # required
    #     configuration: { # required
    #       # One of:
    #       sqs_notification_configuration: {
    #       },
    #       https_notification_configuration: {
    #         endpoint: "String", # required
    #         authorization_api_key_name: "String",
    #         authorization_api_key_value: "String",
    #         http_method: "POST" # One of: ["POST", "PUT"],
    #         target_role_arn: "RoleArn", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_subscriber_notification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriber_endpoint: "SafeString"
    #   }
    # @return [Types::CreateSubscriberNotificationResponse]
    def create_subscriber_notification(params = {}, options = {})
      request = build_request(:create_subscriber_notification, params)
      request.send_request(options)
    end

    # <p>Removes a natively supported Amazon Web Services service as an Amazon Security Lake source. You
    #          can remove a source for one or more Regions. When you remove the source, Security Lake stops
    #          collecting data from that source in the specified Regions and accounts, and subscribers can
    #          no longer consume new data from the source. However, subscribers can still consume data
    #          that Security Lake collected from the source before removal.</p>
    #          <p>You can choose any source type in any Amazon Web Services Region for either accounts that
    #          are part of a trusted organization or standalone accounts. </p>
    # @param [Hash, Types::DeleteAwsLogSourceRequest] params
    # @option params [Array<Types::AwsLogSourceConfiguration>] :sources
    #   <p>Specify the natively-supported Amazon Web Services service to remove as a source in
    #            Security Lake.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sources: [ # required
    #       {
    #         accounts: ["AwsAccountId"],
    #         regions: ["Region"], # required
    #         source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"], # required
    #         source_version: "AwsLogSourceVersion"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_aws_log_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed: ["AwsAccountId"]
    #   }
    # @return [Types::DeleteAwsLogSourceResponse]
    def delete_aws_log_source(params = {}, options = {})
      request = build_request(:delete_aws_log_source, params)
      request.send_request(options)
    end

    # <p>Removes a custom log source from Amazon Security Lake, to stop sending data from the custom
    #          source to Security Lake.</p>
    # @param [Hash, Types::DeleteCustomLogSourceRequest] params
    # @option params [String] :source_name
    #   <p>The source name of custom log source that you want to delete.</p>
    # @option params [String] :source_version
    #   <p>The source version for the third-party custom source. You can limit the custom source
    #            removal to the specified source version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_name: "CustomLogSourceName", # required
    #     source_version: "CustomLogSourceVersion"
    #   }
    #   options = {}
    #   response = client.delete_custom_log_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomLogSourceResponse]
    def delete_custom_log_source(params = {}, options = {})
      request = build_request(:delete_custom_log_source, params)
      request.send_request(options)
    end

    # <p>When you disable Amazon Security Lake from your account, Security Lake is disabled in all Amazon Web Services Regions and it stops collecting data from your sources. Also, this API
    #          automatically takes steps to remove the account from Security Lake. However, Security Lake retains
    #          all of your existing settings and the resources that it created in your Amazon Web Services
    #          account in the current Amazon Web Services Region.</p>
    #          <p>The <code>DeleteDataLake</code> operation does not delete the data that is stored in
    #          your Amazon S3 bucket, which is owned by your Amazon Web Services account. For more
    #          information, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/disable-security-lake.html">Amazon Security Lake User
    #             Guide</a>.</p>
    # @param [Hash, Types::DeleteDataLakeRequest] params
    # @option params [Array<String>] :regions
    #   <p>The list of Regions where Security Lake is enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regions: ["Region"], # required
    #   }
    #   options = {}
    #   response = client.delete_data_lake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDataLakeResponse]
    def delete_data_lake(params = {}, options = {})
      request = build_request(:delete_data_lake, params)
      request.send_request(options)
    end

    # <p>Deletes the specified notification subscription in Amazon Security Lake for the organization
    #          you specify.</p>
    # @param [Hash, Types::DeleteDataLakeExceptionSubscriptionRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_data_lake_exception_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDataLakeExceptionSubscriptionResponse]
    def delete_data_lake_exception_subscription(params = {}, options = {})
      request = build_request(:delete_data_lake_exception_subscription, params)
      request.send_request(options)
    end

    # <p>Turns off automatic enablement of Amazon Security Lake for member accounts that are added to an organization in Organizations. Only the delegated 
    #          Security Lake administrator for an organization can perform this operation. If the delegated Security Lake administrator performs this operation, new member
    #          accounts won't automatically contribute data to the data lake.</p>
    # @param [Hash, Types::DeleteDataLakeOrganizationConfigurationRequest] params
    # @option params [Array<Types::DataLakeAutoEnableNewAccountConfiguration>] :auto_enable_new_account
    #   <p>Turns off automatic enablement of Security Lake for member accounts that are added to an organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_enable_new_account: [
    #       {
    #         region: "Region", # required
    #         sources: [ # required
    #           {
    #             source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #             source_version: "AwsLogSourceVersion"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_data_lake_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDataLakeOrganizationConfigurationResponse]
    def delete_data_lake_organization_configuration(params = {}, options = {})
      request = build_request(:delete_data_lake_organization_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the subscription permission and all notification settings for accounts that are
    #          already enabled in Amazon Security Lake. When you run <code>DeleteSubscriber</code>, the
    #          subscriber will no longer consume data from Security Lake and the subscriber is removed. This
    #          operation deletes the subscriber and removes access to data in the current Amazon Web Services Region.</p>
    # @param [Hash, Types::DeleteSubscriberRequest] params
    # @option params [String] :subscriber_id
    #   <p>A value created by Security Lake that uniquely identifies your <code>DeleteSubscriber</code> API request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscriber_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSubscriberResponse]
    def delete_subscriber(params = {}, options = {})
      request = build_request(:delete_subscriber, params)
      request.send_request(options)
    end

    # <p>Deletes the specified subscription notification in Amazon Security Lake for the organization
    #          you specify.</p>
    # @param [Hash, Types::DeleteSubscriberNotificationRequest] params
    # @option params [String] :subscriber_id
    #   <p>The ID of the Security Lake subscriber account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscriber_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_subscriber_notification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSubscriberNotificationResponse]
    def delete_subscriber_notification(params = {}, options = {})
      request = build_request(:delete_subscriber_notification, params)
      request.send_request(options)
    end

    # <p>Deletes the Amazon Security Lake delegated administrator account for the organization. This API
    #          can only be called by the organization management account. The organization management
    #          account cannot be the delegated administrator account.</p>
    # @param [Hash, Types::DeregisterDataLakeDelegatedAdministratorRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.deregister_data_lake_delegated_administrator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterDataLakeDelegatedAdministratorResponse]
    def deregister_data_lake_delegated_administrator(params = {}, options = {})
      request = build_request(:deregister_data_lake_delegated_administrator, params)
      request.send_request(options)
    end

    # <p>Retrieves the protocol and endpoint that were provided when subscribing to Amazon SNS topics for exception notifications.</p>
    # @param [Hash, Types::GetDataLakeExceptionSubscriptionRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_data_lake_exception_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_protocol: "SubscriptionProtocol",
    #     notification_endpoint: "SafeString",
    #     exception_time_to_live: 1
    #   }
    # @return [Types::GetDataLakeExceptionSubscriptionResponse]
    def get_data_lake_exception_subscription(params = {}, options = {})
      request = build_request(:get_data_lake_exception_subscription, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration that will be automatically set up for accounts added to the
    #          organization after the organization has onboarded to Amazon Security Lake. This API does not take
    #          input parameters.</p>
    # @param [Hash, Types::GetDataLakeOrganizationConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_data_lake_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_enable_new_account: [
    #       {
    #         region: "Region", # required
    #         sources: [ # required
    #           {
    #             source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #             source_version: "AwsLogSourceVersion"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetDataLakeOrganizationConfigurationResponse]
    def get_data_lake_organization_configuration(params = {}, options = {})
      request = build_request(:get_data_lake_organization_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves a snapshot of the current Region, including whether Amazon Security Lake is enabled
    #          for those accounts and which sources Security Lake is collecting data from.</p>
    # @param [Hash, Types::GetDataLakeSourcesRequest] params
    # @option params [Array<String>] :accounts
    #   <p>The Amazon Web Services account ID for which a static snapshot of the current Amazon Web Services Region, including enabled accounts and log sources, is retrieved.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum limit of accounts for which the static snapshot of the current Region,
    #            including enabled accounts and log sources, is retrieved.</p>
    # @option params [String] :next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination
    #            token for each page. Repeat the call using the returned token to retrieve the next page.
    #            Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will
    #            return an HTTP 400 InvalidToken error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accounts: ["AwsAccountId"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_data_lake_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_lake_arn: "AmazonResourceName",
    #     data_lake_sources: [
    #       {
    #         account: "String",
    #         source_name: "String",
    #         event_classes: ["OcsfEventClass"],
    #         source_statuses: [
    #           {
    #             resource: "String",
    #             status: "COLLECTING" # One of: ["COLLECTING", "MISCONFIGURED", "NOT_COLLECTING"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetDataLakeSourcesResponse]
    def get_data_lake_sources(params = {}, options = {})
      request = build_request(:get_data_lake_sources, params)
      request.send_request(options)
    end

    # <p>Retrieves the subscription information for the specified subscription ID. You can get
    #          information about a specific subscriber.</p>
    # @param [Hash, Types::GetSubscriberRequest] params
    # @option params [String] :subscriber_id
    #   <p>A value created by Amazon Security Lake that uniquely identifies your
    #               <code>GetSubscriber</code> API request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscriber_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriber: {
    #       subscriber_id: "UUID", # required
    #       subscriber_arn: "AmazonResourceName", # required
    #       subscriber_identity: { # required
    #         principal: "AwsPrincipal", # required
    #         external_id: "ExternalId", # required
    #       },
    #       subscriber_name: "SafeString", # required
    #       subscriber_description: "SafeString",
    #       sources: [{ # required
    #         # One of:
    #         aws_log_source: {
    #           source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #           source_version: "AwsLogSourceVersion"
    #         },
    #         custom_log_source: {
    #           source_name: "CustomLogSourceName",
    #           source_version: "CustomLogSourceVersion",
    #           provider: {
    #             role_arn: "RoleArn",
    #             location: "S3URI"
    #           },
    #           attributes: {
    #             crawler_arn: "AmazonResourceName",
    #             database_arn: "AmazonResourceName",
    #             table_arn: "AmazonResourceName"
    #           }
    #         }
    #       }],
    #       access_types: ["LAKEFORMATION" # One of: ["LAKEFORMATION", "S3"]],
    #       role_arn: "RoleArn",
    #       s3_bucket_arn: "S3BucketArn",
    #       subscriber_endpoint: "SafeString",
    #       subscriber_status: "ACTIVE" # One of: ["ACTIVE", "DEACTIVATED", "PENDING", "READY"],
    #       resource_share_arn: "ResourceShareArn",
    #       resource_share_name: "ResourceShareName",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetSubscriberResponse]
    def get_subscriber(params = {}, options = {})
      request = build_request(:get_subscriber, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Security Lake exceptions that you can use to find the source of problems and
    #          fix them.</p>
    # @param [Hash, Types::ListDataLakeExceptionsRequest] params
    # @option params [Array<String>] :regions
    #   <p>The Amazon Web Services Regions from which exceptions are retrieved.</p>
    # @option params [Integer] :max_results
    #   <p>Lists the maximum number of failures in Security Lake.</p>
    # @option params [String] :next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination
    #            token for each page. Repeat the call using the returned token to retrieve the next page.
    #            Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will
    #            return an HTTP 400 InvalidToken error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regions: ["Region"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_data_lake_exceptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exceptions: [
    #       {
    #         region: "Region",
    #         exception: "SafeString",
    #         remediation: "SafeString",
    #         timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataLakeExceptionsResponse]
    def list_data_lake_exceptions(params = {}, options = {})
      request = build_request(:list_data_lake_exceptions, params)
      request.send_request(options)
    end

    # <p>Retrieves the Amazon Security Lake configuration object for the specified Amazon Web Services Regions. You can use this operation to determine whether
    #          Security Lake is enabled for a Region.</p>
    # @param [Hash, Types::ListDataLakesRequest] params
    # @option params [Array<String>] :regions
    #   <p>The list of Regions where Security Lake is enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regions: ["Region"]
    #   }
    #   options = {}
    #   response = client.list_data_lakes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_lakes: [
    #       {
    #         data_lake_arn: "AmazonResourceName", # required
    #         region: "Region", # required
    #         s3_bucket_arn: "S3BucketArn",
    #         encryption_configuration: {
    #           kms_key_id: "String"
    #         },
    #         lifecycle_configuration: {
    #           expiration: {
    #             days: 1
    #           },
    #           transitions: [
    #             {
    #               storage_class: "DataLakeStorageClass",
    #               days: 1
    #             }
    #           ]
    #         },
    #         replication_configuration: {
    #           regions: ["Region"],
    #           role_arn: "RoleArn"
    #         },
    #         create_status: "INITIALIZED" # One of: ["INITIALIZED", "PENDING", "COMPLETED", "FAILED"],
    #         update_status: {
    #           request_id: "String",
    #           status: "INITIALIZED" # One of: ["INITIALIZED", "PENDING", "COMPLETED", "FAILED"],
    #           exception: {
    #             reason: "String",
    #             code: "String"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListDataLakesResponse]
    def list_data_lakes(params = {}, options = {})
      request = build_request(:list_data_lakes, params)
      request.send_request(options)
    end

    # <p>Retrieves the log sources.</p>
    # @param [Hash, Types::ListLogSourcesRequest] params
    # @option params [Array<String>] :accounts
    #   <p>The list of Amazon Web Services accounts for which log sources are displayed.</p>
    # @option params [Array<String>] :regions
    #   <p>The list of Regions for which log sources are displayed.</p>
    # @option params [Array<Types::LogSourceResource>] :sources
    #   <p>The list of sources for which log sources are displayed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of accounts for which the log sources are displayed.</p>
    # @option params [String] :next_token
    #   <p>If nextToken is returned, there are more results available. You can repeat the call
    #            using the returned token to retrieve the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accounts: ["AwsAccountId"],
    #     regions: ["Region"],
    #     sources: [{
    #       # One of:
    #       aws_log_source: {
    #         source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #         source_version: "AwsLogSourceVersion"
    #       },
    #       custom_log_source: {
    #         source_name: "CustomLogSourceName",
    #         source_version: "CustomLogSourceVersion",
    #         provider: {
    #           role_arn: "RoleArn",
    #           location: "S3URI"
    #         },
    #         attributes: {
    #           crawler_arn: "AmazonResourceName",
    #           database_arn: "AmazonResourceName",
    #           table_arn: "AmazonResourceName"
    #         }
    #       }
    #     }],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_log_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sources: [
    #       {
    #         account: "AwsAccountId",
    #         region: "Region",
    #         sources: [{
    #           # One of:
    #           aws_log_source: {
    #             source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #             source_version: "AwsLogSourceVersion"
    #           },
    #           custom_log_source: {
    #             source_name: "CustomLogSourceName",
    #             source_version: "CustomLogSourceVersion",
    #             provider: {
    #               role_arn: "RoleArn",
    #               location: "S3URI"
    #             },
    #             attributes: {
    #               crawler_arn: "AmazonResourceName",
    #               database_arn: "AmazonResourceName",
    #               table_arn: "AmazonResourceName"
    #             }
    #           }
    #         }]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLogSourcesResponse]
    def list_log_sources(params = {}, options = {})
      request = build_request(:list_log_sources, params)
      request.send_request(options)
    end

    # <p>Lists all subscribers for the specific Amazon Security Lake account ID. You can retrieve a list
    #          of subscriptions associated with a specific organization or Amazon Web Services account.</p>
    # @param [Hash, Types::ListSubscribersRequest] params
    # @option params [String] :next_token
    #   <p>If nextToken is returned, there are more results available. You can repeat the call
    #            using the returned token to retrieve the next page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of accounts for which the configuration is displayed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_subscribers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscribers: [
    #       {
    #         subscriber_id: "UUID", # required
    #         subscriber_arn: "AmazonResourceName", # required
    #         subscriber_identity: { # required
    #           principal: "AwsPrincipal", # required
    #           external_id: "ExternalId", # required
    #         },
    #         subscriber_name: "SafeString", # required
    #         subscriber_description: "SafeString",
    #         sources: [{ # required
    #           # One of:
    #           aws_log_source: {
    #             source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #             source_version: "AwsLogSourceVersion"
    #           },
    #           custom_log_source: {
    #             source_name: "CustomLogSourceName",
    #             source_version: "CustomLogSourceVersion",
    #             provider: {
    #               role_arn: "RoleArn",
    #               location: "S3URI"
    #             },
    #             attributes: {
    #               crawler_arn: "AmazonResourceName",
    #               database_arn: "AmazonResourceName",
    #               table_arn: "AmazonResourceName"
    #             }
    #           }
    #         }],
    #         access_types: ["LAKEFORMATION" # One of: ["LAKEFORMATION", "S3"]],
    #         role_arn: "RoleArn",
    #         s3_bucket_arn: "S3BucketArn",
    #         subscriber_endpoint: "SafeString",
    #         subscriber_status: "ACTIVE" # One of: ["ACTIVE", "DEACTIVATED", "PENDING", "READY"],
    #         resource_share_arn: "ResourceShareArn",
    #         resource_share_name: "ResourceShareName",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSubscribersResponse]
    def list_subscribers(params = {}, options = {})
      request = build_request(:list_subscribers, params)
      request.send_request(options)
    end

    # <p>Retrieves the tags (keys and values) that are associated with an Amazon Security Lake resource: a subscriber, or the data lake configuration for 
    #          your Amazon Web Services account in a particular Amazon Web Services Region.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Security Lake resource for which you want to retrieve the tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Designates the Amazon Security Lake delegated administrator account for the organization. This
    #          API can only be called by the organization management account. The organization management
    #          account cannot be the delegated administrator account.</p>
    # @param [Hash, Types::RegisterDataLakeDelegatedAdministratorRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Security Lake delegated administrator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "SafeString", # required
    #   }
    #   options = {}
    #   response = client.register_data_lake_delegated_administrator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RegisterDataLakeDelegatedAdministratorResponse]
    def register_data_lake_delegated_administrator(params = {}, options = {})
      request = build_request(:register_data_lake_delegated_administrator, params)
      request.send_request(options)
    end

    # <p>Adds or updates one or more tags that are associated with an Amazon Security Lake resource: a subscriber, or the data lake configuration for your 
    #          Amazon Web Services account in a particular Amazon Web Services Region. A <i>tag</i> is a label that you can define and associate with 
    #          Amazon Web Services resources. Each tag consists of a required <i>tag key</i> and an associated <i>tag value</i>. A 
    #          <i>tag key</i> is a general label that acts as a category for a more specific tag value. A <i>tag value</i> acts as a 
    #          descriptor for a tag key. Tags can help you identify, categorize, and manage resources in different ways, such as by owner, environment, or other 
    #          criteria. For more information, see 
    #          <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/tagging-resources.html">Tagging Amazon Security Lake resources</a> in the 
    #          <i>Amazon Security Lake User Guide</i>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Security Lake resource to add or update the tags for.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects, one for each tag (key and value) to associate with the Amazon Security Lake resource. For each tag, you must 
    #            specify both a tag key and a tag value. A tag value cannot be null, but it can be an empty string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
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

    # <p>Removes one or more tags (keys and values) from an Amazon Security Lake resource: a subscriber, or the data lake configuration for your 
    #          Amazon Web Services account in a particular Amazon Web Services Region.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Security Lake resource to remove one or more tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of one or more tag keys. For each value in the list, specify the tag key for a tag to remove from the Amazon Security Lake resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>You can use <code>UpdateDataLake</code> to specify where to store your security data, how it should
    #          be encrypted at rest and for how long. You can add a <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/manage-regions.html#add-rollup-region">Rollup
    #             Region</a> to consolidate data from multiple Amazon Web Services Regions, replace
    #          default encryption (SSE-S3) with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">Customer Manged Key</a>,
    #          or specify transition and expiration actions through storage <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/lifecycle-management.html">Lifecycle management</a>. The <code>UpdateDataLake</code> API works as an "upsert" operation that performs an insert if the specified item or record does not exist, or an update if it
    #          already exists. Security Lake securely stores your data at rest using Amazon Web Services encryption solutions. For more details, see <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/data-protection.html">Data protection in Amazon Security Lake</a>.</p>
    #          <p>For example, omitting the key <code>encryptionConfiguration</code> from a Region that is
    #          included in an update call that currently uses KMS will leave that Region's KMS key in
    #          place, but specifying <code>encryptionConfiguration: {kmsKeyId: 'S3_MANAGED_KEY'}</code>
    #          for that same Region will reset the key to <code>S3-managed</code>.</p>
    #          <p>For more details about lifecycle management and how to update retention settings for one or more Regions after enabling Security Lake, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/lifecycle-management.html">Amazon Security Lake User Guide</a>. </p>
    # @param [Hash, Types::UpdateDataLakeRequest] params
    # @option params [Array<Types::DataLakeConfiguration>] :configurations
    #   <p>Specifies the Region or Regions that will contribute data to the rollup region.</p>
    # @option params [String] :meta_store_manager_role_arn
    #   <p>The Amazon Resource Name (ARN) used to create and update the Glue table.
    #            This table contains partitions generated by the ingestion and normalization of
    #            Amazon Web Services log sources and custom sources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configurations: [ # required
    #       {
    #         region: "Region", # required
    #         encryption_configuration: {
    #           kms_key_id: "String"
    #         },
    #         lifecycle_configuration: {
    #           expiration: {
    #             days: 1
    #           },
    #           transitions: [
    #             {
    #               storage_class: "DataLakeStorageClass",
    #               days: 1
    #             }
    #           ]
    #         },
    #         replication_configuration: {
    #           regions: ["Region"],
    #           role_arn: "RoleArn"
    #         }
    #       }
    #     ],
    #     meta_store_manager_role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.update_data_lake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_lakes: [
    #       {
    #         data_lake_arn: "AmazonResourceName", # required
    #         region: "Region", # required
    #         s3_bucket_arn: "S3BucketArn",
    #         encryption_configuration: {
    #           kms_key_id: "String"
    #         },
    #         lifecycle_configuration: {
    #           expiration: {
    #             days: 1
    #           },
    #           transitions: [
    #             {
    #               storage_class: "DataLakeStorageClass",
    #               days: 1
    #             }
    #           ]
    #         },
    #         replication_configuration: {
    #           regions: ["Region"],
    #           role_arn: "RoleArn"
    #         },
    #         create_status: "INITIALIZED" # One of: ["INITIALIZED", "PENDING", "COMPLETED", "FAILED"],
    #         update_status: {
    #           request_id: "String",
    #           status: "INITIALIZED" # One of: ["INITIALIZED", "PENDING", "COMPLETED", "FAILED"],
    #           exception: {
    #             reason: "String",
    #             code: "String"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::UpdateDataLakeResponse]
    def update_data_lake(params = {}, options = {})
      request = build_request(:update_data_lake, params)
      request.send_request(options)
    end

    # <p>Updates the specified notification subscription in Amazon Security Lake for the organization
    #          you specify.</p>
    # @param [Hash, Types::UpdateDataLakeExceptionSubscriptionRequest] params
    # @option params [String] :subscription_protocol
    #   <p>The subscription protocol to which exception messages are posted.</p>
    # @option params [String] :notification_endpoint
    #   <p>The account that is subscribed to receive exception notifications.</p>
    # @option params [Integer] :exception_time_to_live
    #   <p>The time-to-live (TTL) for the exception message to remain. It is the duration of time until which the exception message remains. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_protocol: "SubscriptionProtocol", # required
    #     notification_endpoint: "SafeString", # required
    #     exception_time_to_live: 1
    #   }
    #   options = {}
    #   response = client.update_data_lake_exception_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDataLakeExceptionSubscriptionResponse]
    def update_data_lake_exception_subscription(params = {}, options = {})
      request = build_request(:update_data_lake_exception_subscription, params)
      request.send_request(options)
    end

    # <p>Updates an existing subscription for the given Amazon Security Lake account ID. You can update
    #          a subscriber by changing the sources that the subscriber consumes data from.</p>
    # @param [Hash, Types::UpdateSubscriberRequest] params
    # @option params [String] :subscriber_id
    #   <p>A value created by Security Lake that uniquely identifies your subscription.</p>
    # @option params [Types::AwsIdentity] :subscriber_identity
    #   <p>The Amazon Web Services identity used to access your data.</p>
    # @option params [String] :subscriber_name
    #   <p>The name of the Security Lake account subscriber.</p>
    # @option params [String] :subscriber_description
    #   <p>The description of the Security Lake account subscriber.</p>
    # @option params [Array<Types::LogSourceResource>] :sources
    #   <p>The supported Amazon Web Services services from which logs and events are collected. For
    #            the list of supported Amazon Web Services services, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Amazon Security Lake User Guide</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscriber_id: "UUID", # required
    #     subscriber_identity: {
    #       principal: "AwsPrincipal", # required
    #       external_id: "ExternalId", # required
    #     },
    #     subscriber_name: "SafeString",
    #     subscriber_description: "DescriptionString",
    #     sources: [{
    #       # One of:
    #       aws_log_source: {
    #         source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #         source_version: "AwsLogSourceVersion"
    #       },
    #       custom_log_source: {
    #         source_name: "CustomLogSourceName",
    #         source_version: "CustomLogSourceVersion",
    #         provider: {
    #           role_arn: "RoleArn",
    #           location: "S3URI"
    #         },
    #         attributes: {
    #           crawler_arn: "AmazonResourceName",
    #           database_arn: "AmazonResourceName",
    #           table_arn: "AmazonResourceName"
    #         }
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.update_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriber: {
    #       subscriber_id: "UUID", # required
    #       subscriber_arn: "AmazonResourceName", # required
    #       subscriber_identity: { # required
    #         principal: "AwsPrincipal", # required
    #         external_id: "ExternalId", # required
    #       },
    #       subscriber_name: "SafeString", # required
    #       subscriber_description: "SafeString",
    #       sources: [{ # required
    #         # One of:
    #         aws_log_source: {
    #           source_name: "ROUTE53" # One of: ["ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA", "EKS_AUDIT", "WAF"],
    #           source_version: "AwsLogSourceVersion"
    #         },
    #         custom_log_source: {
    #           source_name: "CustomLogSourceName",
    #           source_version: "CustomLogSourceVersion",
    #           provider: {
    #             role_arn: "RoleArn",
    #             location: "S3URI"
    #           },
    #           attributes: {
    #             crawler_arn: "AmazonResourceName",
    #             database_arn: "AmazonResourceName",
    #             table_arn: "AmazonResourceName"
    #           }
    #         }
    #       }],
    #       access_types: ["LAKEFORMATION" # One of: ["LAKEFORMATION", "S3"]],
    #       role_arn: "RoleArn",
    #       s3_bucket_arn: "S3BucketArn",
    #       subscriber_endpoint: "SafeString",
    #       subscriber_status: "ACTIVE" # One of: ["ACTIVE", "DEACTIVATED", "PENDING", "READY"],
    #       resource_share_arn: "ResourceShareArn",
    #       resource_share_name: "ResourceShareName",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateSubscriberResponse]
    def update_subscriber(params = {}, options = {})
      request = build_request(:update_subscriber, params)
      request.send_request(options)
    end

    # <p>Updates an existing notification method for the subscription (SQS or HTTPs endpoint) or
    #          switches the notification subscription endpoint for a subscriber.</p>
    # @param [Hash, Types::UpdateSubscriberNotificationRequest] params
    # @option params [String] :subscriber_id
    #   <p>The subscription ID for which the subscription notification is specified.</p>
    # @option params [Types::NotificationConfiguration] :configuration
    #   <p>The configuration for subscriber notification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscriber_id: "UUID", # required
    #     configuration: { # required
    #       # One of:
    #       sqs_notification_configuration: {
    #       },
    #       https_notification_configuration: {
    #         endpoint: "String", # required
    #         authorization_api_key_name: "String",
    #         authorization_api_key_value: "String",
    #         http_method: "POST" # One of: ["POST", "PUT"],
    #         target_role_arn: "RoleArn", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_subscriber_notification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriber_endpoint: "SafeString"
    #   }
    # @return [Types::UpdateSubscriberNotificationResponse]
    def update_subscriber_notification(params = {}, options = {})
      request = build_request(:update_subscriber_notification, params)
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
      context[:gem_name] = 'aws-sdk-securitylake'
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
