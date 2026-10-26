# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:observabilityadmin)

module Aws::ObservabilityAdmin
  # An API client for Aws::ObservabilityAdmin.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ObservabilityAdmin
    @identifier = :observabilityadmin

    add_plugin(::Aws::ObservabilityAdmin::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ObservabilityAdmin::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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
    #           log_group_selection_criteria: "LogsFilterString",
    #           data_source_selection_criteria: "DataSourceFilterString",
    #           encrypted_log_group_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"], # required
    #         },
    #         source_metrics_configuration: {
    #           metrics_selection_criteria: "MetricsFilterString"
    #         },
    #         source_context_graph_configuration: {
    #         }
    #       },
    #       destination: { # required
    #         region: "Region", # required
    #         account: "AccountIdentifier",
    #         destination_logs_configuration: {
    #           logs_encryption_configuration: {
    #             encryption_strategy: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_OWNED"], # required
    #             kms_key_arn: "ResourceArn",
    #             encryption_conflict_resolution_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"],
    #             encryption_scope: "ENCRYPTED_SOURCE_ONLY" # One of: ["ENCRYPTED_SOURCE_ONLY", "NEW_DESTINATION_LOG_GROUPS"]
    #           },
    #           backup_configuration: {
    #             region: "Region", # required
    #             kms_key_arn: "ResourceArn"
    #           },
    #           log_group_name_configuration: {
    #             log_group_name_pattern: "LogGroupNamePattern", # required
    #           },
    #           tag_propagation_configuration: {
    #             destination_role_arn: "IamRoleArn", # required
    #             tag_conflict_resolution_strategy: "IN_SYNC" # One of: ["IN_SYNC", "ADD_ONLY", "UPDATE_SYNC"]
    #           }
    #         },
    #         destination_metrics_configuration: {
    #           backup_configuration: {
    #             region: "Region", # required
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

    # <p>Creates a dataset integration for the caller's account in the current region and returns its ARN.</p> <p>To use this operation, you must have permission to access the dataset integration resources through the IAM role specified in the <code>RoleArn</code> parameter.</p> <p>If a dataset integration already exists for the account, this operation fails with a <code>ConflictException</code>.</p>
    # @param [Hash, Types::CreateDatasetIntegrationInput] params
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants Amazon CloudWatch permission to access the resources needed for the dataset integration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to associate with the dataset integration resource for categorization and management purposes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "ResourceArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_dataset_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     role_arn: "ResourceArn", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreateDatasetIntegrationOutput]
    def create_dataset_integration(params = {}, options = {})
      request = build_request(:create_dataset_integration, params)
      request.send_request(options)
    end

    # <p>Creates an integration between CloudWatch and S3 Tables for analytics. This integration enables querying CloudWatch telemetry data using analytics engines like Amazon Athena, Amazon Redshift, and Apache Spark.</p>
    # @param [Hash, Types::CreateS3TableIntegrationInput] params
    # @option params [Types::Encryption] :encryption
    #   <p>The encryption configuration for the S3 Table integration, including the encryption algorithm and KMS key settings.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants permissions for the S3 Table integration to access necessary resources.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to associate with the S3 Table integration resource for categorization and management purposes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     encryption: { # required
    #       sse_algorithm: "aws:kms" # One of: ["aws:kms", "AES256"], # required
    #       kms_key_arn: "ResourceArn"
    #     },
    #     role_arn: "ResourceArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_s3_table_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn"
    #   }
    # @return [Types::CreateS3TableIntegrationOutput]
    def create_s3_table_integration(params = {}, options = {})
      request = build_request(:create_s3_table_integration, params)
      request.send_request(options)
    end

    # <p>Creates a telemetry pipeline for processing and transforming telemetry data. The pipeline defines how data flows from sources through processors to destinations, enabling data transformation and delivering capabilities. </p>
    # @param [Hash, Types::CreateTelemetryPipelineInput] params
    # @option params [String] :name
    #   <p>The name of the telemetry pipeline to create. The name must be unique within your account.</p>
    # @option params [Types::TelemetryPipelineConfiguration] :configuration
    #   <p>The configuration that defines how the telemetry pipeline processes data, including sources, processors, and destinations. For more information about pipeline components, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/pipeline-components-reference.html">Amazon CloudWatch User Guide</a> </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to associate with the telemetry pipeline resource for categorization and management purposes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "TelemetryPipelineName", # required
    #     configuration: { # required
    #       body: "TelemetryPipelineConfigurationBody", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_telemetry_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn"
    #   }
    # @return [Types::CreateTelemetryPipelineOutput]
    def create_telemetry_pipeline(params = {}, options = {})
      request = build_request(:create_telemetry_pipeline, params)
      request.send_request(options)
    end

    # <p> Creates a telemetry rule that defines how telemetry should be configured for Amazon Web Services resources in your account. The rule specifies which resources should have telemetry enabled and how that telemetry data should be collected based on resource type, telemetry type, and selection criteria. </p>
    # @param [Hash, Types::CreateTelemetryRuleInput] params
    # @option params [String] :rule_name
    #   <p> A unique name for the telemetry rule being created. </p>
    # @option params [Types::TelemetryRule] :rule
    #   <p> The configuration details for the telemetry rule, including the resource type, telemetry type, destination configuration, and selection criteria for which resources the rule applies to. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The key-value pairs to associate with the telemetry rule resource for categorization and management purposes. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #     rule: { # required
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       telemetry_source_types: ["VPC_FLOW_LOGS" # One of: ["VPC_FLOW_LOGS", "ROUTE53_RESOLVER_QUERY_LOGS", "EKS_AUDIT_LOGS", "EKS_AUTHENTICATOR_LOGS", "EKS_CONTROLLER_MANAGER_LOGS", "EKS_SCHEDULER_LOGS", "EKS_API_LOGS"]],
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         },
    #         cloudtrail_parameters: {
    #           advanced_event_selectors: [ # required
    #             {
    #               name: "String",
    #               field_selectors: [ # required
    #                 {
    #                   field: "String", # required
    #                   equals: ["String"],
    #                   starts_with: ["String"],
    #                   ends_with: ["String"],
    #                   not_equals: ["String"],
    #                   not_starts_with: ["String"],
    #                   not_ends_with: ["String"]
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         elb_load_balancer_logging_parameters: {
    #           output_format: "plain" # One of: ["plain", "json"],
    #           field_delimiter: "String"
    #         },
    #         waf_logging_parameters: {
    #           redacted_fields: [
    #             {
    #               single_header: {
    #                 name: "String"
    #               },
    #               uri_path: "String",
    #               query_string: "String",
    #               method: "String"
    #             }
    #           ],
    #           logging_filter: {
    #             filters: [
    #               {
    #                 behavior: "KEEP" # One of: ["KEEP", "DROP"],
    #                 requirement: "MEETS_ALL" # One of: ["MEETS_ALL", "MEETS_ANY"],
    #                 conditions: [
    #                   {
    #                     action_condition: {
    #                       action: "ALLOW" # One of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"]
    #                     },
    #                     label_name_condition: {
    #                       label_name: "String"
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             default_behavior: "KEEP" # One of: ["KEEP", "DROP"]
    #           },
    #           log_type: "WAF_LOGS" # One of: ["WAF_LOGS"]
    #         },
    #         log_delivery_parameters: {
    #           log_types: ["APPLICATION_LOGS" # One of: ["APPLICATION_LOGS", "USAGE_LOGS", "SECURITY_FINDING_LOGS", "ACCESS_LOGS", "CONNECTION_LOGS", "S3_SERVER_ACCESS_LOGS", "ALB_ACCESS_LOGS", "ALB_CONNECTION_LOGS", "ALB_HEALTH_CHECK_LOGS"]]
    #         },
    #         msk_monitoring_parameters: {
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #         },
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       scope: "String",
    #       selection_criteria: "String",
    #       allow_field_updates: false,
    #       regions: ["Region"],
    #       all_regions: false
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

    # <p> Creates a telemetry rule that applies across an Amazon Web Services Organization. This operation can only be called by the organization's management account or a delegated administrator account. </p>
    # @param [Hash, Types::CreateTelemetryRuleForOrganizationInput] params
    # @option params [String] :rule_name
    #   <p> A unique name for the organization-wide telemetry rule being created. </p>
    # @option params [Types::TelemetryRule] :rule
    #   <p> The configuration details for the organization-wide telemetry rule, including the resource type, telemetry type, destination configuration, and selection criteria for which resources the rule applies to across the organization. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The key-value pairs to associate with the organization telemetry rule resource for categorization and management purposes. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #     rule: { # required
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       telemetry_source_types: ["VPC_FLOW_LOGS" # One of: ["VPC_FLOW_LOGS", "ROUTE53_RESOLVER_QUERY_LOGS", "EKS_AUDIT_LOGS", "EKS_AUTHENTICATOR_LOGS", "EKS_CONTROLLER_MANAGER_LOGS", "EKS_SCHEDULER_LOGS", "EKS_API_LOGS"]],
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         },
    #         cloudtrail_parameters: {
    #           advanced_event_selectors: [ # required
    #             {
    #               name: "String",
    #               field_selectors: [ # required
    #                 {
    #                   field: "String", # required
    #                   equals: ["String"],
    #                   starts_with: ["String"],
    #                   ends_with: ["String"],
    #                   not_equals: ["String"],
    #                   not_starts_with: ["String"],
    #                   not_ends_with: ["String"]
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         elb_load_balancer_logging_parameters: {
    #           output_format: "plain" # One of: ["plain", "json"],
    #           field_delimiter: "String"
    #         },
    #         waf_logging_parameters: {
    #           redacted_fields: [
    #             {
    #               single_header: {
    #                 name: "String"
    #               },
    #               uri_path: "String",
    #               query_string: "String",
    #               method: "String"
    #             }
    #           ],
    #           logging_filter: {
    #             filters: [
    #               {
    #                 behavior: "KEEP" # One of: ["KEEP", "DROP"],
    #                 requirement: "MEETS_ALL" # One of: ["MEETS_ALL", "MEETS_ANY"],
    #                 conditions: [
    #                   {
    #                     action_condition: {
    #                       action: "ALLOW" # One of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"]
    #                     },
    #                     label_name_condition: {
    #                       label_name: "String"
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             default_behavior: "KEEP" # One of: ["KEEP", "DROP"]
    #           },
    #           log_type: "WAF_LOGS" # One of: ["WAF_LOGS"]
    #         },
    #         log_delivery_parameters: {
    #           log_types: ["APPLICATION_LOGS" # One of: ["APPLICATION_LOGS", "USAGE_LOGS", "SECURITY_FINDING_LOGS", "ACCESS_LOGS", "CONNECTION_LOGS", "S3_SERVER_ACCESS_LOGS", "ALB_ACCESS_LOGS", "ALB_CONNECTION_LOGS", "ALB_HEALTH_CHECK_LOGS"]]
    #         },
    #         msk_monitoring_parameters: {
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #         },
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       scope: "String",
    #       selection_criteria: "String",
    #       allow_field_updates: false,
    #       regions: ["Region"],
    #       all_regions: false
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

    # <p>Deletes a dataset integration for the caller's account in the current region. This operation is idempotent; if you submit the same delete more than once, each call succeeds.</p>
    # @param [Hash, Types::DeleteDatasetIntegrationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the dataset integration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_dataset_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_dataset_integration(params = {}, options = {})
      request = build_request(:delete_dataset_integration, params)
      request.send_request(options)
    end

    # <p>Deletes an S3 Table integration and its associated data. This operation removes the connection between CloudWatch Observability Admin and S3 Tables.</p>
    # @param [Hash, Types::DeleteS3TableIntegrationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Table integration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_s3_table_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_s3_table_integration(params = {}, options = {})
      request = build_request(:delete_s3_table_integration, params)
      request.send_request(options)
    end

    # <p>Deletes a telemetry pipeline and its associated resources. This operation stops data processing and removes the pipeline configuration.</p>
    # @param [Hash, Types::DeleteTelemetryPipelineInput] params
    # @option params [String] :pipeline_identifier
    #   <p>The ARN of the telemetry pipeline to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_identifier: "TelemetryPipelineIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_telemetry_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTelemetryPipelineOutput]
    def delete_telemetry_pipeline(params = {}, options = {})
      request = build_request(:delete_telemetry_pipeline, params)
      request.send_request(options)
    end

    # <p> Deletes a telemetry rule from your account. Any telemetry configurations previously created by the rule will remain but no new resources will be configured by this rule. </p>
    # @param [Hash, Types::DeleteTelemetryRuleInput] params
    # @option params [String] :rule_identifier
    #   <p> The identifier (name or ARN) of the telemetry rule to delete. </p>
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

    # <p> Deletes an organization-wide telemetry rule. This operation can only be called by the organization's management account or a delegated administrator account. </p>
    # @param [Hash, Types::DeleteTelemetryRuleForOrganizationInput] params
    # @option params [String] :rule_identifier
    #   <p> The identifier (name or ARN) of the organization telemetry rule to delete. </p>
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
    #     tag_propagation_status: "Healthy" # One of: ["Healthy", "Unhealthy"],
    #     tag_propagation_failure_reason: "RoleNotAssumable" # One of: ["RoleNotAssumable", "RoleLacksPermissions"],
    #     context_graph_status: "Healthy" # One of: ["Healthy", "Unhealthy", "Provisioning"],
    #     centralization_rule: {
    #       source: { # required
    #         regions: ["Region"], # required
    #         scope: "SourceFilterString",
    #         source_logs_configuration: {
    #           log_group_selection_criteria: "LogsFilterString",
    #           data_source_selection_criteria: "DataSourceFilterString",
    #           encrypted_log_group_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"], # required
    #         },
    #         source_metrics_configuration: {
    #           metrics_selection_criteria: "MetricsFilterString"
    #         },
    #         source_context_graph_configuration: {
    #         }
    #       },
    #       destination: { # required
    #         region: "Region", # required
    #         account: "AccountIdentifier",
    #         destination_logs_configuration: {
    #           logs_encryption_configuration: {
    #             encryption_strategy: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_OWNED"], # required
    #             kms_key_arn: "ResourceArn",
    #             encryption_conflict_resolution_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"],
    #             encryption_scope: "ENCRYPTED_SOURCE_ONLY" # One of: ["ENCRYPTED_SOURCE_ONLY", "NEW_DESTINATION_LOG_GROUPS"]
    #           },
    #           backup_configuration: {
    #             region: "Region", # required
    #             kms_key_arn: "ResourceArn"
    #           },
    #           log_group_name_configuration: {
    #             log_group_name_pattern: "LogGroupNamePattern", # required
    #           },
    #           tag_propagation_configuration: {
    #             destination_role_arn: "IamRoleArn", # required
    #             tag_conflict_resolution_strategy: "IN_SYNC" # One of: ["IN_SYNC", "ADD_ONLY", "UPDATE_SYNC"]
    #           }
    #         },
    #         destination_metrics_configuration: {
    #           backup_configuration: {
    #             region: "Region", # required
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

    # <p>Returns the dataset integration for the caller's account in the current region.</p>
    # @param [Hash, Types::GetDatasetIntegrationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the dataset integration to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_dataset_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn",
    #     role_arn: "ResourceArn",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetDatasetIntegrationOutput]
    def get_dataset_integration(params = {}, options = {})
      request = build_request(:get_dataset_integration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific S3 Table integration, including its configuration, status, and metadata.</p>
    # @param [Hash, Types::GetS3TableIntegrationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Table integration to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_s3_table_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn",
    #     role_arn: "ResourceArn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING"],
    #     encryption: {
    #       sse_algorithm: "aws:kms" # One of: ["aws:kms", "AES256"], # required
    #       kms_key_arn: "ResourceArn"
    #     },
    #     destination_table_bucket_arn: "ResourceArn",
    #     created_time_stamp: 1
    #   }
    # @return [Types::GetS3TableIntegrationOutput]
    def get_s3_table_integration(params = {}, options = {})
      request = build_request(:get_s3_table_integration, params)
      request.send_request(options)
    end

    # <p> Returns the current status of the resource tags for telemetry feature, which enhances telemetry data with additional resource metadata from Resource Explorer. </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_telemetry_enrichment_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Running" # One of: ["Running", "Stopped", "Impaired"],
    #     aws_resource_explorer_managed_view_arn: "AwsResourceExplorerManagedViewArn"
    #   }
    # @return [Types::GetTelemetryEnrichmentStatusOutput]
    def get_telemetry_enrichment_status(params = {}, options = {})
      request = build_request(:get_telemetry_enrichment_status, params)
      request.send_request(options)
    end

    # <p> Returns the current onboarding status of the telemetry config feature, including the status of the feature and reason the feature failed to start or stop. </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_telemetry_evaluation_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "STARTING", "FAILED_START", "RUNNING", "STOPPING", "FAILED_STOP", "STOPPED"],
    #     failure_reason: "FailureReason",
    #     home_region: "Region",
    #     region_statuses: [
    #       {
    #         region: "Region",
    #         status: "String",
    #         failure_reason: "String",
    #         rule_arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::GetTelemetryEvaluationStatusOutput]
    def get_telemetry_evaluation_status(params = {}, options = {})
      request = build_request(:get_telemetry_evaluation_status, params)
      request.send_request(options)
    end

    # <p> This returns the onboarding status of the telemetry configuration feature for the organization. It can only be called by a Management Account of an Amazon Web Services Organization or an assigned Delegated Admin Account of Amazon CloudWatch telemetry config. </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_telemetry_evaluation_status_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "STARTING", "FAILED_START", "RUNNING", "STOPPING", "FAILED_STOP", "STOPPED"],
    #     failure_reason: "FailureReason",
    #     home_region: "Region",
    #     region_statuses: [
    #       {
    #         region: "Region",
    #         status: "String",
    #         failure_reason: "String",
    #         rule_arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::GetTelemetryEvaluationStatusForOrganizationOutput]
    def get_telemetry_evaluation_status_for_organization(params = {}, options = {})
      request = build_request(:get_telemetry_evaluation_status_for_organization, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific telemetry pipeline, including its configuration, status, and metadata.</p>
    # @param [Hash, Types::GetTelemetryPipelineInput] params
    # @option params [String] :pipeline_identifier
    #   <p>The identifier (name or ARN) of the telemetry pipeline to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_identifier: "TelemetryPipelineIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_telemetry_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       created_time_stamp: 1,
    #       last_update_time_stamp: 1,
    #       arn: "ResourceArn",
    #       name: "TelemetryPipelineName",
    #       configuration: {
    #         body: "TelemetryPipelineConfigurationBody", # required
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED"],
    #       status_reason: {
    #         description: "String"
    #       },
    #       tags: {
    #         "String" => "String"
    #       }
    #     }
    #   }
    # @return [Types::GetTelemetryPipelineOutput]
    def get_telemetry_pipeline(params = {}, options = {})
      request = build_request(:get_telemetry_pipeline, params)
      request.send_request(options)
    end

    # <p> Retrieves the details of a specific telemetry rule in your account. </p>
    # @param [Hash, Types::GetTelemetryRuleInput] params
    # @option params [String] :rule_identifier
    #   <p> The identifier (name or ARN) of the telemetry rule to retrieve. </p>
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
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       telemetry_source_types: ["VPC_FLOW_LOGS" # One of: ["VPC_FLOW_LOGS", "ROUTE53_RESOLVER_QUERY_LOGS", "EKS_AUDIT_LOGS", "EKS_AUTHENTICATOR_LOGS", "EKS_CONTROLLER_MANAGER_LOGS", "EKS_SCHEDULER_LOGS", "EKS_API_LOGS"]],
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         },
    #         cloudtrail_parameters: {
    #           advanced_event_selectors: [ # required
    #             {
    #               name: "String",
    #               field_selectors: [ # required
    #                 {
    #                   field: "String", # required
    #                   equals: ["String"],
    #                   starts_with: ["String"],
    #                   ends_with: ["String"],
    #                   not_equals: ["String"],
    #                   not_starts_with: ["String"],
    #                   not_ends_with: ["String"]
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         elb_load_balancer_logging_parameters: {
    #           output_format: "plain" # One of: ["plain", "json"],
    #           field_delimiter: "String"
    #         },
    #         waf_logging_parameters: {
    #           redacted_fields: [
    #             {
    #               single_header: {
    #                 name: "String"
    #               },
    #               uri_path: "String",
    #               query_string: "String",
    #               method: "String"
    #             }
    #           ],
    #           logging_filter: {
    #             filters: [
    #               {
    #                 behavior: "KEEP" # One of: ["KEEP", "DROP"],
    #                 requirement: "MEETS_ALL" # One of: ["MEETS_ALL", "MEETS_ANY"],
    #                 conditions: [
    #                   {
    #                     action_condition: {
    #                       action: "ALLOW" # One of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"]
    #                     },
    #                     label_name_condition: {
    #                       label_name: "String"
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             default_behavior: "KEEP" # One of: ["KEEP", "DROP"]
    #           },
    #           log_type: "WAF_LOGS" # One of: ["WAF_LOGS"]
    #         },
    #         log_delivery_parameters: {
    #           log_types: ["APPLICATION_LOGS" # One of: ["APPLICATION_LOGS", "USAGE_LOGS", "SECURITY_FINDING_LOGS", "ACCESS_LOGS", "CONNECTION_LOGS", "S3_SERVER_ACCESS_LOGS", "ALB_ACCESS_LOGS", "ALB_CONNECTION_LOGS", "ALB_HEALTH_CHECK_LOGS"]]
    #         },
    #         msk_monitoring_parameters: {
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #         },
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       scope: "String",
    #       selection_criteria: "String",
    #       allow_field_updates: false,
    #       regions: ["Region"],
    #       all_regions: false
    #     },
    #     home_region: "Region",
    #     is_replicated: false,
    #     region_statuses: [
    #       {
    #         region: "Region",
    #         status: "String",
    #         failure_reason: "String",
    #         rule_arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::GetTelemetryRuleOutput]
    def get_telemetry_rule(params = {}, options = {})
      request = build_request(:get_telemetry_rule, params)
      request.send_request(options)
    end

    # <p> Retrieves the details of a specific organization telemetry rule. This operation can only be called by the organization's management account or a delegated administrator account. </p>
    # @param [Hash, Types::GetTelemetryRuleForOrganizationInput] params
    # @option params [String] :rule_identifier
    #   <p> The identifier (name or ARN) of the organization telemetry rule to retrieve. </p>
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
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       telemetry_source_types: ["VPC_FLOW_LOGS" # One of: ["VPC_FLOW_LOGS", "ROUTE53_RESOLVER_QUERY_LOGS", "EKS_AUDIT_LOGS", "EKS_AUTHENTICATOR_LOGS", "EKS_CONTROLLER_MANAGER_LOGS", "EKS_SCHEDULER_LOGS", "EKS_API_LOGS"]],
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         },
    #         cloudtrail_parameters: {
    #           advanced_event_selectors: [ # required
    #             {
    #               name: "String",
    #               field_selectors: [ # required
    #                 {
    #                   field: "String", # required
    #                   equals: ["String"],
    #                   starts_with: ["String"],
    #                   ends_with: ["String"],
    #                   not_equals: ["String"],
    #                   not_starts_with: ["String"],
    #                   not_ends_with: ["String"]
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         elb_load_balancer_logging_parameters: {
    #           output_format: "plain" # One of: ["plain", "json"],
    #           field_delimiter: "String"
    #         },
    #         waf_logging_parameters: {
    #           redacted_fields: [
    #             {
    #               single_header: {
    #                 name: "String"
    #               },
    #               uri_path: "String",
    #               query_string: "String",
    #               method: "String"
    #             }
    #           ],
    #           logging_filter: {
    #             filters: [
    #               {
    #                 behavior: "KEEP" # One of: ["KEEP", "DROP"],
    #                 requirement: "MEETS_ALL" # One of: ["MEETS_ALL", "MEETS_ANY"],
    #                 conditions: [
    #                   {
    #                     action_condition: {
    #                       action: "ALLOW" # One of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"]
    #                     },
    #                     label_name_condition: {
    #                       label_name: "String"
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             default_behavior: "KEEP" # One of: ["KEEP", "DROP"]
    #           },
    #           log_type: "WAF_LOGS" # One of: ["WAF_LOGS"]
    #         },
    #         log_delivery_parameters: {
    #           log_types: ["APPLICATION_LOGS" # One of: ["APPLICATION_LOGS", "USAGE_LOGS", "SECURITY_FINDING_LOGS", "ACCESS_LOGS", "CONNECTION_LOGS", "S3_SERVER_ACCESS_LOGS", "ALB_ACCESS_LOGS", "ALB_CONNECTION_LOGS", "ALB_HEALTH_CHECK_LOGS"]]
    #         },
    #         msk_monitoring_parameters: {
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #         },
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       scope: "String",
    #       selection_criteria: "String",
    #       allow_field_updates: false,
    #       regions: ["Region"],
    #       all_regions: false
    #     },
    #     home_region: "Region",
    #     is_replicated: false,
    #     region_statuses: [
    #       {
    #         region: "Region",
    #         status: "String",
    #         failure_reason: "String",
    #         rule_arn: "ResourceArn"
    #       }
    #     ]
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
    #         tag_propagation_status: "Healthy" # One of: ["Healthy", "Unhealthy"],
    #         tag_propagation_failure_reason: "RoleNotAssumable" # One of: ["RoleNotAssumable", "RoleLacksPermissions"],
    #         context_graph_status: "Healthy" # One of: ["Healthy", "Unhealthy", "Provisioning"],
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

    # <p>Returns the dataset integrations in your account.</p>
    # @param [Hash, Types::ListDatasetIntegrationsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. A previous call generates this token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_dataset_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_integration_summaries: [ # required
    #       {
    #         arn: "ResourceArn", # required
    #         role_arn: "ResourceArn",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetIntegrationsOutput]
    def list_dataset_integrations(params = {}, options = {})
      request = build_request(:list_dataset_integrations, params)
      request.send_request(options)
    end

    # <p> Returns a list of telemetry configurations for Amazon Web Services resources supported by telemetry config. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html">Auditing CloudWatch telemetry configurations</a>. </p>
    # @param [Hash, Types::ListResourceTelemetryInput] params
    # @option params [String] :resource_identifier_prefix
    #   <p> A string used to filter resources which have a <code>ResourceIdentifier</code> starting with the <code>ResourceIdentifierPrefix</code>. </p>
    # @option params [Array<String>] :resource_types
    #   <p> A list of resource types used to filter resources supported by telemetry config. If this parameter is provided, the service returns the resources in the same order as specified in the request. Currently supported resource types for discovery are:</p> <ul> <li> <p> <code>AWS::EC2::Instance</code> </p> </li> <li> <p> <code>AWS::EC2::VPC</code> </p> </li> <li> <p> <code>AWS::Lambda::Function</code> </p> </li> <li> <p> <code>AWS::EKS::Cluster</code> </p> </li> <li> <p> <code>AWS::WAFv2::WebACL</code> </p> </li> <li> <p> <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> (Network Load Balancers only)</p> </li> </ul>
    # @option params [Hash<String, String>] :telemetry_configuration_state
    #   <p> A key-value pair to filter resources based on the telemetry type and the state of the telemetry configuration. The key is the telemetry type and the value is the state. </p>
    # @option params [Hash<String, String>] :resource_tags
    #   <p> A key-value pair to filter resources based on tags associated with the resource. For more information about tags, see <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html">What are tags?</a> </p>
    # @option params [Integer] :max_results
    #   <p> A number field used to limit the number of results within the returned list. </p>
    # @option params [String] :next_token
    #   <p> The token for the next set of items to return. A previous call generates this token. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier_prefix: "ResourceIdentifierPrefix",
    #     resource_types: ["AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"]],
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
    #         resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"],
    #         resource_identifier: "ResourceIdentifier",
    #         resource_tags: {
    #           "String" => "String"
    #         },
    #         last_update_time_stamp: 1,
    #         telemetry_source_type: "VPC_FLOW_LOGS" # One of: ["VPC_FLOW_LOGS", "ROUTE53_RESOLVER_QUERY_LOGS", "EKS_AUDIT_LOGS", "EKS_AUTHENTICATOR_LOGS", "EKS_CONTROLLER_MANAGER_LOGS", "EKS_SCHEDULER_LOGS", "EKS_API_LOGS"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceTelemetryOutput]
    def list_resource_telemetry(params = {}, options = {})
      request = build_request(:list_resource_telemetry, params)
      request.send_request(options)
    end

    # <p> Returns a list of telemetry configurations for Amazon Web Services resources supported by telemetry config in the organization. </p>
    # @param [Hash, Types::ListResourceTelemetryForOrganizationInput] params
    # @option params [Array<String>] :account_identifiers
    #   <p> A list of Amazon Web Services accounts used to filter the resources to those associated with the specified accounts. </p>
    # @option params [String] :resource_identifier_prefix
    #   <p> A string used to filter resources in the organization which have a <code>ResourceIdentifier</code> starting with the <code>ResourceIdentifierPrefix</code>. </p>
    # @option params [Array<String>] :resource_types
    #   <p> A list of resource types used to filter resources in the organization. If this parameter is provided, the service returns the resources in the same order as specified in the request. Currently supported resource types for discovery are:</p> <ul> <li> <p> <code>AWS::EC2::Instance</code> </p> </li> <li> <p> <code>AWS::EC2::VPC</code> </p> </li> <li> <p> <code>AWS::Lambda::Function</code> </p> </li> <li> <p> <code>AWS::EKS::Cluster</code> </p> </li> <li> <p> <code>AWS::WAFv2::WebACL</code> </p> </li> <li> <p> <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> (Network Load Balancers only)</p> </li> </ul>
    # @option params [Hash<String, String>] :telemetry_configuration_state
    #   <p> A key-value pair to filter resources in the organization based on the telemetry type and the state of the telemetry configuration. The key is the telemetry type and the value is the state. </p>
    # @option params [Hash<String, String>] :resource_tags
    #   <p> A key-value pair to filter resources in the organization based on tags associated with the resource. Fore more information about tags, see <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html">What are tags?</a> </p>
    # @option params [Integer] :max_results
    #   <p> A number field used to limit the number of results within the returned list. </p>
    # @option params [String] :next_token
    #   <p> The token for the next set of items to return. A previous call provides this token. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_identifiers: ["AccountIdentifier"],
    #     resource_identifier_prefix: "ResourceIdentifierPrefix",
    #     resource_types: ["AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"]],
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
    #         resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"],
    #         resource_identifier: "ResourceIdentifier",
    #         resource_tags: {
    #           "String" => "String"
    #         },
    #         last_update_time_stamp: 1,
    #         telemetry_source_type: "VPC_FLOW_LOGS" # One of: ["VPC_FLOW_LOGS", "ROUTE53_RESOLVER_QUERY_LOGS", "EKS_AUDIT_LOGS", "EKS_AUTHENTICATOR_LOGS", "EKS_CONTROLLER_MANAGER_LOGS", "EKS_SCHEDULER_LOGS", "EKS_API_LOGS"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceTelemetryForOrganizationOutput]
    def list_resource_telemetry_for_organization(params = {}, options = {})
      request = build_request(:list_resource_telemetry_for_organization, params)
      request.send_request(options)
    end

    # <p>Lists all S3 Table integrations in your account. We recommend using pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListS3TableIntegrationsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of S3 Table integrations to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. A previous call generates this token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_s3_table_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_summaries: [
    #       {
    #         arn: "ResourceArn",
    #         status: "ACTIVE" # One of: ["ACTIVE", "DELETING"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListS3TableIntegrationsOutput]
    def list_s3_table_integrations(params = {}, options = {})
      request = build_request(:list_s3_table_integrations, params)
      request.send_request(options)
    end

    # <p> Lists all tags attached to the specified resource. Supports telemetry rule resources and telemetry pipeline resources. </p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the telemetry rule resource whose tags you want to list. </p>
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

    # <p>Returns a list of telemetry pipelines in your account. Returns up to 100 results. If more than 100 telemetry pipelines exist, include the <code>NextToken</code> value from the response to retrieve the next set of results.</p>
    # @param [Hash, Types::ListTelemetryPipelinesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of telemetry pipelines to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. A previous call generates this token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_telemetry_pipelines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_summaries: [
    #       {
    #         created_time_stamp: 1,
    #         last_update_time_stamp: 1,
    #         arn: "ResourceArn",
    #         name: "TelemetryPipelineName",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED"],
    #         tags: {
    #           "String" => "String"
    #         },
    #         configuration_summary: {
    #           sources: [
    #             {
    #               type: "String"
    #             }
    #           ],
    #           data_sources: [
    #             {
    #               name: "String",
    #               type: "String"
    #             }
    #           ],
    #           processors: ["String"],
    #           processor_count: 1,
    #           sinks: ["String"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTelemetryPipelinesOutput]
    def list_telemetry_pipelines(params = {}, options = {})
      request = build_request(:list_telemetry_pipelines, params)
      request.send_request(options)
    end

    # <p> Lists all telemetry rules in your account. You can filter the results by specifying a rule name prefix. </p>
    # @param [Hash, Types::ListTelemetryRulesInput] params
    # @option params [String] :rule_name_prefix
    #   <p> A string to filter telemetry rules whose names begin with the specified prefix. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of telemetry rules to return in a single call. </p>
    # @option params [String] :next_token
    #   <p> The token for the next set of results. A previous call generates this token. </p>
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
    #         resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"],
    #         telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"],
    #         telemetry_source_types: ["VPC_FLOW_LOGS" # One of: ["VPC_FLOW_LOGS", "ROUTE53_RESOLVER_QUERY_LOGS", "EKS_AUDIT_LOGS", "EKS_AUTHENTICATOR_LOGS", "EKS_CONTROLLER_MANAGER_LOGS", "EKS_SCHEDULER_LOGS", "EKS_API_LOGS"]]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTelemetryRulesOutput]
    def list_telemetry_rules(params = {}, options = {})
      request = build_request(:list_telemetry_rules, params)
      request.send_request(options)
    end

    # <p> Lists all telemetry rules in your organization. This operation can only be called by the organization's management account or a delegated administrator account. </p>
    # @param [Hash, Types::ListTelemetryRulesForOrganizationInput] params
    # @option params [String] :rule_name_prefix
    #   <p> A string to filter organization telemetry rules whose names begin with the specified prefix. </p>
    # @option params [Array<String>] :source_account_ids
    #   <p> The list of account IDs to filter organization telemetry rules by their source accounts. </p>
    # @option params [Array<String>] :source_organization_unit_ids
    #   <p> The list of organizational unit IDs to filter organization telemetry rules by their source organizational units. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of organization telemetry rules to return in a single call. </p>
    # @option params [String] :next_token
    #   <p> The token for the next set of results. A previous call generates this token. </p>
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
    #         resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"],
    #         telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"],
    #         telemetry_source_types: ["VPC_FLOW_LOGS" # One of: ["VPC_FLOW_LOGS", "ROUTE53_RESOLVER_QUERY_LOGS", "EKS_AUDIT_LOGS", "EKS_AUTHENTICATOR_LOGS", "EKS_CONTROLLER_MANAGER_LOGS", "EKS_SCHEDULER_LOGS", "EKS_API_LOGS"]]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTelemetryRulesForOrganizationOutput]
    def list_telemetry_rules_for_organization(params = {}, options = {})
      request = build_request(:list_telemetry_rules_for_organization, params)
      request.send_request(options)
    end

    # <p> Enables the resource tags for telemetry feature for your account, which enhances telemetry data with additional resource metadata from Resource Explorer to provide richer context for monitoring and observability. </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.start_telemetry_enrichment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Running" # One of: ["Running", "Stopped", "Impaired"],
    #     aws_resource_explorer_managed_view_arn: "AwsResourceExplorerManagedViewArn"
    #   }
    # @return [Types::StartTelemetryEnrichmentOutput]
    def start_telemetry_enrichment(params = {}, options = {})
      request = build_request(:start_telemetry_enrichment, params)
      request.send_request(options)
    end

    # <p> This action begins onboarding the caller Amazon Web Services account to the telemetry config feature. </p>
    # @param [Hash, Types::StartTelemetryEvaluationInput] params
    # @option params [Array<String>] :regions
    #   <p> An optional list of Amazon Web Services Regions to include in multi-region telemetry evaluation. The current region is always implicitly included and must not be specified in this list. When provided, telemetry evaluation starts in the current region and propagates to all specified regions. Mutually exclusive with <code>AllRegions</code>. If neither <code>Regions</code> nor <code>AllRegions</code> is provided, the operation applies only to the current region. </p>
    # @option params [Boolean] :all_regions
    #   <p> If set to <code>true</code>, telemetry evaluation starts in all Amazon Web Services Regions where Amazon CloudWatch Observability Admin is available in the current partition. The current region becomes the home region for managing multi-region evaluation. When new regions become available, evaluation automatically expands to include them. Mutually exclusive with <code>Regions</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regions: ["Region"],
    #     all_regions: false
    #   }
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

    # <p> This actions begins onboarding the organization and all member accounts to the telemetry config feature. </p>
    # @param [Hash, Types::StartTelemetryEvaluationForOrganizationInput] params
    # @option params [Array<String>] :regions
    #   <p> An optional list of Amazon Web Services Regions to include in multi-region telemetry evaluation for the organization. The current region is always implicitly included and must not be specified in this list. When provided, telemetry evaluation starts in the current region and propagates to all specified regions for the organization. Mutually exclusive with <code>AllRegions</code>. If neither <code>Regions</code> nor <code>AllRegions</code> is provided, the operation applies only to the current region. </p>
    # @option params [Boolean] :all_regions
    #   <p> If set to <code>true</code>, telemetry evaluation for the organization starts in all Amazon Web Services Regions where Amazon CloudWatch Observability Admin is available in the current partition. The current region becomes the home region for managing multi-region evaluation for the organization. When new regions become available, evaluation automatically expands to include them. Mutually exclusive with <code>Regions</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regions: ["Region"],
    #     all_regions: false
    #   }
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

    # <p> Disables the resource tags for telemetry feature for your account, stopping the enhancement of telemetry data with additional resource metadata. </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.stop_telemetry_enrichment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Running" # One of: ["Running", "Stopped", "Impaired"]
    #   }
    # @return [Types::StopTelemetryEnrichmentOutput]
    def stop_telemetry_enrichment(params = {}, options = {})
      request = build_request(:stop_telemetry_enrichment, params)
      request.send_request(options)
    end

    # <p> This action begins offboarding the caller Amazon Web Services account from the telemetry config feature. </p>
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

    # <p> This action offboards the Organization of the caller Amazon Web Services account from the telemetry config feature. </p>
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

    # <p> Adds or updates tags for a resource. Supports telemetry rule resources and telemetry pipeline resources. </p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the telemetry rule resource to tag. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The key-value pairs to add or update for the telemetry rule resource. </p>
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

    # <p>Tests a pipeline configuration with sample records to validate data processing before deployment. This operation helps ensure your pipeline configuration works as expected. </p>
    # @param [Hash, Types::TestTelemetryPipelineInput] params
    # @option params [Array<Types::Record>] :records
    #   <p>The sample records to process through the pipeline configuration for testing purposes.</p>
    # @option params [Types::TelemetryPipelineConfiguration] :configuration
    #   <p>The pipeline configuration to test with the provided sample records.</p>
    # @option params [String] :signal_type
    #   <p>The type of telemetry signal to test. If not specified, defaults to log processing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     records: [ # required
    #       {
    #         data: "String",
    #         type: "STRING" # One of: ["STRING", "JSON"]
    #       }
    #     ],
    #     configuration: { # required
    #       body: "TelemetryPipelineConfigurationBody", # required
    #     },
    #     signal_type: "LOG" # One of: ["LOG", "METRIC"]
    #   }
    #   options = {}
    #   response = client.test_telemetry_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         record: {
    #           data: "String",
    #           type: "STRING" # One of: ["STRING", "JSON"]
    #         },
    #         error: {
    #           message: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::TestTelemetryPipelineOutput]
    def test_telemetry_pipeline(params = {}, options = {})
      request = build_request(:test_telemetry_pipeline, params)
      request.send_request(options)
    end

    # <p> Removes tags from a resource. Supports telemetry rule resources and telemetry pipeline resources. </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the telemetry rule resource to remove tags from. </p>
    # @option params [Array<String>] :tag_keys
    #   <p> The list of tag keys to remove from the telemetry rule resource. </p>
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
    #           log_group_selection_criteria: "LogsFilterString",
    #           data_source_selection_criteria: "DataSourceFilterString",
    #           encrypted_log_group_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"], # required
    #         },
    #         source_metrics_configuration: {
    #           metrics_selection_criteria: "MetricsFilterString"
    #         },
    #         source_context_graph_configuration: {
    #         }
    #       },
    #       destination: { # required
    #         region: "Region", # required
    #         account: "AccountIdentifier",
    #         destination_logs_configuration: {
    #           logs_encryption_configuration: {
    #             encryption_strategy: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_OWNED"], # required
    #             kms_key_arn: "ResourceArn",
    #             encryption_conflict_resolution_strategy: "ALLOW" # One of: ["ALLOW", "SKIP"],
    #             encryption_scope: "ENCRYPTED_SOURCE_ONLY" # One of: ["ENCRYPTED_SOURCE_ONLY", "NEW_DESTINATION_LOG_GROUPS"]
    #           },
    #           backup_configuration: {
    #             region: "Region", # required
    #             kms_key_arn: "ResourceArn"
    #           },
    #           log_group_name_configuration: {
    #             log_group_name_pattern: "LogGroupNamePattern", # required
    #           },
    #           tag_propagation_configuration: {
    #             destination_role_arn: "IamRoleArn", # required
    #             tag_conflict_resolution_strategy: "IN_SYNC" # One of: ["IN_SYNC", "ADD_ONLY", "UPDATE_SYNC"]
    #           }
    #         },
    #         destination_metrics_configuration: {
    #           backup_configuration: {
    #             region: "Region", # required
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

    # <p>Updates a dataset integration for the caller's account in the current region. This operation is idempotent; if you submit the same update more than once, each call succeeds.</p>
    # @param [Hash, Types::UpdateDatasetIntegrationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the dataset integration to update.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the dataset integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ResourceArn", # required
    #     role_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.update_dataset_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     role_arn: "ResourceArn", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateDatasetIntegrationOutput]
    def update_dataset_integration(params = {}, options = {})
      request = build_request(:update_dataset_integration, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing telemetry pipeline.</p> <note> <p>The following attributes cannot be updated after pipeline creation:</p> <ul> <li> <p> <b>Pipeline name</b> - The pipeline name is immutable</p> </li> <li> <p> <b>Pipeline ARN</b> - The ARN is automatically generated and cannot be changed</p> </li> <li> <p> <b>Source type</b> - Once a pipeline is created with a specific source type (such as S3, CloudWatch Logs, GitHub, or third-party sources), it cannot be changed to a different source type</p> </li> </ul> <p>Processors can be added, removed, or modified. However, some processors are not supported for third-party pipelines and cannot be added through updates.</p> </note> <p> <b>Source-Specific Update Rules</b> </p> <dl> <dt>CloudWatch Logs Sources (Vended and Custom)</dt> <dd> <p> <b>Updatable:</b> <code>sts_role_arn</code> </p> <p> <b>Fixed:</b> <code>data_source_name</code>, <code>data_source_type</code>, sink (must remain <code>@original</code>)</p> </dd> <dt>S3 Sources (Crowdstrike, Zscaler, SentinelOne, Custom)</dt> <dd> <p> <b>Updatable:</b> All SQS configuration parameters, <code>sts_role_arn</code>, codec settings, compression type, bucket ownership settings, sink log group</p> <p> <b>Fixed:</b> <code>notification_type</code>, <code>aws.region</code> </p> </dd> <dt>GitHub Audit Logs</dt> <dd> <p> <b>Updatable:</b> All Amazon Web Services Secrets Manager attributes, <code>scope</code> (can switch between ORGANIZATION/ENTERPRISE), <code>organization</code> or <code>enterprise</code> name, <code>range</code>, authentication credentials (PAT or GitHub App)</p> </dd> <dt>Microsoft Sources (Entra ID, Office365, Windows)</dt> <dd> <p> <b>Updatable:</b> All Amazon Web Services Secrets Manager attributes, <code>tenant_id</code>, <code>workspace_id</code> (Windows only), OAuth2 credentials (<code>client_id</code>, <code>client_secret</code>)</p> </dd> <dt>Okta Sources (SSO, Auth0)</dt> <dd> <p> <b>Updatable:</b> All Amazon Web Services Secrets Manager attributes, <code>domain</code>, <code>range</code>, OAuth2 credentials (<code>client_id</code>, <code>client_secret</code>)</p> </dd> <dt>Palo Alto Networks</dt> <dd> <p> <b>Updatable:</b> All Amazon Web Services Secrets Manager attributes, <code>hostname</code>, basic authentication credentials (<code>username</code>, <code>password</code>)</p> </dd> <dt>ServiceNow CMDB</dt> <dd> <p> <b>Updatable:</b> All Amazon Web Services Secrets Manager attributes, <code>instance_url</code>, <code>range</code>, OAuth2 credentials (<code>client_id</code>, <code>client_secret</code>)</p> </dd> <dt>Wiz CNAPP</dt> <dd> <p> <b>Updatable:</b> All Amazon Web Services Secrets Manager attributes, <code>region</code>, <code>range</code>, OAuth2 credentials (<code>client_id</code>, <code>client_secret</code>)</p> </dd> </dl>
    # @param [Hash, Types::UpdateTelemetryPipelineInput] params
    # @option params [String] :pipeline_identifier
    #   <p>The ARN of the telemetry pipeline to update.</p>
    # @option params [Types::TelemetryPipelineConfiguration] :configuration
    #   <p>The new configuration for the telemetry pipeline, including updated sources, processors, and destinations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_identifier: "TelemetryPipelineIdentifier", # required
    #     configuration: { # required
    #       body: "TelemetryPipelineConfigurationBody", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_telemetry_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTelemetryPipelineOutput]
    def update_telemetry_pipeline(params = {}, options = {})
      request = build_request(:update_telemetry_pipeline, params)
      request.send_request(options)
    end

    # <p> Updates an existing telemetry rule in your account. If multiple users attempt to modify the same telemetry rule simultaneously, a ConflictException is returned to provide specific error information for concurrent modification scenarios. </p>
    # @param [Hash, Types::UpdateTelemetryRuleInput] params
    # @option params [String] :rule_identifier
    #   <p> The identifier (name or ARN) of the telemetry rule to update. </p>
    # @option params [Types::TelemetryRule] :rule
    #   <p> The new configuration details for the telemetry rule. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #     rule: { # required
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       telemetry_source_types: ["VPC_FLOW_LOGS" # One of: ["VPC_FLOW_LOGS", "ROUTE53_RESOLVER_QUERY_LOGS", "EKS_AUDIT_LOGS", "EKS_AUTHENTICATOR_LOGS", "EKS_CONTROLLER_MANAGER_LOGS", "EKS_SCHEDULER_LOGS", "EKS_API_LOGS"]],
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         },
    #         cloudtrail_parameters: {
    #           advanced_event_selectors: [ # required
    #             {
    #               name: "String",
    #               field_selectors: [ # required
    #                 {
    #                   field: "String", # required
    #                   equals: ["String"],
    #                   starts_with: ["String"],
    #                   ends_with: ["String"],
    #                   not_equals: ["String"],
    #                   not_starts_with: ["String"],
    #                   not_ends_with: ["String"]
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         elb_load_balancer_logging_parameters: {
    #           output_format: "plain" # One of: ["plain", "json"],
    #           field_delimiter: "String"
    #         },
    #         waf_logging_parameters: {
    #           redacted_fields: [
    #             {
    #               single_header: {
    #                 name: "String"
    #               },
    #               uri_path: "String",
    #               query_string: "String",
    #               method: "String"
    #             }
    #           ],
    #           logging_filter: {
    #             filters: [
    #               {
    #                 behavior: "KEEP" # One of: ["KEEP", "DROP"],
    #                 requirement: "MEETS_ALL" # One of: ["MEETS_ALL", "MEETS_ANY"],
    #                 conditions: [
    #                   {
    #                     action_condition: {
    #                       action: "ALLOW" # One of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"]
    #                     },
    #                     label_name_condition: {
    #                       label_name: "String"
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             default_behavior: "KEEP" # One of: ["KEEP", "DROP"]
    #           },
    #           log_type: "WAF_LOGS" # One of: ["WAF_LOGS"]
    #         },
    #         log_delivery_parameters: {
    #           log_types: ["APPLICATION_LOGS" # One of: ["APPLICATION_LOGS", "USAGE_LOGS", "SECURITY_FINDING_LOGS", "ACCESS_LOGS", "CONNECTION_LOGS", "S3_SERVER_ACCESS_LOGS", "ALB_ACCESS_LOGS", "ALB_CONNECTION_LOGS", "ALB_HEALTH_CHECK_LOGS"]]
    #         },
    #         msk_monitoring_parameters: {
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #         },
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       scope: "String",
    #       selection_criteria: "String",
    #       allow_field_updates: false,
    #       regions: ["Region"],
    #       all_regions: false
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

    # <p> Updates an existing telemetry rule that applies across an Amazon Web Services Organization. This operation can only be called by the organization's management account or a delegated administrator account. </p>
    # @param [Hash, Types::UpdateTelemetryRuleForOrganizationInput] params
    # @option params [String] :rule_identifier
    #   <p> The identifier (name or ARN) of the organization telemetry rule to update. </p>
    # @option params [Types::TelemetryRule] :rule
    #   <p> The new configuration details for the organization telemetry rule, including resource type, telemetry type, and destination configuration. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #     rule: { # required
    #       resource_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::EC2::VPC", "AWS::Lambda::Function", "AWS::CloudTrail", "AWS::EKS::Cluster", "AWS::WAFv2::WebACL", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::Route53Resolver::ResolverEndpoint", "AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Browser", "AWS::BedrockAgentCore::CodeInterpreter", "AWS::BedrockAgentCore::Gateway", "AWS::BedrockAgentCore::Memory", "AWS::BedrockAgentCore::WorkloadIdentity", "AWS::BedrockAgentCore::PaymentManager", "AWS::SecurityHub::Hub", "AWS::CloudFront::Distribution", "AWS::SecurityHub::HubV2", "AWS::CloudWatch::OTelEnrichment", "AWS::MSK::Cluster", "AWS::S3::Bucket", "AWS::Bedrock::KnowledgeBase", "AWS::XRay::TransactionSearchConfig"],
    #       telemetry_type: "Logs" # One of: ["Logs", "Metrics", "Traces"], # required
    #       telemetry_source_types: ["VPC_FLOW_LOGS" # One of: ["VPC_FLOW_LOGS", "ROUTE53_RESOLVER_QUERY_LOGS", "EKS_AUDIT_LOGS", "EKS_AUTHENTICATOR_LOGS", "EKS_CONTROLLER_MANAGER_LOGS", "EKS_SCHEDULER_LOGS", "EKS_API_LOGS"]],
    #       destination_configuration: {
    #         destination_type: "cloud-watch-logs" # One of: ["cloud-watch-logs"],
    #         destination_pattern: "String",
    #         retention_in_days: 1,
    #         vpc_flow_log_parameters: {
    #           log_format: "String",
    #           traffic_type: "String",
    #           max_aggregation_interval: 1
    #         },
    #         cloudtrail_parameters: {
    #           advanced_event_selectors: [ # required
    #             {
    #               name: "String",
    #               field_selectors: [ # required
    #                 {
    #                   field: "String", # required
    #                   equals: ["String"],
    #                   starts_with: ["String"],
    #                   ends_with: ["String"],
    #                   not_equals: ["String"],
    #                   not_starts_with: ["String"],
    #                   not_ends_with: ["String"]
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         elb_load_balancer_logging_parameters: {
    #           output_format: "plain" # One of: ["plain", "json"],
    #           field_delimiter: "String"
    #         },
    #         waf_logging_parameters: {
    #           redacted_fields: [
    #             {
    #               single_header: {
    #                 name: "String"
    #               },
    #               uri_path: "String",
    #               query_string: "String",
    #               method: "String"
    #             }
    #           ],
    #           logging_filter: {
    #             filters: [
    #               {
    #                 behavior: "KEEP" # One of: ["KEEP", "DROP"],
    #                 requirement: "MEETS_ALL" # One of: ["MEETS_ALL", "MEETS_ANY"],
    #                 conditions: [
    #                   {
    #                     action_condition: {
    #                       action: "ALLOW" # One of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"]
    #                     },
    #                     label_name_condition: {
    #                       label_name: "String"
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             default_behavior: "KEEP" # One of: ["KEEP", "DROP"]
    #           },
    #           log_type: "WAF_LOGS" # One of: ["WAF_LOGS"]
    #         },
    #         log_delivery_parameters: {
    #           log_types: ["APPLICATION_LOGS" # One of: ["APPLICATION_LOGS", "USAGE_LOGS", "SECURITY_FINDING_LOGS", "ACCESS_LOGS", "CONNECTION_LOGS", "S3_SERVER_ACCESS_LOGS", "ALB_ACCESS_LOGS", "ALB_CONNECTION_LOGS", "ALB_HEALTH_CHECK_LOGS"]]
    #         },
    #         msk_monitoring_parameters: {
    #           enhanced_monitoring: "DEFAULT" # One of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #         },
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       scope: "String",
    #       selection_criteria: "String",
    #       allow_field_updates: false,
    #       regions: ["Region"],
    #       all_regions: false
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

    # <p>Validates a pipeline configuration without creating the pipeline. This operation checks the configuration for syntax errors and compatibility issues.</p>
    # @param [Hash, Types::ValidateTelemetryPipelineConfigurationInput] params
    # @option params [Types::TelemetryPipelineConfiguration] :configuration
    #   <p>The pipeline configuration to validate for syntax and compatibility.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration: { # required
    #       body: "TelemetryPipelineConfigurationBody", # required
    #     }
    #   }
    #   options = {}
    #   response = client.validate_telemetry_pipeline_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         message: "String",
    #         reason: "String",
    #         field_map: {
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ValidateTelemetryPipelineConfigurationOutput]
    def validate_telemetry_pipeline_configuration(params = {}, options = {})
      request = build_request(:validate_telemetry_pipeline_configuration, params)
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
