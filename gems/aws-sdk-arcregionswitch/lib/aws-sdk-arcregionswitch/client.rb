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
require 'smithy-client/plugins/stub_responses'
require 'smithy-client/plugins/rpc_v2_cbor'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc'

module Aws::ARCRegionswitch
  # An API client for Aws::ARCRegionswitch.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ArcRegionSwitch

    add_plugin(::Aws::ARCRegionswitch::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Smithy::Client::Plugins::RpcV2Cbor)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpc)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::ARCRegionswitch::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Approves a step in a plan execution that requires manual approval. When you create a plan, you can include approval steps that require manual intervention before the execution can proceed. This operation allows you to provide that approval.</p> <p>You must specify the plan ARN, execution ID, step name, and approval status. You can also provide an optional comment explaining the approval decision.</p>
    # @param [Hash, Types::ApprovePlanExecutionStepRequest] params
    # @option params [String] :plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    # @option params [String] :execution_id
    #   <p>The execution identifier of a plan execution.</p>
    # @option params [String] :step_name
    #   <p>The name of a step in a plan execution.</p>
    # @option params [String] :approval
    #   <p>The status of approval for a plan execution step. </p>
    # @option params [String] :comment
    #   <p>A comment that you can enter about a plan execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     step_name: "StepName", # required
    #     approval: "approve" # One of: ["approve", "decline"], # required
    #     comment: "ExecutionComment"
    #   }
    #   options = {}
    #   response = client.approve_plan_execution_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ApprovePlanExecutionStepResponse]
    def approve_plan_execution_step(params = {}, options = {})
      request = build_request(:approve_plan_execution_step, params)
      request.send_request(options)
    end

    # <p>Cancels an in-progress plan execution. This operation stops the execution of the plan and prevents any further steps from being processed.</p> <p>You must specify the plan ARN and execution ID. You can also provide an optional comment explaining why the execution was canceled.</p>
    # @param [Hash, Types::CancelPlanExecutionRequest] params
    # @option params [String] :plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    # @option params [String] :execution_id
    #   <p>The execution identifier of a plan execution.</p>
    # @option params [String] :comment
    #   <p>A comment that you can enter about canceling a plan execution step.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     comment: "ExecutionComment"
    #   }
    #   options = {}
    #   response = client.cancel_plan_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelPlanExecutionResponse]
    def cancel_plan_execution(params = {}, options = {})
      request = build_request(:cancel_plan_execution, params)
      request.send_request(options)
    end

    # <p>Creates a new Region switch plan. A plan defines the steps required to shift traffic from one Amazon Web Services Region to another.</p> <p>You must specify a name for the plan, the primary Region, and at least one additional Region. You can also provide a description, execution role, recovery time objective, associated alarms, triggers, and workflows that define the steps to execute during a Region switch.</p>
    # @param [Hash, Types::CreatePlanRequest] params
    # @option params [String] :description
    #   <p>The description of a Region switch plan.</p>
    # @option params [Array<Types::Workflow>] :workflows
    #   <p>An array of workflows included in a Region switch plan.</p>
    # @option params [String] :execution_role
    #   <p>An execution role is a way to categorize a Region switch plan.</p>
    # @option params [Integer] :recovery_time_objective_minutes
    #   <p>Optionally, you can specify an recovery time objective for a Region switch plan, in minutes.</p>
    # @option params [Hash<String, Types::AssociatedAlarm>] :associated_alarms
    #   <p>The alarms associated with a Region switch plan.</p>
    # @option params [Array<Types::Trigger>] :triggers
    #   <p>The triggers associated with a Region switch plan.</p>
    # @option params [String] :name
    #   <p>The name of a Region switch plan.</p>
    # @option params [Array<String>] :regions
    #   <p>An array that specifies the Amazon Web Services Regions for a Region switch plan. Specify two Regions.</p>
    # @option params [String] :recovery_approach
    #   <p>The recovery approach for a Region switch plan, which can be active/active (activeActive) or active/passive (activePassive).</p>
    # @option params [String] :primary_region
    #   <p>The primary Amazon Web Services Region for the application. This is the Region where the application normally runs before any Region switch occurs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the Region switch plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "String",
    #     workflows: [ # required
    #       {
    #         steps: [
    #           {
    #             name: "StepName", # required
    #             description: "String",
    #             execution_block_configuration: { # required
    #               # One of:
    #               custom_action_lambda_config: {
    #                 timeout_minutes: 1,
    #                 lambdas: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     arn: "LambdaArn"
    #                   }
    #                 ],
    #                 retry_interval_minutes: 1.0, # required
    #                 region_to_run: "activatingRegion" # One of: ["activatingRegion", "deactivatingRegion"], # required
    #                 ungraceful: {
    #                   behavior: "skip" # One of: ["skip"]
    #                 }
    #               },
    #               ec2_asg_capacity_increase_config: {
    #                 timeout_minutes: 1,
    #                 asgs: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     arn: "AsgArn"
    #                   }
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"]
    #               },
    #               execution_approval_config: {
    #                 timeout_minutes: 1,
    #                 approval_role: "RoleArn", # required
    #               },
    #               arc_routing_control_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 region_and_routing_controls: { # required
    #                   "String" => [
    #                     {
    #                       routing_control_arn: "RoutingControlArn", # required
    #                       state: "On" # One of: ["On", "Off"], # required
    #                     }
    #                   ]
    #                 }
    #               },
    #               global_aurora_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 behavior: "switchoverOnly" # One of: ["switchoverOnly", "failover"], # required
    #                 ungraceful: {
    #                   ungraceful: "failover" # One of: ["failover"]
    #                 },
    #                 global_cluster_identifier: "GlobalClusterIdentifier", # required
    #                 database_cluster_arns: ["AuroraClusterArn"], # required
    #               },
    #               parallel_config: {
    #                 steps: { # required
    #                   # recursive Steps
    #                 }
    #               },
    #               region_switch_plan_config: {
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 arn: "PlanArn", # required
    #               },
    #               ecs_capacity_increase_config: {
    #                 timeout_minutes: 1,
    #                 services: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     cluster_arn: "EcsClusterArn",
    #                     service_arn: "EcsServiceArn"
    #                   }
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"]
    #               },
    #               eks_resource_scaling_config: {
    #                 timeout_minutes: 1,
    #                 kubernetes_resource_type: { # required
    #                   api_version: "String", # required
    #                   kind: "String", # required
    #                 },
    #                 scaling_resources: [
    #                   {
    #                     "String" => {
    #                       "Region" => {
    #                         namespace: "KubernetesNamespace", # required
    #                         name: "String", # required
    #                         hpa_name: "String"
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 eks_clusters: [
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     cluster_arn: "EksClusterArn", # required
    #                   }
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours"]
    #               },
    #               route53_health_check_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 hosted_zone_id: "Route53HostedZoneId", # required
    #                 record_name: "Route53RecordName", # required
    #                 record_sets: [
    #                   {
    #                     record_set_identifier: "Route53ResourceRecordSetIdentifier",
    #                     region: "Region"
    #                   }
    #                 ]
    #               }
    #             },
    #             execution_block_type: "CustomActionLambda" # One of: ["CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"], # required
    #           }
    #         ],
    #         workflow_target_action: "activate" # One of: ["activate", "deactivate"], # required
    #         workflow_target_region: "Region",
    #         workflow_description: "String"
    #       }
    #     ],
    #     execution_role: "IamRoleArn", # required
    #     recovery_time_objective_minutes: 1,
    #     associated_alarms: {
    #       "String" => {
    #         cross_account_role: "IamRoleArn",
    #         external_id: "String",
    #         resource_identifier: "String", # required
    #         alarm_type: "applicationHealth" # One of: ["applicationHealth", "trigger"], # required
    #       }
    #     },
    #     triggers: [
    #       {
    #         description: "String",
    #         target_region: "Region", # required
    #         action: "activate" # One of: ["activate", "deactivate"], # required
    #         conditions: [ # required
    #           {
    #             associated_alarm_name: "String", # required
    #             condition: "red" # One of: ["red", "green"], # required
    #           }
    #         ],
    #         min_delay_minutes_between_executions: 1, # required
    #       }
    #     ],
    #     name: "PlanName", # required
    #     regions: ["Region"], # required
    #     recovery_approach: "activeActive" # One of: ["activeActive", "activePassive"], # required
    #     primary_region: "Region",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plan: {
    #       arn: "PlanArn", # required
    #       description: "String",
    #       workflows: [ # required
    #         {
    #           steps: [
    #             {
    #               name: "StepName", # required
    #               description: "String",
    #               execution_block_configuration: { # required
    #                 # One of:
    #                 custom_action_lambda_config: {
    #                   timeout_minutes: 1,
    #                   lambdas: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       arn: "LambdaArn"
    #                     }
    #                   ],
    #                   retry_interval_minutes: 1.0, # required
    #                   region_to_run: "activatingRegion" # One of: ["activatingRegion", "deactivatingRegion"], # required
    #                   ungraceful: {
    #                     behavior: "skip" # One of: ["skip"]
    #                   }
    #                 },
    #                 ec2_asg_capacity_increase_config: {
    #                   timeout_minutes: 1,
    #                   asgs: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       arn: "AsgArn"
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"]
    #                 },
    #                 execution_approval_config: {
    #                   timeout_minutes: 1,
    #                   approval_role: "RoleArn", # required
    #                 },
    #                 arc_routing_control_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   region_and_routing_controls: { # required
    #                     "String" => [
    #                       {
    #                         routing_control_arn: "RoutingControlArn", # required
    #                         state: "On" # One of: ["On", "Off"], # required
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 global_aurora_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   behavior: "switchoverOnly" # One of: ["switchoverOnly", "failover"], # required
    #                   ungraceful: {
    #                     ungraceful: "failover" # One of: ["failover"]
    #                   },
    #                   global_cluster_identifier: "GlobalClusterIdentifier", # required
    #                   database_cluster_arns: ["AuroraClusterArn"], # required
    #                 },
    #                 parallel_config: {
    #                   steps: { # required
    #                     # recursive Steps
    #                   }
    #                 },
    #                 region_switch_plan_config: {
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   arn: "PlanArn", # required
    #                 },
    #                 ecs_capacity_increase_config: {
    #                   timeout_minutes: 1,
    #                   services: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       cluster_arn: "EcsClusterArn",
    #                       service_arn: "EcsServiceArn"
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"]
    #                 },
    #                 eks_resource_scaling_config: {
    #                   timeout_minutes: 1,
    #                   kubernetes_resource_type: { # required
    #                     api_version: "String", # required
    #                     kind: "String", # required
    #                   },
    #                   scaling_resources: [
    #                     {
    #                       "String" => {
    #                         "Region" => {
    #                           namespace: "KubernetesNamespace", # required
    #                           name: "String", # required
    #                           hpa_name: "String"
    #                         }
    #                       }
    #                     }
    #                   ],
    #                   eks_clusters: [
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       cluster_arn: "EksClusterArn", # required
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours"]
    #                 },
    #                 route53_health_check_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   hosted_zone_id: "Route53HostedZoneId", # required
    #                   record_name: "Route53RecordName", # required
    #                   record_sets: [
    #                     {
    #                       record_set_identifier: "Route53ResourceRecordSetIdentifier",
    #                       region: "Region"
    #                     }
    #                   ]
    #                 }
    #               },
    #               execution_block_type: "CustomActionLambda" # One of: ["CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"], # required
    #             }
    #           ],
    #           workflow_target_action: "activate" # One of: ["activate", "deactivate"], # required
    #           workflow_target_region: "Region",
    #           workflow_description: "String"
    #         }
    #       ],
    #       execution_role: "IamRoleArn", # required
    #       recovery_time_objective_minutes: 1,
    #       associated_alarms: {
    #         "String" => {
    #           cross_account_role: "IamRoleArn",
    #           external_id: "String",
    #           resource_identifier: "String", # required
    #           alarm_type: "applicationHealth" # One of: ["applicationHealth", "trigger"], # required
    #         }
    #       },
    #       triggers: [
    #         {
    #           description: "String",
    #           target_region: "Region", # required
    #           action: "activate" # One of: ["activate", "deactivate"], # required
    #           conditions: [ # required
    #             {
    #               associated_alarm_name: "String", # required
    #               condition: "red" # One of: ["red", "green"], # required
    #             }
    #           ],
    #           min_delay_minutes_between_executions: 1, # required
    #         }
    #       ],
    #       name: "PlanName", # required
    #       regions: ["Region"], # required
    #       recovery_approach: "activeActive" # One of: ["activeActive", "activePassive"], # required
    #       primary_region: "Region",
    #       owner: "AccountId", # required
    #       version: "String",
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreatePlanResponse]
    def create_plan(params = {}, options = {})
      request = build_request(:create_plan, params)
      request.send_request(options)
    end

    # <p>Deletes a Region switch plan. You must specify the ARN of the plan to delete.</p> <p>You cannot delete a plan that has an active execution in progress.</p>
    # @param [Hash, Types::DeletePlanRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlanArn", # required
    #   }
    #   options = {}
    #   response = client.delete_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePlanResponse]
    def delete_plan(params = {}, options = {})
      request = build_request(:delete_plan, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a Region switch plan. You must specify the ARN of the plan.</p>
    # @param [Hash, Types::GetPlanRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlanArn", # required
    #   }
    #   options = {}
    #   response = client.get_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plan: {
    #       arn: "PlanArn", # required
    #       description: "String",
    #       workflows: [ # required
    #         {
    #           steps: [
    #             {
    #               name: "StepName", # required
    #               description: "String",
    #               execution_block_configuration: { # required
    #                 # One of:
    #                 custom_action_lambda_config: {
    #                   timeout_minutes: 1,
    #                   lambdas: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       arn: "LambdaArn"
    #                     }
    #                   ],
    #                   retry_interval_minutes: 1.0, # required
    #                   region_to_run: "activatingRegion" # One of: ["activatingRegion", "deactivatingRegion"], # required
    #                   ungraceful: {
    #                     behavior: "skip" # One of: ["skip"]
    #                   }
    #                 },
    #                 ec2_asg_capacity_increase_config: {
    #                   timeout_minutes: 1,
    #                   asgs: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       arn: "AsgArn"
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"]
    #                 },
    #                 execution_approval_config: {
    #                   timeout_minutes: 1,
    #                   approval_role: "RoleArn", # required
    #                 },
    #                 arc_routing_control_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   region_and_routing_controls: { # required
    #                     "String" => [
    #                       {
    #                         routing_control_arn: "RoutingControlArn", # required
    #                         state: "On" # One of: ["On", "Off"], # required
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 global_aurora_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   behavior: "switchoverOnly" # One of: ["switchoverOnly", "failover"], # required
    #                   ungraceful: {
    #                     ungraceful: "failover" # One of: ["failover"]
    #                   },
    #                   global_cluster_identifier: "GlobalClusterIdentifier", # required
    #                   database_cluster_arns: ["AuroraClusterArn"], # required
    #                 },
    #                 parallel_config: {
    #                   steps: { # required
    #                     # recursive Steps
    #                   }
    #                 },
    #                 region_switch_plan_config: {
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   arn: "PlanArn", # required
    #                 },
    #                 ecs_capacity_increase_config: {
    #                   timeout_minutes: 1,
    #                   services: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       cluster_arn: "EcsClusterArn",
    #                       service_arn: "EcsServiceArn"
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"]
    #                 },
    #                 eks_resource_scaling_config: {
    #                   timeout_minutes: 1,
    #                   kubernetes_resource_type: { # required
    #                     api_version: "String", # required
    #                     kind: "String", # required
    #                   },
    #                   scaling_resources: [
    #                     {
    #                       "String" => {
    #                         "Region" => {
    #                           namespace: "KubernetesNamespace", # required
    #                           name: "String", # required
    #                           hpa_name: "String"
    #                         }
    #                       }
    #                     }
    #                   ],
    #                   eks_clusters: [
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       cluster_arn: "EksClusterArn", # required
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours"]
    #                 },
    #                 route53_health_check_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   hosted_zone_id: "Route53HostedZoneId", # required
    #                   record_name: "Route53RecordName", # required
    #                   record_sets: [
    #                     {
    #                       record_set_identifier: "Route53ResourceRecordSetIdentifier",
    #                       region: "Region"
    #                     }
    #                   ]
    #                 }
    #               },
    #               execution_block_type: "CustomActionLambda" # One of: ["CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"], # required
    #             }
    #           ],
    #           workflow_target_action: "activate" # One of: ["activate", "deactivate"], # required
    #           workflow_target_region: "Region",
    #           workflow_description: "String"
    #         }
    #       ],
    #       execution_role: "IamRoleArn", # required
    #       recovery_time_objective_minutes: 1,
    #       associated_alarms: {
    #         "String" => {
    #           cross_account_role: "IamRoleArn",
    #           external_id: "String",
    #           resource_identifier: "String", # required
    #           alarm_type: "applicationHealth" # One of: ["applicationHealth", "trigger"], # required
    #         }
    #       },
    #       triggers: [
    #         {
    #           description: "String",
    #           target_region: "Region", # required
    #           action: "activate" # One of: ["activate", "deactivate"], # required
    #           conditions: [ # required
    #             {
    #               associated_alarm_name: "String", # required
    #               condition: "red" # One of: ["red", "green"], # required
    #             }
    #           ],
    #           min_delay_minutes_between_executions: 1, # required
    #         }
    #       ],
    #       name: "PlanName", # required
    #       regions: ["Region"], # required
    #       recovery_approach: "activeActive" # One of: ["activeActive", "activePassive"], # required
    #       primary_region: "Region",
    #       owner: "AccountId", # required
    #       version: "String",
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetPlanResponse]
    def get_plan(params = {}, options = {})
      request = build_request(:get_plan, params)
      request.send_request(options)
    end

    # <p>Retrieves the evaluation status of a Region switch plan. The evaluation status provides information about the last time the plan was evaluated and any warnings or issues detected.</p>
    # @param [Hash, Types::GetPlanEvaluationStatusRequest] params
    # @option params [String] :plan_arn
    #   <p>The Amazon Resource Name (ARN) of the Region switch plan to retrieve evaluation status for.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     plan_arn: "PlanArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_plan_evaluation_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plan_arn: "PlanArn", # required
    #     last_evaluation_time: Time.now,
    #     last_evaluated_version: "String",
    #     region: "Region",
    #     evaluation_state: "passed" # One of: ["passed", "actionRequired", "pendingEvaluation", "unknown"],
    #     warnings: [
    #       {
    #         workflow: {
    #           action: "activate" # One of: ["activate", "deactivate"],
    #           name: "String"
    #         },
    #         version: "String", # required
    #         step_name: "StepName",
    #         resource_arn: "ResourceArn",
    #         warning_status: "active" # One of: ["active", "resolved"], # required
    #         warning_updated_time: Time.now, # required
    #         warning_message: "String", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetPlanEvaluationStatusResponse]
    def get_plan_evaluation_status(params = {}, options = {})
      request = build_request(:get_plan_evaluation_status, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific plan execution. You must specify the plan ARN and execution ID.</p>
    # @param [Hash, Types::GetPlanExecutionRequest] params
    # @option params [String] :plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan with the execution to retrieve.</p>
    # @option params [String] :execution_id
    #   <p>The execution identifier of a plan execution.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_plan_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     version: "String",
    #     updated_at: Time.now,
    #     comment: "String",
    #     start_time: Time.now, # required
    #     end_time: Time.now,
    #     mode: "graceful" # One of: ["graceful", "ungraceful"], # required
    #     execution_state: "inProgress" # One of: ["inProgress", "pausedByFailedStep", "pausedByOperator", "completed", "completedWithExceptions", "canceled", "planExecutionTimedOut", "pendingManualApproval", "failed", "pending", "completedMonitoringApplicationHealth"], # required
    #     execution_action: "activate" # One of: ["activate", "deactivate"], # required
    #     execution_region: "String", # required
    #     step_states: [
    #       {
    #         name: "StepName",
    #         status: "notStarted" # One of: ["notStarted", "running", "failed", "completed", "canceled", "skipped", "pendingApproval"],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         step_mode: "graceful" # One of: ["graceful", "ungraceful"]
    #       }
    #     ],
    #     plan: {
    #       arn: "PlanArn", # required
    #       description: "String",
    #       workflows: [ # required
    #         {
    #           steps: [
    #             {
    #               name: "StepName", # required
    #               description: "String",
    #               execution_block_configuration: { # required
    #                 # One of:
    #                 custom_action_lambda_config: {
    #                   timeout_minutes: 1,
    #                   lambdas: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       arn: "LambdaArn"
    #                     }
    #                   ],
    #                   retry_interval_minutes: 1.0, # required
    #                   region_to_run: "activatingRegion" # One of: ["activatingRegion", "deactivatingRegion"], # required
    #                   ungraceful: {
    #                     behavior: "skip" # One of: ["skip"]
    #                   }
    #                 },
    #                 ec2_asg_capacity_increase_config: {
    #                   timeout_minutes: 1,
    #                   asgs: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       arn: "AsgArn"
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"]
    #                 },
    #                 execution_approval_config: {
    #                   timeout_minutes: 1,
    #                   approval_role: "RoleArn", # required
    #                 },
    #                 arc_routing_control_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   region_and_routing_controls: { # required
    #                     "String" => [
    #                       {
    #                         routing_control_arn: "RoutingControlArn", # required
    #                         state: "On" # One of: ["On", "Off"], # required
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 global_aurora_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   behavior: "switchoverOnly" # One of: ["switchoverOnly", "failover"], # required
    #                   ungraceful: {
    #                     ungraceful: "failover" # One of: ["failover"]
    #                   },
    #                   global_cluster_identifier: "GlobalClusterIdentifier", # required
    #                   database_cluster_arns: ["AuroraClusterArn"], # required
    #                 },
    #                 parallel_config: {
    #                   steps: { # required
    #                     # recursive Steps
    #                   }
    #                 },
    #                 region_switch_plan_config: {
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   arn: "PlanArn", # required
    #                 },
    #                 ecs_capacity_increase_config: {
    #                   timeout_minutes: 1,
    #                   services: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       cluster_arn: "EcsClusterArn",
    #                       service_arn: "EcsServiceArn"
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"]
    #                 },
    #                 eks_resource_scaling_config: {
    #                   timeout_minutes: 1,
    #                   kubernetes_resource_type: { # required
    #                     api_version: "String", # required
    #                     kind: "String", # required
    #                   },
    #                   scaling_resources: [
    #                     {
    #                       "String" => {
    #                         "Region" => {
    #                           namespace: "KubernetesNamespace", # required
    #                           name: "String", # required
    #                           hpa_name: "String"
    #                         }
    #                       }
    #                     }
    #                   ],
    #                   eks_clusters: [
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       cluster_arn: "EksClusterArn", # required
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours"]
    #                 },
    #                 route53_health_check_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   hosted_zone_id: "Route53HostedZoneId", # required
    #                   record_name: "Route53RecordName", # required
    #                   record_sets: [
    #                     {
    #                       record_set_identifier: "Route53ResourceRecordSetIdentifier",
    #                       region: "Region"
    #                     }
    #                   ]
    #                 }
    #               },
    #               execution_block_type: "CustomActionLambda" # One of: ["CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"], # required
    #             }
    #           ],
    #           workflow_target_action: "activate" # One of: ["activate", "deactivate"], # required
    #           workflow_target_region: "Region",
    #           workflow_description: "String"
    #         }
    #       ],
    #       execution_role: "IamRoleArn", # required
    #       recovery_time_objective_minutes: 1,
    #       associated_alarms: {
    #         "String" => {
    #           cross_account_role: "IamRoleArn",
    #           external_id: "String",
    #           resource_identifier: "String", # required
    #           alarm_type: "applicationHealth" # One of: ["applicationHealth", "trigger"], # required
    #         }
    #       },
    #       triggers: [
    #         {
    #           description: "String",
    #           target_region: "Region", # required
    #           action: "activate" # One of: ["activate", "deactivate"], # required
    #           conditions: [ # required
    #             {
    #               associated_alarm_name: "String", # required
    #               condition: "red" # One of: ["red", "green"], # required
    #             }
    #           ],
    #           min_delay_minutes_between_executions: 1, # required
    #         }
    #       ],
    #       name: "PlanName", # required
    #       regions: ["Region"], # required
    #       recovery_approach: "activeActive" # One of: ["activeActive", "activePassive"], # required
    #       primary_region: "Region",
    #       owner: "AccountId", # required
    #       version: "String",
    #       updated_at: Time.now
    #     },
    #     actual_recovery_time: "Duration",
    #     next_token: "String"
    #   }
    # @return [Types::GetPlanExecutionResponse]
    def get_plan_execution(params = {}, options = {})
      request = build_request(:get_plan_execution, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a Region switch plan in a specific Amazon Web Services Region. This operation is useful for getting Region-specific information about a plan.</p>
    # @param [Hash, Types::GetPlanInRegionRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the plan in Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlanArn", # required
    #   }
    #   options = {}
    #   response = client.get_plan_in_region(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plan: {
    #       arn: "PlanArn", # required
    #       description: "String",
    #       workflows: [ # required
    #         {
    #           steps: [
    #             {
    #               name: "StepName", # required
    #               description: "String",
    #               execution_block_configuration: { # required
    #                 # One of:
    #                 custom_action_lambda_config: {
    #                   timeout_minutes: 1,
    #                   lambdas: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       arn: "LambdaArn"
    #                     }
    #                   ],
    #                   retry_interval_minutes: 1.0, # required
    #                   region_to_run: "activatingRegion" # One of: ["activatingRegion", "deactivatingRegion"], # required
    #                   ungraceful: {
    #                     behavior: "skip" # One of: ["skip"]
    #                   }
    #                 },
    #                 ec2_asg_capacity_increase_config: {
    #                   timeout_minutes: 1,
    #                   asgs: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       arn: "AsgArn"
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"]
    #                 },
    #                 execution_approval_config: {
    #                   timeout_minutes: 1,
    #                   approval_role: "RoleArn", # required
    #                 },
    #                 arc_routing_control_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   region_and_routing_controls: { # required
    #                     "String" => [
    #                       {
    #                         routing_control_arn: "RoutingControlArn", # required
    #                         state: "On" # One of: ["On", "Off"], # required
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 global_aurora_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   behavior: "switchoverOnly" # One of: ["switchoverOnly", "failover"], # required
    #                   ungraceful: {
    #                     ungraceful: "failover" # One of: ["failover"]
    #                   },
    #                   global_cluster_identifier: "GlobalClusterIdentifier", # required
    #                   database_cluster_arns: ["AuroraClusterArn"], # required
    #                 },
    #                 parallel_config: {
    #                   steps: { # required
    #                     # recursive Steps
    #                   }
    #                 },
    #                 region_switch_plan_config: {
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   arn: "PlanArn", # required
    #                 },
    #                 ecs_capacity_increase_config: {
    #                   timeout_minutes: 1,
    #                   services: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       cluster_arn: "EcsClusterArn",
    #                       service_arn: "EcsServiceArn"
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"]
    #                 },
    #                 eks_resource_scaling_config: {
    #                   timeout_minutes: 1,
    #                   kubernetes_resource_type: { # required
    #                     api_version: "String", # required
    #                     kind: "String", # required
    #                   },
    #                   scaling_resources: [
    #                     {
    #                       "String" => {
    #                         "Region" => {
    #                           namespace: "KubernetesNamespace", # required
    #                           name: "String", # required
    #                           hpa_name: "String"
    #                         }
    #                       }
    #                     }
    #                   ],
    #                   eks_clusters: [
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       cluster_arn: "EksClusterArn", # required
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours"]
    #                 },
    #                 route53_health_check_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   hosted_zone_id: "Route53HostedZoneId", # required
    #                   record_name: "Route53RecordName", # required
    #                   record_sets: [
    #                     {
    #                       record_set_identifier: "Route53ResourceRecordSetIdentifier",
    #                       region: "Region"
    #                     }
    #                   ]
    #                 }
    #               },
    #               execution_block_type: "CustomActionLambda" # One of: ["CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"], # required
    #             }
    #           ],
    #           workflow_target_action: "activate" # One of: ["activate", "deactivate"], # required
    #           workflow_target_region: "Region",
    #           workflow_description: "String"
    #         }
    #       ],
    #       execution_role: "IamRoleArn", # required
    #       recovery_time_objective_minutes: 1,
    #       associated_alarms: {
    #         "String" => {
    #           cross_account_role: "IamRoleArn",
    #           external_id: "String",
    #           resource_identifier: "String", # required
    #           alarm_type: "applicationHealth" # One of: ["applicationHealth", "trigger"], # required
    #         }
    #       },
    #       triggers: [
    #         {
    #           description: "String",
    #           target_region: "Region", # required
    #           action: "activate" # One of: ["activate", "deactivate"], # required
    #           conditions: [ # required
    #             {
    #               associated_alarm_name: "String", # required
    #               condition: "red" # One of: ["red", "green"], # required
    #             }
    #           ],
    #           min_delay_minutes_between_executions: 1, # required
    #         }
    #       ],
    #       name: "PlanName", # required
    #       regions: ["Region"], # required
    #       recovery_approach: "activeActive" # One of: ["activeActive", "activePassive"], # required
    #       primary_region: "Region",
    #       owner: "AccountId", # required
    #       version: "String",
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetPlanInRegionResponse]
    def get_plan_in_region(params = {}, options = {})
      request = build_request(:get_plan_in_region, params)
      request.send_request(options)
    end

    # <p>Lists the events that occurred during a plan execution. These events provide a detailed timeline of the execution process.</p>
    # @param [Hash, Types::ListPlanExecutionEventsRequest] params
    # @option params [String] :plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    # @option params [String] :execution_id
    #   <p>The execution identifier of a plan execution.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    # @option params [String] :name
    #   <p>The name of the plan execution event.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     max_results: 1,
    #     next_token: "String",
    #     name: "StepName"
    #   }
    #   options = {}
    #   response = client.list_plan_execution_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         timestamp: Time.now,
    #         type: "unknown" # One of: ["unknown", "executionPending", "executionStarted", "executionSucceeded", "executionFailed", "executionPausing", "executionPaused", "executionCanceling", "executionCanceled", "executionPendingApproval", "executionBehaviorChangedToUngraceful", "executionBehaviorChangedToGraceful", "executionPendingChildPlanManualApproval", "executionSuccessMonitoringApplicationHealth", "stepStarted", "stepUpdate", "stepSucceeded", "stepFailed", "stepSkipped", "stepPausedByError", "stepPausedByOperator", "stepCanceled", "stepPendingApproval", "stepExecutionBehaviorChangedToUngraceful", "stepPendingApplicationHealthMonitor"],
    #         step_name: "StepName",
    #         execution_block_type: "CustomActionLambda" # One of: ["CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"],
    #         resources: ["String"],
    #         error: "String",
    #         description: "String",
    #         event_id: "String", # required
    #         previous_event_id: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPlanExecutionEventsResponse]
    def list_plan_execution_events(params = {}, options = {})
      request = build_request(:list_plan_execution_events, params)
      request.send_request(options)
    end

    # <p>Lists the executions of a Region switch plan. This operation returns information about both current and historical executions.</p>
    # @param [Hash, Types::ListPlanExecutionsRequest] params
    # @option params [String] :plan_arn
    #   <p>The ARN for the plan.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    # @option params [String] :state
    #   <p>The state of the plan execution. For example, the plan execution might be In Progress.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     plan_arn: "PlanArn", # required
    #     max_results: 1,
    #     next_token: "String",
    #     state: "inProgress" # One of: ["inProgress", "pausedByFailedStep", "pausedByOperator", "completed", "completedWithExceptions", "canceled", "planExecutionTimedOut", "pendingManualApproval", "failed", "pending", "completedMonitoringApplicationHealth"]
    #   }
    #   options = {}
    #   response = client.list_plan_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         plan_arn: "PlanArn", # required
    #         execution_id: "ExecutionId", # required
    #         version: "String",
    #         updated_at: Time.now,
    #         comment: "String",
    #         start_time: Time.now, # required
    #         end_time: Time.now,
    #         mode: "graceful" # One of: ["graceful", "ungraceful"], # required
    #         execution_state: "inProgress" # One of: ["inProgress", "pausedByFailedStep", "pausedByOperator", "completed", "completedWithExceptions", "canceled", "planExecutionTimedOut", "pendingManualApproval", "failed", "pending", "completedMonitoringApplicationHealth"], # required
    #         execution_action: "activate" # One of: ["activate", "deactivate"], # required
    #         execution_region: "String", # required
    #         actual_recovery_time: "Duration"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPlanExecutionsResponse]
    def list_plan_executions(params = {}, options = {})
      request = build_request(:list_plan_executions, params)
      request.send_request(options)
    end

    # <p>Lists all Region switch plans in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListPlansRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plans: [
    #       {
    #         arn: "PlanArn", # required
    #         owner: "AccountId", # required
    #         name: "PlanName", # required
    #         regions: ["Region"], # required
    #         recovery_approach: "activeActive" # One of: ["activeActive", "activePassive"], # required
    #         primary_region: "Region",
    #         version: "String",
    #         updated_at: Time.now,
    #         description: "String",
    #         execution_role: "String",
    #         active_plan_execution: "ExecutionId",
    #         recovery_time_objective_minutes: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPlansResponse]
    def list_plans(params = {}, options = {})
      request = build_request(:list_plans, params)
      request.send_request(options)
    end

    # <p>Lists all Region switch plans in your Amazon Web Services account that are available in the current Amazon Web Services Region.</p>
    # @param [Hash, Types::ListPlansInRegionRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_plans_in_region(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plans: [
    #       {
    #         arn: "PlanArn", # required
    #         owner: "AccountId", # required
    #         name: "PlanName", # required
    #         regions: ["Region"], # required
    #         recovery_approach: "activeActive" # One of: ["activeActive", "activePassive"], # required
    #         primary_region: "Region",
    #         version: "String",
    #         updated_at: Time.now,
    #         description: "String",
    #         execution_role: "String",
    #         active_plan_execution: "ExecutionId",
    #         recovery_time_objective_minutes: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPlansInRegionResponse]
    def list_plans_in_region(params = {}, options = {})
      request = build_request(:list_plans_in_region, params)
      request.send_request(options)
    end

    # <p>List the Amazon Route 53 health checks.</p>
    # @param [Hash, Types::ListRoute53HealthChecksRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Route 53 health check request.</p>
    # @option params [String] :hosted_zone_id
    #   <p>The hosted zone ID for the health checks.</p>
    # @option params [String] :record_name
    #   <p>The record name for the health checks.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>nextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>nextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlanArn", # required
    #     hosted_zone_id: "Route53HostedZoneId",
    #     record_name: "Route53RecordName",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_route53_health_checks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_checks: [
    #       {
    #         hosted_zone_id: "Route53HostedZoneId", # required
    #         record_name: "Route53RecordName", # required
    #         health_check_id: "Route53HealthCheckId",
    #         region: "Region", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRoute53HealthChecksResponse]
    def list_route53_health_checks(params = {}, options = {})
      request = build_request(:list_route53_health_checks, params)
      request.send_request(options)
    end

    # <p>Lists the tags attached to a Region switch resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlanArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts the execution of a Region switch plan. You can execute a plan in either PRACTICE or RECOVERY mode.</p> <p>In PRACTICE mode, the execution simulates the steps without making actual changes to your application's traffic routing. In RECOVERY mode, the execution performs actual changes to shift traffic between Regions.</p>
    # @param [Hash, Types::StartPlanExecutionRequest] params
    # @option params [String] :plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan to execute.</p>
    # @option params [String] :target_region
    #   <p>The Amazon Web Services Region to target with this execution. This is the Region that traffic will be shifted to or from, depending on the action.</p>
    # @option params [String] :action
    #   <p>The action to perform. Valid values are ACTIVATE (to shift traffic to the target Region) or DEACTIVATE (to shift traffic away from the target Region).</p>
    # @option params [String] :mode
    #   <p>The plan execution mode. Valid values are <code>Practice</code>, for testing without making actual changes, or <code>Recovery</code>, for actual traffic shifting and application recovery.</p>
    # @option params [String] :comment
    #   <p>An optional comment explaining why the plan execution is being started.</p>
    # @option params [String] :latest_version
    #   <p>A boolean value indicating whether to use the latest version of the plan. If set to false, you must specify a specific version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     plan_arn: "PlanArn", # required
    #     target_region: "String", # required
    #     action: "activate" # One of: ["activate", "deactivate"], # required
    #     mode: "graceful" # One of: ["graceful", "ungraceful"],
    #     comment: "ExecutionComment",
    #     latest_version: "String"
    #   }
    #   options = {}
    #   response = client.start_plan_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_id: "ExecutionId",
    #     plan: "PlanArn",
    #     plan_version: "String",
    #     activate_region: "String",
    #     deactivate_region: "String"
    #   }
    # @return [Types::StartPlanExecutionResponse]
    def start_plan_execution(params = {}, options = {})
      request = build_request(:start_plan_execution, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for a Region switch resource. You can assign metadata to your resources in the form of tags, which are key-value pairs.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for a tag that you add to a resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that you add to a resource. You can add a maximum of 50 tags in Region switch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlanArn", # required
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

    # <p>Removes tags from a Region switch resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for a tag you remove a resource from.</p>
    # @option params [Array<String>] :resource_tag_keys
    #   <p>Tag keys that you remove from a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlanArn", # required
    #     resource_tag_keys: ["TagKey"], # required
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

    # <p>Updates an existing Region switch plan. You can modify the plan's description, workflows, execution role, recovery time objective, associated alarms, and triggers.</p>
    # @param [Hash, Types::UpdatePlanRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the plan.</p>
    # @option params [String] :description
    #   <p>The updated description for the Region switch plan.</p>
    # @option params [Array<Types::Workflow>] :workflows
    #   <p>The updated workflows for the Region switch plan.</p>
    # @option params [String] :execution_role
    #   <p>The updated IAM role ARN that grants Region switch the permissions needed to execute the plan steps.</p>
    # @option params [Integer] :recovery_time_objective_minutes
    #   <p>The updated target recovery time objective (RTO) in minutes for the plan.</p>
    # @option params [Hash<String, Types::AssociatedAlarm>] :associated_alarms
    #   <p>The updated CloudWatch alarms associated with the plan.</p>
    # @option params [Array<Types::Trigger>] :triggers
    #   <p>The updated conditions that can automatically trigger the execution of the plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlanArn", # required
    #     description: "String",
    #     workflows: [ # required
    #       {
    #         steps: [
    #           {
    #             name: "StepName", # required
    #             description: "String",
    #             execution_block_configuration: { # required
    #               # One of:
    #               custom_action_lambda_config: {
    #                 timeout_minutes: 1,
    #                 lambdas: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     arn: "LambdaArn"
    #                   }
    #                 ],
    #                 retry_interval_minutes: 1.0, # required
    #                 region_to_run: "activatingRegion" # One of: ["activatingRegion", "deactivatingRegion"], # required
    #                 ungraceful: {
    #                   behavior: "skip" # One of: ["skip"]
    #                 }
    #               },
    #               ec2_asg_capacity_increase_config: {
    #                 timeout_minutes: 1,
    #                 asgs: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     arn: "AsgArn"
    #                   }
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"]
    #               },
    #               execution_approval_config: {
    #                 timeout_minutes: 1,
    #                 approval_role: "RoleArn", # required
    #               },
    #               arc_routing_control_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 region_and_routing_controls: { # required
    #                   "String" => [
    #                     {
    #                       routing_control_arn: "RoutingControlArn", # required
    #                       state: "On" # One of: ["On", "Off"], # required
    #                     }
    #                   ]
    #                 }
    #               },
    #               global_aurora_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 behavior: "switchoverOnly" # One of: ["switchoverOnly", "failover"], # required
    #                 ungraceful: {
    #                   ungraceful: "failover" # One of: ["failover"]
    #                 },
    #                 global_cluster_identifier: "GlobalClusterIdentifier", # required
    #                 database_cluster_arns: ["AuroraClusterArn"], # required
    #               },
    #               parallel_config: {
    #                 steps: { # required
    #                   # recursive Steps
    #                 }
    #               },
    #               region_switch_plan_config: {
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 arn: "PlanArn", # required
    #               },
    #               ecs_capacity_increase_config: {
    #                 timeout_minutes: 1,
    #                 services: [ # required
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     cluster_arn: "EcsClusterArn",
    #                     service_arn: "EcsServiceArn"
    #                   }
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"]
    #               },
    #               eks_resource_scaling_config: {
    #                 timeout_minutes: 1,
    #                 kubernetes_resource_type: { # required
    #                   api_version: "String", # required
    #                   kind: "String", # required
    #                 },
    #                 scaling_resources: [
    #                   {
    #                     "String" => {
    #                       "Region" => {
    #                         namespace: "KubernetesNamespace", # required
    #                         name: "String", # required
    #                         hpa_name: "String"
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 eks_clusters: [
    #                   {
    #                     cross_account_role: "IamRoleArn",
    #                     external_id: "String",
    #                     cluster_arn: "EksClusterArn", # required
    #                   }
    #                 ],
    #                 ungraceful: {
    #                   minimum_success_percentage: 1, # required
    #                 },
    #                 target_percent: 1,
    #                 capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours"]
    #               },
    #               route53_health_check_config: {
    #                 timeout_minutes: 1,
    #                 cross_account_role: "IamRoleArn",
    #                 external_id: "String",
    #                 hosted_zone_id: "Route53HostedZoneId", # required
    #                 record_name: "Route53RecordName", # required
    #                 record_sets: [
    #                   {
    #                     record_set_identifier: "Route53ResourceRecordSetIdentifier",
    #                     region: "Region"
    #                   }
    #                 ]
    #               }
    #             },
    #             execution_block_type: "CustomActionLambda" # One of: ["CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"], # required
    #           }
    #         ],
    #         workflow_target_action: "activate" # One of: ["activate", "deactivate"], # required
    #         workflow_target_region: "Region",
    #         workflow_description: "String"
    #       }
    #     ],
    #     execution_role: "IamRoleArn", # required
    #     recovery_time_objective_minutes: 1,
    #     associated_alarms: {
    #       "String" => {
    #         cross_account_role: "IamRoleArn",
    #         external_id: "String",
    #         resource_identifier: "String", # required
    #         alarm_type: "applicationHealth" # One of: ["applicationHealth", "trigger"], # required
    #       }
    #     },
    #     triggers: [
    #       {
    #         description: "String",
    #         target_region: "Region", # required
    #         action: "activate" # One of: ["activate", "deactivate"], # required
    #         conditions: [ # required
    #           {
    #             associated_alarm_name: "String", # required
    #             condition: "red" # One of: ["red", "green"], # required
    #           }
    #         ],
    #         min_delay_minutes_between_executions: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plan: {
    #       arn: "PlanArn", # required
    #       description: "String",
    #       workflows: [ # required
    #         {
    #           steps: [
    #             {
    #               name: "StepName", # required
    #               description: "String",
    #               execution_block_configuration: { # required
    #                 # One of:
    #                 custom_action_lambda_config: {
    #                   timeout_minutes: 1,
    #                   lambdas: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       arn: "LambdaArn"
    #                     }
    #                   ],
    #                   retry_interval_minutes: 1.0, # required
    #                   region_to_run: "activatingRegion" # One of: ["activatingRegion", "deactivatingRegion"], # required
    #                   ungraceful: {
    #                     behavior: "skip" # One of: ["skip"]
    #                   }
    #                 },
    #                 ec2_asg_capacity_increase_config: {
    #                   timeout_minutes: 1,
    #                   asgs: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       arn: "AsgArn"
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "autoscalingMaxInLast24Hours"]
    #                 },
    #                 execution_approval_config: {
    #                   timeout_minutes: 1,
    #                   approval_role: "RoleArn", # required
    #                 },
    #                 arc_routing_control_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   region_and_routing_controls: { # required
    #                     "String" => [
    #                       {
    #                         routing_control_arn: "RoutingControlArn", # required
    #                         state: "On" # One of: ["On", "Off"], # required
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 global_aurora_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   behavior: "switchoverOnly" # One of: ["switchoverOnly", "failover"], # required
    #                   ungraceful: {
    #                     ungraceful: "failover" # One of: ["failover"]
    #                   },
    #                   global_cluster_identifier: "GlobalClusterIdentifier", # required
    #                   database_cluster_arns: ["AuroraClusterArn"], # required
    #                 },
    #                 parallel_config: {
    #                   steps: { # required
    #                     # recursive Steps
    #                   }
    #                 },
    #                 region_switch_plan_config: {
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   arn: "PlanArn", # required
    #                 },
    #                 ecs_capacity_increase_config: {
    #                   timeout_minutes: 1,
    #                   services: [ # required
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       cluster_arn: "EcsClusterArn",
    #                       service_arn: "EcsServiceArn"
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours", "containerInsightsMaxInLast24Hours"]
    #                 },
    #                 eks_resource_scaling_config: {
    #                   timeout_minutes: 1,
    #                   kubernetes_resource_type: { # required
    #                     api_version: "String", # required
    #                     kind: "String", # required
    #                   },
    #                   scaling_resources: [
    #                     {
    #                       "String" => {
    #                         "Region" => {
    #                           namespace: "KubernetesNamespace", # required
    #                           name: "String", # required
    #                           hpa_name: "String"
    #                         }
    #                       }
    #                     }
    #                   ],
    #                   eks_clusters: [
    #                     {
    #                       cross_account_role: "IamRoleArn",
    #                       external_id: "String",
    #                       cluster_arn: "EksClusterArn", # required
    #                     }
    #                   ],
    #                   ungraceful: {
    #                     minimum_success_percentage: 1, # required
    #                   },
    #                   target_percent: 1,
    #                   capacity_monitoring_approach: "sampledMaxInLast24Hours" # One of: ["sampledMaxInLast24Hours"]
    #                 },
    #                 route53_health_check_config: {
    #                   timeout_minutes: 1,
    #                   cross_account_role: "IamRoleArn",
    #                   external_id: "String",
    #                   hosted_zone_id: "Route53HostedZoneId", # required
    #                   record_name: "Route53RecordName", # required
    #                   record_sets: [
    #                     {
    #                       record_set_identifier: "Route53ResourceRecordSetIdentifier",
    #                       region: "Region"
    #                     }
    #                   ]
    #                 }
    #               },
    #               execution_block_type: "CustomActionLambda" # One of: ["CustomActionLambda", "ManualApproval", "AuroraGlobalDatabase", "EC2AutoScaling", "ARCRoutingControl", "ARCRegionSwitchPlan", "Parallel", "ECSServiceScaling", "EKSResourceScaling", "Route53HealthCheck"], # required
    #             }
    #           ],
    #           workflow_target_action: "activate" # One of: ["activate", "deactivate"], # required
    #           workflow_target_region: "Region",
    #           workflow_description: "String"
    #         }
    #       ],
    #       execution_role: "IamRoleArn", # required
    #       recovery_time_objective_minutes: 1,
    #       associated_alarms: {
    #         "String" => {
    #           cross_account_role: "IamRoleArn",
    #           external_id: "String",
    #           resource_identifier: "String", # required
    #           alarm_type: "applicationHealth" # One of: ["applicationHealth", "trigger"], # required
    #         }
    #       },
    #       triggers: [
    #         {
    #           description: "String",
    #           target_region: "Region", # required
    #           action: "activate" # One of: ["activate", "deactivate"], # required
    #           conditions: [ # required
    #             {
    #               associated_alarm_name: "String", # required
    #               condition: "red" # One of: ["red", "green"], # required
    #             }
    #           ],
    #           min_delay_minutes_between_executions: 1, # required
    #         }
    #       ],
    #       name: "PlanName", # required
    #       regions: ["Region"], # required
    #       recovery_approach: "activeActive" # One of: ["activeActive", "activePassive"], # required
    #       primary_region: "Region",
    #       owner: "AccountId", # required
    #       version: "String",
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdatePlanResponse]
    def update_plan(params = {}, options = {})
      request = build_request(:update_plan, params)
      request.send_request(options)
    end

    # <p>Updates an in-progress plan execution. This operation allows you to modify certain aspects of the execution, such as adding a comment or changing the action.</p>
    # @param [Hash, Types::UpdatePlanExecutionRequest] params
    # @option params [String] :plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan with the execution to update.</p>
    # @option params [String] :execution_id
    #   <p>The execution identifier of a plan execution.</p>
    # @option params [String] :action
    #   <p>The action specified for a plan execution, for example, Switch to Graceful or Pause.</p>
    # @option params [String] :comment
    #   <p>An optional comment about the plan execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     action: "switchToGraceful" # One of: ["switchToGraceful", "switchToUngraceful", "pause", "resume"], # required
    #     comment: "ExecutionComment"
    #   }
    #   options = {}
    #   response = client.update_plan_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePlanExecutionResponse]
    def update_plan_execution(params = {}, options = {})
      request = build_request(:update_plan_execution, params)
      request.send_request(options)
    end

    # <p>Updates a specific step in an in-progress plan execution. This operation allows you to modify the step's comment or action.</p>
    # @param [Hash, Types::UpdatePlanExecutionStepRequest] params
    # @option params [String] :plan_arn
    #   <p>The Amazon Resource Name (ARN) of the plan containing the execution step to update.</p>
    # @option params [String] :execution_id
    #   <p>The unique identifier of the plan execution containing the step to update.</p>
    # @option params [String] :comment
    #   <p>An optional comment about the plan execution.</p>
    # @option params [String] :step_name
    #   <p>The name of the execution step to update.</p>
    # @option params [String] :action_to_take
    #   <p>The updated action to take for the step. This can be used to skip or retry a step.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     plan_arn: "PlanArn", # required
    #     execution_id: "ExecutionId", # required
    #     comment: "ExecutionComment", # required
    #     step_name: "String", # required
    #     action_to_take: "switchToUngraceful" # One of: ["switchToUngraceful", "skip"], # required
    #   }
    #   options = {}
    #   response = client.update_plan_execution_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePlanExecutionStepResponse]
    def update_plan_execution_step(params = {}, options = {})
      request = build_request(:update_plan_execution_step, params)
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
      context[:gem_name] = 'aws-sdk-arcregionswitch'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        plan_evaluation_status_passed: Waiters::PlanEvaluationStatusPassed,
        plan_execution_completed: Waiters::PlanExecutionCompleted
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
