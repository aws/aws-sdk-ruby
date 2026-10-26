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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:resiliencehubv2)

module Aws::Resiliencehubv2
  # An API client for Aws::Resiliencehubv2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::NGRHServiceCore
    @identifier = :resiliencehubv2

    add_plugin(::Aws::Resiliencehubv2::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Resiliencehubv2::EndpointProvider)
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

    # <p>Creates a resilience assertion for a service.</p>
    # @param [Hash, Types::CreateAssertionRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :text
    #   <p>The text content of the assertion.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     text: "AssertionText", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_assertion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assertion: { # required
    #       service_arn: "Arn", # required
    #       assertion_id: "Uuid", # required
    #       text: "AssertionText", # required
    #       source: "AI_GENERATED" # One of: ["AI_GENERATED", "USER"], # required
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreateAssertionResponse]
    def create_assertion(params = {}, options = {})
      request = build_request(:create_assertion, params)
      request.send_request(options)
    end

    # <p>Creates an input source for a service.</p>
    # @param [Hash, Types::CreateInputSourceRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [Types::ResourceConfiguration] :resource_configuration
    #   <p>Resource configuration for an input source. Provide exactly one field.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     resource_configuration: { # required
    #       # One of:
    #       resource_tags: [
    #         {
    #           key: "TagKey", # required
    #           values: ["TagValue"], # required
    #         }
    #       ],
    #       cfn_stack_arn: "Arn",
    #       tf_state_file_url: "S3Url",
    #       eks: {
    #         cluster_arn: "Arn", # required
    #         namespaces: ["EksNamespace"], # required
    #         label_selector: {
    #           match_labels: {
    #             "EksLabelKey" => "EksLabelValue"
    #           },
    #           match_expressions: [
    #             {
    #               key: "EksLabelKey", # required
    #               operator: "IN" # One of: ["IN", "NOT_IN", "EXISTS", "DOES_NOT_EXIST"], # required
    #               values: ["EksLabelValue"]
    #             }
    #           ]
    #         }
    #       },
    #       design_file_s3_url: "S3Url"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_input_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_arn: "Arn", # required
    #     input_source_id: "InputSourceId", # required
    #   }
    # @return [Types::CreateInputSourceResponse]
    def create_input_source(params = {}, options = {})
      request = build_request(:create_input_source, params)
      request.send_request(options)
    end

    # <p>Creates a resilience policy that defines availability and disaster recovery requirements.</p>
    # @param [Hash, Types::CreatePolicyRequest] params
    # @option params [String] :name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    # @option params [String] :description
    #   <p>Resource description for services and policies.</p>
    # @option params [Types::AvailabilitySlo] :availability_slo
    #   <p>The availability SLO for the resilience policy.</p>
    # @option params [Types::MultiAzTargets] :multi_az
    #   <p>The multi-AZ disaster recovery targets for the resilience policy.</p>
    # @option params [Types::MultiRegionTargets] :multi_region
    #   <p>The multi-Region disaster recovery targets for the resilience policy.</p>
    # @option params [Types::DataRecoveryTargets] :data_recovery
    #   <p>The data recovery targets for the resilience policy.</p>
    # @option params [Boolean] :sharing_enabled
    #   <p>Specifies whether cross-account sharing is enabled for the policy. Only a delegated administrator or the management account can enable sharing.</p>
    # @option params [String] :kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Resource tags.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     description: "LongDescription",
    #     availability_slo: {
    #       target: 1.0
    #     },
    #     multi_az: {
    #       rto_in_minutes: 1,
    #       rpo_in_minutes: 1,
    #       disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #     },
    #     multi_region: {
    #       rto_in_minutes: 1,
    #       rpo_in_minutes: 1,
    #       disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #     },
    #     data_recovery: {
    #       time_between_backups_in_minutes: 1
    #     },
    #     sharing_enabled: false,
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: { # required
    #       policy_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "LongDescription",
    #       availability_slo: {
    #         target: 1.0
    #       },
    #       multi_az: {
    #         rto_in_minutes: 1,
    #         rpo_in_minutes: 1,
    #         disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #       },
    #       multi_region: {
    #         rto_in_minutes: 1,
    #         rpo_in_minutes: 1,
    #         disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #       },
    #       data_recovery: {
    #         time_between_backups_in_minutes: 1
    #       },
    #       sharing_enabled: false,
    #       organization_id: "OrganizationId",
    #       kms_key_id: "KmsKeyId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       associated_service_count: 1,
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreatePolicyResponse]
    def create_policy(params = {}, options = {})
      request = build_request(:create_policy, params)
      request.send_request(options)
    end

    # <p>On-demand report creation. Idempotent — duplicate requests with same clientToken return existing result.</p>
    # @param [Hash, Types::CreateReportRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :report_type
    #   <p>The type of report to generate.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     report_type: "FAILURE_MODE" # One of: ["FAILURE_MODE", "TESTING"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_generation_result: { # required
    #       report_type: "FAILURE_MODE" # One of: ["FAILURE_MODE", "TESTING"], # required
    #       status: "PENDING" # One of: ["PENDING", "SUCCEEDED", "FAILED"], # required
    #       service_arn: "Arn",
    #       assessment_id: "Uuid",
    #       test_run_id: "TestRunId",
    #       test_template_arn: "ServiceOwnedArn",
    #       created_at: Time.now,
    #       report_output: {
    #         # One of:
    #         s3_report_output: {
    #           s3_object_key: "String", # required
    #         },
    #         failed_report_output: {
    #           error_code: "INSUFFICIENT_PERMISSIONS" # One of: ["INSUFFICIENT_PERMISSIONS", "CONFIGURATION_ERROR", "INTERNAL_ERROR"], # required
    #           error_message: "String"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateReportResponse]
    def create_report(params = {}, options = {})
      request = build_request(:create_report, params)
      request.send_request(options)
    end

    # <p>Creates a service.</p>
    # @param [Hash, Types::CreateServiceRequest] params
    # @option params [String] :name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    # @option params [String] :description
    #   <p>Resource description for services and policies.</p>
    # @option params [Array<Types::AssociatedSystem>] :associated_systems
    #   <p>The systems to associate with the service.</p>
    # @option params [String] :policy_arn
    #   <p>ARN identifier.</p>
    # @option params [Array<String>] :regions
    #   <p>The Regions where the service operates.</p>
    # @option params [Types::PermissionModel] :permission_model
    #   <p>The permission model for the service.</p>
    # @option params [String] :dependency_discovery
    #   <p>Caller-settable values for dependency discovery. INITIALIZING is system-managed.</p>
    # @option params [Types::ServiceReportConfiguration] :report_configuration
    #   <p>Configuration for automatic report generation on a Service.</p>
    # @option params [String] :kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    # @option params [Types::DevOpsAgentConfiguration] :dev_ops_agent_configuration
    #   <p>The optional DevOps Agent integration configuration to apply to the new service. If you omit this field, the new service has no DevOps Agent integration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Resource tags.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     description: "LongDescription",
    #     associated_systems: [
    #       {
    #         system_arn: "Arn", # required
    #         system_name: "EntityName",
    #         user_journey_ids: ["UserJourneyId"]
    #       }
    #     ],
    #     policy_arn: "Arn",
    #     regions: ["AwsRegion"], # required
    #     permission_model: { # required
    #       invoker_role_name: "IamRoleName", # required
    #       cross_account_roles: [
    #         {
    #           cross_account_role_arn: "IamRoleArn", # required
    #           external_id: "String"
    #         }
    #       ]
    #     },
    #     dependency_discovery: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     report_configuration: {
    #       report_outputs: [{ # required
    #         # One of:
    #         s3: {
    #           bucket_path: "S3BucketPath", # required
    #           bucket_owner: "AwsAccountId", # required
    #         }
    #       }]
    #     },
    #     kms_key_id: "KmsKeyId",
    #     dev_ops_agent_configuration: {
    #       agent_space_arn: "DevOpsAgentSpaceArn"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "LongDescription",
    #       associated_systems: [
    #         {
    #           system_arn: "Arn", # required
    #           system_name: "EntityName",
    #           user_journey_ids: ["UserJourneyId"]
    #         }
    #       ],
    #       policy_arn: "Arn",
    #       regions: ["AwsRegion"],
    #       permission_model: {
    #         invoker_role_name: "IamRoleName", # required
    #         cross_account_roles: [
    #           {
    #             cross_account_role_arn: "IamRoleArn", # required
    #             external_id: "String"
    #           }
    #         ]
    #       },
    #       dependency_discovery: {
    #         status: "ENABLED" # One of: ["ENABLED", "INITIALIZING", "DISABLED"], # required
    #         updated_at: Time.now,
    #         eligible_resource_count: 1,
    #         message: "String"
    #       },
    #       effective_policy_values: {
    #         availability_slo: {
    #           value: 1.0,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_rto: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_rpo: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_dr_approach: {
    #           value: "String",
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_rto: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_rpo: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_dr_approach: {
    #           value: "String",
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         data_recovery_time_between_backups: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         }
    #       },
    #       achievability: {
    #         availability_slo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         multi_az_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         multi_region_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         data_recovery_time_between_backups: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"]
    #       },
    #       report_configuration: {
    #         report_outputs: [{ # required
    #           # One of:
    #           s3: {
    #             bucket_path: "S3BucketPath", # required
    #             bucket_owner: "AwsAccountId", # required
    #           }
    #         }]
    #       },
    #       kms_key_id: "KmsKeyId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       estimated_assessment_cost: {
    #         amount: 1.0,
    #         currency: "USD" # One of: ["USD"]
    #       },
    #       resource_discovery: {
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "COMPLETED_WITH_FAILURES", "NOT_STARTED"],
    #         last_run_at: Time.now,
    #         error_code: "INVALID_PERMISSIONS" # One of: ["INVALID_PERMISSIONS", "STACK_NOT_FOUND", "CLUSTER_NOT_FOUND", "STATE_FILE_NOT_FOUND", "ACCESS_DENIED", "UNSUPPORTED_CLUSTER", "INTERNAL_ERROR"],
    #         error_message: "String"
    #       },
    #       assessment_status: "NOT_STARTED" # One of: ["NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"],
    #       rerun_assessment: false,
    #       open_findings_count: 1,
    #       resolved_findings_count: 1,
    #       organization_id: "OrganizationId",
    #       ou_id: "OuId",
    #       account_id: "AccountId",
    #       dev_ops_agent_configuration: {
    #         agent_space_arn: "DevOpsAgentSpaceArn",
    #         agent_space_id: "DevOpsAgentSpaceId",
    #         region: "DevOpsAgentRegion",
    #         status: "CONNECTING" # One of: ["CONNECTING", "CONNECTED", "DISCONNECTED", "FAILED"],
    #         operator_app_url: "String",
    #         connected_at: Time.now,
    #         status_reason: "String"
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreateServiceResponse]
    def create_service(params = {}, options = {})
      request = build_request(:create_service, params)
      request.send_request(options)
    end

    # <p>Creates a service function within a service.</p>
    # @param [Hash, Types::CreateServiceFunctionRequest] params
    # @option params [String] :name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :description
    #   <p>Resource description.</p>
    # @option params [String] :criticality
    #   <p>The criticality level of the service function.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityLabel", # required
    #     service_arn: "Arn", # required
    #     description: "EntityDescription",
    #     criticality: "PRIMARY" # One of: ["PRIMARY", "SUPPLEMENTAL"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_service_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_function: { # required
    #       service_arn: "Arn", # required
    #       service_function_id: "EntityId", # required
    #       name: "EntityLabel", # required
    #       description: "EntityDescription",
    #       criticality: "PRIMARY" # One of: ["PRIMARY", "SUPPLEMENTAL"], # required
    #       resource_count: 1,
    #       source: "AI_GENERATED" # One of: ["AI_GENERATED", "USER"],
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreateServiceFunctionResponse]
    def create_service_function(params = {}, options = {})
      request = build_request(:create_service_function, params)
      request.send_request(options)
    end

    # <p>Associates resources with a service function.</p>
    # @param [Hash, Types::CreateServiceFunctionResourcesRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :service_function_id
    #   <p>The identifier of the service function to associate resources with.</p>
    # @option params [Array<String>] :resources
    #   <p>The list of resources to associate with the service function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     service_function_id: "EntityId", # required
    #     resources: ["String"], # required
    #   }
    #   options = {}
    #   response = client.create_service_function_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_arn: "Arn",
    #     service_function_id: "EntityId",
    #     resources: ["String"]
    #   }
    # @return [Types::CreateServiceFunctionResourcesResponse]
    def create_service_function_resources(params = {}, options = {})
      request = build_request(:create_service_function_resources, params)
      request.send_request(options)
    end

    # <p>Creates a system that represents a logical grouping of services.</p>
    # @param [Hash, Types::CreateSystemRequest] params
    # @option params [String] :name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    # @option params [String] :description
    #   <p>Resource description.</p>
    # @option params [Boolean] :sharing_enabled
    #   <p>Indicates whether cross-account sharing is enabled for the system.</p>
    # @option params [String] :kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Resource tags.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     description: "EntityDescription",
    #     sharing_enabled: false,
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     system: { # required
    #       system_arn: "Arn", # required
    #       system_id: "SystemId", # required
    #       name: "EntityName", # required
    #       description: "EntityDescription",
    #       sharing_enabled: false,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       kms_key_id: "KmsKeyId",
    #       organization_id: "OrganizationId",
    #       ou_id: "OuId",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreateSystemResponse]
    def create_system(params = {}, options = {})
      request = build_request(:create_system, params)
      request.send_request(options)
    end

    # <p>Creates a test for a service by configuring a test template. Each service has one test per template.</p>
    # @param [Hash, Types::CreateTestRequest] params
    # @option params [String] :service_arn
    #   <p>The ARN of the service to create the test for.</p>
    # @option params [String] :test_template_arn
    #   <p>The ARN of the test template to configure.</p>
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   <p>The logging configuration for the test.</p>
    # @option params [Array<Types::StopCondition>] :stop_conditions
    #   <p>The stop conditions for the test.</p>
    # @option params [String] :role_name
    #   <p>The name of the IAM execution role to use when running the test.</p>
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>The parameter values for the test.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     test_template_arn: "ServiceOwnedArn", # required
    #     logging_configuration: {
    #       s3_bucket_name: "String",
    #       cloud_watch_log_group_arn: "Arn",
    #       log_schema_version: "String"
    #     },
    #     stop_conditions: [
    #       {
    #         source: "aws:cloudwatch:alarm" # One of: ["aws:cloudwatch:alarm", "none"], # required
    #         value: "String", # required
    #       }
    #     ],
    #     role_name: "IamRoleName",
    #     parameters: {
    #       "ParameterKey" => ["ParameterValue"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test: { # required
    #       test_id: "TestId", # required
    #       test_template_arn: "ServiceOwnedArn", # required
    #       service_arn: "Arn", # required
    #       name: "String", # required
    #       actions: [
    #         {
    #           action_id: "String", # required
    #           description: "String",
    #           resource_type: "String", # required
    #         }
    #       ],
    #       logging_configuration: {
    #         s3_bucket_name: "String",
    #         cloud_watch_log_group_arn: "Arn",
    #         log_schema_version: "String"
    #       },
    #       stop_conditions: [
    #         {
    #           source: "aws:cloudwatch:alarm" # One of: ["aws:cloudwatch:alarm", "none"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       role_name: "IamRoleName",
    #       parameters: {
    #         "ParameterKey" => ["ParameterValue"]
    #       },
    #       total_test_runs: 1, # required
    #       successful_test_runs: 1, # required
    #       creation_time: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateTestResponse]
    def create_test(params = {}, options = {})
      request = build_request(:create_test, params)
      request.send_request(options)
    end

    # <p>Creates a user journey within a system.</p>
    # @param [Hash, Types::CreateUserJourneyRequest] params
    # @option params [String] :system_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    # @option params [String] :description
    #   <p>Resource description.</p>
    # @option params [String] :policy_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_arn: "Arn", # required
    #     name: "EntityLabel", # required
    #     description: "EntityDescription",
    #     policy_arn: "Arn",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_user_journey(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_journey: { # required
    #       user_journey_id: "UserJourneyId", # required
    #       name: "EntityLabel", # required
    #       description: "EntityDescription",
    #       policy_arn: "Arn",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreateUserJourneyResponse]
    def create_user_journey(params = {}, options = {})
      request = build_request(:create_user_journey, params)
      request.send_request(options)
    end

    # <p>Deletes a resilience assertion from a service.</p>
    # @param [Hash, Types::DeleteAssertionRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :assertion_id
    #   <p>The unique identifier of the assertion to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     assertion_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_assertion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assertion_id: "Uuid"
    #   }
    # @return [Types::DeleteAssertionResponse]
    def delete_assertion(params = {}, options = {})
      request = build_request(:delete_assertion, params)
      request.send_request(options)
    end

    # <p>Deletes an input source.</p>
    # @param [Hash, Types::DeleteInputSourceRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :input_source_id
    #   <p>The identifier of the input source to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     input_source_id: "InputSourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_input_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_arn: "Arn", # required
    #     input_source_id: "InputSourceId", # required
    #   }
    # @return [Types::DeleteInputSourceResponse]
    def delete_input_source(params = {}, options = {})
      request = build_request(:delete_input_source, params)
      request.send_request(options)
    end

    # <p>Deletes a resilience policy.</p>
    # @param [Hash, Types::DeletePolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>ARN identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "Arn", # required
    #   }
    # @return [Types::DeletePolicyResponse]
    def delete_policy(params = {}, options = {})
      request = build_request(:delete_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a service.</p>
    # @param [Hash, Types::DeleteServiceRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_arn: "Arn", # required
    #   }
    # @return [Types::DeleteServiceResponse]
    def delete_service(params = {}, options = {})
      request = build_request(:delete_service, params)
      request.send_request(options)
    end

    # <p>Deletes a service function.</p>
    # @param [Hash, Types::DeleteServiceFunctionRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :service_function_id
    #   <p>The identifier of the service function to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     service_function_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.delete_service_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_function_id: "EntityId"
    #   }
    # @return [Types::DeleteServiceFunctionResponse]
    def delete_service_function(params = {}, options = {})
      request = build_request(:delete_service_function, params)
      request.send_request(options)
    end

    # <p>Removes resources from a service function.</p>
    # @param [Hash, Types::DeleteServiceFunctionResourcesRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :service_function_id
    #   <p>The identifier of the service function to remove resources from.</p>
    # @option params [Array<String>] :resources
    #   <p>The list of resources to remove from the service function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     service_function_id: "EntityId", # required
    #     resources: ["String"], # required
    #   }
    #   options = {}
    #   response = client.delete_service_function_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_arn: "Arn",
    #     service_function_id: "EntityId",
    #     resources: ["String"]
    #   }
    # @return [Types::DeleteServiceFunctionResourcesResponse]
    def delete_service_function_resources(params = {}, options = {})
      request = build_request(:delete_service_function_resources, params)
      request.send_request(options)
    end

    # <p>Deletes a system.</p>
    # @param [Hash, Types::DeleteSystemRequest] params
    # @option params [String] :system_arn
    #   <p>ARN identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     system_arn: "Arn", # required
    #   }
    # @return [Types::DeleteSystemResponse]
    def delete_system(params = {}, options = {})
      request = build_request(:delete_system, params)
      request.send_request(options)
    end

    # <p>Deletes a test.</p>
    # @param [Hash, Types::DeleteTestRequest] params
    # @option params [String] :test_id
    #   <p>The identifier of the test to delete.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_id: "TestId", # required
    #   }
    # @return [Types::DeleteTestResponse]
    def delete_test(params = {}, options = {})
      request = build_request(:delete_test, params)
      request.send_request(options)
    end

    # <p>Removes monitoring sources from a test. The operation is transactional and idempotent — removing a source that is not attached is a no-op.</p>
    # @param [Hash, Types::DeleteTestSourcesRequest] params
    # @option params [String] :test_id
    #   <p>The identifier of the test to remove sources from.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    # @option params [Array<Types::TestSourceInput>] :test_sources
    #   <p>The monitoring sources to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #     test_sources: [{ # required
    #       # One of:
    #       success_criteria_alarm: {
    #         alarm_arn: "CloudWatchAlarmArn", # required
    #       },
    #       observability_alarm: {
    #         alarm_arn: "CloudWatchAlarmArn", # required
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.delete_test_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTestSourcesResponse]
    def delete_test_sources(params = {}, options = {})
      request = build_request(:delete_test_sources, params)
      request.send_request(options)
    end

    # <p>Deletes a user journey.</p>
    # @param [Hash, Types::DeleteUserJourneyRequest] params
    # @option params [String] :system_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :user_journey_id
    #   <p>The identifier of the user journey to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_arn: "Arn", # required
    #     user_journey_id: "UserJourneyId", # required
    #   }
    #   options = {}
    #   response = client.delete_user_journey(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_journey_id: "UserJourneyId", # required
    #   }
    # @return [Types::DeleteUserJourneyResponse]
    def delete_user_journey(params = {}, options = {})
      request = build_request(:delete_user_journey, params)
      request.send_request(options)
    end

    # <p>Retrieves the dependency insights generated for a service. The response reports the current generation status; insights are populated once generation has completed. If generation failed, the response includes an error code, whose possible values are listed under the response's errorCode field, and a message describing the cause. To use this operation, you must have the <code>resiliencehub:GetDependencyInsights</code> permission on the service.</p>
    # @param [Hash, Types::GetDependencyInsightsRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_dependency_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     overview: "String",
    #     insights: [
    #       {
    #         category: "CROSS_REGION" # One of: ["CROSS_REGION", "NEW_DEPENDENCY", "THIRD_PARTY", "UNEVEN_USAGE", "AWS_SERVICE"], # required
    #         description: "String", # required
    #       }
    #     ],
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #     created_at: Time.now,
    #     error_code: "INSUFFICIENT_DATA" # One of: ["INSUFFICIENT_DATA", "LLM_GENERATION_FAILED", "INTERNAL_ERROR"],
    #     error_message: "String"
    #   }
    # @return [Types::GetDependencyInsightsResponse]
    def get_dependency_insights(params = {}, options = {})
      request = build_request(:get_dependency_insights, params)
      request.send_request(options)
    end

    # <p>Retrieves a finding by findingId.</p>
    # @param [Hash, Types::GetFailureModeFindingRequest] params
    # @option params [String] :finding_id
    #   <p>The unique identifier of the finding to retrieve.</p>
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_id: "Uuid", # required
    #     service_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_failure_mode_finding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding: {
    #       finding_id: "Uuid",
    #       name: "String",
    #       description: "EntityDescription",
    #       failure_category: "SHARED_FATE" # One of: ["SHARED_FATE", "EXCESSIVE_LOAD", "EXCESSIVE_LATENCY", "MISCONFIGURATION_AND_BUGS", "SINGLE_POINT_OF_FAILURE"],
    #       status: "OPEN" # One of: ["OPEN", "RESOLVED", "IRRELEVANT"],
    #       reasoning: "String",
    #       comment: "String",
    #       severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #       service_functions: ["EntityId"],
    #       policy_component: "AVAILABILITY_SLO" # One of: ["AVAILABILITY_SLO", "MULTI_AZ_DISASTER_RECOVERY", "MULTI_REGION_DISASTER_RECOVERY", "DATA_RECOVERY"],
    #       infrastructure_and_code_recommendations: [
    #         {
    #           suggested_changes: ["EntityDescription"]
    #         }
    #       ],
    #       observability_recommendations: [
    #         {
    #           suggested_changes: ["EntityDescription"]
    #         }
    #       ],
    #       testing_recommendations: [
    #         {
    #           suggested_changes: ["EntityDescription"]
    #         }
    #       ],
    #       updated_at: Time.now,
    #       investigation_deep_link: "String"
    #     }
    #   }
    # @return [Types::GetFailureModeFindingResponse]
    def get_failure_mode_finding(params = {}, options = {})
      request = build_request(:get_failure_mode_finding, params)
      request.send_request(options)
    end

    # <p>Retrieves a resilience policy by ARN.</p>
    # @param [Hash, Types::GetPolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>ARN identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: { # required
    #       policy_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "LongDescription",
    #       availability_slo: {
    #         target: 1.0
    #       },
    #       multi_az: {
    #         rto_in_minutes: 1,
    #         rpo_in_minutes: 1,
    #         disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #       },
    #       multi_region: {
    #         rto_in_minutes: 1,
    #         rpo_in_minutes: 1,
    #         disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #       },
    #       data_recovery: {
    #         time_between_backups_in_minutes: 1
    #       },
    #       sharing_enabled: false,
    #       organization_id: "OrganizationId",
    #       kms_key_id: "KmsKeyId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       associated_service_count: 1,
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetPolicyResponse]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves a service by ARN.</p>
    # @param [Hash, Types::GetServiceRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "LongDescription",
    #       associated_systems: [
    #         {
    #           system_arn: "Arn", # required
    #           system_name: "EntityName",
    #           user_journey_ids: ["UserJourneyId"]
    #         }
    #       ],
    #       policy_arn: "Arn",
    #       regions: ["AwsRegion"],
    #       permission_model: {
    #         invoker_role_name: "IamRoleName", # required
    #         cross_account_roles: [
    #           {
    #             cross_account_role_arn: "IamRoleArn", # required
    #             external_id: "String"
    #           }
    #         ]
    #       },
    #       dependency_discovery: {
    #         status: "ENABLED" # One of: ["ENABLED", "INITIALIZING", "DISABLED"], # required
    #         updated_at: Time.now,
    #         eligible_resource_count: 1,
    #         message: "String"
    #       },
    #       effective_policy_values: {
    #         availability_slo: {
    #           value: 1.0,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_rto: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_rpo: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_dr_approach: {
    #           value: "String",
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_rto: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_rpo: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_dr_approach: {
    #           value: "String",
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         data_recovery_time_between_backups: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         }
    #       },
    #       achievability: {
    #         availability_slo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         multi_az_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         multi_region_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         data_recovery_time_between_backups: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"]
    #       },
    #       report_configuration: {
    #         report_outputs: [{ # required
    #           # One of:
    #           s3: {
    #             bucket_path: "S3BucketPath", # required
    #             bucket_owner: "AwsAccountId", # required
    #           }
    #         }]
    #       },
    #       kms_key_id: "KmsKeyId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       estimated_assessment_cost: {
    #         amount: 1.0,
    #         currency: "USD" # One of: ["USD"]
    #       },
    #       resource_discovery: {
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "COMPLETED_WITH_FAILURES", "NOT_STARTED"],
    #         last_run_at: Time.now,
    #         error_code: "INVALID_PERMISSIONS" # One of: ["INVALID_PERMISSIONS", "STACK_NOT_FOUND", "CLUSTER_NOT_FOUND", "STATE_FILE_NOT_FOUND", "ACCESS_DENIED", "UNSUPPORTED_CLUSTER", "INTERNAL_ERROR"],
    #         error_message: "String"
    #       },
    #       assessment_status: "NOT_STARTED" # One of: ["NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"],
    #       rerun_assessment: false,
    #       open_findings_count: 1,
    #       resolved_findings_count: 1,
    #       organization_id: "OrganizationId",
    #       ou_id: "OuId",
    #       account_id: "AccountId",
    #       dev_ops_agent_configuration: {
    #         agent_space_arn: "DevOpsAgentSpaceArn",
    #         agent_space_id: "DevOpsAgentSpaceId",
    #         region: "DevOpsAgentRegion",
    #         status: "CONNECTING" # One of: ["CONNECTING", "CONNECTED", "DISCONNECTED", "FAILED"],
    #         operator_app_url: "String",
    #         connected_at: Time.now,
    #         status_reason: "String"
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetServiceResponse]
    def get_service(params = {}, options = {})
      request = build_request(:get_service, params)
      request.send_request(options)
    end

    # <p>Retrieves a system by ARN.</p>
    # @param [Hash, Types::GetSystemRequest] params
    # @option params [String] :system_arn
    #   <p>ARN identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     system: { # required
    #       system_arn: "Arn", # required
    #       system_id: "SystemId", # required
    #       name: "EntityName", # required
    #       description: "EntityDescription",
    #       sharing_enabled: false,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       kms_key_id: "KmsKeyId",
    #       organization_id: "OrganizationId",
    #       ou_id: "OuId",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetSystemResponse]
    def get_system(params = {}, options = {})
      request = build_request(:get_system, params)
      request.send_request(options)
    end

    # <p>Retrieves a test by ID.</p>
    # @param [Hash, Types::GetTestRequest] params
    # @option params [String] :test_id
    #   <p>The identifier of the test to retrieve.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test: { # required
    #       test_id: "TestId", # required
    #       test_template_arn: "ServiceOwnedArn", # required
    #       service_arn: "Arn", # required
    #       name: "String", # required
    #       actions: [
    #         {
    #           action_id: "String", # required
    #           description: "String",
    #           resource_type: "String", # required
    #         }
    #       ],
    #       logging_configuration: {
    #         s3_bucket_name: "String",
    #         cloud_watch_log_group_arn: "Arn",
    #         log_schema_version: "String"
    #       },
    #       stop_conditions: [
    #         {
    #           source: "aws:cloudwatch:alarm" # One of: ["aws:cloudwatch:alarm", "none"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       role_name: "IamRoleName",
    #       parameters: {
    #         "ParameterKey" => ["ParameterValue"]
    #       },
    #       total_test_runs: 1, # required
    #       successful_test_runs: 1, # required
    #       creation_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetTestResponse]
    def get_test(params = {}, options = {})
      request = build_request(:get_test, params)
      request.send_request(options)
    end

    # <p>Retrieves a test run by ID, including its status, results, and the configuration snapshotted when the run started.</p>
    # @param [Hash, Types::GetTestRunRequest] params
    # @option params [String] :test_run_id
    #   <p>The identifier of the test run to retrieve.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_test_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_run: { # required
    #       test_run_id: "TestRunId", # required
    #       test_id: "TestId", # required
    #       status: "INITIALIZING" # One of: ["INITIALIZING", "RUNNING", "STOPPING", "PASSED", "FAILED", "STOPPED", "ERROR"], # required
    #       service_arn: "Arn",
    #       started_at: Time.now, # required
    #       ended_at: Time.now,
    #       experiments: [
    #         {
    #           experiment_arn: "Arn", # required
    #           details: "String"
    #         }
    #       ],
    #       event_count: 1,
    #       parameters: {
    #         "ParameterKey" => ["ParameterValue"]
    #       },
    #       error_message: "String",
    #       stop_conditions: [
    #         {
    #           source: "aws:cloudwatch:alarm" # One of: ["aws:cloudwatch:alarm", "none"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       logging_configuration: {
    #         s3_bucket_name: "String",
    #         cloud_watch_log_group_arn: "Arn",
    #         log_schema_version: "String"
    #       },
    #       role_name: "IamRoleName",
    #       test_template_arn: "ServiceOwnedArn", # required
    #       report_configuration: {
    #         report_output: [{ # required
    #           # One of:
    #           s3: {
    #             bucket_path: "S3BucketPath", # required
    #             bucket_owner: "AwsAccountId", # required
    #           }
    #         }]
    #       },
    #       policy: {
    #         policy_arn: "Arn",
    #         name: "EntityName",
    #         availability_slo: {
    #           target: 1.0
    #         },
    #         multi_az: {
    #           rto_in_minutes: 1,
    #           rpo_in_minutes: 1,
    #           disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #         },
    #         multi_region: {
    #           rto_in_minutes: 1,
    #           rpo_in_minutes: 1,
    #           disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #         },
    #         data_recovery: {
    #           time_between_backups_in_minutes: 1
    #         }
    #       },
    #       report_output: {
    #         report_type: "FAILURE_MODE" # One of: ["FAILURE_MODE", "TESTING"], # required
    #         status: "PENDING" # One of: ["PENDING", "SUCCEEDED", "FAILED"], # required
    #         service_arn: "Arn",
    #         assessment_id: "Uuid",
    #         test_run_id: "TestRunId",
    #         test_template_arn: "ServiceOwnedArn",
    #         created_at: Time.now,
    #         report_output: {
    #           # One of:
    #           s3_report_output: {
    #             s3_object_key: "String", # required
    #           },
    #           failed_report_output: {
    #             error_code: "INSUFFICIENT_PERMISSIONS" # One of: ["INSUFFICIENT_PERMISSIONS", "CONFIGURATION_ERROR", "INTERNAL_ERROR"], # required
    #             error_message: "String"
    #           }
    #         }
    #       },
    #       region_switch_plan_arn: "Arn",
    #       region_switch_execution_id: "RegionSwitchExecutionId",
    #       permission_model: {
    #         invoker_role_name: "IamRoleName", # required
    #         cross_account_roles: [
    #           {
    #             cross_account_role_arn: "IamRoleArn", # required
    #             external_id: "String"
    #           }
    #         ]
    #       },
    #       regions: ["AwsRegion"],
    #       account_targeting: "SINGLE_ACCOUNT" # One of: ["SINGLE_ACCOUNT", "MULTI_ACCOUNT"],
    #       dev_ops_agent_investigation: {
    #         verdict: "PASS" # One of: ["PASS", "FAIL"],
    #         confidence: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW"],
    #         deep_link: "String",
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED"],
    #         summary: "String"
    #       }
    #     }
    #   }
    # @return [Types::GetTestRunResponse]
    def get_test_run(params = {}, options = {})
      request = build_request(:get_test_run, params)
      request.send_request(options)
    end

    # <p>Retrieves a resilience test template by ARN, including the parameters it accepts and the fault actions it runs.</p>
    # @param [Hash, Types::GetTestTemplateRequest] params
    # @option params [String] :test_template_arn
    #   <p>The ARN of the test template to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_template_arn: "ServiceOwnedArn", # required
    #   }
    #   options = {}
    #   response = client.get_test_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_template: { # required
    #       test_template_arn: "ServiceOwnedArn", # required
    #       name: "String", # required
    #       description: "String",
    #       parameters: [
    #         {
    #           name: "String", # required
    #           description: "String",
    #           type: "STRING" # One of: ["STRING", "STRING_LIST", "INTEGER"], # required
    #           required: false, # required
    #           default_value: "String",
    #           max_values: 1
    #         }
    #       ],
    #       actions: [
    #         {
    #           action_id: "String", # required
    #           description: "String",
    #           resource_type: "String", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetTestTemplateResponse]
    def get_test_template(params = {}, options = {})
      request = build_request(:get_test_template, params)
      request.send_request(options)
    end

    # <p>Retrieves a user journey.</p>
    # @param [Hash, Types::GetUserJourneyRequest] params
    # @option params [String] :system_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :user_journey_id
    #   <p>The identifier of the user journey to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_arn: "Arn", # required
    #     user_journey_id: "UserJourneyId", # required
    #   }
    #   options = {}
    #   response = client.get_user_journey(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_journey: { # required
    #       user_journey_id: "UserJourneyId", # required
    #       name: "EntityLabel", # required
    #       description: "EntityDescription",
    #       policy_arn: "Arn",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetUserJourneyResponse]
    def get_user_journey(params = {}, options = {})
      request = build_request(:get_user_journey, params)
      request.send_request(options)
    end

    # <p>Imports a V1 app into the V2 resource model, creating a service with the same name.</p>
    # @param [Hash, Types::ImportAppRequest] params
    # @option params [String] :v1_app_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :policy_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    # @option params [Boolean] :skip_manually_added_resources
    #   <p>Whether to skip manually added resources during import.</p>
    # @option params [Array<Types::AssociatedSystem>] :associated_systems
    #   <p>The systems to associate with the imported service.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Resource tags.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     v1_app_arn: "Arn", # required
    #     policy_arn: "Arn",
    #     kms_key_id: "KmsKeyId",
    #     skip_manually_added_resources: false,
    #     associated_systems: [
    #       {
    #         system_arn: "Arn", # required
    #         system_name: "EntityName",
    #         user_journey_ids: ["UserJourneyId"]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.import_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "LongDescription",
    #       associated_systems: [
    #         {
    #           system_arn: "Arn", # required
    #           system_name: "EntityName",
    #           user_journey_ids: ["UserJourneyId"]
    #         }
    #       ],
    #       policy_arn: "Arn",
    #       regions: ["AwsRegion"],
    #       permission_model: {
    #         invoker_role_name: "IamRoleName", # required
    #         cross_account_roles: [
    #           {
    #             cross_account_role_arn: "IamRoleArn", # required
    #             external_id: "String"
    #           }
    #         ]
    #       },
    #       dependency_discovery: {
    #         status: "ENABLED" # One of: ["ENABLED", "INITIALIZING", "DISABLED"], # required
    #         updated_at: Time.now,
    #         eligible_resource_count: 1,
    #         message: "String"
    #       },
    #       effective_policy_values: {
    #         availability_slo: {
    #           value: 1.0,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_rto: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_rpo: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_dr_approach: {
    #           value: "String",
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_rto: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_rpo: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_dr_approach: {
    #           value: "String",
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         data_recovery_time_between_backups: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         }
    #       },
    #       achievability: {
    #         availability_slo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         multi_az_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         multi_region_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         data_recovery_time_between_backups: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"]
    #       },
    #       report_configuration: {
    #         report_outputs: [{ # required
    #           # One of:
    #           s3: {
    #             bucket_path: "S3BucketPath", # required
    #             bucket_owner: "AwsAccountId", # required
    #           }
    #         }]
    #       },
    #       kms_key_id: "KmsKeyId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       estimated_assessment_cost: {
    #         amount: 1.0,
    #         currency: "USD" # One of: ["USD"]
    #       },
    #       resource_discovery: {
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "COMPLETED_WITH_FAILURES", "NOT_STARTED"],
    #         last_run_at: Time.now,
    #         error_code: "INVALID_PERMISSIONS" # One of: ["INVALID_PERMISSIONS", "STACK_NOT_FOUND", "CLUSTER_NOT_FOUND", "STATE_FILE_NOT_FOUND", "ACCESS_DENIED", "UNSUPPORTED_CLUSTER", "INTERNAL_ERROR"],
    #         error_message: "String"
    #       },
    #       assessment_status: "NOT_STARTED" # One of: ["NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"],
    #       rerun_assessment: false,
    #       open_findings_count: 1,
    #       resolved_findings_count: 1,
    #       organization_id: "OrganizationId",
    #       ou_id: "OuId",
    #       account_id: "AccountId",
    #       dev_ops_agent_configuration: {
    #         agent_space_arn: "DevOpsAgentSpaceArn",
    #         agent_space_id: "DevOpsAgentSpaceId",
    #         region: "DevOpsAgentRegion",
    #         status: "CONNECTING" # One of: ["CONNECTING", "CONNECTED", "DISCONNECTED", "FAILED"],
    #         operator_app_url: "String",
    #         connected_at: Time.now,
    #         status_reason: "String"
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::ImportAppResponse]
    def import_app(params = {}, options = {})
      request = build_request(:import_app, params)
      request.send_request(options)
    end

    # <p>Imports a V1 policy into V2, mapping RTO/RPO values from V1 scenarios.</p>
    # @param [Hash, Types::ImportPolicyRequest] params
    # @option params [String] :v1_policy_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    # @option params [Types::AvailabilitySlo] :availability_slo
    #   <p>The availability SLO to set on the imported policy.</p>
    # @option params [String] :multi_az_disaster_recovery_approach
    #   <p>The multi-AZ disaster recovery approach for the imported policy.</p>
    # @option params [String] :multi_region_disaster_recovery_approach
    #   <p>The multi-Region disaster recovery approach for the imported policy.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Resource tags.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     v1_policy_arn: "Arn", # required
    #     kms_key_id: "KmsKeyId",
    #     availability_slo: {
    #       target: 1.0
    #     },
    #     multi_az_disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"],
    #     multi_region_disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.import_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: { # required
    #       policy_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "LongDescription",
    #       availability_slo: {
    #         target: 1.0
    #       },
    #       multi_az: {
    #         rto_in_minutes: 1,
    #         rpo_in_minutes: 1,
    #         disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #       },
    #       multi_region: {
    #         rto_in_minutes: 1,
    #         rpo_in_minutes: 1,
    #         disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #       },
    #       data_recovery: {
    #         time_between_backups_in_minutes: 1
    #       },
    #       sharing_enabled: false,
    #       organization_id: "OrganizationId",
    #       kms_key_id: "KmsKeyId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       associated_service_count: 1,
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::ImportPolicyResponse]
    def import_policy(params = {}, options = {})
      request = build_request(:import_policy, params)
      request.send_request(options)
    end

    # <p>Lists resilience assertions for a service.</p>
    # @param [Hash, Types::ListAssertionsRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :source
    #   <p>Filter assertions by source type.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     source: "AI_GENERATED" # One of: ["AI_GENERATED", "USER"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_assertions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assertions: [ # required
    #       {
    #         service_arn: "Arn", # required
    #         assertion_id: "Uuid", # required
    #         text: "AssertionText", # required
    #         source: "AI_GENERATED" # One of: ["AI_GENERATED", "USER"], # required
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssertionsResponse]
    def list_assertions(params = {}, options = {})
      request = build_request(:list_assertions, params)
      request.send_request(options)
    end

    # <p>Lists dependencies discovered for services.</p>
    # @param [Hash, Types::ListDependenciesRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [Time] :query_range_start_time
    #   <p>The start time for the dependency query range.</p>
    # @option params [Time] :query_range_end_time
    #   <p>The end time for the dependency query range.</p>
    # @option params [String] :query_range_granularity
    #   <p>The granularity for the dependency query range.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn",
    #     query_range_start_time: Time.now,
    #     query_range_end_time: Time.now,
    #     query_range_granularity: "HOURLY" # One of: ["HOURLY", "DAILY"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_dependencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dependency_summaries: [ # required
    #       {
    #         dependency_id: "Uuid", # required
    #         service_arn: "Arn", # required
    #         dependency_name: "String", # required
    #         dns_name: "String", # required
    #         location: "String", # required
    #         last_detected_time: Time.now, # required
    #         source_regions: ["AwsRegion"], # required
    #         provider: "String",
    #         query_range: { # required
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #           granularity: "HOURLY" # One of: ["HOURLY", "DAILY"], # required
    #           data_points: [ # required
    #             {
    #               timestamp: Time.now, # required
    #               query_count: 1, # required
    #             }
    #           ]
    #         },
    #         criticality: "HARD" # One of: ["HARD", "SOFT", "UNKNOWN"], # required
    #         comment: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDependenciesResponse]
    def list_dependencies(params = {}, options = {})
      request = build_request(:list_dependencies, params)
      request.send_request(options)
    end

    # <p>Lists failure mode assessments.</p>
    # @param [Hash, Types::ListFailureModeAssessmentsRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [Array<String>] :assessment_statuses
    #   <p>Specifies the assessment statuses to include in the results.</p>
    # @option params [Time] :started_after
    #   <p>Specifies that only assessments that started at or after this timestamp appear in the results.</p>
    # @option params [Time] :ended_before
    #   <p>Specifies that only assessments that ended at or before this timestamp appear in the results.</p>
    # @option params [String] :sort_by
    #   <p>The field to use for sorting failure mode assessments.</p>
    # @option params [String] :sort_order
    #   <p>The sort order for results.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     assessment_statuses: ["NOT_STARTED" # One of: ["NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"]],
    #     started_after: Time.now,
    #     ended_before: Time.now,
    #     sort_by: "STARTED_AT" # One of: ["STARTED_AT"],
    #     sort_order: "ASC" # One of: ["ASC", "DESC"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_failure_mode_assessments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_summaries: [ # required
    #       {
    #         assessment_id: "Uuid", # required
    #         service_arn: "Arn", # required
    #         assessment_status: "NOT_STARTED" # One of: ["NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"],
    #         assessment_step: "TOPOLOGY_GENERATION" # One of: ["TOPOLOGY_GENERATION", "INPUT_VALIDATION", "DESIGN_ANALYSIS", "TOPOLOGY_ENHANCEMENT", "SERVICE_FUNCTION_GENERATION", "POLICY_VALIDATION", "RESILIENCE_ASSESSMENT", "FAILURE_MODE_FINDINGS_CONSOLIDATION", "FAILURE_MODE_FINDINGS_ENRICHMENT"],
    #         total_findings: 1,
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         error_message: "String",
    #         error_code: "INVALID_PERMISSIONS" # One of: ["INVALID_PERMISSIONS", "CMK_ACCESS_DENIED", "AGENT_ERROR", "INTERNAL_ERROR", "DESIGN_FILE_ACCESS_DENIED"],
    #         assessment_cost: {
    #           amount: 1.0,
    #           currency: "USD" # One of: ["USD"]
    #         },
    #         billable_assessment_unit_count: 1,
    #         achievability: {
    #           availability_slo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #           multi_az_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #           multi_region_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #           data_recovery_time_between_backups: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFailureModeAssessmentsResponse]
    def list_failure_mode_assessments(params = {}, options = {})
      request = build_request(:list_failure_mode_assessments, params)
      request.send_request(options)
    end

    # <p>List findings.</p>
    # @param [Hash, Types::ListFailureModeFindingsRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :severity
    #   <p>Filter findings by severity.</p>
    # @option params [String] :failure_category
    #   <p>Filter findings by failure category.</p>
    # @option params [String] :status
    #   <p>Filter findings by status.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #     failure_category: "SHARED_FATE" # One of: ["SHARED_FATE", "EXCESSIVE_LOAD", "EXCESSIVE_LATENCY", "MISCONFIGURATION_AND_BUGS", "SINGLE_POINT_OF_FAILURE"],
    #     status: "OPEN" # One of: ["OPEN", "RESOLVED", "IRRELEVANT"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_failure_mode_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings_summary: [ # required
    #       {
    #         service_arn: "Arn",
    #         finding_id: "Uuid",
    #         name: "String",
    #         description: "EntityDescription",
    #         failure_category: "SHARED_FATE" # One of: ["SHARED_FATE", "EXCESSIVE_LOAD", "EXCESSIVE_LATENCY", "MISCONFIGURATION_AND_BUGS", "SINGLE_POINT_OF_FAILURE"],
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "OPEN" # One of: ["OPEN", "RESOLVED", "IRRELEVANT"],
    #         policy_component: "AVAILABILITY_SLO" # One of: ["AVAILABILITY_SLO", "MULTI_AZ_DISASTER_RECOVERY", "MULTI_REGION_DISASTER_RECOVERY", "DATA_RECOVERY"],
    #         updated_at: Time.now,
    #         investigation_deep_link: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFailureModeFindingsResponse]
    def list_failure_mode_findings(params = {}, options = {})
      request = build_request(:list_failure_mode_findings, params)
      request.send_request(options)
    end

    # <p>Lists input sources for a service.</p>
    # @param [Hash, Types::ListInputSourcesRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :type
    #   <p>Filter input sources by type.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     type: "CFN_STACK" # One of: ["CFN_STACK", "TAGS", "EKS", "TERRAFORM", "DESIGN_FILE", "MONITORING"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_input_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     input_source_summaries: [ # required
    #       {
    #         input_source_id: "InputSourceId", # required
    #         type: "CFN_STACK" # One of: ["CFN_STACK", "TAGS", "EKS", "TERRAFORM", "DESIGN_FILE", "MONITORING"],
    #         resource_tags: [
    #           {
    #             key: "TagKey", # required
    #             values: ["TagValue"], # required
    #           }
    #         ],
    #         cfn_stack_arn: "Arn",
    #         tf_state_file_url: "S3Url",
    #         eks: {
    #           cluster_arn: "Arn", # required
    #           namespaces: ["EksNamespace"], # required
    #           label_selector: {
    #             match_labels: {
    #               "EksLabelKey" => "EksLabelValue"
    #             },
    #             match_expressions: [
    #               {
    #                 key: "EksLabelKey", # required
    #                 operator: "IN" # One of: ["IN", "NOT_IN", "EXISTS", "DOES_NOT_EXIST"], # required
    #                 values: ["EksLabelValue"]
    #               }
    #             ]
    #           }
    #         },
    #         design_file_s3_url: "S3Url",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInputSourcesResponse]
    def list_input_sources(params = {}, options = {})
      request = build_request(:list_input_sources, params)
      request.send_request(options)
    end

    # <p>Lists resilience policies.</p>
    # @param [Hash, Types::ListPoliciesRequest] params
    # @option params [String] :account_id
    #   <p>The identifier of the account that owns the policies to include in the results.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_summaries: [ # required
    #       {
    #         policy_arn: "Arn", # required
    #         name: "EntityName", # required
    #         availability_slo: {
    #           target: 1.0
    #         },
    #         multi_az: {
    #           rto_in_minutes: 1,
    #           rpo_in_minutes: 1,
    #           disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #         },
    #         multi_region: {
    #           rto_in_minutes: 1,
    #           rpo_in_minutes: 1,
    #           disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #         },
    #         data_recovery: {
    #           time_between_backups_in_minutes: 1
    #         },
    #         sharing_enabled: false,
    #         organization_id: "OrganizationId",
    #         associated_service_count: 1,
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPoliciesResponse]
    def list_policies(params = {}, options = {})
      request = build_request(:list_policies, params)
      request.send_request(options)
    end

    # <p>Lists events for a resilience policy, including services that started or stopped using it, changes to cross-account sharing, and deletion of the policy.</p>
    # @param [Hash, Types::ListPolicyEventsRequest] params
    # @option params [String] :policy_arn
    #   <p>ARN identifier.</p>
    # @option params [Array<String>] :event_types
    #   <p>The type of events to include in the results.</p>
    # @option params [Time] :start_time
    #   <p>The start time for filtering events.</p>
    # @option params [Time] :end_time
    #   <p>The end time for filtering events.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "Arn", # required
    #     event_types: ["POLICY_ATTACHED_TO_SERVICE" # One of: ["POLICY_ATTACHED_TO_SERVICE", "POLICY_DETACHED_FROM_SERVICE", "POLICY_SHARING_REVOKED", "POLICY_DELETED"]],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_policy_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         event_id: "Uuid", # required
    #         timestamp: Time.now, # required
    #         event_type: "POLICY_ATTACHED_TO_SERVICE" # One of: ["POLICY_ATTACHED_TO_SERVICE", "POLICY_DETACHED_FROM_SERVICE", "POLICY_SHARING_REVOKED", "POLICY_DELETED"], # required
    #         policy_arn: "Arn", # required
    #         actor: { # required
    #           type: "USER" # One of: ["USER", "SYSTEM"], # required
    #           principal_id: "String", # required
    #           account_id: "String",
    #           user_name: "String"
    #         },
    #         event_details: { # required
    #           title: "String", # required
    #           description: "String", # required
    #           event_metadata: {
    #             # One of:
    #             policy_attached_to_service: {
    #               service_arn: "Arn",
    #               account_id: "AccountId"
    #             },
    #             policy_detached_from_service: {
    #               service_arn: "Arn",
    #               account_id: "AccountId"
    #             },
    #             policy_sharing_revoked: {
    #               affected_service_count: 1
    #             },
    #             policy_deleted: {
    #               affected_service_count: 1
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPolicyEventsResponse]
    def list_policy_events(params = {}, options = {})
      request = build_request(:list_policy_events, params)
      request.send_request(options)
    end

    # <p>List reports for a service, or all reports owned by the account if serviceArn is not provided.</p>
    # @param [Hash, Types::ListReportsRequest] params
    # @option params [String] :service_arn
    #   <p>Optional. If not provided, lists all reports owned by the account.</p>
    # @option params [String] :report_type
    #   <p>Filter reports by type.</p>
    # @option params [String] :test_run_id
    #   <p>The unique identifier of a test run.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn",
    #     report_type: "FAILURE_MODE" # One of: ["FAILURE_MODE", "TESTING"],
    #     test_run_id: "TestRunId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_generation_results: [ # required
    #       {
    #         report_type: "FAILURE_MODE" # One of: ["FAILURE_MODE", "TESTING"], # required
    #         status: "PENDING" # One of: ["PENDING", "SUCCEEDED", "FAILED"], # required
    #         service_arn: "Arn",
    #         assessment_id: "Uuid",
    #         test_run_id: "TestRunId",
    #         test_template_arn: "ServiceOwnedArn",
    #         created_at: Time.now,
    #         report_output: {
    #           # One of:
    #           s3_report_output: {
    #             s3_object_key: "String", # required
    #           },
    #           failed_report_output: {
    #             error_code: "INSUFFICIENT_PERMISSIONS" # One of: ["INSUFFICIENT_PERMISSIONS", "CONFIGURATION_ERROR", "INTERNAL_ERROR"], # required
    #             error_message: "String"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListReportsResponse]
    def list_reports(params = {}, options = {})
      request = build_request(:list_reports, params)
      request.send_request(options)
    end

    # <p>Lists the AWS resources that AWS Fault Injection Service (AWS FIS) resolved as targets for a test run.</p>
    # @param [Hash, Types::ListResolvedTestRunTargetResourcesRequest] params
    # @option params [String] :test_run_id
    #   <p>The identifier of the test run to list resolved target resources for.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resolved_test_run_target_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolved_target_resources: [ # required
    #       {
    #         resource_type: "String", # required
    #         target_name: "String", # required
    #         target_information: { # required
    #           "ResolvedTargetInformationKey" => "ResolvedTargetInformationValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResolvedTestRunTargetResourcesResponse]
    def list_resolved_test_run_target_resources(params = {}, options = {})
      request = build_request(:list_resolved_test_run_target_resources, params)
      request.send_request(options)
    end

    # <p>List resources.</p>
    # @param [Hash, Types::ListResourcesRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :service_function_id
    #   <p>Filter resources by service function identifier.</p>
    # @option params [String] :aws_region
    #   <p>Filter resources by AWS Region.</p>
    # @option params [Array<String>] :resource_types
    #   <p>The CloudFormation resource types to include in the response.</p>
    # @option params [Boolean] :billable
    #   <p>Specifies whether to filter non-billable resources. When true (the default), the operation returns only billable resources.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     service_function_id: "EntityId",
    #     aws_region: "AwsRegion",
    #     resource_types: ["ResourceTypeFilter"],
    #     billable: false,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_function_id: "EntityId",
    #     service_resources: [
    #       {
    #         resource_identifier: "String", # required
    #         input_source: {
    #           identifier: "String", # required
    #           type: "CFN_STACK" # One of: ["CFN_STACK", "TAGS", "EKS", "TERRAFORM", "DESIGN_FILE", "MONITORING"], # required
    #         },
    #         resource: { # required
    #           identifier: "String", # required
    #           aws_region: "AwsRegion",
    #           aws_account_id: "AwsAccountId",
    #           resource_type: "String",
    #           availability_zone_id: "String",
    #           availability_zone_name: "String",
    #           containment_parent_id: "String",
    #           logical_resource_group_id: "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourcesResponse]
    def list_resources(params = {}, options = {})
      request = build_request(:list_resources, params)
      request.send_request(options)
    end

    # <p>Lists events for a service.</p>
    # @param [Hash, Types::ListServiceEventsRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [Array<String>] :event_types
    #   <p>The type of events to include in the results.</p>
    # @option params [Time] :start_time
    #   <p>The start time for filtering events.</p>
    # @option params [Time] :end_time
    #   <p>The end time for filtering events.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     event_types: ["SERVICE_CREATED" # One of: ["SERVICE_CREATED", "SERVICE_DELETED", "SERVICE_SYSTEM_ASSOCIATED", "SERVICE_SYSTEM_DISASSOCIATED", "SERVICE_RESOURCES_ASSOCIATED", "SERVICE_RESOURCES_DISASSOCIATED", "SERVICE_WORKFLOW_UPDATED", "SERVICE_INPUT_SOURCES_UPDATED", "SERVICE_POLICY_ASSOCIATED", "SERVICE_POLICY_DISASSOCIATED", "SERVICE_FUNCTION_CREATED", "SERVICE_FUNCTION_UPDATED", "SERVICE_FUNCTION_DELETED", "SERVICE_FUNCTION_RESOURCES_ADDED", "SERVICE_FUNCTION_RESOURCES_REMOVED", "SERVICE_ACHIEVABILITY_UPDATED", "ASSERTION_CREATED", "ASSERTION_UPDATED", "ASSERTION_DELETED"]],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         event_id: "Uuid", # required
    #         timestamp: Time.now, # required
    #         event_type: "SERVICE_CREATED" # One of: ["SERVICE_CREATED", "SERVICE_DELETED", "SERVICE_SYSTEM_ASSOCIATED", "SERVICE_SYSTEM_DISASSOCIATED", "SERVICE_RESOURCES_ASSOCIATED", "SERVICE_RESOURCES_DISASSOCIATED", "SERVICE_WORKFLOW_UPDATED", "SERVICE_INPUT_SOURCES_UPDATED", "SERVICE_POLICY_ASSOCIATED", "SERVICE_POLICY_DISASSOCIATED", "SERVICE_FUNCTION_CREATED", "SERVICE_FUNCTION_UPDATED", "SERVICE_FUNCTION_DELETED", "SERVICE_FUNCTION_RESOURCES_ADDED", "SERVICE_FUNCTION_RESOURCES_REMOVED", "SERVICE_ACHIEVABILITY_UPDATED", "ASSERTION_CREATED", "ASSERTION_UPDATED", "ASSERTION_DELETED"], # required
    #         service_arn: "Arn", # required
    #         actor: { # required
    #           type: "USER" # One of: ["USER", "SYSTEM"], # required
    #           principal_id: "String", # required
    #           account_id: "String",
    #           user_name: "String"
    #         },
    #         event_details: { # required
    #           title: "String", # required
    #           description: "String", # required
    #           event_metadata: {
    #             # One of:
    #             service_created: {
    #             },
    #             service_deleted: {
    #             },
    #             service_system_associated: {
    #               system_name: "String",
    #               system_arn: "Arn"
    #             },
    #             service_system_disassociated: {
    #               system_id: "String",
    #               system_name: "String",
    #               system_arn: "Arn"
    #             },
    #             service_resources_associated: {
    #               resource_count: 1,
    #               resource_types: ["String"]
    #             },
    #             service_resources_disassociated: {
    #               resource_count: 1,
    #               resource_types: ["String"]
    #             },
    #             service_workflow_updated: {
    #               service_function_id: "String",
    #               service_function_name: "String"
    #             },
    #             service_input_sources_updated: {
    #             },
    #             service_policy_associated: {
    #               policy_name: "String",
    #               policy_arn: "Arn",
    #               policy_owner_account_id: "String",
    #               policy_source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #             },
    #             service_policy_disassociated: {
    #               policy_name: "String",
    #               policy_arn: "Arn",
    #               policy_owner_account_id: "String",
    #               policy_source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"],
    #               reason: "REPLACED_BY_UPDATE" # One of: ["REPLACED_BY_UPDATE", "SHARING_REVOKED", "POLICY_DELETED"]
    #             },
    #             service_function_created: {
    #               service_function_id: "String",
    #               service_function_name: "String"
    #             },
    #             service_function_updated: {
    #               service_function_id: "String",
    #               service_function_name: "String",
    #               resources_added: ["Arn"],
    #               resources_removed: ["Arn"]
    #             },
    #             service_function_deleted: {
    #               service_function_id: "String",
    #               service_function_name: "String"
    #             },
    #             service_function_resources_added: {
    #               service_function_id: "String",
    #               service_function_name: "String",
    #               resources_added: ["Arn"]
    #             },
    #             service_function_resources_removed: {
    #               service_function_id: "String",
    #               service_function_name: "String",
    #               resources_removed: ["Arn"]
    #             },
    #             service_achievability_updated: {
    #               assessment_id: "String",
    #               availability_slo: "String",
    #               multi_az_rto_rpo: "String",
    #               multi_region_rto_rpo: "String"
    #             },
    #             assertion_created: {
    #               assertion_id: "String",
    #               assertion_name: "String"
    #             },
    #             assertion_updated: {
    #               assertion_id: "String",
    #               assertion_name: "String"
    #             },
    #             assertion_deleted: {
    #               assertion_id: "String",
    #               assertion_name: "String"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceEventsResponse]
    def list_service_events(params = {}, options = {})
      request = build_request(:list_service_events, params)
      request.send_request(options)
    end

    # <p>Lists service functions for a service.</p>
    # @param [Hash, Types::ListServiceFunctionsRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_functions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_functions: [ # required
    #       {
    #         service_arn: "Arn", # required
    #         service_function_id: "EntityId", # required
    #         name: "EntityLabel", # required
    #         description: "EntityDescription",
    #         criticality: "PRIMARY" # One of: ["PRIMARY", "SUPPLEMENTAL"], # required
    #         resource_count: 1,
    #         source: "AI_GENERATED" # One of: ["AI_GENERATED", "USER"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceFunctionsResponse]
    def list_service_functions(params = {}, options = {})
      request = build_request(:list_service_functions, params)
      request.send_request(options)
    end

    # <p>Lists topology edges for a service.</p>
    # @param [Hash, Types::ListServiceTopologyEdgesRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_topology_edges(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_topology_edge_summaries: [
    #       {
    #         source_resource_identifier: "String", # required
    #         destination_resource_identifier: "String", # required
    #         source_region: "AwsRegion",
    #         destination_region: "AwsRegion",
    #         source_account: "AwsAccountId",
    #         destination_account: "AwsAccountId",
    #         properties: [
    #           {
    #             topology_type: "CONTAINMENT" # One of: ["CONTAINMENT", "DATA_FLOW", "OBSERVABILITY", "PERMISSIONS"],
    #             label: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceTopologyEdgesResponse]
    def list_service_topology_edges(params = {}, options = {})
      request = build_request(:list_service_topology_edges, params)
      request.send_request(options)
    end

    # <p>Lists services.</p>
    # @param [Hash, Types::ListServicesRequest] params
    # @option params [String] :system_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :user_journey_id
    #   <p>Filter services by user journey identifier.</p>
    # @option params [String] :ou_id
    #   <p>Filter services by organizational unit (OU) identifier.</p>
    # @option params [String] :account_id
    #   <p>Filter services by AWS account ID.</p>
    # @option params [String] :assessment_status
    #   <p>Filter services by assessment status.</p>
    # @option params [String] :policy_arn
    #   <p>ARN identifier.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_arn: "Arn",
    #     user_journey_id: "UserJourneyId",
    #     ou_id: "OuId",
    #     account_id: "AccountId",
    #     assessment_status: "NOT_STARTED" # One of: ["NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"],
    #     policy_arn: "Arn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_summaries: [ # required
    #       {
    #         service_arn: "Arn", # required
    #         name: "EntityName", # required
    #         associated_systems: [
    #           {
    #             system_arn: "Arn", # required
    #             system_name: "EntityName",
    #             user_journey_ids: ["UserJourneyId"]
    #           }
    #         ],
    #         regions: ["AwsRegion"],
    #         policy_arn: "Arn",
    #         assessment_status: "NOT_STARTED" # One of: ["NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"],
    #         dev_ops_agent_status: "CONNECTING" # One of: ["CONNECTING", "CONNECTED", "DISCONNECTED", "FAILED"],
    #         dev_ops_agent_space_arn: "DevOpsAgentSpaceArn",
    #         open_findings_count: 1,
    #         resolved_findings_count: 1,
    #         dependency_discovery: {
    #           status: "ENABLED" # One of: ["ENABLED", "INITIALIZING", "DISABLED"], # required
    #           updated_at: Time.now,
    #           eligible_resource_count: 1,
    #           message: "String"
    #         },
    #         achievability: {
    #           availability_slo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #           multi_az_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #           multi_region_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #           data_recovery_time_between_backups: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"]
    #         },
    #         organization_id: "OrganizationId",
    #         ou_id: "OuId",
    #         account_id: "AccountId",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServicesResponse]
    def list_services(params = {}, options = {})
      request = build_request(:list_services, params)
      request.send_request(options)
    end

    # <p>Lists events for a system.</p>
    # @param [Hash, Types::ListSystemEventsRequest] params
    # @option params [String] :system_arn
    #   <p>ARN identifier.</p>
    # @option params [Array<String>] :event_types
    #   <p>The type of events to include in the results.</p>
    # @option params [Time] :start_time
    #   <p>The start time for filtering events.</p>
    # @option params [Time] :end_time
    #   <p>The end time for filtering events.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_arn: "Arn", # required
    #     event_types: ["SYSTEM_CREATED" # One of: ["SYSTEM_CREATED", "SYSTEM_DELETED", "SYSTEM_USER_JOURNEY_CREATED", "SYSTEM_USER_JOURNEY_UPDATED", "SYSTEM_USER_JOURNEY_DELETED", "SYSTEM_SERVICE_ASSOCIATED", "SYSTEM_SERVICE_DISASSOCIATED", "SYSTEM_POLICY_ASSOCIATED", "SYSTEM_POLICY_DISASSOCIATED"]],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_system_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         event_id: "Uuid", # required
    #         timestamp: Time.now, # required
    #         event_type: "SYSTEM_CREATED" # One of: ["SYSTEM_CREATED", "SYSTEM_DELETED", "SYSTEM_USER_JOURNEY_CREATED", "SYSTEM_USER_JOURNEY_UPDATED", "SYSTEM_USER_JOURNEY_DELETED", "SYSTEM_SERVICE_ASSOCIATED", "SYSTEM_SERVICE_DISASSOCIATED", "SYSTEM_POLICY_ASSOCIATED", "SYSTEM_POLICY_DISASSOCIATED"], # required
    #         system_arn: "Arn", # required
    #         actor: { # required
    #           type: "USER" # One of: ["USER", "SYSTEM"], # required
    #           principal_id: "String", # required
    #           account_id: "String",
    #           user_name: "String"
    #         },
    #         event_details: { # required
    #           title: "String", # required
    #           description: "String", # required
    #           event_metadata: {
    #             # One of:
    #             system_created: {
    #             },
    #             system_deleted: {
    #             },
    #             system_user_journey_created: {
    #               user_journey_name: "String",
    #               associated_services: [
    #                 {
    #                   service_id: "String",
    #                   service_name: "String"
    #                 }
    #               ]
    #             },
    #             system_user_journey_updated: {
    #               user_journey_name: "String",
    #               changes: {
    #                 journey_description: {
    #                   old_value: "String",
    #                   new_value: "String"
    #                 },
    #                 associated_services: {
    #                   added: [
    #                     {
    #                       service_id: "String",
    #                       service_name: "String"
    #                     }
    #                   ],
    #                   removed: [
    #                     {
    #                       service_id: "String",
    #                       service_name: "String"
    #                     }
    #                   ]
    #                 }
    #               }
    #             },
    #             system_user_journey_deleted: {
    #               user_journey_name: "String",
    #               associated_services_at_deletion: [
    #                 {
    #                   service_id: "String",
    #                   service_name: "String"
    #                 }
    #               ]
    #             },
    #             system_service_associated: {
    #               service_name: "String",
    #               service_arn: "Arn",
    #               user_journeys: ["String"]
    #             },
    #             system_service_disassociated: {
    #               service_name: "String",
    #               service_arn: "Arn",
    #               user_journeys_affected: ["String"],
    #               comment: "String"
    #             },
    #             system_policy_associated: {
    #               policy_name: "String",
    #               policy_arn: "Arn"
    #             },
    #             system_policy_disassociated: {
    #               policy_name: "String",
    #               policy_arn: "Arn"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSystemEventsResponse]
    def list_system_events(params = {}, options = {})
      request = build_request(:list_system_events, params)
      request.send_request(options)
    end

    # <p>Lists systems.</p>
    # @param [Hash, Types::ListSystemsRequest] params
    # @option params [String] :ou_id
    #   <p>Filter systems by organizational unit (OU) identifier.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ou_id: "OuId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_systems(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     system_summaries: [ # required
    #       {
    #         system_id: "SystemId", # required
    #         name: "EntityName", # required
    #         system_arn: "Arn",
    #         user_journeys_count: 1,
    #         services_count: 1,
    #         organization_id: "OrganizationId",
    #         ou_id: "OuId",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSystemsResponse]
    def list_systems(params = {}, options = {})
      request = build_request(:list_systems, params)
      request.send_request(options)
    end

    # <p>Lists the tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>ARN identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Lists the dependencies that a test run blocked. Each dependency reflects the discovered classification captured when the run started, so results do not change if a dependency is reclassified after the run.</p>
    # @param [Hash, Types::ListTestRunDependenciesRequest] params
    # @option params [String] :test_run_id
    #   <p>The identifier of the test run to list dependencies for.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_test_run_dependencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dependencies: [ # required
    #       {
    #         dependency_id: "Uuid",
    #         dependency_name: "String", # required
    #         dns_name: "String", # required
    #         criticality: "HARD" # One of: ["HARD", "SOFT", "UNKNOWN"], # required
    #         source: "DISCOVERED" # One of: ["DISCOVERED", "MANUAL"], # required
    #         location: "String",
    #         source_regions: ["AwsRegion"],
    #         provider: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestRunDependenciesResponse]
    def list_test_run_dependencies(params = {}, options = {})
      request = build_request(:list_test_run_dependencies, params)
      request.send_request(options)
    end

    # <p>Lists the events in a test run's timeline.</p>
    # @param [Hash, Types::ListTestRunEventsRequest] params
    # @option params [String] :test_run_id
    #   <p>The identifier of the test run to list events for.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    # @option params [Time] :started_at
    #   <p>Return events at or after this timestamp.</p>
    # @option params [Time] :ended_at
    #   <p>Return events at or before this timestamp.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #     started_at: Time.now,
    #     ended_at: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_test_run_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         event_id: "String", # required
    #         event_type: "String", # required
    #         message: "String", # required
    #         timestamp: Time.now, # required
    #         attributes: {
    #           "TestRunEventAttributeKey" => "TestRunEventAttributeValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestRunEventsResponse]
    def list_test_run_events(params = {}, options = {})
      request = build_request(:list_test_run_events, params)
      request.send_request(options)
    end

    # <p>Lists the state-change events observed for a test run monitoring source. Events are returned for one source per call, in chronological order.</p>
    # @param [Hash, Types::ListTestRunSourceEventsRequest] params
    # @option params [String] :test_run_id
    #   <p>The identifier of the test run to list source events for.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    # @option params [String] :source_arn
    #   <p>The ARN of the monitoring source to list events for, such as the ARN of a CloudWatch alarm. If the source was not monitored during the test run, the response is an empty list.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #     source_arn: "TestRunSourceArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_test_run_source_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_run_source_events: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         source_arn: "TestRunSourceArn", # required
    #         event_type: "ALARM" # One of: ["ALARM"], # required
    #         detail: { # required
    #           # One of:
    #           alarm_state_change: {
    #             state: "OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"], # required
    #             previous_state: "OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"],
    #             reason: "String"
    #           },
    #           error: {
    #             error_code: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "INTERNAL_ERROR"], # required
    #             error_message: "String", # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestRunSourceEventsResponse]
    def list_test_run_source_events(params = {}, options = {})
      request = build_request(:list_test_run_source_events, params)
      request.send_request(options)
    end

    # <p>Lists the monitoring source snapshots captured for a test run, optionally filtered by type.</p>
    # @param [Hash, Types::ListTestRunSourcesRequest] params
    # @option params [String] :test_run_id
    #   <p>The identifier of the test run to list sources for.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    # @option params [String] :type
    #   <p>Filter sources by type.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #     type: "SUCCESS_CRITERIA" # One of: ["SUCCESS_CRITERIA", "OBSERVABILITY"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_test_run_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_run_sources: [{ # required
    #       # One of:
    #       success_criteria_alarm: {
    #         alarm_arn: "CloudWatchAlarmArn", # required
    #         alarm_name: "String", # required
    #         region: "String", # required
    #         account_id: "String", # required
    #         outcome: "PASSED" # One of: ["PASSED", "FAILED", "ERROR"],
    #         outcome_reason: "String"
    #       },
    #       observability_alarm: {
    #         alarm_arn: "CloudWatchAlarmArn", # required
    #         alarm_name: "String", # required
    #         region: "String", # required
    #         account_id: "String", # required
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestRunSourcesResponse]
    def list_test_run_sources(params = {}, options = {})
      request = build_request(:list_test_run_sources, params)
      request.send_request(options)
    end

    # <p>Lists the runs of a test, or all test runs for a service.</p>
    # @param [Hash, Types::ListTestRunsRequest] params
    # @option params [String] :service_arn
    #   <p>The ARN of the service to list test runs for.</p>
    # @option params [String] :test_id
    #   <p>Filter test runs by test identifier.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     test_id: "TestId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_test_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_runs: [ # required
    #       {
    #         test_run_id: "TestRunId", # required
    #         status: "INITIALIZING" # One of: ["INITIALIZING", "RUNNING", "STOPPING", "PASSED", "FAILED", "STOPPED", "ERROR"], # required
    #         started_at: Time.now, # required
    #         ended_at: Time.now,
    #         test_template_arn: "ServiceOwnedArn", # required
    #         service_arn: "Arn",
    #         error_message: "String",
    #         account_targeting: "SINGLE_ACCOUNT" # One of: ["SINGLE_ACCOUNT", "MULTI_ACCOUNT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestRunsResponse]
    def list_test_runs(params = {}, options = {})
      request = build_request(:list_test_runs, params)
      request.send_request(options)
    end

    # <p>Lists the monitoring sources attached to a test, optionally filtered by type.</p>
    # @param [Hash, Types::ListTestSourcesRequest] params
    # @option params [String] :test_id
    #   <p>The identifier of the test to list sources for.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    # @option params [String] :type
    #   <p>Filter sources by type.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #     type: "SUCCESS_CRITERIA" # One of: ["SUCCESS_CRITERIA", "OBSERVABILITY"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_test_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_sources: [{ # required
    #       # One of:
    #       success_criteria_alarm: {
    #         alarm_arn: "CloudWatchAlarmArn", # required
    #         alarm_name: "String", # required
    #         region: "String", # required
    #         account_id: "String", # required
    #         created_at: Time.now
    #       },
    #       observability_alarm: {
    #         alarm_arn: "CloudWatchAlarmArn", # required
    #         alarm_name: "String", # required
    #         region: "String", # required
    #         account_id: "String", # required
    #         created_at: Time.now
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestSourcesResponse]
    def list_test_sources(params = {}, options = {})
      request = build_request(:list_test_sources, params)
      request.send_request(options)
    end

    # <p>Lists the available resilience test templates. A test template is a pre-configured, AWS recommended test that defines which resilience capability to validate.</p>
    # @param [Hash, Types::ListTestTemplatesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_test_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_templates: [ # required
    #       {
    #         test_template_arn: "ServiceOwnedArn", # required
    #         name: "String", # required
    #         description: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTestTemplatesResponse]
    def list_test_templates(params = {}, options = {})
      request = build_request(:list_test_templates, params)
      request.send_request(options)
    end

    # <p>Lists the tests configured for a service.</p>
    # @param [Hash, Types::ListTestsRequest] params
    # @option params [String] :service_arn
    #   <p>The ARN of the service to list tests for.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tests: [ # required
    #       {
    #         test_id: "TestId", # required
    #         test_template_arn: "ServiceOwnedArn", # required
    #         service_arn: "Arn", # required
    #         total_test_runs: 1, # required
    #         successful_test_runs: 1, # required
    #         creation_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestsResponse]
    def list_tests(params = {}, options = {})
      request = build_request(:list_tests, params)
      request.send_request(options)
    end

    # <p>Lists user journeys for a system.</p>
    # @param [Hash, Types::ListUserJourneysRequest] params
    # @option params [String] :system_arn
    #   <p>ARN identifier.</p>
    # @option params [Integer] :max_results
    #   <p>Pagination page size.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_user_journeys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_journey_summaries: [ # required
    #       {
    #         user_journey_id: "UserJourneyId", # required
    #         name: "EntityLabel", # required
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListUserJourneysResponse]
    def list_user_journeys(params = {}, options = {})
      request = build_request(:list_user_journeys, params)
      request.send_request(options)
    end

    # <p>Adds or updates the monitoring sources on a test. The operation is transactional — either every source is written or the call fails and nothing is written.</p>
    # @param [Hash, Types::PutTestSourcesRequest] params
    # @option params [String] :test_id
    #   <p>The identifier of the test to add sources to.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    # @option params [Array<Types::TestSourceInput>] :test_sources
    #   <p>The monitoring sources to add or update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #     test_sources: [{ # required
    #       # One of:
    #       success_criteria_alarm: {
    #         alarm_arn: "CloudWatchAlarmArn", # required
    #       },
    #       observability_alarm: {
    #         alarm_arn: "CloudWatchAlarmArn", # required
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.put_test_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutTestSourcesResponse]
    def put_test_sources(params = {}, options = {})
      request = build_request(:put_test_sources, params)
      request.send_request(options)
    end

    # <p>Starts generating dependency insights for a service. Generation runs asynchronously; the response returns the initial status, and you retrieve the results with GetDependencyInsights. To use this operation, you must have the <code>resiliencehub:StartDependencyInsights</code> permission on the service.</p>
    # @param [Hash, Types::StartDependencyInsightsRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_dependency_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #   }
    # @return [Types::StartDependencyInsightsResponse]
    def start_dependency_insights(params = {}, options = {})
      request = build_request(:start_dependency_insights, params)
      request.send_request(options)
    end

    # <p>Starts a failure mode assessment.</p>
    # @param [Hash, Types::StartFailureModeAssessmentRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_failure_mode_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_id: "Uuid",
    #     service_arn: "Arn",
    #     assessment_status: "NOT_STARTED" # One of: ["NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"],
    #     started_at: Time.now
    #   }
    # @return [Types::StartFailureModeAssessmentResponse]
    def start_failure_mode_assessment(params = {}, options = {})
      request = build_request(:start_failure_mode_assessment, params)
      request.send_request(options)
    end

    # <p>Starts a run of a test. Each run scopes to the current resources in the service and produces a pass or fail outcome.</p>
    # @param [Hash, Types::StartTestRunRequest] params
    # @option params [String] :test_id
    #   <p>The identifier of the test to run.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.start_test_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_run_id: "TestRunId", # required
    #     status: "INITIALIZING" # One of: ["INITIALIZING", "RUNNING", "STOPPING", "PASSED", "FAILED", "STOPPED", "ERROR"], # required
    #     experiment_arns: ["Arn"], # required
    #   }
    # @return [Types::StartTestRunResponse]
    def start_test_run(params = {}, options = {})
      request = build_request(:start_test_run, params)
      request.send_request(options)
    end

    # <p>Stops an in-progress test run.</p>
    # @param [Hash, Types::StopTestRunRequest] params
    # @option params [String] :test_run_id
    #   <p>The identifier of the test run to stop.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.stop_test_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_run_id: "TestRunId", # required
    #     status: "INITIALIZING" # One of: ["INITIALIZING", "RUNNING", "STOPPING", "PASSED", "FAILED", "STOPPED", "ERROR"], # required
    #   }
    # @return [Types::StopTestRunResponse]
    def stop_test_run(params = {}, options = {})
      request = build_request(:stop_test_run, params)
      request.send_request(options)
    end

    # <p>Adds tags to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>ARN identifier.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Resource tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>ARN identifier.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Updates a resilience assertion.</p>
    # @param [Hash, Types::UpdateAssertionRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :assertion_id
    #   <p>The unique identifier of the assertion to update.</p>
    # @option params [String] :text
    #   <p>The updated text content of the assertion.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     assertion_id: "Uuid", # required
    #     text: "AssertionText"
    #   }
    #   options = {}
    #   response = client.update_assertion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assertion: { # required
    #       service_arn: "Arn", # required
    #       assertion_id: "Uuid", # required
    #       text: "AssertionText", # required
    #       source: "AI_GENERATED" # One of: ["AI_GENERATED", "USER"], # required
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateAssertionResponse]
    def update_assertion(params = {}, options = {})
      request = build_request(:update_assertion, params)
      request.send_request(options)
    end

    # <p>Updates a dependency classification.</p>
    # @param [Hash, Types::UpdateDependencyRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :dependency_id
    #   <p>The identifier of the dependency to update.</p>
    # @option params [String] :criticality
    #   <p>The updated criticality level of the dependency.</p>
    # @option params [String] :comment
    #   <p>A comment about the dependency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     dependency_id: "Uuid", # required
    #     criticality: "HARD" # One of: ["HARD", "SOFT", "UNKNOWN"],
    #     comment: "String"
    #   }
    #   options = {}
    #   response = client.update_dependency(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dependency_id: "Uuid", # required
    #     dependency_name: "String", # required
    #     location: "String", # required
    #     criticality: "HARD" # One of: ["HARD", "SOFT", "UNKNOWN"], # required
    #     comment: "String",
    #     provider: "String",
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateDependencyResponse]
    def update_dependency(params = {}, options = {})
      request = build_request(:update_dependency, params)
      request.send_request(options)
    end

    # <p>Updates an existing finding.</p>
    # @param [Hash, Types::UpdateFailureModeFindingRequest] params
    # @option params [String] :finding_id
    #   <p>The identifier of the finding to update.</p>
    # @option params [String] :status
    #   <p>The new status for the finding.</p>
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :comment
    #   <p>A comment about the finding update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_id: "Uuid", # required
    #     status: "OPEN" # One of: ["OPEN", "RESOLVED", "IRRELEVANT"], # required
    #     service_arn: "Arn", # required
    #     comment: "String"
    #   }
    #   options = {}
    #   response = client.update_failure_mode_finding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding: {
    #       finding_id: "Uuid",
    #       name: "String",
    #       description: "EntityDescription",
    #       failure_category: "SHARED_FATE" # One of: ["SHARED_FATE", "EXCESSIVE_LOAD", "EXCESSIVE_LATENCY", "MISCONFIGURATION_AND_BUGS", "SINGLE_POINT_OF_FAILURE"],
    #       status: "OPEN" # One of: ["OPEN", "RESOLVED", "IRRELEVANT"],
    #       reasoning: "String",
    #       comment: "String",
    #       severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #       service_functions: ["EntityId"],
    #       policy_component: "AVAILABILITY_SLO" # One of: ["AVAILABILITY_SLO", "MULTI_AZ_DISASTER_RECOVERY", "MULTI_REGION_DISASTER_RECOVERY", "DATA_RECOVERY"],
    #       infrastructure_and_code_recommendations: [
    #         {
    #           suggested_changes: ["EntityDescription"]
    #         }
    #       ],
    #       observability_recommendations: [
    #         {
    #           suggested_changes: ["EntityDescription"]
    #         }
    #       ],
    #       testing_recommendations: [
    #         {
    #           suggested_changes: ["EntityDescription"]
    #         }
    #       ],
    #       updated_at: Time.now,
    #       investigation_deep_link: "String"
    #     }
    #   }
    # @return [Types::UpdateFailureModeFindingResponse]
    def update_failure_mode_finding(params = {}, options = {})
      request = build_request(:update_failure_mode_finding, params)
      request.send_request(options)
    end

    # <p>Updates an existing resilience policy.</p>
    # @param [Hash, Types::UpdatePolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :description
    #   <p>Resource description for services and policies.</p>
    # @option params [Types::AvailabilitySlo] :availability_slo
    #   <p>The updated availability SLO for the policy.</p>
    # @option params [Types::MultiAzTargets] :multi_az
    #   <p>The updated multi-AZ disaster recovery targets for the policy.</p>
    # @option params [Types::MultiRegionTargets] :multi_region
    #   <p>The updated multi-Region disaster recovery targets for the policy.</p>
    # @option params [Types::DataRecoveryTargets] :data_recovery
    #   <p>The updated data recovery targets for the policy.</p>
    # @option params [Boolean] :sharing_enabled
    #   <p>Specifies whether cross-account sharing is enabled for the policy. Disabling sharing stops member services from using the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "Arn", # required
    #     description: "LongDescription",
    #     availability_slo: {
    #       target: 1.0
    #     },
    #     multi_az: {
    #       rto_in_minutes: 1,
    #       rpo_in_minutes: 1,
    #       disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #     },
    #     multi_region: {
    #       rto_in_minutes: 1,
    #       rpo_in_minutes: 1,
    #       disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #     },
    #     data_recovery: {
    #       time_between_backups_in_minutes: 1
    #     },
    #     sharing_enabled: false
    #   }
    #   options = {}
    #   response = client.update_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: { # required
    #       policy_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "LongDescription",
    #       availability_slo: {
    #         target: 1.0
    #       },
    #       multi_az: {
    #         rto_in_minutes: 1,
    #         rpo_in_minutes: 1,
    #         disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #       },
    #       multi_region: {
    #         rto_in_minutes: 1,
    #         rpo_in_minutes: 1,
    #         disaster_recovery_approach: "ACTIVE_ACTIVE" # One of: ["ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"]
    #       },
    #       data_recovery: {
    #         time_between_backups_in_minutes: 1
    #       },
    #       sharing_enabled: false,
    #       organization_id: "OrganizationId",
    #       kms_key_id: "KmsKeyId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       associated_service_count: 1,
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdatePolicyResponse]
    def update_policy(params = {}, options = {})
      request = build_request(:update_policy, params)
      request.send_request(options)
    end

    # <p>Updates an existing service.</p>
    # @param [Hash, Types::UpdateServiceRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :description
    #   <p>Resource description for services and policies.</p>
    # @option params [Array<Types::AssociatedSystem>] :associated_systems
    #   <p>The updated systems to associate with the service.</p>
    # @option params [String] :policy_arn
    #   <p>ARN identifier.</p>
    # @option params [Array<String>] :regions
    #   <p>The updated AWS Regions where the service operates.</p>
    # @option params [Types::PermissionModel] :permission_model
    #   <p>The updated permission model for the service.</p>
    # @option params [String] :dependency_discovery
    #   <p>Caller-settable values for dependency discovery. INITIALIZING is system-managed.</p>
    # @option params [Types::ServiceReportConfiguration] :report_configuration
    #   <p>Configuration for automatic report generation on a Service.</p>
    # @option params [Types::DevOpsAgentConfiguration] :dev_ops_agent_configuration
    #   <p>The optional DevOps Agent integration configuration to set, replace, or disconnect for the service. If you omit this field, the existing DevOps Agent linkage stays unchanged.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     description: "LongDescription",
    #     associated_systems: [
    #       {
    #         system_arn: "Arn", # required
    #         system_name: "EntityName",
    #         user_journey_ids: ["UserJourneyId"]
    #       }
    #     ],
    #     policy_arn: "Arn",
    #     regions: ["AwsRegion"],
    #     permission_model: {
    #       invoker_role_name: "IamRoleName", # required
    #       cross_account_roles: [
    #         {
    #           cross_account_role_arn: "IamRoleArn", # required
    #           external_id: "String"
    #         }
    #       ]
    #     },
    #     dependency_discovery: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     report_configuration: {
    #       report_outputs: [{ # required
    #         # One of:
    #         s3: {
    #           bucket_path: "S3BucketPath", # required
    #           bucket_owner: "AwsAccountId", # required
    #         }
    #       }]
    #     },
    #     dev_ops_agent_configuration: {
    #       agent_space_arn: "DevOpsAgentSpaceArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "LongDescription",
    #       associated_systems: [
    #         {
    #           system_arn: "Arn", # required
    #           system_name: "EntityName",
    #           user_journey_ids: ["UserJourneyId"]
    #         }
    #       ],
    #       policy_arn: "Arn",
    #       regions: ["AwsRegion"],
    #       permission_model: {
    #         invoker_role_name: "IamRoleName", # required
    #         cross_account_roles: [
    #           {
    #             cross_account_role_arn: "IamRoleArn", # required
    #             external_id: "String"
    #           }
    #         ]
    #       },
    #       dependency_discovery: {
    #         status: "ENABLED" # One of: ["ENABLED", "INITIALIZING", "DISABLED"], # required
    #         updated_at: Time.now,
    #         eligible_resource_count: 1,
    #         message: "String"
    #       },
    #       effective_policy_values: {
    #         availability_slo: {
    #           value: 1.0,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_rto: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_rpo: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_az_dr_approach: {
    #           value: "String",
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_rto: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_rpo: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         multi_region_dr_approach: {
    #           value: "String",
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         },
    #         data_recovery_time_between_backups: {
    #           value: 1,
    #           policy_name: "EntityName",
    #           source: "SELF" # One of: ["SELF", "CROSS_ACCOUNT"]
    #         }
    #       },
    #       achievability: {
    #         availability_slo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         multi_az_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         multi_region_rto_rpo: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"],
    #         data_recovery_time_between_backups: "ACHIEVABLE" # One of: ["ACHIEVABLE", "NOT_ACHIEVABLE"]
    #       },
    #       report_configuration: {
    #         report_outputs: [{ # required
    #           # One of:
    #           s3: {
    #             bucket_path: "S3BucketPath", # required
    #             bucket_owner: "AwsAccountId", # required
    #           }
    #         }]
    #       },
    #       kms_key_id: "KmsKeyId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       estimated_assessment_cost: {
    #         amount: 1.0,
    #         currency: "USD" # One of: ["USD"]
    #       },
    #       resource_discovery: {
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "COMPLETED_WITH_FAILURES", "NOT_STARTED"],
    #         last_run_at: Time.now,
    #         error_code: "INVALID_PERMISSIONS" # One of: ["INVALID_PERMISSIONS", "STACK_NOT_FOUND", "CLUSTER_NOT_FOUND", "STATE_FILE_NOT_FOUND", "ACCESS_DENIED", "UNSUPPORTED_CLUSTER", "INTERNAL_ERROR"],
    #         error_message: "String"
    #       },
    #       assessment_status: "NOT_STARTED" # One of: ["NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"],
    #       rerun_assessment: false,
    #       open_findings_count: 1,
    #       resolved_findings_count: 1,
    #       organization_id: "OrganizationId",
    #       ou_id: "OuId",
    #       account_id: "AccountId",
    #       dev_ops_agent_configuration: {
    #         agent_space_arn: "DevOpsAgentSpaceArn",
    #         agent_space_id: "DevOpsAgentSpaceId",
    #         region: "DevOpsAgentRegion",
    #         status: "CONNECTING" # One of: ["CONNECTING", "CONNECTED", "DISCONNECTED", "FAILED"],
    #         operator_app_url: "String",
    #         connected_at: Time.now,
    #         status_reason: "String"
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateServiceResponse]
    def update_service(params = {}, options = {})
      request = build_request(:update_service, params)
      request.send_request(options)
    end

    # <p>Updates a service function.</p>
    # @param [Hash, Types::UpdateServiceFunctionRequest] params
    # @option params [String] :service_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :service_function_id
    #   <p>The identifier of the service function to update.</p>
    # @option params [String] :name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    # @option params [String] :description
    #   <p>Resource description.</p>
    # @option params [String] :criticality
    #   <p>The updated criticality level of the service function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "Arn", # required
    #     service_function_id: "EntityId", # required
    #     name: "EntityLabel",
    #     description: "EntityDescription",
    #     criticality: "PRIMARY" # One of: ["PRIMARY", "SUPPLEMENTAL"]
    #   }
    #   options = {}
    #   response = client.update_service_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_function: { # required
    #       service_arn: "Arn", # required
    #       service_function_id: "EntityId", # required
    #       name: "EntityLabel", # required
    #       description: "EntityDescription",
    #       criticality: "PRIMARY" # One of: ["PRIMARY", "SUPPLEMENTAL"], # required
    #       resource_count: 1,
    #       source: "AI_GENERATED" # One of: ["AI_GENERATED", "USER"],
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateServiceFunctionResponse]
    def update_service_function(params = {}, options = {})
      request = build_request(:update_service_function, params)
      request.send_request(options)
    end

    # <p>Updates an existing system.</p>
    # @param [Hash, Types::UpdateSystemRequest] params
    # @option params [String] :system_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :description
    #   <p>Resource description.</p>
    # @option params [Boolean] :sharing_enabled
    #   <p>Whether cross-account sharing is enabled for the system.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_arn: "Arn", # required
    #     description: "EntityDescription",
    #     sharing_enabled: false
    #   }
    #   options = {}
    #   response = client.update_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     system: { # required
    #       system_arn: "Arn", # required
    #       system_id: "SystemId", # required
    #       name: "EntityName", # required
    #       description: "EntityDescription",
    #       sharing_enabled: false,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       kms_key_id: "KmsKeyId",
    #       organization_id: "OrganizationId",
    #       ou_id: "OuId",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateSystemResponse]
    def update_system(params = {}, options = {})
      request = build_request(:update_system, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing test.</p>
    # @param [Hash, Types::UpdateTestRequest] params
    # @option params [String] :test_id
    #   <p>The identifier of the test to update.</p>
    # @option params [String] :service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   <p>The updated logging configuration for the test.</p>
    # @option params [Array<Types::StopCondition>] :stop_conditions
    #   <p>The updated stop conditions for the test.</p>
    # @option params [String] :role_name
    #   <p>The updated IAM execution role name.</p>
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>The updated parameter values for the test.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #     logging_configuration: {
    #       s3_bucket_name: "String",
    #       cloud_watch_log_group_arn: "Arn",
    #       log_schema_version: "String"
    #     },
    #     stop_conditions: [
    #       {
    #         source: "aws:cloudwatch:alarm" # One of: ["aws:cloudwatch:alarm", "none"], # required
    #         value: "String", # required
    #       }
    #     ],
    #     role_name: "IamRoleName",
    #     parameters: {
    #       "ParameterKey" => ["ParameterValue"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test: { # required
    #       test_id: "TestId", # required
    #       test_template_arn: "ServiceOwnedArn", # required
    #       service_arn: "Arn", # required
    #       name: "String", # required
    #       actions: [
    #         {
    #           action_id: "String", # required
    #           description: "String",
    #           resource_type: "String", # required
    #         }
    #       ],
    #       logging_configuration: {
    #         s3_bucket_name: "String",
    #         cloud_watch_log_group_arn: "Arn",
    #         log_schema_version: "String"
    #       },
    #       stop_conditions: [
    #         {
    #           source: "aws:cloudwatch:alarm" # One of: ["aws:cloudwatch:alarm", "none"], # required
    #           value: "String", # required
    #         }
    #       ],
    #       role_name: "IamRoleName",
    #       parameters: {
    #         "ParameterKey" => ["ParameterValue"]
    #       },
    #       total_test_runs: 1, # required
    #       successful_test_runs: 1, # required
    #       creation_time: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateTestResponse]
    def update_test(params = {}, options = {})
      request = build_request(:update_test, params)
      request.send_request(options)
    end

    # <p>Updates an existing user journey.</p>
    # @param [Hash, Types::UpdateUserJourneyRequest] params
    # @option params [String] :system_arn
    #   <p>ARN identifier.</p>
    # @option params [String] :user_journey_id
    #   <p>The identifier of the user journey to update.</p>
    # @option params [String] :name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    # @option params [String] :description
    #   <p>Resource description.</p>
    # @option params [String] :policy_arn
    #   <p>ARN identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_arn: "Arn", # required
    #     user_journey_id: "UserJourneyId", # required
    #     name: "EntityLabel",
    #     description: "EntityDescription",
    #     policy_arn: "Arn"
    #   }
    #   options = {}
    #   response = client.update_user_journey(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_journey: { # required
    #       user_journey_id: "UserJourneyId", # required
    #       name: "EntityLabel", # required
    #       description: "EntityDescription",
    #       policy_arn: "Arn",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateUserJourneyResponse]
    def update_user_journey(params = {}, options = {})
      request = build_request(:update_user_journey, params)
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
      context[:gem_name] = 'aws-sdk-resiliencehubv2'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        failure_mode_assessment_success: Waiters::FailureModeAssessmentSuccess,
        report_succeeded: Waiters::ReportSucceeded,
        service_assessment_completed: Waiters::ServiceAssessmentCompleted,
        service_resource_discovery_completed: Waiters::ServiceResourceDiscoveryCompleted
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
