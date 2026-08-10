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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:drs)

module Aws::Drs
  # An API client for Aws::Drs.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ElasticDisasterRecoveryService
    @identifier = :drs

    add_plugin(::Aws::Drs::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Drs::EndpointProvider)
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>Associate a Source Network to an existing CloudFormation Stack and modify launch templates to use this network. Can be used for reverting to previously deployed CloudFormation stacks.</p>
    # @param [Hash, Types::AssociateSourceNetworkStackRequest] params
    # @option params [String] :source_network_id
    #   <p>The Source Network ID to associate with CloudFormation template.</p>
    # @option params [String] :cfn_stack_name
    #   <p>CloudFormation template to associate with a Source Network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_network_id: "SourceNetworkID", # required
    #     cfn_stack_name: "CfnStackName", # required
    #   }
    #   options = {}
    #   response = client.associate_source_network_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_id: "JobID", # required
    #       arn: "ARN",
    #       type: "JobType",
    #       initiated_by: "InitiatedBy",
    #       creation_date_time: "ISO8601DatetimeString",
    #       end_date_time: "ISO8601DatetimeString",
    #       status: "JobStatus",
    #       participating_servers: [
    #         {
    #           source_server_id: "SourceServerID",
    #           recovery_instance_id: "RecoveryInstanceID",
    #           launch_status: "LaunchStatus",
    #           launch_actions_status: {
    #             ssm_agent_discovery_datetime: "ISO8601DatetimeString",
    #             runs: [
    #               {
    #                 action: {
    #                   action_id: "LaunchActionId",
    #                   action_code: "SsmDocumentName",
    #                   type: "LaunchActionType",
    #                   name: "LaunchActionName",
    #                   active: false,
    #                   order: 1,
    #                   action_version: "LaunchActionVersion",
    #                   optional: false,
    #                   parameters: {
    #                     "LaunchActionParameterName" => {
    #                       value: "LaunchActionParameterValue",
    #                       type: "LaunchActionParameterType"
    #                     }
    #                   },
    #                   description: "LaunchActionDescription",
    #                   category: "LaunchActionCategory"
    #                 },
    #                 run_id: "LaunchActionRunId",
    #                 status: "LaunchActionRunStatus",
    #                 failure_reason: "FailureReason"
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       participating_resources: [
    #         {
    #           participating_resource_id: {
    #             # One of:
    #             source_network_id: "SourceNetworkID"
    #           },
    #           launch_status: "LaunchStatus"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::AssociateSourceNetworkStackResponse]
    def associate_source_network_stack(params = {}, options = {})
      request = build_request(:associate_source_network_stack, params)
      request.send_request(options)
    end

    # <p>Create an extended source server in the target Account based on the source server in staging account.</p>
    # @param [Hash, Types::CreateExtendedSourceServerInput] params
    # @option params [String] :source_server_arn
    #   <p>This defines the ARN of the source server in staging Account based on which you want to create an extended source server.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags associated with the extended source server.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_arn: "SourceServerARN", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_extended_source_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server: {
    #       source_server_id: "SourceServerID",
    #       arn: "ARN",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       recovery_instance_id: "RecoveryInstanceID",
    #       last_launch_result: "LastLaunchResult",
    #       data_replication_info: {
    #         lag_duration: "ISO8601DurationString",
    #         eta_date_time: "ISO8601DatetimeString",
    #         replicated_disks: [
    #           {
    #             device_name: "BoundedString",
    #             total_storage_bytes: 1,
    #             replicated_storage_bytes: 1,
    #             rescanned_storage_bytes: 1,
    #             backlogged_storage_bytes: 1,
    #             volume_status: "VolumeStatus"
    #           }
    #         ],
    #         data_replication_state: "DataReplicationState",
    #         data_replication_initiation: {
    #           start_date_time: "ISO8601DatetimeString",
    #           next_attempt_date_time: "ISO8601DatetimeString",
    #           steps: [
    #             {
    #               name: "DataReplicationInitiationStepName",
    #               status: "DataReplicationInitiationStepStatus"
    #             }
    #           ]
    #         },
    #         data_replication_error: {
    #           error: "DataReplicationErrorString",
    #           raw_error: "LargeBoundedString"
    #         },
    #         staging_availability_zone: "AwsAvailabilityZone",
    #         staging_outpost_arn: "OutpostARN"
    #       },
    #       life_cycle: {
    #         added_to_service_date_time: "ISO8601DatetimeString",
    #         first_byte_date_time: "ISO8601DatetimeString",
    #         elapsed_replication_duration: "ISO8601DurationString",
    #         last_seen_by_service_date_time: "ISO8601DatetimeString",
    #         last_launch: {
    #           initiated: {
    #             api_call_date_time: "ISO8601DatetimeString",
    #             job_id: "JobID",
    #             type: "LastLaunchType"
    #           },
    #           status: "LaunchStatus"
    #         }
    #       },
    #       source_properties: {
    #         last_updated_date_time: "ISO8601DatetimeString",
    #         recommended_instance_type: "EC2InstanceType",
    #         identification_hints: {
    #           fqdn: "BoundedString",
    #           hostname: "BoundedString",
    #           vm_ware_uuid: "BoundedString",
    #           aws_instance_id: "EC2InstanceID"
    #         },
    #         network_interfaces: [
    #           {
    #             mac_address: "BoundedString",
    #             ips: ["BoundedString"],
    #             is_primary: false
    #           }
    #         ],
    #         disks: [
    #           {
    #             device_name: "BoundedString",
    #             bytes: 1
    #           }
    #         ],
    #         cpus: [
    #           {
    #             cores: 1,
    #             model_name: "BoundedString"
    #           }
    #         ],
    #         ram_bytes: 1,
    #         os: {
    #           full_string: "BoundedString"
    #         },
    #         supports_nitro_instances: false
    #       },
    #       staging_area: {
    #         status: "ExtensionStatus",
    #         staging_account_id: "AccountID",
    #         staging_source_server_arn: "ARN",
    #         error_message: "LargeBoundedString"
    #       },
    #       source_cloud_properties: {
    #         origin_account_id: "AccountID",
    #         origin_region: "AwsRegion",
    #         origin_availability_zone: "AwsAvailabilityZone",
    #         source_outpost_arn: "OutpostARN"
    #       },
    #       replication_direction: "ReplicationDirection",
    #       reversed_direction_source_server_arn: "SourceServerARN",
    #       source_network_id: "SourceNetworkID",
    #       agent_version: "AgentVersion"
    #     }
    #   }
    # @return [Types::CreateExtendedSourceServerOutput]
    def create_extended_source_server(params = {}, options = {})
      request = build_request(:create_extended_source_server, params)
      request.send_request(options)
    end

    # <p>Creates a new Launch Configuration Template.</p>
    # @param [Hash, Types::CreateLaunchConfigurationTemplateInput] params
    # @option params [Hash<String, String>] :tags
    #   <p>Request to associate tags during creation of a Launch Configuration Template.</p>
    # @option params [String] :launch_disposition
    #   <p>Launch disposition.</p>
    # @option params [String] :target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    # @option params [Boolean] :copy_private_ip
    #   <p>Copy private IP.</p>
    # @option params [Boolean] :copy_tags
    #   <p>Copy tags.</p>
    # @option params [Types::Licensing] :licensing
    #   <p>Licensing.</p>
    # @option params [String] :export_bucket_arn
    #   <p>S3 bucket ARN to export Source Network templates.</p>
    # @option params [Boolean] :post_launch_enabled
    #   <p>Whether we want to activate post-launch actions.</p>
    # @option params [Boolean] :launch_into_source_instance
    #   <p>DRS will set the 'launch into instance ID' of any source server when performing a drill, recovery or failback to the previous region or availability zone, using the instance ID of the source instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     export_bucket_arn: "ARN",
    #     post_launch_enabled: false,
    #     launch_into_source_instance: false
    #   }
    #   options = {}
    #   response = client.create_launch_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launch_configuration_template: {
    #       launch_configuration_template_id: "LaunchConfigurationTemplateID",
    #       arn: "ARN",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       launch_disposition: "LaunchDisposition",
    #       target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #       copy_private_ip: false,
    #       copy_tags: false,
    #       licensing: {
    #         os_byol: false
    #       },
    #       export_bucket_arn: "ARN",
    #       post_launch_enabled: false,
    #       launch_into_source_instance: false
    #     }
    #   }
    # @return [Types::CreateLaunchConfigurationTemplateOutput]
    def create_launch_configuration_template(params = {}, options = {})
      request = build_request(:create_launch_configuration_template, params)
      request.send_request(options)
    end

    # <p>Creates a new ReplicationConfigurationTemplate.</p>
    # @param [Hash, Types::CreateReplicationConfigurationTemplateInput] params
    # @option params [String] :staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    # @option params [Boolean] :associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    # @option params [String] :replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    # @option params [String] :default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    # @option params [String] :ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    # @option params [String] :ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    # @option params [Integer] :bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    # @option params [String] :data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    # @option params [Boolean] :create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    # @option params [Array<Types::PITPolicyRule>] :pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of tags to be associated with the Replication Configuration Template resource.</p>
    # @option params [Boolean] :auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     staging_area_subnet_id: "SubnetID", # required
    #     associate_default_security_group: false, # required
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"], # required
    #     replication_server_instance_type: "EC2InstanceType", # required
    #     use_dedicated_replication_server: false, # required
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType", # required
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption", # required
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1, # required
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting", # required
    #     create_public_ip: false, # required
    #     staging_area_tags: { # required
    #       "TagKey" => "TagValue"
    #     },
    #     pit_policy: [ # required
    #       {
    #         rule_id: 1,
    #         units: "PITPolicyRuleUnits", # required
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         enabled: false
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     auto_replicate_new_disks: false
    #   }
    #   options = {}
    #   response = client.create_replication_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #     arn: "ARN",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     pit_policy: [
    #       {
    #         rule_id: 1,
    #         units: "PITPolicyRuleUnits", # required
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         enabled: false
    #       }
    #     ],
    #     auto_replicate_new_disks: false
    #   }
    # @return [Types::CreateReplicationConfigurationTemplateOutput]
    def create_replication_configuration_template(params = {}, options = {})
      request = build_request(:create_replication_configuration_template, params)
      request.send_request(options)
    end

    # <p>Create a new Source Network resource for a provided VPC ID.</p>
    # @param [Hash, Types::CreateSourceNetworkRequest] params
    # @option params [String] :vpc_id
    #   <p>Which VPC ID to protect.</p>
    # @option params [String] :origin_account_id
    #   <p>Account containing the VPC to protect.</p>
    # @option params [String] :origin_region
    #   <p>Region containing the VPC to protect.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of tags to be associated with the Source Network resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_id: "VpcID", # required
    #     origin_account_id: "AccountID", # required
    #     origin_region: "AwsRegion", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_source_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_network_id: "SourceNetworkID"
    #   }
    # @return [Types::CreateSourceNetworkResponse]
    def create_source_network(params = {}, options = {})
      request = build_request(:create_source_network, params)
      request.send_request(options)
    end

    # <p>Deletes a single Job by ID.</p>
    # @param [Hash, Types::DeleteJobInput] params
    # @option params [String] :job_id
    #   <p>The ID of the Job to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobID", # required
    #   }
    #   options = {}
    #   response = client.delete_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteJobOutput]
    def delete_job(params = {}, options = {})
      request = build_request(:delete_job, params)
      request.send_request(options)
    end

    # <p>Deletes a resource launch action.</p>
    # @param [Hash, Types::DeleteLaunchActionRequest] params
    # @option params [String] :resource_id
    #   <p>Launch configuration template Id or Source Server Id</p>
    # @option params [String] :action_id
    #   <p>Launch action Id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "LaunchActionResourceId", # required
    #     action_id: "LaunchActionId", # required
    #   }
    #   options = {}
    #   response = client.delete_launch_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLaunchActionResponse]
    def delete_launch_action(params = {}, options = {})
      request = build_request(:delete_launch_action, params)
      request.send_request(options)
    end

    # <p>Deletes a single Launch Configuration Template by ID.</p>
    # @param [Hash, Types::DeleteLaunchConfigurationTemplateInput] params
    # @option params [String] :launch_configuration_template_id
    #   <p>The ID of the Launch Configuration Template to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #   }
    #   options = {}
    #   response = client.delete_launch_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLaunchConfigurationTemplateOutput]
    def delete_launch_configuration_template(params = {}, options = {})
      request = build_request(:delete_launch_configuration_template, params)
      request.send_request(options)
    end

    # <p>Deletes a single Recovery Instance by ID. This deletes the Recovery Instance resource from Elastic Disaster Recovery. The Recovery Instance must be disconnected first in order to delete it.</p>
    # @param [Hash, Types::DeleteRecoveryInstanceInput] params
    # @option params [String] :recovery_instance_id
    #   <p>The ID of the Recovery Instance to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #   }
    #   options = {}
    #   response = client.delete_recovery_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_recovery_instance(params = {}, options = {})
      request = build_request(:delete_recovery_instance, params)
      request.send_request(options)
    end

    # <p>Deletes a single Replication Configuration Template by ID</p>
    # @param [Hash, Types::DeleteReplicationConfigurationTemplateInput] params
    # @option params [String] :replication_configuration_template_id
    #   <p>The ID of the Replication Configuration Template to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #   }
    #   options = {}
    #   response = client.delete_replication_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReplicationConfigurationTemplateOutput]
    def delete_replication_configuration_template(params = {}, options = {})
      request = build_request(:delete_replication_configuration_template, params)
      request.send_request(options)
    end

    # <p>Delete Source Network resource.</p>
    # @param [Hash, Types::DeleteSourceNetworkRequest] params
    # @option params [String] :source_network_id
    #   <p>ID of the Source Network to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_network_id: "SourceNetworkID", # required
    #   }
    #   options = {}
    #   response = client.delete_source_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSourceNetworkResponse]
    def delete_source_network(params = {}, options = {})
      request = build_request(:delete_source_network, params)
      request.send_request(options)
    end

    # <p>Deletes a single Source Server by ID. The Source Server must be disconnected first.</p>
    # @param [Hash, Types::DeleteSourceServerInput] params
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #   }
    #   options = {}
    #   response = client.delete_source_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSourceServerOutput]
    def delete_source_server(params = {}, options = {})
      request = build_request(:delete_source_server, params)
      request.send_request(options)
    end

    # <p>Retrieves a detailed Job log with pagination.</p>
    # @param [Hash, Types::DescribeJobLogItemsInput] params
    # @option params [String] :job_id
    #   <p>The ID of the Job for which Job log items will be retrieved.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of Job log items to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token of the next Job log items to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_job_log_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         log_date_time: "ISO8601DatetimeString",
    #         event: "JobLogEvent",
    #         event_data: {
    #           source_server_id: "SourceServerID",
    #           conversion_server_id: "EC2InstanceID",
    #           target_instance_id: "EC2InstanceID",
    #           raw_error: "LargeBoundedString",
    #           conversion_properties: {
    #             volume_to_conversion_map: {
    #               "LargeBoundedString" => {
    #                 "EbsSnapshot" => "EbsSnapshot"
    #               }
    #             },
    #             root_volume_name: "LargeBoundedString",
    #             force_uefi: false,
    #             data_timestamp: "LargeBoundedString",
    #             volume_to_volume_size: {
    #               "LargeBoundedString" => 1
    #             },
    #             volume_to_product_codes: {
    #               "LargeBoundedString" => [
    #                 {
    #                   product_code_id: "ProductCodeId",
    #                   product_code_mode: "ProductCodeMode"
    #                 }
    #               ]
    #             }
    #           },
    #           event_resource_data: {
    #             # One of:
    #             source_network_data: {
    #               source_network_id: "SourceNetworkID",
    #               source_vpc: "VpcID",
    #               target_vpc: "VpcID",
    #               stack_name: "LargeBoundedString"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeJobLogItemsOutput]
    def describe_job_log_items(params = {}, options = {})
      request = build_request(:describe_job_log_items, params)
      request.send_request(options)
    end

    # <p>Returns a list of Jobs. Use the JobsID and fromDate and toDate filters to limit which jobs are returned. The response is sorted by creationDataTime - latest date first. Jobs are created by the StartRecovery, TerminateRecoveryInstances and StartFailbackLaunch APIs. Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances, which are APIs available only to *Support* and only used in response to relevant support tickets.</p>
    # @param [Hash, Types::DescribeJobsInput] params
    # @option params [Types::DescribeJobsRequestFilters] :filters
    #   <p>A set of filters by which to return Jobs.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of Jobs to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token of the next Job to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       job_i_ds: ["JobID"],
    #       from_date: "ISO8601DatetimeString",
    #       to_date: "ISO8601DatetimeString"
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         job_id: "JobID", # required
    #         arn: "ARN",
    #         type: "JobType",
    #         initiated_by: "InitiatedBy",
    #         creation_date_time: "ISO8601DatetimeString",
    #         end_date_time: "ISO8601DatetimeString",
    #         status: "JobStatus",
    #         participating_servers: [
    #           {
    #             source_server_id: "SourceServerID",
    #             recovery_instance_id: "RecoveryInstanceID",
    #             launch_status: "LaunchStatus",
    #             launch_actions_status: {
    #               ssm_agent_discovery_datetime: "ISO8601DatetimeString",
    #               runs: [
    #                 {
    #                   action: {
    #                     action_id: "LaunchActionId",
    #                     action_code: "SsmDocumentName",
    #                     type: "LaunchActionType",
    #                     name: "LaunchActionName",
    #                     active: false,
    #                     order: 1,
    #                     action_version: "LaunchActionVersion",
    #                     optional: false,
    #                     parameters: {
    #                       "LaunchActionParameterName" => {
    #                         value: "LaunchActionParameterValue",
    #                         type: "LaunchActionParameterType"
    #                       }
    #                     },
    #                     description: "LaunchActionDescription",
    #                     category: "LaunchActionCategory"
    #                   },
    #                   run_id: "LaunchActionRunId",
    #                   status: "LaunchActionRunStatus",
    #                   failure_reason: "FailureReason"
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         participating_resources: [
    #           {
    #             participating_resource_id: {
    #               # One of:
    #               source_network_id: "SourceNetworkID"
    #             },
    #             launch_status: "LaunchStatus"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeJobsOutput]
    def describe_jobs(params = {}, options = {})
      request = build_request(:describe_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all Launch Configuration Templates, filtered by Launch Configuration Template IDs</p>
    # @param [Hash, Types::DescribeLaunchConfigurationTemplatesInput] params
    # @option params [Array<String>] :launch_configuration_template_i_ds
    #   <p>Request to filter Launch Configuration Templates list by Launch Configuration Template ID.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum results to be returned in DescribeLaunchConfigurationTemplates.</p>
    # @option params [String] :next_token
    #   <p>The token of the next Launch Configuration Template to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_template_i_ds: ["LaunchConfigurationTemplateID"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_launch_configuration_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         launch_configuration_template_id: "LaunchConfigurationTemplateID",
    #         arn: "ARN",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         launch_disposition: "LaunchDisposition",
    #         target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #         copy_private_ip: false,
    #         copy_tags: false,
    #         licensing: {
    #           os_byol: false
    #         },
    #         export_bucket_arn: "ARN",
    #         post_launch_enabled: false,
    #         launch_into_source_instance: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeLaunchConfigurationTemplatesOutput]
    def describe_launch_configuration_templates(params = {}, options = {})
      request = build_request(:describe_launch_configuration_templates, params)
      request.send_request(options)
    end

    # <p>Lists all Recovery Instances or multiple Recovery Instances by ID.</p>
    # @param [Hash, Types::DescribeRecoveryInstancesInput] params
    # @option params [Types::DescribeRecoveryInstancesRequestFilters] :filters
    #   <p>A set of filters by which to return Recovery Instances.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of Recovery Instances to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token of the next Recovery Instance to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       recovery_instance_i_ds: ["RecoveryInstanceID"],
    #       source_server_i_ds: ["SourceServerID"]
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_recovery_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     items: [
    #       {
    #         ec2_instance_id: "EC2InstanceID",
    #         ec2_instance_state: "EC2InstanceState",
    #         job_id: "JobID",
    #         recovery_instance_id: "RecoveryInstanceID",
    #         source_server_id: "SourceServerID",
    #         arn: "ARN",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         failback: {
    #           failback_client_id: "BoundedString",
    #           failback_job_id: "JobID",
    #           failback_initiation_time: "ISO8601DatetimeString",
    #           state: "FailbackState",
    #           agent_last_seen_by_service_date_time: "ISO8601DatetimeString",
    #           failback_client_last_seen_by_service_date_time: "ISO8601DatetimeString",
    #           failback_to_original_server: false,
    #           first_byte_date_time: "ISO8601DatetimeString",
    #           elapsed_replication_duration: "ISO8601DatetimeString",
    #           failback_launch_type: "FailbackLaunchType"
    #         },
    #         data_replication_info: {
    #           lag_duration: "ISO8601DatetimeString",
    #           eta_date_time: "ISO8601DatetimeString",
    #           replicated_disks: [
    #             {
    #               device_name: "BoundedString",
    #               total_storage_bytes: 1,
    #               replicated_storage_bytes: 1,
    #               rescanned_storage_bytes: 1,
    #               backlogged_storage_bytes: 1
    #             }
    #           ],
    #           data_replication_state: "RecoveryInstanceDataReplicationState",
    #           data_replication_initiation: {
    #             start_date_time: "ISO8601DatetimeString",
    #             steps: [
    #               {
    #                 name: "RecoveryInstanceDataReplicationInitiationStepName",
    #                 status: "RecoveryInstanceDataReplicationInitiationStepStatus"
    #               }
    #             ]
    #           },
    #           data_replication_error: {
    #             error: "FailbackReplicationError",
    #             raw_error: "LargeBoundedString"
    #           },
    #           staging_availability_zone: "AwsAvailabilityZone",
    #           staging_outpost_arn: "OutpostARN"
    #         },
    #         recovery_instance_properties: {
    #           last_updated_date_time: "ISO8601DatetimeString",
    #           identification_hints: {
    #             fqdn: "BoundedString",
    #             hostname: "BoundedString",
    #             vm_ware_uuid: "BoundedString",
    #             aws_instance_id: "EC2InstanceID"
    #           },
    #           network_interfaces: [
    #             {
    #               mac_address: "BoundedString",
    #               ips: ["BoundedString"],
    #               is_primary: false
    #             }
    #           ],
    #           disks: [
    #             {
    #               internal_device_name: "BoundedString",
    #               bytes: 1,
    #               ebs_volume_id: "EbsVolumeID"
    #             }
    #           ],
    #           cpus: [
    #             {
    #               cores: 1,
    #               model_name: "BoundedString"
    #             }
    #           ],
    #           ram_bytes: 1,
    #           os: {
    #             full_string: "BoundedString"
    #           }
    #         },
    #         point_in_time_snapshot_date_time: "ISO8601DatetimeString",
    #         is_drill: false,
    #         origin_environment: "OriginEnvironment",
    #         origin_availability_zone: "AwsAvailabilityZone",
    #         agent_version: "AgentVersion",
    #         source_outpost_arn: "OutpostARN"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeRecoveryInstancesOutput]
    def describe_recovery_instances(params = {}, options = {})
      request = build_request(:describe_recovery_instances, params)
      request.send_request(options)
    end

    # <p>Lists all Recovery Snapshots for a single Source Server.</p>
    # @param [Hash, Types::DescribeRecoverySnapshotsInput] params
    # @option params [String] :source_server_id
    #   <p>Filter Recovery Snapshots by Source Server ID.</p>
    # @option params [Types::DescribeRecoverySnapshotsRequestFilters] :filters
    #   <p>A set of filters by which to return Recovery Snapshots.</p>
    # @option params [String] :order
    #   <p>The sorted ordering by which to return Recovery Snapshots.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of Recovery Snapshots to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token of the next Recovery Snapshot to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     filters: {
    #       from_date_time: "ISO8601DatetimeString",
    #       to_date_time: "ISO8601DatetimeString"
    #     },
    #     order: "RecoverySnapshotsOrder",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_recovery_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         snapshot_id: "RecoverySnapshotID", # required
    #         source_server_id: "SourceServerID", # required
    #         expected_timestamp: "ISO8601DatetimeString", # required
    #         timestamp: "ISO8601DatetimeString",
    #         ebs_snapshots: ["EbsSnapshot"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeRecoverySnapshotsOutput]
    def describe_recovery_snapshots(params = {}, options = {})
      request = build_request(:describe_recovery_snapshots, params)
      request.send_request(options)
    end

    # <p>Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.</p>
    # @param [Hash, Types::DescribeReplicationConfigurationTemplatesInput] params
    # @option params [Array<String>] :replication_configuration_template_i_ds
    #   <p>The IDs of the Replication Configuration Templates to retrieve. An empty list means all Replication Configuration Templates.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of Replication Configuration Templates to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token of the next Replication Configuration Template to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_configuration_template_i_ds: ["ReplicationConfigurationTemplateID"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_replication_configuration_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #         arn: "ARN",
    #         staging_area_subnet_id: "SubnetID",
    #         associate_default_security_group: false,
    #         replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #         replication_server_instance_type: "EC2InstanceType",
    #         use_dedicated_replication_server: false,
    #         default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #         ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #         ebs_encryption_key_arn: "ARN",
    #         bandwidth_throttling: 1,
    #         data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #         create_public_ip: false,
    #         staging_area_tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         pit_policy: [
    #           {
    #             rule_id: 1,
    #             units: "PITPolicyRuleUnits", # required
    #             interval: 1, # required
    #             retention_duration: 1, # required
    #             enabled: false
    #           }
    #         ],
    #         auto_replicate_new_disks: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeReplicationConfigurationTemplatesOutput]
    def describe_replication_configuration_templates(params = {}, options = {})
      request = build_request(:describe_replication_configuration_templates, params)
      request.send_request(options)
    end

    # <p>Lists all Source Networks or multiple Source Networks filtered by ID.</p>
    # @param [Hash, Types::DescribeSourceNetworksRequest] params
    # @option params [Types::DescribeSourceNetworksRequestFilters] :filters
    #   <p>A set of filters by which to return Source Networks.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of Source Networks to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token of the next Source Networks to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       source_network_i_ds: ["SourceNetworkID"],
    #       origin_account_id: "AccountID",
    #       origin_region: "AwsRegion"
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_source_networks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         source_network_id: "SourceNetworkID",
    #         source_vpc_id: "VpcID",
    #         arn: "ARN",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         replication_status: "ReplicationStatus",
    #         replication_status_details: "SensitiveBoundedString",
    #         cfn_stack_name: "CfnStackName",
    #         source_region: "AwsRegion",
    #         source_account_id: "AccountID",
    #         last_recovery: {
    #           api_call_date_time: Time.now,
    #           job_id: "JobID",
    #           last_recovery_result: "RecoveryResult"
    #         },
    #         launched_vpc_id: "VpcID"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeSourceNetworksResponse]
    def describe_source_networks(params = {}, options = {})
      request = build_request(:describe_source_networks, params)
      request.send_request(options)
    end

    # <p>Lists all Source Servers or multiple Source Servers filtered by ID.</p>
    # @param [Hash, Types::DescribeSourceServersInput] params
    # @option params [Types::DescribeSourceServersRequestFilters] :filters
    #   <p>A set of filters by which to return Source Servers.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of Source Servers to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token of the next Source Server to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       source_server_i_ds: ["SourceServerID"],
    #       hardware_id: "BoundedString",
    #       staging_account_i_ds: ["AccountID"]
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_source_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         source_server_id: "SourceServerID",
    #         arn: "ARN",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         recovery_instance_id: "RecoveryInstanceID",
    #         last_launch_result: "LastLaunchResult",
    #         data_replication_info: {
    #           lag_duration: "ISO8601DurationString",
    #           eta_date_time: "ISO8601DatetimeString",
    #           replicated_disks: [
    #             {
    #               device_name: "BoundedString",
    #               total_storage_bytes: 1,
    #               replicated_storage_bytes: 1,
    #               rescanned_storage_bytes: 1,
    #               backlogged_storage_bytes: 1,
    #               volume_status: "VolumeStatus"
    #             }
    #           ],
    #           data_replication_state: "DataReplicationState",
    #           data_replication_initiation: {
    #             start_date_time: "ISO8601DatetimeString",
    #             next_attempt_date_time: "ISO8601DatetimeString",
    #             steps: [
    #               {
    #                 name: "DataReplicationInitiationStepName",
    #                 status: "DataReplicationInitiationStepStatus"
    #               }
    #             ]
    #           },
    #           data_replication_error: {
    #             error: "DataReplicationErrorString",
    #             raw_error: "LargeBoundedString"
    #           },
    #           staging_availability_zone: "AwsAvailabilityZone",
    #           staging_outpost_arn: "OutpostARN"
    #         },
    #         life_cycle: {
    #           added_to_service_date_time: "ISO8601DatetimeString",
    #           first_byte_date_time: "ISO8601DatetimeString",
    #           elapsed_replication_duration: "ISO8601DurationString",
    #           last_seen_by_service_date_time: "ISO8601DatetimeString",
    #           last_launch: {
    #             initiated: {
    #               api_call_date_time: "ISO8601DatetimeString",
    #               job_id: "JobID",
    #               type: "LastLaunchType"
    #             },
    #             status: "LaunchStatus"
    #           }
    #         },
    #         source_properties: {
    #           last_updated_date_time: "ISO8601DatetimeString",
    #           recommended_instance_type: "EC2InstanceType",
    #           identification_hints: {
    #             fqdn: "BoundedString",
    #             hostname: "BoundedString",
    #             vm_ware_uuid: "BoundedString",
    #             aws_instance_id: "EC2InstanceID"
    #           },
    #           network_interfaces: [
    #             {
    #               mac_address: "BoundedString",
    #               ips: ["BoundedString"],
    #               is_primary: false
    #             }
    #           ],
    #           disks: [
    #             {
    #               device_name: "BoundedString",
    #               bytes: 1
    #             }
    #           ],
    #           cpus: [
    #             {
    #               cores: 1,
    #               model_name: "BoundedString"
    #             }
    #           ],
    #           ram_bytes: 1,
    #           os: {
    #             full_string: "BoundedString"
    #           },
    #           supports_nitro_instances: false
    #         },
    #         staging_area: {
    #           status: "ExtensionStatus",
    #           staging_account_id: "AccountID",
    #           staging_source_server_arn: "ARN",
    #           error_message: "LargeBoundedString"
    #         },
    #         source_cloud_properties: {
    #           origin_account_id: "AccountID",
    #           origin_region: "AwsRegion",
    #           origin_availability_zone: "AwsAvailabilityZone",
    #           source_outpost_arn: "OutpostARN"
    #         },
    #         replication_direction: "ReplicationDirection",
    #         reversed_direction_source_server_arn: "SourceServerARN",
    #         source_network_id: "SourceNetworkID",
    #         agent_version: "AgentVersion"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeSourceServersOutput]
    def describe_source_servers(params = {}, options = {})
      request = build_request(:describe_source_servers, params)
      request.send_request(options)
    end

    # <p>Disconnect a Recovery Instance from Elastic Disaster Recovery. Data replication is stopped immediately. All AWS resources created by Elastic Disaster Recovery for enabling the replication of the Recovery Instance will be terminated / deleted within 90 minutes. If the agent on the Recovery Instance has not been prevented from communicating with the Elastic Disaster Recovery service, then it will receive a command to uninstall itself (within approximately 10 minutes). The following properties of the Recovery Instance will be changed immediately: dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.</p>
    # @param [Hash, Types::DisconnectRecoveryInstanceInput] params
    # @option params [String] :recovery_instance_id
    #   <p>The ID of the Recovery Instance to disconnect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #   }
    #   options = {}
    #   response = client.disconnect_recovery_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disconnect_recovery_instance(params = {}, options = {})
      request = build_request(:disconnect_recovery_instance, params)
      request.send_request(options)
    end

    # <p>Disconnects a specific Source Server from Elastic Disaster Recovery. Data replication is stopped immediately. All AWS resources created by Elastic Disaster Recovery for enabling the replication of the Source Server will be terminated / deleted within 90 minutes. You cannot disconnect a Source Server if it has a Recovery Instance. If the agent on the Source Server has not been prevented from communicating with the Elastic Disaster Recovery service, then it will receive a command to uninstall itself (within approximately 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.</p>
    # @param [Hash, Types::DisconnectSourceServerInput] params
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server to disconnect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #   }
    #   options = {}
    #   response = client.disconnect_source_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     recovery_instance_id: "RecoveryInstanceID",
    #     last_launch_result: "LastLaunchResult",
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1,
    #           volume_status: "VolumeStatus"
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       staging_availability_zone: "AwsAvailabilityZone",
    #       staging_outpost_arn: "OutpostARN"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_launch: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID",
    #           type: "LastLaunchType"
    #         },
    #         status: "LaunchStatus"
    #       }
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       },
    #       supports_nitro_instances: false
    #     },
    #     staging_area: {
    #       status: "ExtensionStatus",
    #       staging_account_id: "AccountID",
    #       staging_source_server_arn: "ARN",
    #       error_message: "LargeBoundedString"
    #     },
    #     source_cloud_properties: {
    #       origin_account_id: "AccountID",
    #       origin_region: "AwsRegion",
    #       origin_availability_zone: "AwsAvailabilityZone",
    #       source_outpost_arn: "OutpostARN"
    #     },
    #     replication_direction: "ReplicationDirection",
    #     reversed_direction_source_server_arn: "SourceServerARN",
    #     source_network_id: "SourceNetworkID",
    #     agent_version: "AgentVersion"
    #   }
    # @return [Types::DisconnectSourceServerOutput]
    def disconnect_source_server(params = {}, options = {})
      request = build_request(:disconnect_source_server, params)
      request.send_request(options)
    end

    # <p>Export the Source Network CloudFormation template to an S3 bucket.</p>
    # @param [Hash, Types::ExportSourceNetworkCfnTemplateRequest] params
    # @option params [String] :source_network_id
    #   <p>The Source Network ID to export its CloudFormation template to an S3 bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_network_id: "SourceNetworkID", # required
    #   }
    #   options = {}
    #   response = client.export_source_network_cfn_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_destination_url: "LargeBoundedString"
    #   }
    # @return [Types::ExportSourceNetworkCfnTemplateResponse]
    def export_source_network_cfn_template(params = {}, options = {})
      request = build_request(:export_source_network_cfn_template, params)
      request.send_request(options)
    end

    # <p>Lists all Failback ReplicationConfigurations, filtered by Recovery Instance ID.</p>
    # @param [Hash, Types::GetFailbackReplicationConfigurationInput] params
    # @option params [String] :recovery_instance_id
    #   <p>The ID of the Recovery Instance whose failback replication configuration should be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #   }
    #   options = {}
    #   response = client.get_failback_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #     name: "BoundedString",
    #     bandwidth_throttling: 1,
    #     use_private_ip: false
    #   }
    # @return [Types::GetFailbackReplicationConfigurationOutput]
    def get_failback_replication_configuration(params = {}, options = {})
      request = build_request(:get_failback_replication_configuration, params)
      request.send_request(options)
    end

    # <p>Gets a LaunchConfiguration, filtered by Source Server IDs.</p>
    # @param [Hash, Types::GetLaunchConfigurationInput] params
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #   }
    #   options = {}
    #   response = client.get_launch_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     name: "SmallBoundedString",
    #     ec2_launch_template_id: "BoundedString",
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     post_launch_enabled: false,
    #     launch_into_instance_properties: {
    #       launch_into_ec2_instance_id: "EC2InstanceID"
    #     }
    #   }
    # @return [Types::GetLaunchConfigurationOutput]
    def get_launch_configuration(params = {}, options = {})
      request = build_request(:get_launch_configuration, params)
      request.send_request(options)
    end

    # <p>Gets a ReplicationConfiguration, filtered by Source Server ID.</p>
    # @param [Hash, Types::GetReplicationConfigurationInput] params
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Serve for this Replication Configuration.r</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #   }
    #   options = {}
    #   response = client.get_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     name: "SmallBoundedString",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     replicated_disks: [
    #       {
    #         device_name: "BoundedString",
    #         is_boot_disk: false,
    #         staging_disk_type: "ReplicationConfigurationReplicatedDiskStagingDiskType",
    #         iops: 1,
    #         throughput: 1,
    #         optimized_staging_disk_type: "ReplicationConfigurationReplicatedDiskStagingDiskType"
    #       }
    #     ],
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     pit_policy: [
    #       {
    #         rule_id: 1,
    #         units: "PITPolicyRuleUnits", # required
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         enabled: false
    #       }
    #     ],
    #     auto_replicate_new_disks: false
    #   }
    # @return [Types::GetReplicationConfigurationOutput]
    def get_replication_configuration(params = {}, options = {})
      request = build_request(:get_replication_configuration, params)
      request.send_request(options)
    end

    # <p>Initialize Elastic Disaster Recovery.</p>
    # @param [Hash, Types::InitializeServiceInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.initialize_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::InitializeServiceOutput]
    def initialize_service(params = {}, options = {})
      request = build_request(:initialize_service, params)
      request.send_request(options)
    end

    # <p>Returns a list of source servers on a staging account that are extensible, which means that:
    #             a. The source server is not already extended into this Account.
    #             b. The source server on the Account we’re reading from is not an extension of another source server.
    #         </p>
    # @param [Hash, Types::ListExtensibleSourceServersInput] params
    # @option params [String] :staging_account_id
    #   <p>The Id of the staging Account to retrieve extensible source servers from.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of extensible source servers to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token of the next extensible source server to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     staging_account_id: "AccountID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_extensible_source_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         hostname: "BoundedString",
    #         arn: "SourceServerARN",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListExtensibleSourceServersOutput]
    def list_extensible_source_servers(params = {}, options = {})
      request = build_request(:list_extensible_source_servers, params)
      request.send_request(options)
    end

    # <p>Lists resource launch actions.</p>
    # @param [Hash, Types::ListLaunchActionsRequest] params
    # @option params [String] :resource_id
    #   <p>Launch configuration template Id or Source Server Id</p>
    # @option params [Types::LaunchActionsRequestFilters] :filters
    #   <p>Filters to apply when listing resource launch actions.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum amount of items to return when listing resource launch actions.</p>
    # @option params [String] :next_token
    #   <p>Next token to use when listing resource launch actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "LaunchActionResourceId", # required
    #     filters: {
    #       action_ids: ["LaunchActionId"]
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_launch_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         action_id: "LaunchActionId",
    #         action_code: "SsmDocumentName",
    #         type: "LaunchActionType",
    #         name: "LaunchActionName",
    #         active: false,
    #         order: 1,
    #         action_version: "LaunchActionVersion",
    #         optional: false,
    #         parameters: {
    #           "LaunchActionParameterName" => {
    #             value: "LaunchActionParameterValue",
    #             type: "LaunchActionParameterType"
    #           }
    #         },
    #         description: "LaunchActionDescription",
    #         category: "LaunchActionCategory"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListLaunchActionsResponse]
    def list_launch_actions(params = {}, options = {})
      request = build_request(:list_launch_actions, params)
      request.send_request(options)
    end

    # <p>Returns an array of staging accounts for existing extended source servers.</p>
    # @param [Hash, Types::ListStagingAccountsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of staging Accounts to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token of the next staging Account to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_staging_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [
    #       {
    #         account_id: "AccountID"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListStagingAccountsOutput]
    def list_staging_accounts(params = {}, options = {})
      request = build_request(:list_staging_accounts, params)
      request.send_request(options)
    end

    # <p>List all tags for your Elastic Disaster Recovery resources.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags should be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
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

    # <p>Puts a resource launch action.</p>
    # @param [Hash, Types::PutLaunchActionRequest] params
    # @option params [String] :resource_id
    #   <p>Launch configuration template Id or Source Server Id</p>
    # @option params [String] :action_code
    #   <p>Launch action code.</p>
    # @option params [Integer] :order
    #   <p>Launch action order.</p>
    # @option params [String] :action_id
    #   <p>Launch action Id.</p>
    # @option params [Boolean] :optional
    #   <p>Whether the launch will not be marked as failed if this action fails.</p>
    # @option params [Boolean] :active
    #   <p>Whether the launch action is active.</p>
    # @option params [String] :name
    #   <p>Launch action name.</p>
    # @option params [String] :action_version
    #   <p>Launch action version.</p>
    # @option params [String] :category
    #   <p>Launch action category.</p>
    # @option params [Hash<String, Types::LaunchActionParameter>] :parameters
    #   <p>Launch action parameters.</p>
    # @option params [String] :description
    #   <p>Launch action description.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "LaunchActionResourceId", # required
    #     action_code: "SsmDocumentName", # required
    #     order: 1, # required
    #     action_id: "LaunchActionId", # required
    #     optional: false, # required
    #     active: false, # required
    #     name: "LaunchActionName", # required
    #     action_version: "LaunchActionVersion", # required
    #     category: "LaunchActionCategory", # required
    #     parameters: {
    #       "LaunchActionParameterName" => {
    #         value: "LaunchActionParameterValue",
    #         type: "LaunchActionParameterType"
    #       }
    #     },
    #     description: "LaunchActionDescription", # required
    #   }
    #   options = {}
    #   response = client.put_launch_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_id: "LaunchActionResourceId",
    #     action_id: "LaunchActionId",
    #     action_code: "SsmDocumentName",
    #     type: "LaunchActionType",
    #     name: "LaunchActionName",
    #     active: false,
    #     order: 1,
    #     action_version: "LaunchActionVersion",
    #     optional: false,
    #     parameters: {
    #       "LaunchActionParameterName" => {
    #         value: "LaunchActionParameterValue",
    #         type: "LaunchActionParameterType"
    #       }
    #     },
    #     description: "LaunchActionDescription",
    #     category: "LaunchActionCategory"
    #   }
    # @return [Types::PutLaunchActionResponse]
    def put_launch_action(params = {}, options = {})
      request = build_request(:put_launch_action, params)
      request.send_request(options)
    end

    # <p>WARNING: RetryDataReplication is deprecated.
    #               Causes the data replication initiation sequence to begin immediately upon next Handshake for the specified Source Server ID, regardless of when the previous initiation started. This command will work only if the Source Server is stalled or is in a DISCONNECTED or STOPPED state.
    #         </p>
    # @param [Hash, Types::RetryDataReplicationInput] params
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server whose data replication should be retried.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #   }
    #   options = {}
    #   response = client.retry_data_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     recovery_instance_id: "RecoveryInstanceID",
    #     last_launch_result: "LastLaunchResult",
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1,
    #           volume_status: "VolumeStatus"
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       staging_availability_zone: "AwsAvailabilityZone",
    #       staging_outpost_arn: "OutpostARN"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_launch: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID",
    #           type: "LastLaunchType"
    #         },
    #         status: "LaunchStatus"
    #       }
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       },
    #       supports_nitro_instances: false
    #     },
    #     staging_area: {
    #       status: "ExtensionStatus",
    #       staging_account_id: "AccountID",
    #       staging_source_server_arn: "ARN",
    #       error_message: "LargeBoundedString"
    #     },
    #     source_cloud_properties: {
    #       origin_account_id: "AccountID",
    #       origin_region: "AwsRegion",
    #       origin_availability_zone: "AwsAvailabilityZone",
    #       source_outpost_arn: "OutpostARN"
    #     },
    #     replication_direction: "ReplicationDirection",
    #     reversed_direction_source_server_arn: "SourceServerARN",
    #     source_network_id: "SourceNetworkID",
    #     agent_version: "AgentVersion"
    #   }
    # @deprecated
    #   WARNING: RetryDataReplication is deprecated
    # @return [Types::RetryDataReplicationOutput]
    def retry_data_replication(params = {}, options = {})
      request = build_request(:retry_data_replication, params)
      request.send_request(options)
    end

    # <p>Start replication to origin / target region - applies only to protected instances that originated in EC2.
    #             For recovery instances on target region - starts replication back to origin region.
    #             For failback instances on origin region - starts replication to target region to re-protect them.
    #         </p>
    # @param [Hash, Types::ReverseReplicationInput] params
    # @option params [String] :recovery_instance_id
    #   <p>The ID of the Recovery Instance that we want to reverse the replication for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #   }
    #   options = {}
    #   response = client.reverse_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reversed_direction_source_server_arn: "SourceServerARN"
    #   }
    # @return [Types::ReverseReplicationOutput]
    def reverse_replication(params = {}, options = {})
      request = build_request(:reverse_replication, params)
      request.send_request(options)
    end

    # <p>Initiates a Job for launching the machine that is being failed back to from the specified Recovery Instance. This will run conversion on the failback client and will reboot your machine, thus completing the failback process.</p>
    # @param [Hash, Types::StartFailbackLaunchInput] params
    # @option params [Array<String>] :recovery_instance_i_ds
    #   <p>The IDs of the Recovery Instance whose failback launch we want to request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be associated with the failback launch Job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_instance_i_ds: ["RecoveryInstanceID"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_failback_launch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_id: "JobID", # required
    #       arn: "ARN",
    #       type: "JobType",
    #       initiated_by: "InitiatedBy",
    #       creation_date_time: "ISO8601DatetimeString",
    #       end_date_time: "ISO8601DatetimeString",
    #       status: "JobStatus",
    #       participating_servers: [
    #         {
    #           source_server_id: "SourceServerID",
    #           recovery_instance_id: "RecoveryInstanceID",
    #           launch_status: "LaunchStatus",
    #           launch_actions_status: {
    #             ssm_agent_discovery_datetime: "ISO8601DatetimeString",
    #             runs: [
    #               {
    #                 action: {
    #                   action_id: "LaunchActionId",
    #                   action_code: "SsmDocumentName",
    #                   type: "LaunchActionType",
    #                   name: "LaunchActionName",
    #                   active: false,
    #                   order: 1,
    #                   action_version: "LaunchActionVersion",
    #                   optional: false,
    #                   parameters: {
    #                     "LaunchActionParameterName" => {
    #                       value: "LaunchActionParameterValue",
    #                       type: "LaunchActionParameterType"
    #                     }
    #                   },
    #                   description: "LaunchActionDescription",
    #                   category: "LaunchActionCategory"
    #                 },
    #                 run_id: "LaunchActionRunId",
    #                 status: "LaunchActionRunStatus",
    #                 failure_reason: "FailureReason"
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       participating_resources: [
    #         {
    #           participating_resource_id: {
    #             # One of:
    #             source_network_id: "SourceNetworkID"
    #           },
    #           launch_status: "LaunchStatus"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StartFailbackLaunchOutput]
    def start_failback_launch(params = {}, options = {})
      request = build_request(:start_failback_launch, params)
      request.send_request(options)
    end

    # <p>Launches Recovery Instances for the specified Source Servers. For each Source Server you may choose a point in time snapshot to launch from, or use an on demand snapshot.</p>
    # @param [Hash, Types::StartRecoveryInput] params
    # @option params [Array<Types::StartRecoveryRequestSourceServer>] :source_servers
    #   <p>The Source Servers that we want to start a Recovery Job for.</p>
    # @option params [Boolean] :is_drill
    #   <p>Whether this Source Server Recovery operation is a drill or not.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be associated with the Recovery Job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_servers: [ # required
    #       {
    #         source_server_id: "SourceServerID", # required
    #         recovery_snapshot_id: "RecoverySnapshotID"
    #       }
    #     ],
    #     is_drill: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_recovery(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_id: "JobID", # required
    #       arn: "ARN",
    #       type: "JobType",
    #       initiated_by: "InitiatedBy",
    #       creation_date_time: "ISO8601DatetimeString",
    #       end_date_time: "ISO8601DatetimeString",
    #       status: "JobStatus",
    #       participating_servers: [
    #         {
    #           source_server_id: "SourceServerID",
    #           recovery_instance_id: "RecoveryInstanceID",
    #           launch_status: "LaunchStatus",
    #           launch_actions_status: {
    #             ssm_agent_discovery_datetime: "ISO8601DatetimeString",
    #             runs: [
    #               {
    #                 action: {
    #                   action_id: "LaunchActionId",
    #                   action_code: "SsmDocumentName",
    #                   type: "LaunchActionType",
    #                   name: "LaunchActionName",
    #                   active: false,
    #                   order: 1,
    #                   action_version: "LaunchActionVersion",
    #                   optional: false,
    #                   parameters: {
    #                     "LaunchActionParameterName" => {
    #                       value: "LaunchActionParameterValue",
    #                       type: "LaunchActionParameterType"
    #                     }
    #                   },
    #                   description: "LaunchActionDescription",
    #                   category: "LaunchActionCategory"
    #                 },
    #                 run_id: "LaunchActionRunId",
    #                 status: "LaunchActionRunStatus",
    #                 failure_reason: "FailureReason"
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       participating_resources: [
    #         {
    #           participating_resource_id: {
    #             # One of:
    #             source_network_id: "SourceNetworkID"
    #           },
    #           launch_status: "LaunchStatus"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StartRecoveryOutput]
    def start_recovery(params = {}, options = {})
      request = build_request(:start_recovery, params)
      request.send_request(options)
    end

    # <p>Starts replication for a stopped Source Server. This action would make the Source Server protected again and restart billing for it.</p>
    # @param [Hash, Types::StartReplicationInput] params
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server to start replication for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #   }
    #   options = {}
    #   response = client.start_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server: {
    #       source_server_id: "SourceServerID",
    #       arn: "ARN",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       recovery_instance_id: "RecoveryInstanceID",
    #       last_launch_result: "LastLaunchResult",
    #       data_replication_info: {
    #         lag_duration: "ISO8601DurationString",
    #         eta_date_time: "ISO8601DatetimeString",
    #         replicated_disks: [
    #           {
    #             device_name: "BoundedString",
    #             total_storage_bytes: 1,
    #             replicated_storage_bytes: 1,
    #             rescanned_storage_bytes: 1,
    #             backlogged_storage_bytes: 1,
    #             volume_status: "VolumeStatus"
    #           }
    #         ],
    #         data_replication_state: "DataReplicationState",
    #         data_replication_initiation: {
    #           start_date_time: "ISO8601DatetimeString",
    #           next_attempt_date_time: "ISO8601DatetimeString",
    #           steps: [
    #             {
    #               name: "DataReplicationInitiationStepName",
    #               status: "DataReplicationInitiationStepStatus"
    #             }
    #           ]
    #         },
    #         data_replication_error: {
    #           error: "DataReplicationErrorString",
    #           raw_error: "LargeBoundedString"
    #         },
    #         staging_availability_zone: "AwsAvailabilityZone",
    #         staging_outpost_arn: "OutpostARN"
    #       },
    #       life_cycle: {
    #         added_to_service_date_time: "ISO8601DatetimeString",
    #         first_byte_date_time: "ISO8601DatetimeString",
    #         elapsed_replication_duration: "ISO8601DurationString",
    #         last_seen_by_service_date_time: "ISO8601DatetimeString",
    #         last_launch: {
    #           initiated: {
    #             api_call_date_time: "ISO8601DatetimeString",
    #             job_id: "JobID",
    #             type: "LastLaunchType"
    #           },
    #           status: "LaunchStatus"
    #         }
    #       },
    #       source_properties: {
    #         last_updated_date_time: "ISO8601DatetimeString",
    #         recommended_instance_type: "EC2InstanceType",
    #         identification_hints: {
    #           fqdn: "BoundedString",
    #           hostname: "BoundedString",
    #           vm_ware_uuid: "BoundedString",
    #           aws_instance_id: "EC2InstanceID"
    #         },
    #         network_interfaces: [
    #           {
    #             mac_address: "BoundedString",
    #             ips: ["BoundedString"],
    #             is_primary: false
    #           }
    #         ],
    #         disks: [
    #           {
    #             device_name: "BoundedString",
    #             bytes: 1
    #           }
    #         ],
    #         cpus: [
    #           {
    #             cores: 1,
    #             model_name: "BoundedString"
    #           }
    #         ],
    #         ram_bytes: 1,
    #         os: {
    #           full_string: "BoundedString"
    #         },
    #         supports_nitro_instances: false
    #       },
    #       staging_area: {
    #         status: "ExtensionStatus",
    #         staging_account_id: "AccountID",
    #         staging_source_server_arn: "ARN",
    #         error_message: "LargeBoundedString"
    #       },
    #       source_cloud_properties: {
    #         origin_account_id: "AccountID",
    #         origin_region: "AwsRegion",
    #         origin_availability_zone: "AwsAvailabilityZone",
    #         source_outpost_arn: "OutpostARN"
    #       },
    #       replication_direction: "ReplicationDirection",
    #       reversed_direction_source_server_arn: "SourceServerARN",
    #       source_network_id: "SourceNetworkID",
    #       agent_version: "AgentVersion"
    #     }
    #   }
    # @return [Types::StartReplicationOutput]
    def start_replication(params = {}, options = {})
      request = build_request(:start_replication, params)
      request.send_request(options)
    end

    # <p>Deploy VPC for the specified Source Network and modify launch templates to use this network. The VPC will be deployed using a dedicated CloudFormation stack.</p>
    # @param [Hash, Types::StartSourceNetworkRecoveryRequest] params
    # @option params [Array<Types::StartSourceNetworkRecoveryRequestNetworkEntry>] :source_networks
    #   <p>The Source Networks that we want to start a Recovery Job for.</p>
    # @option params [Boolean] :deploy_as_new
    #   <p>Don't update existing CloudFormation Stack, recover the network using a new stack.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be associated with the Source Network recovery Job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_networks: [ # required
    #       {
    #         source_network_id: "SourceNetworkID", # required
    #         cfn_stack_name: "CfnStackName"
    #       }
    #     ],
    #     deploy_as_new: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_source_network_recovery(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_id: "JobID", # required
    #       arn: "ARN",
    #       type: "JobType",
    #       initiated_by: "InitiatedBy",
    #       creation_date_time: "ISO8601DatetimeString",
    #       end_date_time: "ISO8601DatetimeString",
    #       status: "JobStatus",
    #       participating_servers: [
    #         {
    #           source_server_id: "SourceServerID",
    #           recovery_instance_id: "RecoveryInstanceID",
    #           launch_status: "LaunchStatus",
    #           launch_actions_status: {
    #             ssm_agent_discovery_datetime: "ISO8601DatetimeString",
    #             runs: [
    #               {
    #                 action: {
    #                   action_id: "LaunchActionId",
    #                   action_code: "SsmDocumentName",
    #                   type: "LaunchActionType",
    #                   name: "LaunchActionName",
    #                   active: false,
    #                   order: 1,
    #                   action_version: "LaunchActionVersion",
    #                   optional: false,
    #                   parameters: {
    #                     "LaunchActionParameterName" => {
    #                       value: "LaunchActionParameterValue",
    #                       type: "LaunchActionParameterType"
    #                     }
    #                   },
    #                   description: "LaunchActionDescription",
    #                   category: "LaunchActionCategory"
    #                 },
    #                 run_id: "LaunchActionRunId",
    #                 status: "LaunchActionRunStatus",
    #                 failure_reason: "FailureReason"
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       participating_resources: [
    #         {
    #           participating_resource_id: {
    #             # One of:
    #             source_network_id: "SourceNetworkID"
    #           },
    #           launch_status: "LaunchStatus"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StartSourceNetworkRecoveryResponse]
    def start_source_network_recovery(params = {}, options = {})
      request = build_request(:start_source_network_recovery, params)
      request.send_request(options)
    end

    # <p>Starts replication for a Source Network. This action would make the Source Network protected.</p>
    # @param [Hash, Types::StartSourceNetworkReplicationRequest] params
    # @option params [String] :source_network_id
    #   <p>ID of the Source Network to replicate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_network_id: "SourceNetworkID", # required
    #   }
    #   options = {}
    #   response = client.start_source_network_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_network: {
    #       source_network_id: "SourceNetworkID",
    #       source_vpc_id: "VpcID",
    #       arn: "ARN",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       replication_status: "ReplicationStatus",
    #       replication_status_details: "SensitiveBoundedString",
    #       cfn_stack_name: "CfnStackName",
    #       source_region: "AwsRegion",
    #       source_account_id: "AccountID",
    #       last_recovery: {
    #         api_call_date_time: Time.now,
    #         job_id: "JobID",
    #         last_recovery_result: "RecoveryResult"
    #       },
    #       launched_vpc_id: "VpcID"
    #     }
    #   }
    # @return [Types::StartSourceNetworkReplicationResponse]
    def start_source_network_replication(params = {}, options = {})
      request = build_request(:start_source_network_replication, params)
      request.send_request(options)
    end

    # <p>Stops the failback process for a specified Recovery Instance. This changes the Failback State of the Recovery Instance back to FAILBACK_NOT_STARTED.</p>
    # @param [Hash, Types::StopFailbackInput] params
    # @option params [String] :recovery_instance_id
    #   <p>The ID of the Recovery Instance we want to stop failback for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #   }
    #   options = {}
    #   response = client.stop_failback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_failback(params = {}, options = {})
      request = build_request(:stop_failback, params)
      request.send_request(options)
    end

    # <p>Stops replication for a Source Server. This action would make the Source Server unprotected, delete its existing snapshots and stop billing for it.</p>
    # @param [Hash, Types::StopReplicationInput] params
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server to stop replication for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #   }
    #   options = {}
    #   response = client.stop_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server: {
    #       source_server_id: "SourceServerID",
    #       arn: "ARN",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       recovery_instance_id: "RecoveryInstanceID",
    #       last_launch_result: "LastLaunchResult",
    #       data_replication_info: {
    #         lag_duration: "ISO8601DurationString",
    #         eta_date_time: "ISO8601DatetimeString",
    #         replicated_disks: [
    #           {
    #             device_name: "BoundedString",
    #             total_storage_bytes: 1,
    #             replicated_storage_bytes: 1,
    #             rescanned_storage_bytes: 1,
    #             backlogged_storage_bytes: 1,
    #             volume_status: "VolumeStatus"
    #           }
    #         ],
    #         data_replication_state: "DataReplicationState",
    #         data_replication_initiation: {
    #           start_date_time: "ISO8601DatetimeString",
    #           next_attempt_date_time: "ISO8601DatetimeString",
    #           steps: [
    #             {
    #               name: "DataReplicationInitiationStepName",
    #               status: "DataReplicationInitiationStepStatus"
    #             }
    #           ]
    #         },
    #         data_replication_error: {
    #           error: "DataReplicationErrorString",
    #           raw_error: "LargeBoundedString"
    #         },
    #         staging_availability_zone: "AwsAvailabilityZone",
    #         staging_outpost_arn: "OutpostARN"
    #       },
    #       life_cycle: {
    #         added_to_service_date_time: "ISO8601DatetimeString",
    #         first_byte_date_time: "ISO8601DatetimeString",
    #         elapsed_replication_duration: "ISO8601DurationString",
    #         last_seen_by_service_date_time: "ISO8601DatetimeString",
    #         last_launch: {
    #           initiated: {
    #             api_call_date_time: "ISO8601DatetimeString",
    #             job_id: "JobID",
    #             type: "LastLaunchType"
    #           },
    #           status: "LaunchStatus"
    #         }
    #       },
    #       source_properties: {
    #         last_updated_date_time: "ISO8601DatetimeString",
    #         recommended_instance_type: "EC2InstanceType",
    #         identification_hints: {
    #           fqdn: "BoundedString",
    #           hostname: "BoundedString",
    #           vm_ware_uuid: "BoundedString",
    #           aws_instance_id: "EC2InstanceID"
    #         },
    #         network_interfaces: [
    #           {
    #             mac_address: "BoundedString",
    #             ips: ["BoundedString"],
    #             is_primary: false
    #           }
    #         ],
    #         disks: [
    #           {
    #             device_name: "BoundedString",
    #             bytes: 1
    #           }
    #         ],
    #         cpus: [
    #           {
    #             cores: 1,
    #             model_name: "BoundedString"
    #           }
    #         ],
    #         ram_bytes: 1,
    #         os: {
    #           full_string: "BoundedString"
    #         },
    #         supports_nitro_instances: false
    #       },
    #       staging_area: {
    #         status: "ExtensionStatus",
    #         staging_account_id: "AccountID",
    #         staging_source_server_arn: "ARN",
    #         error_message: "LargeBoundedString"
    #       },
    #       source_cloud_properties: {
    #         origin_account_id: "AccountID",
    #         origin_region: "AwsRegion",
    #         origin_availability_zone: "AwsAvailabilityZone",
    #         source_outpost_arn: "OutpostARN"
    #       },
    #       replication_direction: "ReplicationDirection",
    #       reversed_direction_source_server_arn: "SourceServerARN",
    #       source_network_id: "SourceNetworkID",
    #       agent_version: "AgentVersion"
    #     }
    #   }
    # @return [Types::StopReplicationOutput]
    def stop_replication(params = {}, options = {})
      request = build_request(:stop_replication, params)
      request.send_request(options)
    end

    # <p>Stops replication for a Source Network. This action would make the Source Network unprotected.</p>
    # @param [Hash, Types::StopSourceNetworkReplicationRequest] params
    # @option params [String] :source_network_id
    #   <p>ID of the Source Network to stop replication.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_network_id: "SourceNetworkID", # required
    #   }
    #   options = {}
    #   response = client.stop_source_network_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_network: {
    #       source_network_id: "SourceNetworkID",
    #       source_vpc_id: "VpcID",
    #       arn: "ARN",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       replication_status: "ReplicationStatus",
    #       replication_status_details: "SensitiveBoundedString",
    #       cfn_stack_name: "CfnStackName",
    #       source_region: "AwsRegion",
    #       source_account_id: "AccountID",
    #       last_recovery: {
    #         api_call_date_time: Time.now,
    #         job_id: "JobID",
    #         last_recovery_result: "RecoveryResult"
    #       },
    #       launched_vpc_id: "VpcID"
    #     }
    #   }
    # @return [Types::StopSourceNetworkReplicationResponse]
    def stop_source_network_replication(params = {}, options = {})
      request = build_request(:stop_source_network_replication, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites only the specified tags for the specified Elastic Disaster Recovery resource or resources. When you specify an existing tag key, the value is overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>ARN of the resource for which tags are to be added or updated.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Array of tags to be added or updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
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

    # <p>Initiates a Job for terminating the EC2 resources associated with the specified Recovery Instances, and then will delete the Recovery Instances from the Elastic Disaster Recovery service.</p>
    # @param [Hash, Types::TerminateRecoveryInstancesInput] params
    # @option params [Array<String>] :recovery_instance_i_ds
    #   <p>The IDs of the Recovery Instances that should be terminated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_instance_i_ds: ["RecoveryInstanceID"], # required
    #   }
    #   options = {}
    #   response = client.terminate_recovery_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_id: "JobID", # required
    #       arn: "ARN",
    #       type: "JobType",
    #       initiated_by: "InitiatedBy",
    #       creation_date_time: "ISO8601DatetimeString",
    #       end_date_time: "ISO8601DatetimeString",
    #       status: "JobStatus",
    #       participating_servers: [
    #         {
    #           source_server_id: "SourceServerID",
    #           recovery_instance_id: "RecoveryInstanceID",
    #           launch_status: "LaunchStatus",
    #           launch_actions_status: {
    #             ssm_agent_discovery_datetime: "ISO8601DatetimeString",
    #             runs: [
    #               {
    #                 action: {
    #                   action_id: "LaunchActionId",
    #                   action_code: "SsmDocumentName",
    #                   type: "LaunchActionType",
    #                   name: "LaunchActionName",
    #                   active: false,
    #                   order: 1,
    #                   action_version: "LaunchActionVersion",
    #                   optional: false,
    #                   parameters: {
    #                     "LaunchActionParameterName" => {
    #                       value: "LaunchActionParameterValue",
    #                       type: "LaunchActionParameterType"
    #                     }
    #                   },
    #                   description: "LaunchActionDescription",
    #                   category: "LaunchActionCategory"
    #                 },
    #                 run_id: "LaunchActionRunId",
    #                 status: "LaunchActionRunStatus",
    #                 failure_reason: "FailureReason"
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       participating_resources: [
    #         {
    #           participating_resource_id: {
    #             # One of:
    #             source_network_id: "SourceNetworkID"
    #           },
    #           launch_status: "LaunchStatus"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::TerminateRecoveryInstancesOutput]
    def terminate_recovery_instances(params = {}, options = {})
      request = build_request(:terminate_recovery_instances, params)
      request.send_request(options)
    end

    # <p>Deletes the specified set of tags from the specified set of Elastic Disaster Recovery resources.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>ARN of the resource for which tags are to be removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Array of tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
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

    # <p>Allows you to update the failback replication configuration of a Recovery Instance by ID.</p>
    # @param [Hash, Types::UpdateFailbackReplicationConfigurationInput] params
    # @option params [String] :recovery_instance_id
    #   <p>The ID of the Recovery Instance.</p>
    # @option params [String] :name
    #   <p>The name of the Failback Replication Configuration.</p>
    # @option params [Integer] :bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Recovery Instance in Mbps.</p>
    # @option params [Boolean] :use_private_ip
    #   <p>Whether to use Private IP for the failback replication of the Recovery Instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #     name: "BoundedString",
    #     bandwidth_throttling: 1,
    #     use_private_ip: false
    #   }
    #   options = {}
    #   response = client.update_failback_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_failback_replication_configuration(params = {}, options = {})
      request = build_request(:update_failback_replication_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a LaunchConfiguration by Source Server ID.</p>
    # @param [Hash, Types::UpdateLaunchConfigurationInput] params
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>
    # @option params [String] :name
    #   <p>The name of the launch configuration.</p>
    # @option params [String] :launch_disposition
    #   <p>The state of the Recovery Instance in EC2 after the recovery operation.</p>
    # @option params [String] :target_instance_type_right_sizing_method
    #   <p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>
    # @option params [Boolean] :copy_private_ip
    #   <p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>
    # @option params [Boolean] :copy_tags
    #   <p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>
    # @option params [Types::Licensing] :licensing
    #   <p>The licensing configuration to be used for this launch configuration.</p>
    # @option params [Boolean] :post_launch_enabled
    #   <p>Whether we want to enable post-launch actions for the Source Server.</p>
    # @option params [Types::LaunchIntoInstanceProperties] :launch_into_instance_properties
    #   <p>Launch into existing instance properties.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     name: "SmallBoundedString",
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     post_launch_enabled: false,
    #     launch_into_instance_properties: {
    #       launch_into_ec2_instance_id: "EC2InstanceID"
    #     }
    #   }
    #   options = {}
    #   response = client.update_launch_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     name: "SmallBoundedString",
    #     ec2_launch_template_id: "BoundedString",
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     post_launch_enabled: false,
    #     launch_into_instance_properties: {
    #       launch_into_ec2_instance_id: "EC2InstanceID"
    #     }
    #   }
    # @return [Types::UpdateLaunchConfigurationOutput]
    def update_launch_configuration(params = {}, options = {})
      request = build_request(:update_launch_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an existing Launch Configuration Template by ID.</p>
    # @param [Hash, Types::UpdateLaunchConfigurationTemplateInput] params
    # @option params [String] :launch_configuration_template_id
    #   <p>Launch Configuration Template ID.</p>
    # @option params [String] :launch_disposition
    #   <p>Launch disposition.</p>
    # @option params [String] :target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    # @option params [Boolean] :copy_private_ip
    #   <p>Copy private IP.</p>
    # @option params [Boolean] :copy_tags
    #   <p>Copy tags.</p>
    # @option params [Types::Licensing] :licensing
    #   <p>Licensing.</p>
    # @option params [String] :export_bucket_arn
    #   <p>S3 bucket ARN to export Source Network templates.</p>
    # @option params [Boolean] :post_launch_enabled
    #   <p>Whether we want to activate post-launch actions.</p>
    # @option params [Boolean] :launch_into_source_instance
    #   <p>DRS will set the 'launch into instance ID' of any source server when performing a drill, recovery or failback to the previous region or availability zone, using the instance ID of the source instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     export_bucket_arn: "ARN",
    #     post_launch_enabled: false,
    #     launch_into_source_instance: false
    #   }
    #   options = {}
    #   response = client.update_launch_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launch_configuration_template: {
    #       launch_configuration_template_id: "LaunchConfigurationTemplateID",
    #       arn: "ARN",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       launch_disposition: "LaunchDisposition",
    #       target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #       copy_private_ip: false,
    #       copy_tags: false,
    #       licensing: {
    #         os_byol: false
    #       },
    #       export_bucket_arn: "ARN",
    #       post_launch_enabled: false,
    #       launch_into_source_instance: false
    #     }
    #   }
    # @return [Types::UpdateLaunchConfigurationTemplateOutput]
    def update_launch_configuration_template(params = {}, options = {})
      request = build_request(:update_launch_configuration_template, params)
      request.send_request(options)
    end

    # <p>Allows you to update a ReplicationConfiguration by Source Server ID.</p>
    # @param [Hash, Types::UpdateReplicationConfigurationInput] params
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server for this Replication Configuration.</p>
    # @option params [String] :name
    #   <p>The name of the Replication Configuration.</p>
    # @option params [String] :staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    # @option params [Boolean] :associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    # @option params [String] :replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    # @option params [String] :default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    # @option params [Array<Types::ReplicationConfigurationReplicatedDisk>] :replicated_disks
    #   <p>The configuration of the disks of the Source Server to be replicated.</p>
    # @option params [String] :ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    # @option params [String] :ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    # @option params [Integer] :bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    # @option params [String] :data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    # @option params [Boolean] :create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    # @option params [Array<Types::PITPolicyRule>] :pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    # @option params [Boolean] :auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     name: "SmallBoundedString",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     replicated_disks: [
    #       {
    #         device_name: "BoundedString",
    #         is_boot_disk: false,
    #         staging_disk_type: "ReplicationConfigurationReplicatedDiskStagingDiskType",
    #         iops: 1,
    #         throughput: 1,
    #         optimized_staging_disk_type: "ReplicationConfigurationReplicatedDiskStagingDiskType"
    #       }
    #     ],
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     pit_policy: [
    #       {
    #         rule_id: 1,
    #         units: "PITPolicyRuleUnits", # required
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         enabled: false
    #       }
    #     ],
    #     auto_replicate_new_disks: false
    #   }
    #   options = {}
    #   response = client.update_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     name: "SmallBoundedString",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     replicated_disks: [
    #       {
    #         device_name: "BoundedString",
    #         is_boot_disk: false,
    #         staging_disk_type: "ReplicationConfigurationReplicatedDiskStagingDiskType",
    #         iops: 1,
    #         throughput: 1,
    #         optimized_staging_disk_type: "ReplicationConfigurationReplicatedDiskStagingDiskType"
    #       }
    #     ],
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     pit_policy: [
    #       {
    #         rule_id: 1,
    #         units: "PITPolicyRuleUnits", # required
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         enabled: false
    #       }
    #     ],
    #     auto_replicate_new_disks: false
    #   }
    # @return [Types::UpdateReplicationConfigurationOutput]
    def update_replication_configuration(params = {}, options = {})
      request = build_request(:update_replication_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a ReplicationConfigurationTemplate by ID.</p>
    # @param [Hash, Types::UpdateReplicationConfigurationTemplateInput] params
    # @option params [String] :replication_configuration_template_id
    #   <p>The Replication Configuration Template ID.</p>
    # @option params [String] :arn
    #   <p>The Replication Configuration Template ARN.</p>
    # @option params [String] :staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    # @option params [Boolean] :associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    # @option params [String] :replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    # @option params [String] :default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    # @option params [String] :ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    # @option params [String] :ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    # @option params [Integer] :bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    # @option params [String] :data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    # @option params [Boolean] :create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    # @option params [Array<Types::PITPolicyRule>] :pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    # @option params [Boolean] :auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #     arn: "ARN",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     pit_policy: [
    #       {
    #         rule_id: 1,
    #         units: "PITPolicyRuleUnits", # required
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         enabled: false
    #       }
    #     ],
    #     auto_replicate_new_disks: false
    #   }
    #   options = {}
    #   response = client.update_replication_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #     arn: "ARN",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     pit_policy: [
    #       {
    #         rule_id: 1,
    #         units: "PITPolicyRuleUnits", # required
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         enabled: false
    #       }
    #     ],
    #     auto_replicate_new_disks: false
    #   }
    # @return [Types::UpdateReplicationConfigurationTemplateOutput]
    def update_replication_configuration_template(params = {}, options = {})
      request = build_request(:update_replication_configuration_template, params)
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
      context[:gem_name] = 'aws-sdk-drs'
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
