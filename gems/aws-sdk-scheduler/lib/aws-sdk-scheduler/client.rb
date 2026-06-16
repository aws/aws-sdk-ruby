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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:scheduler)

module Aws::Scheduler
  # An API client for Aws::Scheduler.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSChronosService
    @identifier = :scheduler

    add_plugin(::Aws::Scheduler::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Scheduler::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Creates the specified schedule.</p>
    # @param [Hash, Types::CreateScheduleOperationInput] params
    # @option params [String] :name
    #   <p>The name of the schedule that you are creating.</p>
    # @option params [String] :group_name
    #   <p>The name of the schedule group to associate with this schedule. If you omit this, the default schedule group is used.</p>
    # @option params [String] :schedule_expression
    #   <p>
    #     The expression that defines when the schedule runs. The following formats are supported.
    #   </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>at</code> expression - <code>at(yyyy-mm-ddThh:mm:ss)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rate</code> expression - <code>rate(value unit)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cron</code> expression - <code>cron(fields)</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #     You can use <code>at</code> expressions to create one-time schedules that invoke a target once, at the time and in the time zone, that you specify.
    #     You can use <code>rate</code> and <code>cron</code> expressions to create recurring schedules. Rate-based schedules are useful when you want to invoke a target
    #     at regular intervals, such as every 15 minutes or every five days. Cron-based schedules are useful when you want to invoke a target periodically at a specific time,
    #     such as at 8:00 am (UTC+0) every 1st day of the month.
    #   </p>
    #            <p>
    #     A <code>cron</code> expression consists of six fields separated by white spaces: <code>(minutes hours day_of_month month day_of_week year)</code>.
    #   </p>
    #            <p>
    #     A <code>rate</code> expression consists of a <i>value</i> as a positive integer, and a <i>unit</i> with the following options:
    #     <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>
    #            </p>
    #            <p>
    #     For more information and examples, see <a href="https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html">Schedule types on EventBridge Scheduler</a> in the <i>EventBridge Scheduler User Guide</i>.
    #   </p>
    # @option params [Time] :start_date
    #   <p>The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the <code>StartDate</code> you specify.
    #   EventBridge Scheduler ignores <code>StartDate</code> for one-time schedules.</p>
    # @option params [Time] :end_date
    #   <p>The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the <code>EndDate</code> you specify.
    #   EventBridge Scheduler ignores <code>EndDate</code> for one-time schedules.</p>
    # @option params [String] :description
    #   <p>The description you specify for the schedule.</p>
    # @option params [String] :schedule_expression_timezone
    #   <p>The timezone in which the scheduling expression is evaluated.</p>
    # @option params [String] :state
    #   <p>Specifies whether the schedule is enabled or disabled.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) for the customer managed KMS key that EventBridge Scheduler will use to encrypt and decrypt your data.</p>
    # @option params [Types::Target] :target
    #   <p>The schedule's target.</p>
    # @option params [Types::FlexibleTimeWindow] :flexible_time_window
    #   <p>Allows you to configure a time window during which EventBridge Scheduler invokes the schedule.</p>
    # @option params [String] :client_token
    #   <p>
    #     Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token,
    #     EventBridge Scheduler uses a randomly generated token for the request to ensure idempotency.  
    #   </p>
    # @option params [String] :action_after_completion
    #   <p>Specifies the action that EventBridge Scheduler applies to the schedule after the schedule completes invoking the target.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     group_name: "ScheduleGroupName",
    #     schedule_expression: "ScheduleExpression", # required
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     description: "Description",
    #     schedule_expression_timezone: "ScheduleExpressionTimezone",
    #     state: "ScheduleState",
    #     kms_key_arn: "KmsKeyArn",
    #     target: { # required
    #       arn: "TargetArn", # required
    #       role_arn: "RoleArn", # required
    #       dead_letter_config: {
    #         arn: "ResourceArn"
    #       },
    #       retry_policy: {
    #         maximum_event_age_in_seconds: 1,
    #         maximum_retry_attempts: 1
    #       },
    #       input: "TargetInput",
    #       ecs_parameters: {
    #         task_definition_arn: "TaskDefinitionArn", # required
    #         task_count: 1,
    #         launch_type: "LaunchType",
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["Subnet"], # required
    #             security_groups: ["SecurityGroup"],
    #             assign_public_ip: "AssignPublicIp"
    #           }
    #         },
    #         platform_version: "PlatformVersion",
    #         group: "Group",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #             base: 1
    #           }
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         placement_constraints: [
    #           {
    #             type: "PlacementConstraintType",
    #             expression: "PlacementConstraintExpression"
    #           }
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "PlacementStrategyType",
    #             field: "PlacementStrategyField"
    #           }
    #         ],
    #         propagate_tags: "PropagateTags",
    #         reference_id: "ReferenceId",
    #         tags: [
    #           {
    #             "TagKey" => "TagValue"
    #           }
    #         ]
    #       },
    #       event_bridge_parameters: {
    #         detail_type: "DetailType", # required
    #         source: "Source", # required
    #       },
    #       kinesis_parameters: {
    #         partition_key: "TargetPartitionKey", # required
    #       },
    #       sage_maker_pipeline_parameters: {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           }
    #         ]
    #       },
    #       sqs_parameters: {
    #         message_group_id: "MessageGroupId"
    #       }
    #     },
    #     flexible_time_window: { # required
    #       mode: "FlexibleTimeWindowMode", # required
    #       maximum_window_in_minutes: 1
    #     },
    #     client_token: "ClientToken",
    #     action_after_completion: "ActionAfterCompletion"
    #   }
    #   options = {}
    #   response = client.create_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schedule_arn: "ScheduleArn", # required
    #   }
    # @return [Types::CreateScheduleOperationOutput]
    def create_schedule(params = {}, options = {})
      request = build_request(:create_schedule, params)
      request.send_request(options)
    end

    # <p>Creates the specified schedule group.</p>
    # @param [Hash, Types::CreateScheduleGroupOperationInput] params
    # @option params [String] :name
    #   <p>The name of the schedule group that you are creating.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags to associate with the schedule group.</p>
    # @option params [String] :client_token
    #   <p>
    #     Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token,
    #     EventBridge Scheduler uses a randomly generated token for the request to ensure idempotency.  
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ScheduleGroupName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_schedule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schedule_group_arn: "ScheduleGroupArn", # required
    #   }
    # @return [Types::CreateScheduleGroupOperationOutput]
    def create_schedule_group(params = {}, options = {})
      request = build_request(:create_schedule_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified schedule.</p>
    # @param [Hash, Types::DeleteScheduleOperationInput] params
    # @option params [String] :name
    #   <p>The name of the schedule to delete.</p>
    # @option params [String] :group_name
    #   <p>The name of the schedule group associated with this schedule. If you omit this, the default schedule group is used.</p>
    # @option params [String] :client_token
    #   <p>
    #     Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token,
    #     EventBridge Scheduler uses a randomly generated token for the request to ensure idempotency.  
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     group_name: "ScheduleGroupName",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteScheduleOperationOutput]
    def delete_schedule(params = {}, options = {})
      request = build_request(:delete_schedule, params)
      request.send_request(options)
    end

    # <p>Deletes the specified schedule group. Deleting a schedule group results in EventBridge Scheduler deleting all schedules associated with the group.
    #          When you delete a group, it remains in a <code>DELETING</code> state until all of its associated schedules are deleted.
    #          Schedules associated with the group that are set to run while the schedule group is in the process of being deleted might continue to invoke their targets
    #          until the schedule group and its associated schedules are deleted.</p>
    #          <note>
    #             <p>
    #             This operation is eventually consistent.
    #          </p>
    #          </note>
    # @param [Hash, Types::DeleteScheduleGroupOperationInput] params
    # @option params [String] :name
    #   <p>The name of the schedule group to delete.</p>
    # @option params [String] :client_token
    #   <p>
    #     Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token,
    #     EventBridge Scheduler uses a randomly generated token for the request to ensure idempotency.  
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ScheduleGroupName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_schedule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteScheduleGroupOperationOutput]
    def delete_schedule_group(params = {}, options = {})
      request = build_request(:delete_schedule_group, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified schedule.</p>
    # @param [Hash, Types::GetScheduleOperationInput] params
    # @option params [String] :name
    #   <p>The name of the schedule to retrieve.</p>
    # @option params [String] :group_name
    #   <p>The name of the schedule group associated with this schedule. If you omit this, EventBridge Scheduler assumes that the schedule is associated with the default group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     group_name: "ScheduleGroupName"
    #   }
    #   options = {}
    #   response = client.get_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ScheduleArn",
    #     group_name: "ScheduleGroupName",
    #     name: "Name",
    #     schedule_expression: "ScheduleExpression",
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     description: "Description",
    #     schedule_expression_timezone: "ScheduleExpressionTimezone",
    #     state: "ScheduleState",
    #     creation_date: Time.now,
    #     last_modification_date: Time.now,
    #     kms_key_arn: "KmsKeyArn",
    #     target: {
    #       arn: "TargetArn", # required
    #       role_arn: "RoleArn", # required
    #       dead_letter_config: {
    #         arn: "ResourceArn"
    #       },
    #       retry_policy: {
    #         maximum_event_age_in_seconds: 1,
    #         maximum_retry_attempts: 1
    #       },
    #       input: "TargetInput",
    #       ecs_parameters: {
    #         task_definition_arn: "TaskDefinitionArn", # required
    #         task_count: 1,
    #         launch_type: "LaunchType",
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["Subnet"], # required
    #             security_groups: ["SecurityGroup"],
    #             assign_public_ip: "AssignPublicIp"
    #           }
    #         },
    #         platform_version: "PlatformVersion",
    #         group: "Group",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #             base: 1
    #           }
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         placement_constraints: [
    #           {
    #             type: "PlacementConstraintType",
    #             expression: "PlacementConstraintExpression"
    #           }
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "PlacementStrategyType",
    #             field: "PlacementStrategyField"
    #           }
    #         ],
    #         propagate_tags: "PropagateTags",
    #         reference_id: "ReferenceId",
    #         tags: [
    #           {
    #             "TagKey" => "TagValue"
    #           }
    #         ]
    #       },
    #       event_bridge_parameters: {
    #         detail_type: "DetailType", # required
    #         source: "Source", # required
    #       },
    #       kinesis_parameters: {
    #         partition_key: "TargetPartitionKey", # required
    #       },
    #       sage_maker_pipeline_parameters: {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           }
    #         ]
    #       },
    #       sqs_parameters: {
    #         message_group_id: "MessageGroupId"
    #       }
    #     },
    #     flexible_time_window: {
    #       mode: "FlexibleTimeWindowMode", # required
    #       maximum_window_in_minutes: 1
    #     },
    #     action_after_completion: "ActionAfterCompletion"
    #   }
    # @return [Types::GetScheduleOperationOutput]
    def get_schedule(params = {}, options = {})
      request = build_request(:get_schedule, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified schedule group.</p>
    # @param [Hash, Types::GetScheduleGroupOperationInput] params
    # @option params [String] :name
    #   <p>The name of the schedule group to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ScheduleGroupName", # required
    #   }
    #   options = {}
    #   response = client.get_schedule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ScheduleGroupArn",
    #     name: "ScheduleGroupName",
    #     state: "ScheduleGroupState",
    #     creation_date: Time.now,
    #     last_modification_date: Time.now
    #   }
    # @return [Types::GetScheduleGroupOperationOutput]
    def get_schedule_group(params = {}, options = {})
      request = build_request(:get_schedule_group, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of your schedule groups.</p>
    # @param [Hash, Types::ListScheduleGroupsOperationInput] params
    # @option params [String] :name_prefix
    #   <p>The name prefix that you can use to return a filtered list of your schedule groups.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>If specified, limits the number of results returned by this operation. The operation also returns a <code>NextToken</code> which you can use in a subsequent operation to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "ScheduleGroupNamePrefix",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_schedule_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     schedule_groups: [ # required
    #       {
    #         arn: "ScheduleGroupArn",
    #         name: "ScheduleGroupName",
    #         state: "ScheduleGroupState",
    #         creation_date: Time.now,
    #         last_modification_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListScheduleGroupsOperationOutput]
    def list_schedule_groups(params = {}, options = {})
      request = build_request(:list_schedule_groups, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of your EventBridge Scheduler schedules.</p>
    # @param [Hash, Types::ListSchedulesOperationInput] params
    # @option params [String] :group_name
    #   <p>If specified, only lists the schedules whose associated schedule group matches the given filter.</p>
    # @option params [String] :name_prefix
    #   <p>Schedule name prefix to return the filtered list of resources.</p>
    # @option params [String] :state
    #   <p>If specified, only lists the schedules whose current state matches the given filter.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>If specified, limits the number of results returned by this operation. The operation also returns a <code>NextToken</code> which you can use in a subsequent operation to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "ScheduleGroupName",
    #     name_prefix: "NamePrefix",
    #     state: "ScheduleState",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_schedules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     schedules: [ # required
    #       {
    #         arn: "ScheduleArn",
    #         name: "Name",
    #         group_name: "ScheduleGroupName",
    #         state: "ScheduleState",
    #         creation_date: Time.now,
    #         last_modification_date: Time.now,
    #         target: {
    #           arn: "TargetArn", # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSchedulesOperationOutput]
    def list_schedules(params = {}, options = {})
      request = build_request(:list_schedules, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with the Scheduler resource.</p>
    # @param [Hash, Types::ListTagsForResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the EventBridge Scheduler resource for which you want to view tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagResourceArn", # required
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
    # @return [Types::ListTagsForResourceOperationOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified EventBridge Scheduler resource. You can only assign tags to schedule groups.</p>
    # @param [Hash, Types::TagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the schedule group that you are adding tags to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags to associate with the schedule group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagResourceArn", # required
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
    # @return [Types::TagResourceOperationOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified EventBridge Scheduler schedule group.</p>
    # @param [Hash, Types::UntagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the schedule group from which you are removing tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOperationOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>
    #          Updates the specified schedule. When you call <code>UpdateSchedule</code>, EventBridge Scheduler uses all values, including empty values, specified in the request and
    #          overrides the existing schedule. This is by design. This means that if you do not set an optional field in your request, that field will be set to
    #          its system-default value after the update.
    #       </p>
    #          <p>
    #          Before calling this operation, we recommend that you call the <code>GetSchedule</code> API operation and make a note of all optional parameters
    #          for your <code>UpdateSchedule</code> call.
    #       </p>
    # @param [Hash, Types::UpdateScheduleOperationInput] params
    # @option params [String] :name
    #   <p>The name of the schedule that you are updating.</p>
    # @option params [String] :group_name
    #   <p>The name of the schedule group with which the schedule is associated. You must provide this value in order for EventBridge Scheduler to find the schedule you want to update.
    #            If you omit this value, EventBridge Scheduler assumes the group is associated to the default group.</p>
    # @option params [String] :schedule_expression
    #   <p>
    #     The expression that defines when the schedule runs. The following formats are supported.
    #   </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>at</code> expression - <code>at(yyyy-mm-ddThh:mm:ss)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rate</code> expression - <code>rate(value unit)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cron</code> expression - <code>cron(fields)</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #     You can use <code>at</code> expressions to create one-time schedules that invoke a target once, at the time and in the time zone, that you specify.
    #     You can use <code>rate</code> and <code>cron</code> expressions to create recurring schedules. Rate-based schedules are useful when you want to invoke a target
    #     at regular intervals, such as every 15 minutes or every five days. Cron-based schedules are useful when you want to invoke a target periodically at a specific time,
    #     such as at 8:00 am (UTC+0) every 1st day of the month.
    #   </p>
    #            <p>
    #     A <code>cron</code> expression consists of six fields separated by white spaces: <code>(minutes hours day_of_month month day_of_week year)</code>.
    #   </p>
    #            <p>
    #     A <code>rate</code> expression consists of a <i>value</i> as a positive integer, and a <i>unit</i> with the following options:
    #     <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>
    #            </p>
    #            <p>
    #     For more information and examples, see <a href="https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html">Schedule types on EventBridge Scheduler</a> in the <i>EventBridge Scheduler User Guide</i>.
    #   </p>
    # @option params [Time] :start_date
    #   <p>The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the <code>StartDate</code> you specify.
    #   EventBridge Scheduler ignores <code>StartDate</code> for one-time schedules.</p>
    # @option params [Time] :end_date
    #   <p>The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the <code>EndDate</code> you specify.
    #   EventBridge Scheduler ignores <code>EndDate</code> for one-time schedules.</p>
    # @option params [String] :description
    #   <p>The description you specify for the schedule.</p>
    # @option params [String] :schedule_expression_timezone
    #   <p>The timezone in which the scheduling expression is evaluated.</p>
    # @option params [String] :state
    #   <p>Specifies whether the schedule is enabled or disabled.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN for the customer managed KMS key that that you want EventBridge Scheduler to use to encrypt and decrypt your data.</p>
    # @option params [Types::Target] :target
    #   <p>The schedule target. You can use this operation to change the target that your schedule invokes.</p>
    # @option params [Types::FlexibleTimeWindow] :flexible_time_window
    #   <p>Allows you to configure a time window during which EventBridge Scheduler invokes the schedule.</p>
    # @option params [String] :client_token
    #   <p>
    #     Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token,
    #     EventBridge Scheduler uses a randomly generated token for the request to ensure idempotency.  
    #   </p>
    # @option params [String] :action_after_completion
    #   <p>Specifies the action that EventBridge Scheduler applies to the schedule after the schedule completes invoking the target.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     group_name: "ScheduleGroupName",
    #     schedule_expression: "ScheduleExpression", # required
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     description: "Description",
    #     schedule_expression_timezone: "ScheduleExpressionTimezone",
    #     state: "ScheduleState",
    #     kms_key_arn: "KmsKeyArn",
    #     target: { # required
    #       arn: "TargetArn", # required
    #       role_arn: "RoleArn", # required
    #       dead_letter_config: {
    #         arn: "ResourceArn"
    #       },
    #       retry_policy: {
    #         maximum_event_age_in_seconds: 1,
    #         maximum_retry_attempts: 1
    #       },
    #       input: "TargetInput",
    #       ecs_parameters: {
    #         task_definition_arn: "TaskDefinitionArn", # required
    #         task_count: 1,
    #         launch_type: "LaunchType",
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["Subnet"], # required
    #             security_groups: ["SecurityGroup"],
    #             assign_public_ip: "AssignPublicIp"
    #           }
    #         },
    #         platform_version: "PlatformVersion",
    #         group: "Group",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #             base: 1
    #           }
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         placement_constraints: [
    #           {
    #             type: "PlacementConstraintType",
    #             expression: "PlacementConstraintExpression"
    #           }
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "PlacementStrategyType",
    #             field: "PlacementStrategyField"
    #           }
    #         ],
    #         propagate_tags: "PropagateTags",
    #         reference_id: "ReferenceId",
    #         tags: [
    #           {
    #             "TagKey" => "TagValue"
    #           }
    #         ]
    #       },
    #       event_bridge_parameters: {
    #         detail_type: "DetailType", # required
    #         source: "Source", # required
    #       },
    #       kinesis_parameters: {
    #         partition_key: "TargetPartitionKey", # required
    #       },
    #       sage_maker_pipeline_parameters: {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           }
    #         ]
    #       },
    #       sqs_parameters: {
    #         message_group_id: "MessageGroupId"
    #       }
    #     },
    #     flexible_time_window: { # required
    #       mode: "FlexibleTimeWindowMode", # required
    #       maximum_window_in_minutes: 1
    #     },
    #     client_token: "ClientToken",
    #     action_after_completion: "ActionAfterCompletion"
    #   }
    #   options = {}
    #   response = client.update_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schedule_arn: "ScheduleArn", # required
    #   }
    # @return [Types::UpdateScheduleOperationOutput]
    def update_schedule(params = {}, options = {})
      request = build_request(:update_schedule, params)
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
      context[:gem_name] = 'aws-sdk-scheduler'
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
