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

module Aws::Amp
  # An API client for Aws::Amp.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonPrometheusService

    add_plugin(::Aws::Amp::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Amp::EndpointProvider)
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

    # <p>The <code>CreateAlertManagerDefinition</code> operation creates the alert manager definition in a workspace. If a workspace already has an alert manager definition, don't use this operation to update it. Instead, use <code>PutAlertManagerDefinition</code>.</p>
    # @param [Hash, Types::CreateAlertManagerDefinitionInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to add the alert manager definition to.</p>
    # @option params [String] :data
    #   <p>The alert manager definition to add. A base64-encoded version of the YAML alert manager definition file.</p> <p>For details about the alert manager definition, see <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html">AlertManagedDefinitionData</a>.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     data: "data", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_alert_manager_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       status_code: "AlertManagerDefinitionStatusCode", # required
    #       status_reason: "String"
    #     }
    #   }
    # @return [Types::CreateAlertManagerDefinitionOutput]
    def create_alert_manager_definition(params = {}, options = {})
      request = build_request(:create_alert_manager_definition, params)
      request.send_request(options)
    end

    # <p>The <code>CreateLoggingConfiguration</code> operation creates rules and alerting logging configuration for the workspace. Use this operation to set the CloudWatch log group to which the logs will be published to.</p> <note> <p>These logging configurations are only for rules and alerting logs.</p> </note>
    # @param [Hash, Types::CreateLoggingConfigurationInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to create the logging configuration for.</p>
    # @option params [String] :log_group_arn
    #   <p>The ARN of the CloudWatch log group to which the vended log data will be published. This log group must exist prior to calling this operation.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     log_group_arn: "LogGroupArn", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       status_code: "LoggingConfigurationStatusCode", # required
    #       status_reason: "String"
    #     }
    #   }
    # @return [Types::CreateLoggingConfigurationOutput]
    def create_logging_configuration(params = {}, options = {})
      request = build_request(:create_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a query logging configuration for the specified workspace. This operation enables logging of queries that exceed the specified QSP threshold.</p>
    # @param [Hash, Types::CreateQueryLoggingConfigurationRequest] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace for which to create the query logging configuration.</p>
    # @option params [Array<Types::LoggingDestination>] :destinations
    #   <p>The destinations where query logs will be sent. Only CloudWatch Logs destination is supported. The list must contain exactly one element.</p>
    # @option params [String] :client_token
    #   <p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     destinations: [ # required
    #       {
    #         cloud_watch_logs: { # required
    #           log_group_arn: "LogGroupArn", # required
    #         },
    #         filters: { # required
    #           qsp_threshold: 1, # required
    #         }
    #       }
    #     ],
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_query_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       status_code: "QueryLoggingConfigurationStatusCode", # required
    #       status_reason: "String"
    #     }
    #   }
    # @return [Types::CreateQueryLoggingConfigurationResponse]
    def create_query_logging_configuration(params = {}, options = {})
      request = build_request(:create_query_logging_configuration, params)
      request.send_request(options)
    end

    # <p>The <code>CreateRuleGroupsNamespace</code> operation creates a rule groups namespace within a workspace. A rule groups namespace is associated with exactly one rules file. A workspace can have multiple rule groups namespaces.</p> <p>Use this operation only to create new rule groups namespaces. To update an existing rule groups namespace, use <code>PutRuleGroupsNamespace</code>.</p>
    # @param [Hash, Types::CreateRuleGroupsNamespaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to add the rule groups namespace.</p>
    # @option params [String] :name
    #   <p>The name for the new rule groups namespace.</p>
    # @option params [String] :data
    #   <p>The rules file to use in the new namespace.</p> <p>Contains the base64-encoded version of the YAML rules file.</p> <p>For details about the rule groups namespace structure, see <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html">RuleGroupsNamespaceData</a>.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tag keys and values to associate with the rule groups namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     name: "RuleGroupsNamespaceName", # required
    #     data: "data", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_rule_groups_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RuleGroupsNamespaceName", # required
    #     arn: "RuleGroupsNamespaceArn", # required
    #     status: { # required
    #       status_code: "RuleGroupsNamespaceStatusCode", # required
    #       status_reason: "String"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateRuleGroupsNamespaceOutput]
    def create_rule_groups_namespace(params = {}, options = {})
      request = build_request(:create_rule_groups_namespace, params)
      request.send_request(options)
    end

    # <p>The <code>CreateScraper</code> operation creates a scraper to collect metrics. A scraper pulls metrics from Prometheus-compatible sources within an Amazon EKS cluster, and sends them to your Amazon Managed Service for Prometheus workspace. Scrapers are flexible, and can be configured to control what metrics are collected, the frequency of collection, what transformations are applied to the metrics, and more.</p> <p>An IAM role will be created for you that Amazon Managed Service for Prometheus uses to access the metrics in your cluster. You must configure this role with a policy that allows it to scrape metrics from your cluster. For more information, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-eks-setup">Configuring your Amazon EKS cluster</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p> <p>The <code>scrapeConfiguration</code> parameter contains the base-64 encoded YAML configuration for the scraper.</p> <p>When creating a scraper, the service creates a <code>Network Interface</code> in each <b>Availability Zone</b> that are passed into <code>CreateScraper</code> through subnets. These network interfaces are used to connect to the Amazon EKS cluster within the VPC for scraping metrics.</p> <note> <p>For more information about collectors, including what metrics are collected, and how to configure the scraper, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html">Using an Amazon Web Services managed collector</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p> </note>
    # @param [Hash, Types::CreateScraperRequest] params
    # @option params [String] :alias
    #   <p>(optional) An alias to associate with the scraper. This is for your use, and does not need to be unique.</p>
    # @option params [Types::ScrapeConfiguration] :scrape_configuration
    #   <p>The configuration file to use in the new scraper. For more information, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration">Scraper configuration</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p>
    # @option params [Types::Source] :source
    #   <p>The Amazon EKS cluster from which the scraper will collect metrics.</p>
    # @option params [Types::Destination] :destination
    #   <p>The Amazon Managed Service for Prometheus workspace to send metrics to.</p>
    # @option params [Types::RoleConfiguration] :role_configuration
    #   <p>Use this structure to enable cross-account access, so that you can use a target account to access Prometheus metrics from source accounts.</p>
    # @option params [String] :client_token
    #   <p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>(Optional) The list of tag keys and values to associate with the scraper.</p>
    # @example CreateScraper with optional alias input, optional clientToken input, and one set of tags
    #   # Example operation for create_scraper
    #   params = {
    #     alias: "alias",
    #     scrape_configuration: {
    #     "configurationBlob" => blob
    #   },
    #     source: {
    #     "eksConfiguration" => {
    #       "clusterArn" => arn:aws:eks:us-west-2:123456789012:cluster/example,
    #       "securityGroupIds" => [sg-abc123],
    #       "subnetIds" => [subnet-abc123]
    #     }
    #   },
    #     destination: {
    #     "ampConfiguration" => {
    #       "workspaceArn" => arn:aws:aps:us-west-2:123456789012:workspace/ws-ogh2u499-ce12-hg89-v6c7-123412341234
    #     }
    #   },
    #     client_token: "token",
    #     tags: {
    #       "exampleTag" => "exampleValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_scraper(params, options)
    #   response.to_h #=>
    #   {
    #     scraper_id: "scraper-123",
    #     arn: "arn:aws:aps:us-west-2:123456789012:scraper/scraper-123",
    #     status: {
    #       status_code: "CREATING"
    #     },
    #     tags: {
    #       "exampleTag" => "exampleValue"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     alias: "ScraperAlias",
    #     scrape_configuration: { # required
    #       # One of:
    #       configuration_blob: "data"
    #     },
    #     source: { # required
    #       # One of:
    #       eks_configuration: {
    #         cluster_arn: "ClusterArn", # required
    #         security_group_ids: ["SecurityGroupId"],
    #         subnet_ids: ["SubnetId"], # required
    #       }
    #     },
    #     destination: { # required
    #       # One of:
    #       amp_configuration: {
    #         workspace_arn: "WorkspaceArn", # required
    #       }
    #     },
    #     role_configuration: {
    #       source_role_arn: "IamRoleArn",
    #       target_role_arn: "IamRoleArn"
    #     },
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_scraper(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scraper_id: "ScraperId", # required
    #     arn: "ScraperArn", # required
    #     status: { # required
    #       status_code: "ScraperStatusCode", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateScraperResponse]
    def create_scraper(params = {}, options = {})
      request = build_request(:create_scraper, params)
      request.send_request(options)
    end

    # <p>Creates a Prometheus workspace. A workspace is a logical space dedicated to the storage and querying of Prometheus metrics. You can have one or more workspaces in each Region in your account.</p>
    # @param [Hash, Types::CreateWorkspaceInput] params
    # @option params [String] :alias
    #   <p>An alias that you assign to this workspace to help you identify it. It does not need to be unique.</p> <p>Blank spaces at the beginning or end of the alias that you specify will be trimmed from the value used.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tag keys and values to associate with the workspace.</p>
    # @option params [String] :kms_key_arn
    #   <p>(optional) The ARN for a customer managed KMS key to use for encrypting data within your workspace. For more information about using your own key in your workspace, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html">Encryption at rest</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias: "WorkspaceAlias",
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KmsKeyArn"
    #   }
    #   options = {}
    #   response = client.create_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_id: "WorkspaceId", # required
    #     arn: "WorkspaceArn", # required
    #     status: { # required
    #       status_code: "WorkspaceStatusCode", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::CreateWorkspaceOutput]
    def create_workspace(params = {}, options = {})
      request = build_request(:create_workspace, params)
      request.send_request(options)
    end

    # <p>Deletes the alert manager definition from a workspace.</p>
    # @param [Hash, Types::DeleteAlertManagerDefinitionInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to delete the alert manager definition from.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.delete_alert_manager_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_alert_manager_definition(params = {}, options = {})
      request = build_request(:delete_alert_manager_definition, params)
      request.send_request(options)
    end

    # <p>Deletes the rules and alerting logging configuration for a workspace.</p> <note> <p>These logging configurations are only for rules and alerting logs.</p> </note>
    # @param [Hash, Types::DeleteLoggingConfigurationInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace containing the logging configuration to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.delete_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_logging_configuration(params = {}, options = {})
      request = build_request(:delete_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the query logging configuration for the specified workspace.</p>
    # @param [Hash, Types::DeleteQueryLoggingConfigurationRequest] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace from which to delete the query logging configuration.</p>
    # @option params [String] :client_token
    #   <p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.delete_query_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_query_logging_configuration(params = {}, options = {})
      request = build_request(:delete_query_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the resource-based policy attached to an Amazon Managed Service for Prometheus workspace.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace from which to delete the resource-based policy.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is safe to retry (idempotent).</p>
    # @option params [String] :revision_id
    #   <p>The revision ID of the policy to delete. Use this parameter to ensure that you are deleting the correct version of the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     client_token: "IdempotencyToken",
    #     revision_id: "String"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes one rule groups namespace and its associated rule groups definition.</p>
    # @param [Hash, Types::DeleteRuleGroupsNamespaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace containing the rule groups namespace and definition to delete.</p>
    # @option params [String] :name
    #   <p>The name of the rule groups namespace to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     name: "RuleGroupsNamespaceName", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.delete_rule_groups_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_rule_groups_namespace(params = {}, options = {})
      request = build_request(:delete_rule_groups_namespace, params)
      request.send_request(options)
    end

    # <p>The <code>DeleteScraper</code> operation deletes one scraper, and stops any metrics collection that the scraper performs.</p>
    # @param [Hash, Types::DeleteScraperRequest] params
    # @option params [String] :scraper_id
    #   <p>The ID of the scraper to delete.</p>
    # @option params [String] :client_token
    #   <p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>
    # @example DeleteScraper with optional clientToken input
    #   # Example operation for delete_scraper
    #   params = {
    #     scraper_id: "scraper-123",
    #     client_token: "token"
    #   }
    #   options = {}
    #   response = client.delete_scraper(params, options)
    #   response.to_h #=>
    #   {
    #     scraper_id: "scraper-123",
    #     status: {
    #       status_code: "DELETING"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scraper_id: "ScraperId", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.delete_scraper(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scraper_id: "ScraperId", # required
    #     status: { # required
    #       status_code: "ScraperStatusCode", # required
    #     }
    #   }
    # @return [Types::DeleteScraperResponse]
    def delete_scraper(params = {}, options = {})
      request = build_request(:delete_scraper, params)
      request.send_request(options)
    end

    # <p>Deletes the logging configuration for a Amazon Managed Service for Prometheus scraper.</p>
    # @param [Hash, Types::DeleteScraperLoggingConfigurationRequest] params
    # @option params [String] :scraper_id
    #   <p>The ID of the scraper whose logging configuration will be deleted.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is processed exactly once.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scraper_id: "ScraperId", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.delete_scraper_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_scraper_logging_configuration(params = {}, options = {})
      request = build_request(:delete_scraper_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an existing workspace. </p> <note> <p>When you delete a workspace, the data that has been ingested into it is not immediately deleted. It will be permanently deleted within one month.</p> </note>
    # @param [Hash, Types::DeleteWorkspaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.delete_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_workspace(params = {}, options = {})
      request = build_request(:delete_workspace, params)
      request.send_request(options)
    end

    # <p>Retrieves the full information about the alert manager definition for a workspace.</p>
    # @param [Hash, Types::DescribeAlertManagerDefinitionInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to retrieve the alert manager definition from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.describe_alert_manager_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alert_manager_definition: { # required
    #       status: { # required
    #         status_code: "AlertManagerDefinitionStatusCode", # required
    #         status_reason: "String"
    #       },
    #       data: "data", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #     }
    #   }
    # @return [Types::DescribeAlertManagerDefinitionOutput]
    def describe_alert_manager_definition(params = {}, options = {})
      request = build_request(:describe_alert_manager_definition, params)
      request.send_request(options)
    end

    # <p>Returns complete information about the current rules and alerting logging configuration of the workspace.</p> <note> <p>These logging configurations are only for rules and alerting logs.</p> </note>
    # @param [Hash, Types::DescribeLoggingConfigurationInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to describe the logging configuration for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.describe_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_configuration: { # required
    #       status: { # required
    #         status_code: "LoggingConfigurationStatusCode", # required
    #         status_reason: "String"
    #       },
    #       workspace: "WorkspaceId", # required
    #       log_group_arn: "LogGroupArn", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #     }
    #   }
    # @return [Types::DescribeLoggingConfigurationOutput]
    def describe_logging_configuration(params = {}, options = {})
      request = build_request(:describe_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the query logging configuration for the specified workspace.</p>
    # @param [Hash, Types::DescribeQueryLoggingConfigurationRequest] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace for which to retrieve the query logging configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.describe_query_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_logging_configuration: { # required
    #       status: { # required
    #         status_code: "QueryLoggingConfigurationStatusCode", # required
    #         status_reason: "String"
    #       },
    #       workspace: "WorkspaceId", # required
    #       destinations: [ # required
    #         {
    #           cloud_watch_logs: { # required
    #             log_group_arn: "LogGroupArn", # required
    #           },
    #           filters: { # required
    #             qsp_threshold: 1, # required
    #           }
    #         }
    #       ],
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #     }
    #   }
    # @return [Types::DescribeQueryLoggingConfigurationResponse]
    def describe_query_logging_configuration(params = {}, options = {})
      request = build_request(:describe_query_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about the resource-based policy attached to an Amazon Managed Service for Prometheus workspace.</p>
    # @param [Hash, Types::DescribeResourcePolicyRequest] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to describe the resource-based policy for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.describe_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_document: "String", # required
    #     policy_status: "WorkspacePolicyStatusCode", # required
    #     revision_id: "String", # required
    #   }
    # @return [Types::DescribeResourcePolicyResponse]
    def describe_resource_policy(params = {}, options = {})
      request = build_request(:describe_resource_policy, params)
      request.send_request(options)
    end

    # <p>Returns complete information about one rule groups namespace. To retrieve a list of rule groups namespaces, use <code>ListRuleGroupsNamespaces</code>.</p>
    # @param [Hash, Types::DescribeRuleGroupsNamespaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace containing the rule groups namespace.</p>
    # @option params [String] :name
    #   <p>The name of the rule groups namespace that you want information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     name: "RuleGroupsNamespaceName", # required
    #   }
    #   options = {}
    #   response = client.describe_rule_groups_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_groups_namespace: { # required
    #       arn: "RuleGroupsNamespaceArn", # required
    #       name: "RuleGroupsNamespaceName", # required
    #       status: { # required
    #         status_code: "RuleGroupsNamespaceStatusCode", # required
    #         status_reason: "String"
    #       },
    #       data: "data", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeRuleGroupsNamespaceOutput]
    def describe_rule_groups_namespace(params = {}, options = {})
      request = build_request(:describe_rule_groups_namespace, params)
      request.send_request(options)
    end

    # <p>The <code>DescribeScraper</code> operation displays information about an existing scraper.</p>
    # @param [Hash, Types::DescribeScraperRequest] params
    # @option params [String] :scraper_id
    #   <p>The ID of the scraper to describe.</p>
    # @example DescribeScraper, with no statusReason to report
    #   # Example operation for describe_scraper
    #   params = {
    #     scraper_id: "scraper-123"
    #   }
    #   options = {}
    #   response = client.describe_scraper(params, options)
    #   response.to_h #=>
    #   {
    #     scraper: {
    #       alias: "alias",
    #       scraper_id: "scraper-123",
    #       arn: "arn:aws:aps:us-west-2:123456789012:scraper/scraper-123",
    #       role_arn: "arn:aws:iam::123456789012:role/exampleRole",
    #       status: {
    #         status_code: "ACTIVE"
    #       },
    #       created_at: Time.parse("2023-01-01T00:00:00Z"),
    #       last_modified_at: Time.parse("2020-01-02T00:00:00Z"),
    #       tags: {
    #         "exampleTag" => "exampleValue"
    #       },
    #       scrape_configuration: {
    #     "configurationBlob" => blob
    #   },
    #       source: {
    #     "eksConfiguration" => {
    #       "clusterArn" => arn:aws:eks:us-west-2:123456789012:cluster/example,
    #       "securityGroupIds" => [sg-abc123],
    #       "subnetIds" => [subnet-abc123]
    #     }
    #   },
    #       destination: {
    #     "ampConfiguration" => {
    #       "workspaceArn" => arn:aws:aps:us-west-2:123456789012:workspace/ws-ogh2u499-ce12-hg89-v6c7-123412341234
    #     }
    #   }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scraper_id: "ScraperId", # required
    #   }
    #   options = {}
    #   response = client.describe_scraper(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scraper: { # required
    #       alias: "ScraperAlias",
    #       scraper_id: "ScraperId", # required
    #       arn: "ScraperArn", # required
    #       role_arn: "IamRoleArn", # required
    #       status: { # required
    #         status_code: "ScraperStatusCode", # required
    #       },
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       status_reason: "StatusReason",
    #       scrape_configuration: { # required
    #         # One of:
    #         configuration_blob: "data"
    #       },
    #       source: { # required
    #         # One of:
    #         eks_configuration: {
    #           cluster_arn: "ClusterArn", # required
    #           security_group_ids: ["SecurityGroupId"],
    #           subnet_ids: ["SubnetId"], # required
    #         }
    #       },
    #       destination: { # required
    #         # One of:
    #         amp_configuration: {
    #           workspace_arn: "WorkspaceArn", # required
    #         }
    #       },
    #       role_configuration: {
    #         source_role_arn: "IamRoleArn",
    #         target_role_arn: "IamRoleArn"
    #       }
    #     }
    #   }
    # @return [Types::DescribeScraperResponse]
    def describe_scraper(params = {}, options = {})
      request = build_request(:describe_scraper, params)
      request.send_request(options)
    end

    # <p>Describes the logging configuration for a Amazon Managed Service for Prometheus scraper.</p>
    # @param [Hash, Types::DescribeScraperLoggingConfigurationRequest] params
    # @option params [String] :scraper_id
    #   <p>The ID of the scraper whose logging configuration will be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scraper_id: "ScraperId", # required
    #   }
    #   options = {}
    #   response = client.describe_scraper_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       status_code: "ScraperLoggingConfigurationStatusCode", # required
    #       status_reason: "String"
    #     },
    #     scraper_id: "ScraperId", # required
    #     logging_destination: { # required
    #       # One of:
    #       cloud_watch_logs: {
    #         log_group_arn: "LogGroupArn", # required
    #       }
    #     },
    #     scraper_components: [ # required
    #       {
    #         type: "ScraperComponentType", # required
    #         config: {
    #           options: {
    #             "String" => "String"
    #           }
    #         }
    #       }
    #     ],
    #     modified_at: Time.now, # required
    #   }
    # @return [Types::DescribeScraperLoggingConfigurationResponse]
    def describe_scraper_logging_configuration(params = {}, options = {})
      request = build_request(:describe_scraper_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about an existing workspace. </p>
    # @param [Hash, Types::DescribeWorkspaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.describe_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace: { # required
    #       workspace_id: "WorkspaceId", # required
    #       alias: "WorkspaceAlias",
    #       arn: "WorkspaceArn", # required
    #       status: { # required
    #         status_code: "WorkspaceStatusCode", # required
    #       },
    #       prometheus_endpoint: "Uri",
    #       created_at: Time.now, # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       kms_key_arn: "KmsKeyArn"
    #     }
    #   }
    # @return [Types::DescribeWorkspaceOutput]
    def describe_workspace(params = {}, options = {})
      request = build_request(:describe_workspace, params)
      request.send_request(options)
    end

    # <p>Use this operation to return information about the configuration of a workspace. The configuration details returned include workspace configuration status, label set limits, and retention period.</p>
    # @param [Hash, Types::DescribeWorkspaceConfigurationRequest] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that you want to retrieve information for. To find the IDs of your workspaces, use the <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/API_ListWorkspaces.htm">ListWorkspaces</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.describe_workspace_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_configuration: { # required
    #       status: { # required
    #         status_code: "WorkspaceConfigurationStatusCode", # required
    #         status_reason: "String"
    #       },
    #       limits_per_label_set: [
    #         {
    #           limits: { # required
    #             max_series: 1
    #           },
    #           label_set: { # required
    #             "LabelName" => "LabelValue"
    #           }
    #         }
    #       ],
    #       retention_period_in_days: 1
    #     }
    #   }
    # @return [Types::DescribeWorkspaceConfigurationResponse]
    def describe_workspace_configuration(params = {}, options = {})
      request = build_request(:describe_workspace_configuration, params)
      request.send_request(options)
    end

    # <p>The <code>GetDefaultScraperConfiguration</code> operation returns the default scraper configuration used when Amazon EKS creates a scraper for you.</p>
    # @param [Hash, Types::GetDefaultScraperConfigurationRequest] params
    # @example GetDefaultScraperConfiguration
    #   # Example operation for get_default_scraper_configuration
    #   params = {}
    #   options = {}
    #   response = client.get_default_scraper_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     configuration: "blob"
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_default_scraper_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: "data", # required
    #   }
    # @return [Types::GetDefaultScraperConfigurationResponse]
    def get_default_scraper_configuration(params = {}, options = {})
      request = build_request(:get_default_scraper_configuration, params)
      request.send_request(options)
    end

    # <p>Returns a list of rule groups namespaces in a workspace.</p>
    # @param [Hash, Types::ListRuleGroupsNamespacesInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace containing the rule groups namespaces.</p>
    # @option params [String] :name
    #   <p>Use this parameter to filter the rule groups namespaces that are returned. Only the namespaces with names that begin with the value that you specify are returned.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. You receive this token from a previous call, and use it to get the next page of results. The other parameters must be the same as the initial call.</p> <p>For example, if your initial request has <code>maxResults</code> of 10, and there are 12 rule groups namespaces to return, then your initial request will return 10 and a <code>nextToken</code>. Using the next token in a subsequent call will return the remaining 2 namespaces.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     name: "RuleGroupsNamespaceName",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_rule_groups_namespaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_groups_namespaces: [ # required
    #       {
    #         arn: "RuleGroupsNamespaceArn", # required
    #         name: "RuleGroupsNamespaceName", # required
    #         status: { # required
    #           status_code: "RuleGroupsNamespaceStatusCode", # required
    #           status_reason: "String"
    #         },
    #         created_at: Time.now, # required
    #         modified_at: Time.now, # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRuleGroupsNamespacesOutput]
    def list_rule_groups_namespaces(params = {}, options = {})
      request = build_request(:list_rule_groups_namespaces, params)
      request.send_request(options)
    end

    # <p>The <code>ListScrapers</code> operation lists all of the scrapers in your account. This includes scrapers being created or deleted. You can optionally filter the returned list.</p>
    # @param [Hash, Types::ListScrapersRequest] params
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>(Optional) A list of key-value pairs to filter the list of scrapers returned. Keys include <code>status</code>, <code>sourceArn</code>, <code>destinationArn</code>, and <code>alias</code>.</p> <p>Filters on the same key are <code>OR</code>'d together, and filters on different keys are <code>AND</code>'d together. For example, <code>status=ACTIVE&amp;status=CREATING&amp;alias=Test</code>, will return all scrapers that have the alias Test, and are either in status ACTIVE or CREATING.</p> <p>To find all active scrapers that are sending metrics to a specific Amazon Managed Service for Prometheus workspace, you would use the ARN of the workspace in a query:</p> <p> <code>status=ACTIVE&amp;destinationArn=arn:aws:aps:us-east-1:123456789012:workspace/ws-example1-1234-abcd-56ef-123456789012</code> </p> <p>If this is included, it filters the results to only the scrapers that match the filter.</p>
    # @option params [String] :next_token
    #   <p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>
    # @option params [Integer] :max_results
    #   <p>Optional) The maximum number of scrapers to return in one <code>ListScrapers</code> operation. The range is 1-1000.</p> <p>If you omit this parameter, the default of 100 is used.</p>
    # @example ListScrapers, with a max result of 2, using a pagination token from a previous call to ListScrapers
    #   # Example operation for list_scrapers
    #   params = {
    #     max_results: 2,
    #     next_token: "previouslyGeneratedToken"
    #   }
    #   options = {}
    #   response = client.list_scrapers(params, options)
    #   response.to_h #=>
    #   {
    #     scrapers: [
    #       {
    #         alias: "alias1",
    #         scraper_id: "scraper-123",
    #         arn: "arn:aws:aps:us-west-2:123456789012:scraper/scraper-123",
    #         role_arn: "arn:aws:iam::123456789012:role/exampleRole",
    #         status: {
    #           status_code: "ACTIVE"
    #         },
    #         created_at: Time.parse("2023-01-01T00:00:00Z"),
    #         last_modified_at: Time.parse("2020-01-02T00:00:00Z"),
    #         tags: {
    #           "exampleTag" => "exampleValue"
    #         },
    #         source: {
    #     "eksConfiguration" => {
    #       "clusterArn" => arn:aws:eks:us-west-2:123456789012:cluster/example1,
    #       "securityGroupIds" => [sg-abc123],
    #       "subnetIds" => [subnet-abc123]
    #     }
    #   },
    #         destination: {
    #     "ampConfiguration" => {
    #       "workspaceArn" => arn:aws:aps:us-west-2:123456789012:workspace/ws-ogh2u499-ce12-hg89-v6c7-123412341234
    #     }
    #   }
    #       },
    #       {
    #         alias: "alias2",
    #         scraper_id: "scraper-456",
    #         arn: "arn:aws:aps:us-west-2:123456789012:scraper/scraper-456",
    #         role_arn: "arn:aws:iam::123456789012:role/exampleRole",
    #         status: {
    #           status_code: "CREATING"
    #         },
    #         created_at: Time.parse("2023-01-01T00:00:00Z"),
    #         last_modified_at: Time.parse("2020-01-02T00:00:00Z"),
    #         tags: {
    #           "exampleTag" => "exampleValue"
    #         },
    #         source: {
    #     "eksConfiguration" => {
    #       "clusterArn" => arn:aws:eks:us-west-2:123456789012:cluster/example2,
    #       "securityGroupIds" => [sg-abc456],
    #       "subnetIds" => [subnet-abc456]
    #     }
    #   },
    #         destination: {
    #     "ampConfiguration" => {
    #       "workspaceArn" => arn:aws:aps:us-west-2:123456789012:workspace/ws-ogh2u499-ce12-hg89-v6c7-123412341234
    #     }
    #   }
    #       }
    #     ]
    #   }
    # @example ListScrapers, with filters
    #   # Example operation for list_scrapers
    #   params = {
    #     filters: {
    #       "status" => [
    #         "ACTIVE"
    #       ],
    #       "sourceArn" => [
    #         "arn:aws:eks:us-west-2:123456789012:cluster/example1"
    #       ],
    #       "alias" => [
    #         "alias1"
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.list_scrapers(params, options)
    #   response.to_h #=>
    #   {
    #     scrapers: [
    #       {
    #         alias: "alias1",
    #         scraper_id: "scraper-123",
    #         arn: "arn:aws:aps:us-west-2:123456789012:scraper/scraper-123",
    #         role_arn: "arn:aws:iam::123456789012:role/exampleRole",
    #         status: {
    #           status_code: "ACTIVE"
    #         },
    #         created_at: Time.parse("2023-01-01T00:00:00Z"),
    #         last_modified_at: Time.parse("2020-01-02T00:00:00Z"),
    #         tags: {
    #           "exampleTag" => "exampleValue"
    #         },
    #         source: {
    #     "eksConfiguration" => {
    #       "clusterArn" => arn:aws:eks:us-west-2:123456789012:cluster/example1,
    #       "securityGroupIds" => [sg-abc123],
    #       "subnetIds" => [subnet-abc123]
    #     }
    #   },
    #         destination: {
    #     "ampConfiguration" => {
    #       "workspaceArn" => arn:aws:aps:us-west-2:123456789012:workspace/ws-ogh2u499-ce12-hg89-v6c7-123412341234
    #     }
    #   }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       "FilterKey" => ["FilterValue"]
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_scrapers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scrapers: [ # required
    #       {
    #         alias: "ScraperAlias",
    #         scraper_id: "ScraperId", # required
    #         arn: "ScraperArn", # required
    #         role_arn: "IamRoleArn", # required
    #         status: { # required
    #           status_code: "ScraperStatusCode", # required
    #         },
    #         created_at: Time.now, # required
    #         last_modified_at: Time.now, # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         status_reason: "StatusReason",
    #         source: { # required
    #           # One of:
    #           eks_configuration: {
    #             cluster_arn: "ClusterArn", # required
    #             security_group_ids: ["SecurityGroupId"],
    #             subnet_ids: ["SubnetId"], # required
    #           }
    #         },
    #         destination: { # required
    #           # One of:
    #           amp_configuration: {
    #             workspace_arn: "WorkspaceArn", # required
    #           }
    #         },
    #         role_configuration: {
    #           source_role_arn: "IamRoleArn",
    #           target_role_arn: "IamRoleArn"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListScrapersResponse]
    def list_scrapers(params = {}, options = {})
      request = build_request(:list_scrapers, params)
      request.send_request(options)
    end

    # <p>The <code>ListTagsForResource</code> operation returns the tags that are associated with an Amazon Managed Service for Prometheus resource. Currently, the only resources that can be tagged are scrapers, workspaces, and rule groups namespaces. </p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to list tages for. Must be a workspace, scraper, or rule groups namespace resource.</p>
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists all of the Amazon Managed Service for Prometheus workspaces in your account. This includes workspaces being created or deleted. </p>
    # @param [Hash, Types::ListWorkspacesInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. You receive this token from a previous call, and use it to get the next page of results. The other parameters must be the same as the initial call.</p> <p>For example, if your initial request has <code>maxResults</code> of 10, and there are 12 workspaces to return, then your initial request will return 10 and a <code>nextToken</code>. Using the next token in a subsequent call will return the remaining 2 workspaces.</p>
    # @option params [String] :alias
    #   <p>If this is included, it filters the results to only the workspaces with names that start with the value that you specify here.</p> <p>Amazon Managed Service for Prometheus will automatically strip any blank spaces from the beginning and end of the alias that you specify.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of workspaces to return per request. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     alias: "WorkspaceAlias",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspaces: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #         alias: "WorkspaceAlias",
    #         arn: "WorkspaceArn", # required
    #         status: { # required
    #           status_code: "WorkspaceStatusCode", # required
    #         },
    #         created_at: Time.now, # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorkspacesOutput]
    def list_workspaces(params = {}, options = {})
      request = build_request(:list_workspaces, params)
      request.send_request(options)
    end

    # <p>Updates an existing alert manager definition in a workspace. If the workspace does not already have an alert manager definition, don't use this operation to create it. Instead, use <code>CreateAlertManagerDefinition</code>.</p>
    # @param [Hash, Types::PutAlertManagerDefinitionInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to update the alert manager definition in.</p>
    # @option params [String] :data
    #   <p>The alert manager definition to use. A base64-encoded version of the YAML alert manager definition file.</p> <p>For details about the alert manager definition, see <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html">AlertManagedDefinitionData</a>.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     data: "data", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.put_alert_manager_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       status_code: "AlertManagerDefinitionStatusCode", # required
    #       status_reason: "String"
    #     }
    #   }
    # @return [Types::PutAlertManagerDefinitionOutput]
    def put_alert_manager_definition(params = {}, options = {})
      request = build_request(:put_alert_manager_definition, params)
      request.send_request(options)
    end

    # <p>Creates or updates a resource-based policy for an Amazon Managed Service for Prometheus workspace. Use resource-based policies to grant permissions to other AWS accounts or services to access your workspace.</p> <p>Only Prometheus-compatible APIs can be used for workspace sharing. You can add non-Prometheus-compatible APIs to the policy, but they will be ignored. For more information, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-APIReference-Prometheus-Compatible-Apis.html">Prometheus-compatible APIs</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p> <p>If your workspace uses customer-managed KMS keys for encryption, you must grant the principals in your resource-based policy access to those KMS keys. You can do this by creating KMS grants. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateGrant.html">CreateGrant</a> in the <i>AWS Key Management Service API Reference</i> and <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html">Encryption at rest</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p> <p>For more information about working with IAM, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/security_iam_service-with-iam.html">Using Amazon Managed Service for Prometheus with IAM</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to attach the resource-based policy to.</p>
    # @option params [String] :policy_document
    #   <p>The JSON policy document to use as the resource-based policy. This policy defines the permissions that other AWS accounts or services have to access your workspace.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is safe to retry (idempotent).</p>
    # @option params [String] :revision_id
    #   <p>The revision ID of the policy to update. Use this parameter to ensure that you are updating the correct version of the policy. If you don't specify a revision ID, the policy is updated regardless of its current revision.</p> <p>For the first <b>PUT</b> request on a workspace that doesn't have an existing resource policy, you can specify <code>NO_POLICY</code> as the revision ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     policy_document: "String", # required
    #     client_token: "IdempotencyToken",
    #     revision_id: "String"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_status: "WorkspacePolicyStatusCode", # required
    #     revision_id: "String", # required
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Updates an existing rule groups namespace within a workspace. A rule groups namespace is associated with exactly one rules file. A workspace can have multiple rule groups namespaces.</p> <p>Use this operation only to update existing rule groups namespaces. To create a new rule groups namespace, use <code>CreateRuleGroupsNamespace</code>.</p> <p>You can't use this operation to add tags to an existing rule groups namespace. Instead, use <code>TagResource</code>.</p>
    # @param [Hash, Types::PutRuleGroupsNamespaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace where you are updating the rule groups namespace.</p>
    # @option params [String] :name
    #   <p>The name of the rule groups namespace that you are updating.</p>
    # @option params [String] :data
    #   <p>The new rules file to use in the namespace. A base64-encoded version of the YAML rule groups file.</p> <p>For details about the rule groups namespace structure, see <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html">RuleGroupsNamespaceData</a>.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     name: "RuleGroupsNamespaceName", # required
    #     data: "data", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.put_rule_groups_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RuleGroupsNamespaceName", # required
    #     arn: "RuleGroupsNamespaceArn", # required
    #     status: { # required
    #       status_code: "RuleGroupsNamespaceStatusCode", # required
    #       status_reason: "String"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::PutRuleGroupsNamespaceOutput]
    def put_rule_groups_namespace(params = {}, options = {})
      request = build_request(:put_rule_groups_namespace, params)
      request.send_request(options)
    end

    # <p>The <code>TagResource</code> operation associates tags with an Amazon Managed Service for Prometheus resource. The only resources that can be tagged are rule groups namespaces, scrapers, and workspaces.</p> <p>If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. To remove a tag, use <code>UntagResource</code>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to apply tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tag keys and values to associate with the resource.</p> <p>Keys must not begin with <code>aws:</code>.</p>
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
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from an Amazon Managed Service for Prometheus resource. The only resources that can be tagged are rule groups namespaces, scrapers, and workspaces. </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource from which to remove a tag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove.</p>
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
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the log group ARN or the workspace ID of the current rules and alerting logging configuration.</p> <note> <p>These logging configurations are only for rules and alerting logs.</p> </note>
    # @param [Hash, Types::UpdateLoggingConfigurationInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to update the logging configuration for.</p>
    # @option params [String] :log_group_arn
    #   <p>The ARN of the CloudWatch log group to which the vended log data will be published.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     log_group_arn: "LogGroupArn", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       status_code: "LoggingConfigurationStatusCode", # required
    #       status_reason: "String"
    #     }
    #   }
    # @return [Types::UpdateLoggingConfigurationOutput]
    def update_logging_configuration(params = {}, options = {})
      request = build_request(:update_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the query logging configuration for the specified workspace.</p>
    # @param [Hash, Types::UpdateQueryLoggingConfigurationRequest] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace for which to update the query logging configuration.</p>
    # @option params [Array<Types::LoggingDestination>] :destinations
    #   <p>The destinations where query logs will be sent. Only CloudWatch Logs destination is supported. The list must contain exactly one element.</p>
    # @option params [String] :client_token
    #   <p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     destinations: [ # required
    #       {
    #         cloud_watch_logs: { # required
    #           log_group_arn: "LogGroupArn", # required
    #         },
    #         filters: { # required
    #           qsp_threshold: 1, # required
    #         }
    #       }
    #     ],
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_query_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       status_code: "QueryLoggingConfigurationStatusCode", # required
    #       status_reason: "String"
    #     }
    #   }
    # @return [Types::UpdateQueryLoggingConfigurationResponse]
    def update_query_logging_configuration(params = {}, options = {})
      request = build_request(:update_query_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an existing scraper.</p> <p>You can't use this function to update the source from which the scraper is collecting metrics. To change the source, delete the scraper and create a new one.</p>
    # @param [Hash, Types::UpdateScraperRequest] params
    # @option params [String] :scraper_id
    #   <p>The ID of the scraper to update.</p>
    # @option params [String] :alias
    #   <p>The new alias of the scraper.</p>
    # @option params [Types::ScrapeConfiguration] :scrape_configuration
    #   <p>Contains the base-64 encoded YAML configuration for the scraper.</p> <note> <p>For more information about configuring a scraper, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html">Using an Amazon Web Services managed collector</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p> </note>
    # @option params [Types::Destination] :destination
    #   <p>The new Amazon Managed Service for Prometheus workspace to send metrics to.</p>
    # @option params [Types::RoleConfiguration] :role_configuration
    #   <p>Use this structure to enable cross-account access, so that you can use a target account to access Prometheus metrics from source accounts.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example UpdateScraper with all optional parameters
    #   # Example operation for update_scraper
    #   params = {
    #     scraper_id: "scraper-123",
    #     alias: "alias-update",
    #     scrape_configuration: {
    #     "configurationBlob" => blob-update
    #   },
    #     destination: {
    #     "ampConfiguration" => {
    #       "workspaceArn" => arn:aws:aps:us-west-2:123456789012:workspace/ws-ogh2u499-ce12-hg89-v6c7-123412341234-update
    #     }
    #   },
    #     client_token: "token"
    #   }
    #   options = {}
    #   response = client.update_scraper(params, options)
    #   response.to_h #=>
    #   {
    #     scraper_id: "scraper-123",
    #     arn: "arn:aws:aps:us-west-2:123456789012:scraper/scraper-123",
    #     status: {
    #       status_code: "UPDATING"
    #     },
    #     tags: {
    #       "exampleTag" => "exampleValue"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scraper_id: "ScraperId", # required
    #     alias: "ScraperAlias",
    #     scrape_configuration: {
    #       # One of:
    #       configuration_blob: "data"
    #     },
    #     destination: {
    #       # One of:
    #       amp_configuration: {
    #         workspace_arn: "WorkspaceArn", # required
    #       }
    #     },
    #     role_configuration: {
    #       source_role_arn: "IamRoleArn",
    #       target_role_arn: "IamRoleArn"
    #     },
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_scraper(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scraper_id: "ScraperId", # required
    #     arn: "ScraperArn", # required
    #     status: { # required
    #       status_code: "ScraperStatusCode", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateScraperResponse]
    def update_scraper(params = {}, options = {})
      request = build_request(:update_scraper, params)
      request.send_request(options)
    end

    # <p>Updates the logging configuration for a Amazon Managed Service for Prometheus scraper.</p>
    # @param [Hash, Types::UpdateScraperLoggingConfigurationRequest] params
    # @option params [String] :scraper_id
    #   <p>The ID of the scraper whose logging configuration will be updated.</p>
    # @option params [Types::ScraperLoggingDestination] :logging_destination
    #   <p>The destination where scraper logs will be sent.</p>
    # @option params [Array<Types::ScraperComponent>] :scraper_components
    #   <p>The list of scraper components to configure for logging.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scraper_id: "ScraperId", # required
    #     logging_destination: { # required
    #       # One of:
    #       cloud_watch_logs: {
    #         log_group_arn: "LogGroupArn", # required
    #       }
    #     },
    #     scraper_components: [
    #       {
    #         type: "ScraperComponentType", # required
    #         config: {
    #           options: {
    #             "String" => "String"
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_scraper_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       status_code: "ScraperLoggingConfigurationStatusCode", # required
    #       status_reason: "String"
    #     }
    #   }
    # @return [Types::UpdateScraperLoggingConfigurationResponse]
    def update_scraper_logging_configuration(params = {}, options = {})
      request = build_request(:update_scraper_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the alias of an existing workspace. </p>
    # @param [Hash, Types::UpdateWorkspaceAliasInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to update.</p>
    # @option params [String] :alias
    #   <p>The new alias for the workspace. It does not need to be unique.</p> <p>Amazon Managed Service for Prometheus will automatically strip any blank spaces from the beginning and end of the alias that you specify.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     alias: "WorkspaceAlias",
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_workspace_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_workspace_alias(params = {}, options = {})
      request = build_request(:update_workspace_alias, params)
      request.send_request(options)
    end

    # <p>Use this operation to create or update the label sets, label set limits, and retention period of a workspace.</p> <p>You must specify at least one of <code>limitsPerLabelSet</code> or <code>retentionPeriodInDays</code> for the request to be valid.</p>
    # @param [Hash, Types::UpdateWorkspaceConfigurationRequest] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that you want to update. To find the IDs of your workspaces, use the <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/API_ListWorkspaces.htm">ListWorkspaces</a> operation.</p>
    # @option params [String] :client_token
    #   <p>You can include a token in your operation to make it an idempotent opeartion. </p>
    # @option params [Array<Types::LimitsPerLabelSet>] :limits_per_label_set
    #   <p>This is an array of structures, where each structure defines a label set for the workspace, and defines the active time series limit for each of those label sets. Each label name in a label set must be unique.</p>
    # @option params [Integer] :retention_period_in_days
    #   <p>Specifies how many days that metrics will be retained in the workspace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     client_token: "IdempotencyToken",
    #     limits_per_label_set: [
    #       {
    #         limits: { # required
    #           max_series: 1
    #         },
    #         label_set: { # required
    #           "LabelName" => "LabelValue"
    #         }
    #       }
    #     ],
    #     retention_period_in_days: 1
    #   }
    #   options = {}
    #   response = client.update_workspace_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       status_code: "WorkspaceConfigurationStatusCode", # required
    #       status_reason: "String"
    #     }
    #   }
    # @return [Types::UpdateWorkspaceConfigurationResponse]
    def update_workspace_configuration(params = {}, options = {})
      request = build_request(:update_workspace_configuration, params)
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
      context[:gem_name] = 'aws-sdk-amp'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        scraper_active: Waiters::ScraperActive,
        scraper_deleted: Waiters::ScraperDeleted,
        workspace_active: Waiters::WorkspaceActive,
        workspace_deleted: Waiters::WorkspaceDeleted
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
