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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::ObservabilityAdmin
  # An API client for Aws::ObservabilityAdmin.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ObservabilityAdmin

    add_plugin(::Aws::ObservabilityAdmin::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ObservabilityAdmin::EndpointProvider)
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

    # <p>Creates a centralization rule that applies across an Amazon Web Services Organization. This operation can only be called by the organization's management account or a delegated administrator account.</p>
    # @param [Hash, Types::CreateCentralizationRuleForOrganizationInput] params
    # @option params [String] :rule_name
    #   <p>A unique name for the organization-wide centralization rule being created.</p>
    # @option params [Types::CentralizationRule] :rule
    #   <p>The configuration details for the organization-wide centralization rule, including the source configuration and the destination configuration to centralize telemetry data across the organization.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to associate with the organization telemetry rule resource for categorization and management purposes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #     rule: { # required
    #       source: { # required
    #         regions: ["Region"], # required
    #         scope: "SourceFilterString",
    #         source_logs_configuration: {
    #           log_group_selection_criteria: "LogsFilterString", # required
    #           encrypted_log_group_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"], # required
    #         }
    #       },
    #       destination: { # required
    #         region: "Region", # required
    #         account: "AccountIdentifier",
    #         destination_logs_configuration: {
    #           logs_encryption_configuration: {
    #             encryption_strategy: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_OWNED"], # required
    #             kms_key_arn: "ResourceArn",
    #             encryption_conflict_resolution_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"]
    #           },
    #           backup_configuration: {
    #             region: "Region", # required
    #             kms_key_arn: "ResourceArn"
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_centralization_rule_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "ResourceArn"
    #   }
    # @return [Types::CreateCentralizationRuleForOrganizationOutput]
    def create_centralization_rule_for_organization(params = {}, options = {})
      request = build_request(:create_centralization_rule_for_organization, params)
      request.send_request(options)
    end

    # <p>
    #       Creates a telemetry rule that defines how telemetry should be configured for Amazon Web Services resources in your account. The rule specifies which resources should have telemetry enabled and how that telemetry data should be collected based on resource type, telemetry type, and selection criteria.
    #     </p>
    # @param [Hash, Types::CreateTelemetryRuleInput] params
    # @option params [String] :rule_name
    #   <p>
    #         A unique name for the telemetry rule being created.
    #       </p>
    # @option params [Types::TelemetryRule] :rule
    #   <p>
    #         The configuration details for the telemetry rule, including the resource type, telemetry type, destination configuration, and selection criteria for which resources the rule applies to.
    #       </p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         The key-value pairs to associate with the telemetry rule resource for categorization and management purposes.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #     rule: { # required
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         }
    #       },
    #       scope: "String",
    #       selection_criteria: "String"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_telemetry_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "ResourceArn"
    #   }
    # @return [Types::CreateTelemetryRuleOutput]
    def create_telemetry_rule(params = {}, options = {})
      request = build_request(:create_telemetry_rule, params)
      request.send_request(options)
    end

    # <p>
    #       Creates a telemetry rule that applies across an Amazon Web Services Organization. This operation can only be called by the organization's management account or a delegated administrator account.
    #     </p>
    # @param [Hash, Types::CreateTelemetryRuleForOrganizationInput] params
    # @option params [String] :rule_name
    #   <p>
    #         A unique name for the organization-wide telemetry rule being created.
    #       </p>
    # @option params [Types::TelemetryRule] :rule
    #   <p>
    #         The configuration details for the organization-wide telemetry rule, including the resource type, telemetry type, destination configuration, and selection criteria for which resources the rule applies to across the organization.
    #       </p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         The key-value pairs to associate with the organization telemetry rule resource for categorization and management purposes.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #     rule: { # required
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         }
    #       },
    #       scope: "String",
    #       selection_criteria: "String"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_telemetry_rule_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "ResourceArn"
    #   }
    # @return [Types::CreateTelemetryRuleForOrganizationOutput]
    def create_telemetry_rule_for_organization(params = {}, options = {})
      request = build_request(:create_telemetry_rule_for_organization, params)
      request.send_request(options)
    end

    # <p>Deletes an organization-wide centralization rule. This operation can only be called by the organization's management account or a delegated administrator account.</p>
    # @param [Hash, Types::DeleteCentralizationRuleForOrganizationInput] params
    # @option params [String] :rule_identifier
    #   <p>The identifier (name or ARN) of the organization centralization rule to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_centralization_rule_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_centralization_rule_for_organization(params = {}, options = {})
      request = build_request(:delete_centralization_rule_for_organization, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes a telemetry rule from your account. Any telemetry configurations previously created by the rule will remain but no new resources will be configured by this rule.
    #     </p>
    # @param [Hash, Types::DeleteTelemetryRuleInput] params
    # @option params [String] :rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the telemetry rule to delete.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_telemetry_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_telemetry_rule(params = {}, options = {})
      request = build_request(:delete_telemetry_rule, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes an organization-wide telemetry rule. This operation can only be called by the organization's management account or a delegated administrator account.
    #     </p>
    # @param [Hash, Types::DeleteTelemetryRuleForOrganizationInput] params
    # @option params [String] :rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the organization telemetry rule to delete.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_telemetry_rule_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_telemetry_rule_for_organization(params = {}, options = {})
      request = build_request(:delete_telemetry_rule_for_organization, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a specific organization centralization rule. This operation can only be called by the organization's management account or a delegated administrator account.</p>
    # @param [Hash, Types::GetCentralizationRuleForOrganizationInput] params
    # @option params [String] :rule_identifier
    #   <p>The identifier (name or ARN) of the organization centralization rule to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_centralization_rule_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_name: "RuleName",
    #     rule_arn: "ResourceArn",
    #     creator_account_id: "String",
    #     created_time_stamp: 1,
    #     created_region: "Region",
    #     last_update_time_stamp: 1,
    #     rule_health: "Healthy" # One of: ["Healthy", "Unhealthy", "Provisioning"],
    #     failure_reason: "TRUSTED_ACCESS_NOT_ENABLED" # One of: ["TRUSTED_ACCESS_NOT_ENABLED", "DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION", "INTERNAL_SERVER_ERROR"],
    #     centralization_rule: {
    #       source: { # required
    #         regions: ["Region"], # required
    #         scope: "SourceFilterString",
    #         source_logs_configuration: {
    #           log_group_selection_criteria: "LogsFilterString", # required
    #           encrypted_log_group_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"], # required
    #         }
    #       },
    #       destination: { # required
    #         region: "Region", # required
    #         account: "AccountIdentifier",
    #         destination_logs_configuration: {
    #           logs_encryption_configuration: {
    #             encryption_strategy: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_OWNED"], # required
    #             kms_key_arn: "ResourceArn",
    #             encryption_conflict_resolution_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"]
    #           },
    #           backup_configuration: {
    #             region: "Region", # required
    #             kms_key_arn: "ResourceArn"
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetCentralizationRuleForOrganizationOutput]
    def get_centralization_rule_for_organization(params = {}, options = {})
      request = build_request(:get_centralization_rule_for_organization, params)
      request.send_request(options)
    end

    # <p>
    #       Returns the current onboarding status of the telemetry config feature, including the status of the feature and reason the feature failed to start or stop.
    #     </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_telemetry_evaluation_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "STARTING", "FAILED_START", "RUNNING", "STOPPING", "FAILED_STOP", "STOPPED"],
    #     failure_reason: "FailureReason"
    #   }
    # @return [Types::GetTelemetryEvaluationStatusOutput]
    def get_telemetry_evaluation_status(params = {}, options = {})
      request = build_request(:get_telemetry_evaluation_status, params)
      request.send_request(options)
    end

    # <p>
    #       This returns the onboarding status of the telemetry configuration feature for the organization. It can only be called by a Management Account of an Amazon Web Services Organization or an assigned Delegated Admin Account of Amazon CloudWatch telemetry config.
    #     </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_telemetry_evaluation_status_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "STARTING", "FAILED_START", "RUNNING", "STOPPING", "FAILED_STOP", "STOPPED"],
    #     failure_reason: "FailureReason"
    #   }
    # @return [Types::GetTelemetryEvaluationStatusForOrganizationOutput]
    def get_telemetry_evaluation_status_for_organization(params = {}, options = {})
      request = build_request(:get_telemetry_evaluation_status_for_organization, params)
      request.send_request(options)
    end

    # <p>
    #       Retrieves the details of a specific telemetry rule in your account.
    #     </p>
    # @param [Hash, Types::GetTelemetryRuleInput] params
    # @option params [String] :rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the telemetry rule to retrieve.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_telemetry_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_name: "RuleName",
    #     rule_arn: "ResourceArn",
    #     created_time_stamp: 1,
    #     last_update_time_stamp: 1,
    #     telemetry_rule: {
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         }
    #       },
    #       scope: "String",
    #       selection_criteria: "String"
    #     }
    #   }
    # @return [Types::GetTelemetryRuleOutput]
    def get_telemetry_rule(params = {}, options = {})
      request = build_request(:get_telemetry_rule, params)
      request.send_request(options)
    end

    # <p>
    #       Retrieves the details of a specific organization telemetry rule. This operation can only be called by the organization's management account or a delegated administrator account.
    #     </p>
    # @param [Hash, Types::GetTelemetryRuleForOrganizationInput] params
    # @option params [String] :rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the organization telemetry rule to retrieve.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_telemetry_rule_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_name: "RuleName",
    #     rule_arn: "ResourceArn",
    #     created_time_stamp: 1,
    #     last_update_time_stamp: 1,
    #     telemetry_rule: {
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         }
    #       },
    #       scope: "String",
    #       selection_criteria: "String"
    #     }
    #   }
    # @return [Types::GetTelemetryRuleForOrganizationOutput]
    def get_telemetry_rule_for_organization(params = {}, options = {})
      request = build_request(:get_telemetry_rule_for_organization, params)
      request.send_request(options)
    end

    # <p>Lists all centralization rules in your organization. This operation can only be called by the organization's management account or a delegated administrator account.</p>
    # @param [Hash, Types::ListCentralizationRulesForOrganizationInput] params
    # @option params [String] :rule_name_prefix
    #   <p>A string to filter organization centralization rules whose names begin with the specified prefix.</p>
    # @option params [Boolean] :all_regions
    #   <p>A flag determining whether to return organization centralization rules from all regions or only the current region.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of organization centralization rules to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. A previous call generates this token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name_prefix: "String",
    #     all_regions: false,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_centralization_rules_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     centralization_rule_summaries: [
    #       {
    #         rule_name: "RuleName",
    #         rule_arn: "ResourceArn",
    #         creator_account_id: "String",
    #         created_time_stamp: 1,
    #         created_region: "Region",
    #         last_update_time_stamp: 1,
    #         rule_health: "Healthy" # One of: ["Healthy", "Unhealthy", "Provisioning"],
    #         failure_reason: "TRUSTED_ACCESS_NOT_ENABLED" # One of: ["TRUSTED_ACCESS_NOT_ENABLED", "DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION", "INTERNAL_SERVER_ERROR"],
    #         destination_account_id: "String",
    #         destination_region: "Region"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCentralizationRulesForOrganizationOutput]
    def list_centralization_rules_for_organization(params = {}, options = {})
      request = build_request(:list_centralization_rules_for_organization, params)
      request.send_request(options)
    end

    # <p>
    #       Returns a list of telemetry configurations for Amazon Web Services resources supported by telemetry config. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html">Auditing CloudWatch telemetry configurations</a>.
    #     </p>
    # @param [Hash, Types::ListResourceTelemetryInput] params
    # @option params [String] :resource_identifier_prefix
    #   <p>
    #         A string used to filter resources which have a <code>ResourceIdentifier</code> starting with the <code>ResourceIdentifierPrefix</code>.
    #       </p>
    # @option params [Array<String>] :resource_types
    #   <p>
    #         A list of resource types used to filter resources supported by telemetry config. If this parameter is provided, the resources will be returned in the same order used in the request.
    #       </p>
    # @option params [Hash<String, String>] :telemetry_configuration_state
    #   <p>
    #         A key-value pair to filter resources based on the telemetry type and the state of the telemetry configuration. The key is the telemetry type and the value is the state.
    #       </p>
    # @option params [Hash<String, String>] :resource_tags
    #   <p>
    #         A key-value pair to filter resources based on tags associated with the resource. For more information about tags, see <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html">What are tags?</a>
    #            </p>
    # @option params [Integer] :max_results
    #   <p>
    #         A number field used to limit the number of results within the returned list.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of items to return. A previous call generates this token.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier_prefix: "ResourceIdentifierPrefix",
    #     resource_types: ["AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"]],
    #     telemetry_configuration_state: {
    #       "TelemetryType" => "Enabled" # One of: ["Enabled", "Disabled", "NotApplicable"]
    #     },
    #     resource_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resource_telemetry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     telemetry_configurations: [
    #       {
    #         account_identifier: "AccountIdentifier",
    #         telemetry_configuration_state: {
    #           "TelemetryType" => "Enabled" # One of: ["Enabled", "Disabled", "NotApplicable"]
    #         },
    #         resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"],
    #         resource_identifier: "ResourceIdentifier",
    #         resource_tags: {
    #           "String" => "String"
    #         },
    #         last_update_time_stamp: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceTelemetryOutput]
    def list_resource_telemetry(params = {}, options = {})
      request = build_request(:list_resource_telemetry, params)
      request.send_request(options)
    end

    # <p>
    #       Returns a list of telemetry configurations for Amazon Web Services resources supported by telemetry config in the organization.
    #     </p>
    # @param [Hash, Types::ListResourceTelemetryForOrganizationInput] params
    # @option params [Array<String>] :account_identifiers
    #   <p>
    #         A list of Amazon Web Services accounts used to filter the resources to those associated with the specified accounts.
    #       </p>
    # @option params [String] :resource_identifier_prefix
    #   <p>
    #         A string used to filter resources in the organization which have a <code>ResourceIdentifier</code> starting with the <code>ResourceIdentifierPrefix</code>.
    #       </p>
    # @option params [Array<String>] :resource_types
    #   <p>
    #       A list of resource types used to filter resources in the organization. If this parameter is provided, the resources will be returned in the same order used in the request.
    #       </p>
    # @option params [Hash<String, String>] :telemetry_configuration_state
    #   <p>
    #         A key-value pair to filter resources in the organization based on the telemetry type and the state of the telemetry configuration. The key is the telemetry type and the value is the state.
    #       </p>
    # @option params [Hash<String, String>] :resource_tags
    #   <p>
    #         A key-value pair to filter resources in the organization based on tags associated with the resource. Fore more information about tags, see <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html">What are tags?</a>
    #            </p>
    # @option params [Integer] :max_results
    #   <p>
    #         A number field used to limit the number of results within the returned list.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of items to return. A previous call provides this token.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_identifiers: ["AccountIdentifier"],
    #     resource_identifier_prefix: "ResourceIdentifierPrefix",
    #     resource_types: ["AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"]],
    #     telemetry_configuration_state: {
    #       "TelemetryType" => "Enabled" # One of: ["Enabled", "Disabled", "NotApplicable"]
    #     },
    #     resource_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resource_telemetry_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     telemetry_configurations: [
    #       {
    #         account_identifier: "AccountIdentifier",
    #         telemetry_configuration_state: {
    #           "TelemetryType" => "Enabled" # One of: ["Enabled", "Disabled", "NotApplicable"]
    #         },
    #         resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"],
    #         resource_identifier: "ResourceIdentifier",
    #         resource_tags: {
    #           "String" => "String"
    #         },
    #         last_update_time_stamp: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceTelemetryForOrganizationOutput]
    def list_resource_telemetry_for_organization(params = {}, options = {})
      request = build_request(:list_resource_telemetry_for_organization, params)
      request.send_request(options)
    end

    # <p>
    #       Lists all tags attached to the specified telemetry rule resource.
    #     </p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the telemetry rule resource whose tags you want to list.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>
    #       Lists all telemetry rules in your account. You can filter the results by specifying a rule name prefix.
    #     </p>
    # @param [Hash, Types::ListTelemetryRulesInput] params
    # @option params [String] :rule_name_prefix
    #   <p>
    #         A string to filter telemetry rules whose names begin with the specified prefix.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of telemetry rules to return in a single call.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results. A previous call generates this token.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name_prefix: "String",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_telemetry_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     telemetry_rule_summaries: [
    #       {
    #         rule_name: "RuleName",
    #         rule_arn: "ResourceArn",
    #         created_time_stamp: 1,
    #         last_update_time_stamp: 1,
    #         resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"],
    #         telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTelemetryRulesOutput]
    def list_telemetry_rules(params = {}, options = {})
      request = build_request(:list_telemetry_rules, params)
      request.send_request(options)
    end

    # <p>
    #       Lists all telemetry rules in your organization. This operation can only be called by the organization's management account or a delegated administrator account.
    #     </p>
    # @param [Hash, Types::ListTelemetryRulesForOrganizationInput] params
    # @option params [String] :rule_name_prefix
    #   <p>
    #         A string to filter organization telemetry rules whose names begin with the specified prefix.
    #       </p>
    # @option params [Array<String>] :source_account_ids
    #   <p>
    #         The list of account IDs to filter organization telemetry rules by their source accounts.
    #       </p>
    # @option params [Array<String>] :source_organization_unit_ids
    #   <p>
    #         The list of organizational unit IDs to filter organization telemetry rules by their source organizational units.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of organization telemetry rules to return in a single call.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results. A previous call generates this token.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name_prefix: "String",
    #     source_account_ids: ["AccountIdentifier"],
    #     source_organization_unit_ids: ["OrganizationUnitIdentifier"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_telemetry_rules_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     telemetry_rule_summaries: [
    #       {
    #         rule_name: "RuleName",
    #         rule_arn: "ResourceArn",
    #         created_time_stamp: 1,
    #         last_update_time_stamp: 1,
    #         resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"],
    #         telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTelemetryRulesForOrganizationOutput]
    def list_telemetry_rules_for_organization(params = {}, options = {})
      request = build_request(:list_telemetry_rules_for_organization, params)
      request.send_request(options)
    end

    # <p>
    #       This action begins onboarding the caller Amazon Web Services account to the telemetry config feature.
    #     </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.start_telemetry_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_telemetry_evaluation(params = {}, options = {})
      request = build_request(:start_telemetry_evaluation, params)
      request.send_request(options)
    end

    # <p>
    #       This actions begins onboarding the organization and all member accounts to the telemetry config feature.
    #     </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.start_telemetry_evaluation_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_telemetry_evaluation_for_organization(params = {}, options = {})
      request = build_request(:start_telemetry_evaluation_for_organization, params)
      request.send_request(options)
    end

    # <p>
    #       This action begins offboarding the caller Amazon Web Services account from the telemetry config feature.
    #     </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.stop_telemetry_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_telemetry_evaluation(params = {}, options = {})
      request = build_request(:stop_telemetry_evaluation, params)
      request.send_request(options)
    end

    # <p>
    #       This action offboards the Organization of the caller Amazon Web Services account from the telemetry config feature.
    #     </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.stop_telemetry_evaluation_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_telemetry_evaluation_for_organization(params = {}, options = {})
      request = build_request(:stop_telemetry_evaluation_for_organization, params)
      request.send_request(options)
    end

    # <p>
    #       Adds or updates tags for a telemetry rule resource.
    #     </p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the telemetry rule resource to tag.
    #       </p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         The key-value pairs to add or update for the telemetry rule resource.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>
    #       Removes tags from a telemetry rule resource.
    #     </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the telemetry rule resource to remove tags from.
    #       </p>
    # @option params [Array<String>] :tag_keys
    #   <p>
    #         The list of tag keys to remove from the telemetry rule resource.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an existing centralization rule that applies across an Amazon Web Services Organization. This operation can only be called by the organization's management account or a delegated administrator account.</p>
    # @param [Hash, Types::UpdateCentralizationRuleForOrganizationInput] params
    # @option params [String] :rule_identifier
    #   <p>The identifier (name or ARN) of the organization centralization rule to update.</p>
    # @option params [Types::CentralizationRule] :rule
    #   <p>The configuration details for the organization-wide centralization rule, including the source configuration and the destination configuration to centralize telemetry data across the organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #     rule: { # required
    #       source: { # required
    #         regions: ["Region"], # required
    #         scope: "SourceFilterString",
    #         source_logs_configuration: {
    #           log_group_selection_criteria: "LogsFilterString", # required
    #           encrypted_log_group_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"], # required
    #         }
    #       },
    #       destination: { # required
    #         region: "Region", # required
    #         account: "AccountIdentifier",
    #         destination_logs_configuration: {
    #           logs_encryption_configuration: {
    #             encryption_strategy: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_OWNED"], # required
    #             kms_key_arn: "ResourceArn",
    #             encryption_conflict_resolution_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"]
    #           },
    #           backup_configuration: {
    #             region: "Region", # required
    #             kms_key_arn: "ResourceArn"
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_centralization_rule_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "ResourceArn"
    #   }
    # @return [Types::UpdateCentralizationRuleForOrganizationOutput]
    def update_centralization_rule_for_organization(params = {}, options = {})
      request = build_request(:update_centralization_rule_for_organization, params)
      request.send_request(options)
    end

    # <p>
    #       Updates an existing telemetry rule in your account.
    #     </p>
    # @param [Hash, Types::UpdateTelemetryRuleInput] params
    # @option params [String] :rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the telemetry rule to update.
    #       </p>
    # @option params [Types::TelemetryRule] :rule
    #   <p>
    #         The new configuration details for the telemetry rule.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #     rule: { # required
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         }
    #       },
    #       scope: "String",
    #       selection_criteria: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.update_telemetry_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "ResourceArn"
    #   }
    # @return [Types::UpdateTelemetryRuleOutput]
    def update_telemetry_rule(params = {}, options = {})
      request = build_request(:update_telemetry_rule, params)
      request.send_request(options)
    end

    # <p>
    #       Updates an existing telemetry rule that applies across an Amazon Web Services Organization. This operation can only be called by the organization's management account or a delegated administrator account.
    #     </p>
    # @param [Hash, Types::UpdateTelemetryRuleForOrganizationInput] params
    # @option params [String] :rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the organization telemetry rule to update.
    #       </p>
    # @option params [Types::TelemetryRule] :rule
    #   <p>
    #         The new configuration details for the organization telemetry rule, including resource type, telemetry type, and destination configuration.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #     rule: { # required
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         }
    #       },
    #       scope: "String",
    #       selection_criteria: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.update_telemetry_rule_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "ResourceArn"
    #   }
    # @return [Types::UpdateTelemetryRuleForOrganizationOutput]
    def update_telemetry_rule_for_organization(params = {}, options = {})
      request = build_request(:update_telemetry_rule_for_organization, params)
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
      context[:gem_name] = 'aws-sdk-observabilityadmin'
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
