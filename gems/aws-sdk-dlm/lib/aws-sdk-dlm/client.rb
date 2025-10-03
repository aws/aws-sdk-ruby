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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::DLM
  # An API client for Aws::DLM.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Dlm20180112

    add_plugin(::Aws::DLM::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DLM::EndpointProvider)
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates an Amazon Data Lifecycle Manager lifecycle policy. Amazon Data Lifecycle Manager supports the following policy types:</p>
    #          <ul>
    #             <li>
    #                <p>Custom EBS snapshot policy</p>
    #             </li>
    #             <li>
    #                <p>Custom EBS-backed AMI policy</p>
    #             </li>
    #             <li>
    #                <p>Cross-account copy event policy</p>
    #             </li>
    #             <li>
    #                <p>Default policy for EBS snapshots</p>
    #             </li>
    #             <li>
    #                <p>Default policy for EBS-backed AMIs</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/policy-differences.html">
    # 			Default policies vs custom policies</a>.</p>
    #          <important>
    #             <p>If you create a default policy, you can specify the request parameters either in  
    # 				the request body, or in the PolicyDetails request structure, but not both.</p>
    #          </important>
    # @param [Hash, Types::CreateLifecyclePolicyRequest] params
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
    #   			the lifecycle policy.</p>
    # @option params [String] :description
    #   <p>A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+$ are
    #   			supported.</p>
    # @option params [String] :state
    #   <p>The activation state of the lifecycle policy after creation.</p>
    # @option params [Types::PolicyDetails] :policy_details
    #   <p>The configuration details of the lifecycle policy.</p>
    #            <important>
    #               <p>If you create a default policy, you can specify the request parameters either in  
    #   				the request body, or in the PolicyDetails request structure, but not both.</p>
    #            </important>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the lifecycle policy during creation.</p>
    # @option params [String] :default_policy
    #   <p>
    #               <b>[Default policies only]</b> Specify the type of default policy to create.</p>
    #            <ul>
    #               <li>
    #                  <p>To create a default policy for EBS snapshots, that creates snapshots of all volumes in the
    #   					Region that do not have recent backups, specify <code>VOLUME</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a default policy for EBS-backed AMIs, that creates EBS-backed 
    #   					AMIs from all instances in the Region that do not have recent backups, specify 
    #   					<code>INSTANCE</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :create_interval
    #   <p>
    #               <b>[Default policies only]</b> Specifies how often the policy should run and create snapshots or AMIs. 
    #   			The creation frequency can range from 1 to 7 days. If you do not specify a value, the 
    #   			default is 1.</p>
    #            <p>Default: 1</p>
    # @option params [Integer] :retain_interval
    #   <p>
    #               <b>[Default policies only]</b> Specifies how long the policy should retain snapshots or AMIs before 
    #   			deleting them. The retention period can range from 2 to 14 days, but it must be greater 
    #   			than the creation frequency to ensure that the policy retains at least 1 snapshot or 
    #   			AMI at any given time. If you do not specify a value, the default is 7.</p>
    #            <p>Default: 7</p>
    # @option params [Boolean] :copy_tags
    #   <p>
    #               <b>[Default policies only]</b> Indicates whether the policy should copy tags from the source resource 
    #   			to the snapshot or AMI. If you do not specify a value, the default is <code>false</code>.</p>
    #            <p>Default: false</p>
    # @option params [Boolean] :extend_deletion
    #   <p>
    #               <b>[Default policies only]</b> Defines the snapshot or AMI retention behavior for the policy if the 
    #   			source volume or instance is deleted, or if the policy enters the error, disabled, or 
    #   			deleted state.</p>
    #            <p>By default (<b>ExtendDeletion=false</b>):</p>
    #            <ul>
    #               <li>
    #                  <p>If a source resource is deleted, Amazon Data Lifecycle Manager will continue to delete previously 
    #   				created snapshots or AMIs, up to but not including the last one, based on the 
    #   				specified retention period. If you want Amazon Data Lifecycle Manager to delete all snapshots or AMIs, 
    #   				including the last one, specify <code>true</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If a policy enters the error, disabled, or deleted state, Amazon Data Lifecycle Manager stops deleting 
    #   					snapshots and AMIs. If you want Amazon Data Lifecycle Manager to continue deleting snapshots or AMIs, 
    #   					including the last one, if the policy enters one of these states, specify 
    #   					<code>true</code>.</p>
    #               </li>
    #            </ul>
    #            <p>If you enable extended deletion (<b>ExtendDeletion=true</b>), 
    #   			you override both default behaviors simultaneously.</p>
    #            <p>If you do not specify a value, the default is <code>false</code>.</p>
    #            <p>Default: false</p>
    # @option params [Array<Types::CrossRegionCopyTarget>] :cross_region_copy_targets
    #   <p>
    #               <b>[Default policies only]</b> Specifies destination Regions for snapshot or AMI copies. You can specify 
    #   			up to 3 destination Regions. If you do not want to create cross-Region copies, omit this 
    #   			parameter.</p>
    # @option params [Types::Exclusions] :exclusions
    #   <p>
    #               <b>[Default policies only]</b> Specifies exclusion parameters for volumes or instances for which you 
    #   			do not want to create snapshots or AMIs. The policy will not create snapshots or AMIs 
    #   			for target resources that match any of the specified exclusion parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     description: "PolicyDescription", # required
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     policy_details: {
    #       policy_type: "EBS_SNAPSHOT_MANAGEMENT" # One of: ["EBS_SNAPSHOT_MANAGEMENT", "IMAGE_MANAGEMENT", "EVENT_BASED_POLICY"],
    #       resource_types: ["VOLUME" # One of: ["VOLUME", "INSTANCE"]],
    #       resource_locations: ["CLOUD" # One of: ["CLOUD", "OUTPOST", "LOCAL_ZONE"]],
    #       target_tags: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         }
    #       ],
    #       schedules: [
    #         {
    #           name: "ScheduleName",
    #           copy_tags: false,
    #           tags_to_add: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             }
    #           ],
    #           variable_tags: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             }
    #           ],
    #           create_rule: {
    #             location: "CLOUD" # One of: ["CLOUD", "OUTPOST_LOCAL", "LOCAL_ZONE"],
    #             interval: 1,
    #             interval_unit: "HOURS" # One of: ["HOURS"],
    #             times: ["Time"],
    #             cron_expression: "CronExpression",
    #             scripts: [
    #               {
    #                 stages: ["PRE" # One of: ["PRE", "POST"]],
    #                 execution_handler_service: "AWS_SYSTEMS_MANAGER" # One of: ["AWS_SYSTEMS_MANAGER"],
    #                 execution_handler: "ExecutionHandler", # required
    #                 execute_operation_on_script_failure: false,
    #                 execution_timeout: 1,
    #                 maximum_retry_count: 1
    #               }
    #             ]
    #           },
    #           retain_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #           },
    #           fast_restore_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"],
    #             availability_zones: ["AvailabilityZone"], # required
    #           },
    #           cross_region_copy_rules: [
    #             {
    #               target_region: "TargetRegion",
    #               target: "Target",
    #               encrypted: false, # required
    #               cmk_arn: "CmkArn",
    #               copy_tags: false,
    #               retain_rule: {
    #                 interval: 1,
    #                 interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               },
    #               deprecate_rule: {
    #                 interval: 1,
    #                 interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               }
    #             }
    #           ],
    #           share_rules: [
    #             {
    #               target_accounts: ["AwsAccountId"], # required
    #               unshare_interval: 1,
    #               unshare_interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #             }
    #           ],
    #           deprecate_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #           },
    #           archive_rule: {
    #             retain_rule: { # required
    #               retention_archive_tier: { # required
    #                 count: 1,
    #                 interval: 1,
    #                 interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       parameters: {
    #         exclude_boot_volume: false,
    #         no_reboot: false,
    #         exclude_data_volume_tags: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       },
    #       event_source: {
    #         type: "MANAGED_CWE" # One of: ["MANAGED_CWE"], # required
    #         parameters: {
    #           event_type: "shareSnapshot" # One of: ["shareSnapshot"], # required
    #           snapshot_owner: ["AwsAccountId"], # required
    #           description_regex: "DescriptionRegex", # required
    #         }
    #       },
    #       actions: [
    #         {
    #           name: "ActionName", # required
    #           cross_region_copy: [ # required
    #             {
    #               target: "Target", # required
    #               encryption_configuration: { # required
    #                 encrypted: false, # required
    #                 cmk_arn: "CmkArn"
    #               },
    #               retain_rule: {
    #                 interval: 1,
    #                 interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               }
    #             }
    #           ]
    #         }
    #       ],
    #       policy_language: "SIMPLIFIED" # One of: ["SIMPLIFIED", "STANDARD"],
    #       resource_type: "VOLUME" # One of: ["VOLUME", "INSTANCE"],
    #       create_interval: 1,
    #       retain_interval: 1,
    #       copy_tags: false,
    #       cross_region_copy_targets: [
    #         {
    #           target_region: "TargetRegion"
    #         }
    #       ],
    #       extend_deletion: false,
    #       exclusions: {
    #         exclude_boot_volumes: false,
    #         exclude_volume_types: ["VolumeTypeValues"],
    #         exclude_tags: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     default_policy: "VOLUME" # One of: ["VOLUME", "INSTANCE"],
    #     create_interval: 1,
    #     retain_interval: 1,
    #     copy_tags: false,
    #     extend_deletion: false,
    #     cross_region_copy_targets: [
    #       {
    #         target_region: "TargetRegion"
    #       }
    #     ],
    #     exclusions: {
    #       exclude_boot_volumes: false,
    #       exclude_volume_types: ["VolumeTypeValues"],
    #       exclude_tags: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "PolicyId"
    #   }
    # @return [Types::CreateLifecyclePolicyResponse]
    def create_lifecycle_policy(params = {}, options = {})
      request = build_request(:create_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified lifecycle policy and halts the automated operations that the
    # 			policy specified.</p>
    #          <p>For more information about deleting a policy, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#delete">Delete lifecycle 
    # 			policies</a>.</p>
    # @param [Hash, Types::DeleteLifecyclePolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #   }
    #   options = {}
    #   response = client.delete_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLifecyclePolicyResponse]
    def delete_lifecycle_policy(params = {}, options = {})
      request = build_request(:delete_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Gets summary information about all or the specified data lifecycle policies.</p>
    #          <p>To get complete information about a policy, use <a href="https://docs.aws.amazon.com/dlm/latest/APIReference/API_GetLifecyclePolicy.html">GetLifecyclePolicy</a>.</p>
    # @param [Hash, Types::GetLifecyclePoliciesRequest] params
    # @option params [Array<String>] :policy_ids
    #   <p>The identifiers of the data lifecycle policies.</p>
    # @option params [String] :state
    #   <p>The activation state.</p>
    # @option params [Array<String>] :resource_types
    #   <p>The resource type.</p>
    # @option params [Array<String>] :target_tags
    #   <p>The target tag for a policy.</p>
    #            <p>Tags are strings in the format <code>key=value</code>.</p>
    # @option params [Array<String>] :tags_to_add
    #   <p>The tags to add to objects created by the policy.</p>
    #            <p>Tags are strings in the format <code>key=value</code>.</p>
    #            <p>These user-defined tags are added in addition to the Amazon Web Services-added lifecycle tags.</p>
    # @option params [String] :default_policy_type
    #   <p>
    #               <b>[Default policies only]</b> Specifies the type of default policy to get. Specify one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VOLUME</code> - To get only the default policy for EBS snapshots</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE</code> - To get only the default policy for EBS-backed AMIs</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> - To get all default policies</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_ids: ["PolicyId"],
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ERROR"],
    #     resource_types: ["VOLUME" # One of: ["VOLUME", "INSTANCE"]],
    #     target_tags: ["TagFilter"],
    #     tags_to_add: ["TagFilter"],
    #     default_policy_type: "VOLUME" # One of: ["VOLUME", "INSTANCE", "ALL"]
    #   }
    #   options = {}
    #   response = client.get_lifecycle_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         policy_id: "PolicyId",
    #         description: "PolicyDescription",
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ERROR"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         policy_type: "EBS_SNAPSHOT_MANAGEMENT" # One of: ["EBS_SNAPSHOT_MANAGEMENT", "IMAGE_MANAGEMENT", "EVENT_BASED_POLICY"],
    #         default_policy: false
    #       }
    #     ]
    #   }
    # @return [Types::GetLifecyclePoliciesResponse]
    def get_lifecycle_policies(params = {}, options = {})
      request = build_request(:get_lifecycle_policies, params)
      request.send_request(options)
    end

    # <p>Gets detailed information about the specified lifecycle policy.</p>
    # @param [Hash, Types::GetLifecyclePolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #   }
    #   options = {}
    #   response = client.get_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       policy_id: "PolicyId",
    #       description: "PolicyDescription",
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ERROR"],
    #       status_message: "StatusMessage",
    #       execution_role_arn: "ExecutionRoleArn",
    #       date_created: Time.now,
    #       date_modified: Time.now,
    #       policy_details: {
    #         policy_type: "EBS_SNAPSHOT_MANAGEMENT" # One of: ["EBS_SNAPSHOT_MANAGEMENT", "IMAGE_MANAGEMENT", "EVENT_BASED_POLICY"],
    #         resource_types: ["VOLUME" # One of: ["VOLUME", "INSTANCE"]],
    #         resource_locations: ["CLOUD" # One of: ["CLOUD", "OUTPOST", "LOCAL_ZONE"]],
    #         target_tags: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ],
    #         schedules: [
    #           {
    #             name: "ScheduleName",
    #             copy_tags: false,
    #             tags_to_add: [
    #               {
    #                 key: "String", # required
    #                 value: "String", # required
    #               }
    #             ],
    #             variable_tags: [
    #               {
    #                 key: "String", # required
    #                 value: "String", # required
    #               }
    #             ],
    #             create_rule: {
    #               location: "CLOUD" # One of: ["CLOUD", "OUTPOST_LOCAL", "LOCAL_ZONE"],
    #               interval: 1,
    #               interval_unit: "HOURS" # One of: ["HOURS"],
    #               times: ["Time"],
    #               cron_expression: "CronExpression",
    #               scripts: [
    #                 {
    #                   stages: ["PRE" # One of: ["PRE", "POST"]],
    #                   execution_handler_service: "AWS_SYSTEMS_MANAGER" # One of: ["AWS_SYSTEMS_MANAGER"],
    #                   execution_handler: "ExecutionHandler", # required
    #                   execute_operation_on_script_failure: false,
    #                   execution_timeout: 1,
    #                   maximum_retry_count: 1
    #                 }
    #               ]
    #             },
    #             retain_rule: {
    #               count: 1,
    #               interval: 1,
    #               interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #             },
    #             fast_restore_rule: {
    #               count: 1,
    #               interval: 1,
    #               interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"],
    #               availability_zones: ["AvailabilityZone"], # required
    #             },
    #             cross_region_copy_rules: [
    #               {
    #                 target_region: "TargetRegion",
    #                 target: "Target",
    #                 encrypted: false, # required
    #                 cmk_arn: "CmkArn",
    #                 copy_tags: false,
    #                 retain_rule: {
    #                   interval: 1,
    #                   interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #                 },
    #                 deprecate_rule: {
    #                   interval: 1,
    #                   interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #                 }
    #               }
    #             ],
    #             share_rules: [
    #               {
    #                 target_accounts: ["AwsAccountId"], # required
    #                 unshare_interval: 1,
    #                 unshare_interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               }
    #             ],
    #             deprecate_rule: {
    #               count: 1,
    #               interval: 1,
    #               interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #             },
    #             archive_rule: {
    #               retain_rule: { # required
    #                 retention_archive_tier: { # required
    #                   count: 1,
    #                   interval: 1,
    #                   interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #                 }
    #               }
    #             }
    #           }
    #         ],
    #         parameters: {
    #           exclude_boot_volume: false,
    #           no_reboot: false,
    #           exclude_data_volume_tags: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             }
    #           ]
    #         },
    #         event_source: {
    #           type: "MANAGED_CWE" # One of: ["MANAGED_CWE"], # required
    #           parameters: {
    #             event_type: "shareSnapshot" # One of: ["shareSnapshot"], # required
    #             snapshot_owner: ["AwsAccountId"], # required
    #             description_regex: "DescriptionRegex", # required
    #           }
    #         },
    #         actions: [
    #           {
    #             name: "ActionName", # required
    #             cross_region_copy: [ # required
    #               {
    #                 target: "Target", # required
    #                 encryption_configuration: { # required
    #                   encrypted: false, # required
    #                   cmk_arn: "CmkArn"
    #                 },
    #                 retain_rule: {
    #                   interval: 1,
    #                   interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #                 }
    #               }
    #             ]
    #           }
    #         ],
    #         policy_language: "SIMPLIFIED" # One of: ["SIMPLIFIED", "STANDARD"],
    #         resource_type: "VOLUME" # One of: ["VOLUME", "INSTANCE"],
    #         create_interval: 1,
    #         retain_interval: 1,
    #         copy_tags: false,
    #         cross_region_copy_targets: [
    #           {
    #             target_region: "TargetRegion"
    #           }
    #         ],
    #         extend_deletion: false,
    #         exclusions: {
    #           exclude_boot_volumes: false,
    #           exclude_volume_types: ["VolumeTypeValues"],
    #           exclude_tags: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             }
    #           ]
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       policy_arn: "PolicyArn",
    #       default_policy: false
    #     }
    #   }
    # @return [Types::GetLifecyclePolicyResponse]
    def get_lifecycle_policy(params = {}, options = {})
      request = build_request(:get_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PolicyArn", # required
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

    # <p>Adds the specified tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PolicyArn", # required
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

    # <p>Removes the specified tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PolicyArn", # required
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

    # <p>Updates the specified lifecycle policy.</p>
    #          <p>For more information about updating a policy, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#modify">Modify lifecycle 
    # 			policies</a>.</p>
    # @param [Hash, Types::UpdateLifecyclePolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
    #   			the lifecycle policy.</p>
    # @option params [String] :state
    #   <p>The desired activation state of the lifecycle policy after creation.</p>
    # @option params [String] :description
    #   <p>A description of the lifecycle policy.</p>
    # @option params [Types::PolicyDetails] :policy_details
    #   <p>The configuration of the lifecycle policy. You cannot update the policy type or the
    #   			resource type.</p>
    # @option params [Integer] :create_interval
    #   <p>
    #               <b>[Default policies only]</b> Specifies how often the policy should run and create snapshots or AMIs. 
    #   			The creation frequency can range from 1 to 7 days.</p>
    # @option params [Integer] :retain_interval
    #   <p>
    #               <b>[Default policies only]</b> Specifies how long the policy should retain snapshots or AMIs before 
    #   			deleting them. The retention period can range from 2 to 14 days, but it must be greater 
    #   			than the creation frequency to ensure that the policy retains at least 1 snapshot or 
    #   			AMI at any given time.</p>
    # @option params [Boolean] :copy_tags
    #   <p>
    #               <b>[Default policies only]</b> Indicates whether the policy should copy tags from the source resource 
    #   			to the snapshot or AMI.</p>
    # @option params [Boolean] :extend_deletion
    #   <p>
    #               <b>[Default policies only]</b> Defines the snapshot or AMI retention behavior for the policy if the 
    #   			source volume or instance is deleted, or if the policy enters the error, disabled, or 
    #   			deleted state.</p>
    #            <p>By default (<b>ExtendDeletion=false</b>):</p>
    #            <ul>
    #               <li>
    #                  <p>If a source resource is deleted, Amazon Data Lifecycle Manager will continue to delete previously 
    #   					created snapshots or AMIs, up to but not including the last one, based on the 
    #   					specified retention period. If you want Amazon Data Lifecycle Manager to delete all snapshots or AMIs, 
    #   					including the last one, specify <code>true</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If a policy enters the error, disabled, or deleted state, Amazon Data Lifecycle Manager stops deleting 
    #   					snapshots and AMIs. If you want Amazon Data Lifecycle Manager to continue deleting snapshots or AMIs, 
    #   					including the last one, if the policy enters one of these states, specify 
    #   					<code>true</code>.</p>
    #               </li>
    #            </ul>
    #            <p>If you enable extended deletion (<b>ExtendDeletion=true</b>), 
    #   			you override both default behaviors simultaneously.</p>
    #            <p>Default: false</p>
    # @option params [Array<Types::CrossRegionCopyTarget>] :cross_region_copy_targets
    #   <p>
    #               <b>[Default policies only]</b> Specifies destination Regions for snapshot or AMI copies. You can specify 
    #   			up to 3 destination Regions. If you do not want to create cross-Region copies, omit this 
    #   			parameter.</p>
    # @option params [Types::Exclusions] :exclusions
    #   <p>
    #               <b>[Default policies only]</b> Specifies exclusion parameters for volumes or instances for which you 
    #   			do not want to create snapshots or AMIs. The policy will not create snapshots or AMIs 
    #   			for target resources that match any of the specified exclusion parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #     execution_role_arn: "ExecutionRoleArn",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     description: "PolicyDescription",
    #     policy_details: {
    #       policy_type: "EBS_SNAPSHOT_MANAGEMENT" # One of: ["EBS_SNAPSHOT_MANAGEMENT", "IMAGE_MANAGEMENT", "EVENT_BASED_POLICY"],
    #       resource_types: ["VOLUME" # One of: ["VOLUME", "INSTANCE"]],
    #       resource_locations: ["CLOUD" # One of: ["CLOUD", "OUTPOST", "LOCAL_ZONE"]],
    #       target_tags: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         }
    #       ],
    #       schedules: [
    #         {
    #           name: "ScheduleName",
    #           copy_tags: false,
    #           tags_to_add: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             }
    #           ],
    #           variable_tags: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             }
    #           ],
    #           create_rule: {
    #             location: "CLOUD" # One of: ["CLOUD", "OUTPOST_LOCAL", "LOCAL_ZONE"],
    #             interval: 1,
    #             interval_unit: "HOURS" # One of: ["HOURS"],
    #             times: ["Time"],
    #             cron_expression: "CronExpression",
    #             scripts: [
    #               {
    #                 stages: ["PRE" # One of: ["PRE", "POST"]],
    #                 execution_handler_service: "AWS_SYSTEMS_MANAGER" # One of: ["AWS_SYSTEMS_MANAGER"],
    #                 execution_handler: "ExecutionHandler", # required
    #                 execute_operation_on_script_failure: false,
    #                 execution_timeout: 1,
    #                 maximum_retry_count: 1
    #               }
    #             ]
    #           },
    #           retain_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #           },
    #           fast_restore_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"],
    #             availability_zones: ["AvailabilityZone"], # required
    #           },
    #           cross_region_copy_rules: [
    #             {
    #               target_region: "TargetRegion",
    #               target: "Target",
    #               encrypted: false, # required
    #               cmk_arn: "CmkArn",
    #               copy_tags: false,
    #               retain_rule: {
    #                 interval: 1,
    #                 interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               },
    #               deprecate_rule: {
    #                 interval: 1,
    #                 interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               }
    #             }
    #           ],
    #           share_rules: [
    #             {
    #               target_accounts: ["AwsAccountId"], # required
    #               unshare_interval: 1,
    #               unshare_interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #             }
    #           ],
    #           deprecate_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #           },
    #           archive_rule: {
    #             retain_rule: { # required
    #               retention_archive_tier: { # required
    #                 count: 1,
    #                 interval: 1,
    #                 interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       parameters: {
    #         exclude_boot_volume: false,
    #         no_reboot: false,
    #         exclude_data_volume_tags: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       },
    #       event_source: {
    #         type: "MANAGED_CWE" # One of: ["MANAGED_CWE"], # required
    #         parameters: {
    #           event_type: "shareSnapshot" # One of: ["shareSnapshot"], # required
    #           snapshot_owner: ["AwsAccountId"], # required
    #           description_regex: "DescriptionRegex", # required
    #         }
    #       },
    #       actions: [
    #         {
    #           name: "ActionName", # required
    #           cross_region_copy: [ # required
    #             {
    #               target: "Target", # required
    #               encryption_configuration: { # required
    #                 encrypted: false, # required
    #                 cmk_arn: "CmkArn"
    #               },
    #               retain_rule: {
    #                 interval: 1,
    #                 interval_unit: "DAYS" # One of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               }
    #             }
    #           ]
    #         }
    #       ],
    #       policy_language: "SIMPLIFIED" # One of: ["SIMPLIFIED", "STANDARD"],
    #       resource_type: "VOLUME" # One of: ["VOLUME", "INSTANCE"],
    #       create_interval: 1,
    #       retain_interval: 1,
    #       copy_tags: false,
    #       cross_region_copy_targets: [
    #         {
    #           target_region: "TargetRegion"
    #         }
    #       ],
    #       extend_deletion: false,
    #       exclusions: {
    #         exclude_boot_volumes: false,
    #         exclude_volume_types: ["VolumeTypeValues"],
    #         exclude_tags: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       }
    #     },
    #     create_interval: 1,
    #     retain_interval: 1,
    #     copy_tags: false,
    #     extend_deletion: false,
    #     cross_region_copy_targets: [
    #       {
    #         target_region: "TargetRegion"
    #       }
    #     ],
    #     exclusions: {
    #       exclude_boot_volumes: false,
    #       exclude_volume_types: ["VolumeTypeValues"],
    #       exclude_tags: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLifecyclePolicyResponse]
    def update_lifecycle_policy(params = {}, options = {})
      request = build_request(:update_lifecycle_policy, params)
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
      context[:gem_name] = 'aws-sdk-dlm'
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
