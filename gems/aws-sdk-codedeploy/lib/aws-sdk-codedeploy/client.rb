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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:codedeploy)

module Aws::CodeDeploy
  # An API client for Aws::CodeDeploy.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CodeDeploy20141006
    @identifier = :codedeploy

    add_plugin(::Aws::CodeDeploy::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CodeDeploy::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>Adds tags to on-premises instances.</p>
    # @param [Hash, Types::AddTagsToOnPremisesInstancesInput] params
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag key-value pairs to add to the on-premises instances.</p>
    #            <p>Keys and values are both required. Keys cannot be null or empty strings. Value-only
    #               tags are not allowed.</p>
    # @option params [Array<String>] :instance_names
    #   <p>The names of the on-premises instances to which to add tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: [ # required
    #       {
    #         key: "Key",
    #         value: "Value"
    #       }
    #     ],
    #     instance_names: ["InstanceName"], # required
    #   }
    #   options = {}
    #   response = client.add_tags_to_on_premises_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_tags_to_on_premises_instances(params = {}, options = {})
      request = build_request(:add_tags_to_on_premises_instances, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more application revisions. The maximum number of
    #             application revisions that can be returned is 25.</p>
    # @param [Hash, Types::BatchGetApplicationRevisionsInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application about which to get revision
    #               information.</p>
    # @option params [Array<Types::RevisionLocation>] :revisions
    #   <p>An array of <code>RevisionLocation</code> objects that specify information to get
    #               about the application revisions, including type and location. The maximum number of
    #                   <code>RevisionLocation</code> objects you can specify is 25.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     revisions: [ # required
    #       {
    #         revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #           version: "VersionId",
    #           e_tag: "ETag"
    #         },
    #         git_hub_location: {
    #           repository: "Repository",
    #           commit_id: "CommitId"
    #         },
    #         string: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256"
    #         },
    #         app_spec_content: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_application_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_name: "ApplicationName",
    #     error_message: "ErrorMessage",
    #     revisions: [
    #       {
    #         revision_location: {
    #           revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #             version: "VersionId",
    #             e_tag: "ETag"
    #           },
    #           git_hub_location: {
    #             repository: "Repository",
    #             commit_id: "CommitId"
    #           },
    #           string: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256"
    #           },
    #           app_spec_content: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256"
    #           }
    #         },
    #         generic_revision_info: {
    #           description: "Description",
    #           deployment_groups: ["DeploymentGroupName"],
    #           first_used_time: Time.now,
    #           last_used_time: Time.now,
    #           register_time: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetApplicationRevisionsOutput]
    def batch_get_application_revisions(params = {}, options = {})
      request = build_request(:batch_get_application_revisions, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more applications. The maximum number of applications
    #             that can be returned is 100.</p>
    # @param [Hash, Types::BatchGetApplicationsInput] params
    # @option params [Array<String>] :application_names
    #   <p>A list of application names separated by spaces. The maximum number of application
    #               names you can specify is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_names: ["ApplicationName"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications_info: [
    #       {
    #         application_id: "ApplicationId",
    #         application_name: "ApplicationName",
    #         create_time: Time.now,
    #         linked_to_git_hub: false,
    #         git_hub_account_name: "GitHubAccountTokenName",
    #         compute_platform: "Server" # One of: ["Server", "Lambda", "ECS"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetApplicationsOutput]
    def batch_get_applications(params = {}, options = {})
      request = build_request(:batch_get_applications, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more deployment groups.</p>
    # @param [Hash, Types::BatchGetDeploymentGroupsInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application associated with the applicable user
    #               or Amazon Web Services account.</p>
    # @option params [Array<String>] :deployment_group_names
    #   <p>The names of the deployment groups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     deployment_group_names: ["DeploymentGroupName"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_deployment_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_groups_info: [
    #       {
    #         application_name: "ApplicationName",
    #         deployment_group_id: "DeploymentGroupId",
    #         deployment_group_name: "DeploymentGroupName",
    #         deployment_config_name: "DeploymentConfigName",
    #         ec2_tag_filters: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #           }
    #         ],
    #         on_premises_instance_tag_filters: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #           }
    #         ],
    #         auto_scaling_groups: [
    #           {
    #             name: "AutoScalingGroupName",
    #             hook: "AutoScalingGroupHook",
    #             termination_hook: "AutoScalingGroupHook"
    #           }
    #         ],
    #         service_role_arn: "Role",
    #         target_revision: {
    #           revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #             version: "VersionId",
    #             e_tag: "ETag"
    #           },
    #           git_hub_location: {
    #             repository: "Repository",
    #             commit_id: "CommitId"
    #           },
    #           string: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256"
    #           },
    #           app_spec_content: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256"
    #           }
    #         },
    #         trigger_configurations: [
    #           {
    #             trigger_name: "TriggerName",
    #             trigger_target_arn: "TriggerTargetArn",
    #             trigger_events: ["DeploymentStart" # One of: ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"]]
    #           }
    #         ],
    #         alarm_configuration: {
    #           enabled: false,
    #           ignore_poll_alarm_failure: false,
    #           alarms: [
    #             {
    #               name: "AlarmName"
    #             }
    #           ]
    #         },
    #         auto_rollback_configuration: {
    #           enabled: false,
    #           events: ["DEPLOYMENT_FAILURE" # One of: ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]]
    #         },
    #         deployment_style: {
    #           deployment_type: "IN_PLACE" # One of: ["IN_PLACE", "BLUE_GREEN"],
    #           deployment_option: "WITH_TRAFFIC_CONTROL" # One of: ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #         },
    #         outdated_instances_strategy: "UPDATE" # One of: ["UPDATE", "IGNORE"],
    #         blue_green_deployment_configuration: {
    #           terminate_blue_instances_on_deployment_success: {
    #             action: "TERMINATE" # One of: ["TERMINATE", "KEEP_ALIVE"],
    #             termination_wait_time_in_minutes: 1
    #           },
    #           deployment_ready_option: {
    #             action_on_timeout: "CONTINUE_DEPLOYMENT" # One of: ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"],
    #             wait_time_in_minutes: 1
    #           },
    #           green_fleet_provisioning_option: {
    #             action: "DISCOVER_EXISTING" # One of: ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #           }
    #         },
    #         load_balancer_info: {
    #           elb_info_list: [
    #             {
    #               name: "ELBName"
    #             }
    #           ],
    #           target_group_info_list: [
    #             {
    #               name: "TargetGroupName"
    #             }
    #           ],
    #           target_group_pair_info_list: [
    #             {
    #               target_groups: [
    #                 {
    #                   name: "TargetGroupName"
    #                 }
    #               ],
    #               prod_traffic_route: {
    #                 listener_arns: ["ListenerArn"]
    #               },
    #               test_traffic_route: {
    #                 listener_arns: ["ListenerArn"]
    #               }
    #             }
    #           ]
    #         },
    #         last_successful_deployment: {
    #           deployment_id: "DeploymentId",
    #           status: "Created" # One of: ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"],
    #           end_time: Time.now,
    #           create_time: Time.now
    #         },
    #         last_attempted_deployment: {
    #           deployment_id: "DeploymentId",
    #           status: "Created" # One of: ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"],
    #           end_time: Time.now,
    #           create_time: Time.now
    #         },
    #         ec2_tag_set: {
    #           ec2_tag_set_list: [
    #             [
    #               {
    #                 key: "Key",
    #                 value: "Value",
    #                 type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #               }
    #             ]
    #           ]
    #         },
    #         on_premises_tag_set: {
    #           on_premises_tag_set_list: [
    #             [
    #               {
    #                 key: "Key",
    #                 value: "Value",
    #                 type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #               }
    #             ]
    #           ]
    #         },
    #         compute_platform: "Server" # One of: ["Server", "Lambda", "ECS"],
    #         ecs_services: [
    #           {
    #             service_name: "ECSServiceName",
    #             cluster_name: "ECSClusterName"
    #           }
    #         ],
    #         termination_hook_enabled: false
    #       }
    #     ],
    #     error_message: "ErrorMessage"
    #   }
    # @return [Types::BatchGetDeploymentGroupsOutput]
    def batch_get_deployment_groups(params = {}, options = {})
      request = build_request(:batch_get_deployment_groups, params)
      request.send_request(options)
    end

    # <note>
    #             <p> This method works, but is deprecated. Use <code>BatchGetDeploymentTargets</code>
    #                 instead. </p>
    #          </note>
    #          <p> Returns an array of one or more instances associated with a deployment. This method
    #             works with EC2/On-premises and Lambda compute platforms. The newer
    #                 <code>BatchGetDeploymentTargets</code> works with all compute platforms. The maximum
    #             number of instances that can be returned is 25.</p>
    # @param [Hash, Types::BatchGetDeploymentInstancesInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    # @option params [Array<String>] :instance_ids
    #   <p>The unique IDs of instances used in the deployment. The maximum number of instance IDs
    #               you can specify is 25.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #     instance_ids: ["InstanceId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_deployment_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances_summary: [
    #       {
    #         deployment_id: "DeploymentId",
    #         instance_id: "InstanceId",
    #         status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"],
    #         last_updated_at: Time.now,
    #         lifecycle_events: [
    #           {
    #             lifecycle_event_name: "LifecycleEventName",
    #             diagnostics: {
    #               error_code: "Success" # One of: ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"],
    #               script_name: "ScriptName",
    #               message: "LifecycleMessage",
    #               log_tail: "LogTail"
    #             },
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #           }
    #         ],
    #         instance_type: "Blue" # One of: ["Blue", "Green"]
    #       }
    #     ],
    #     error_message: "ErrorMessage"
    #   }
    # @deprecated
    #   This operation is deprecated, use BatchGetDeploymentTargets instead.
    # @return [Types::BatchGetDeploymentInstancesOutput]
    def batch_get_deployment_instances(params = {}, options = {})
      request = build_request(:batch_get_deployment_instances, params)
      request.send_request(options)
    end

    # <p> Returns an array of one or more targets associated with a deployment. This method
    #             works with all compute types and should be used instead of the deprecated
    #                 <code>BatchGetDeploymentInstances</code>. The maximum number of targets that can be
    #             returned is 25.</p>
    #          <p> The type of targets returned depends on the deployment's compute platform or
    #             deployment method: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>EC2/On-premises</b>: Information about Amazon EC2 instance targets. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Lambda</b>: Information about
    #                         Lambda functions targets. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Amazon ECS</b>: Information about Amazon ECS service targets. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>CloudFormation</b>: Information about
    #                     targets of blue/green deployments initiated by a CloudFormation stack
    #                     update.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::BatchGetDeploymentTargetsInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    # @option params [Array<String>] :target_ids
    #   <p> The unique IDs of the deployment targets. The compute platform of the deployment
    #               determines the type of the targets and their formats. The maximum number of deployment
    #               target IDs you can specify is 25.</p>
    #            <ul>
    #               <li>
    #                  <p> For deployments that use the EC2/On-premises compute platform, the target IDs
    #                       are Amazon EC2 or on-premises instances IDs, and their target type is
    #                           <code>instanceTarget</code>. </p>
    #               </li>
    #               <li>
    #                  <p> For deployments that use the Lambda compute platform, the
    #                       target IDs are the names of Lambda functions, and their target type
    #                       is <code>instanceTarget</code>. </p>
    #               </li>
    #               <li>
    #                  <p> For deployments that use the Amazon ECS compute platform, the target
    #                       IDs are pairs of Amazon ECS clusters and services specified using the
    #                       format <code><clustername>:<servicename></code>. Their target type
    #                       is <code>ecsTarget</code>. </p>
    #               </li>
    #               <li>
    #                  <p> For deployments that are deployed with CloudFormation, the target IDs are
    #                           CloudFormation stack IDs. Their target type is
    #                           <code>cloudFormationTarget</code>. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #     target_ids: ["TargetId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_deployment_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_targets: [
    #       {
    #         deployment_target_type: "InstanceTarget" # One of: ["InstanceTarget", "LambdaTarget", "ECSTarget", "CloudFormationTarget"],
    #         instance_target: {
    #           deployment_id: "DeploymentId",
    #           target_id: "TargetId",
    #           target_arn: "TargetArn",
    #           status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"],
    #           last_updated_at: Time.now,
    #           lifecycle_events: [
    #             {
    #               lifecycle_event_name: "LifecycleEventName",
    #               diagnostics: {
    #                 error_code: "Success" # One of: ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"],
    #                 script_name: "ScriptName",
    #                 message: "LifecycleMessage",
    #                 log_tail: "LogTail"
    #               },
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #             }
    #           ],
    #           instance_label: "Blue" # One of: ["Blue", "Green"]
    #         },
    #         lambda_target: {
    #           deployment_id: "DeploymentId",
    #           target_id: "TargetId",
    #           target_arn: "TargetArn",
    #           status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"],
    #           last_updated_at: Time.now,
    #           lifecycle_events: [
    #             {
    #               lifecycle_event_name: "LifecycleEventName",
    #               diagnostics: {
    #                 error_code: "Success" # One of: ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"],
    #                 script_name: "ScriptName",
    #                 message: "LifecycleMessage",
    #                 log_tail: "LogTail"
    #               },
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #             }
    #           ],
    #           lambda_function_info: {
    #             function_name: "LambdaFunctionName",
    #             function_alias: "LambdaFunctionAlias",
    #             current_version: "Version",
    #             target_version: "Version",
    #             target_version_weight: 1.0
    #           }
    #         },
    #         ecs_target: {
    #           deployment_id: "DeploymentId",
    #           target_id: "TargetId",
    #           target_arn: "TargetArn",
    #           last_updated_at: Time.now,
    #           lifecycle_events: [
    #             {
    #               lifecycle_event_name: "LifecycleEventName",
    #               diagnostics: {
    #                 error_code: "Success" # One of: ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"],
    #                 script_name: "ScriptName",
    #                 message: "LifecycleMessage",
    #                 log_tail: "LogTail"
    #               },
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #             }
    #           ],
    #           status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"],
    #           task_sets_info: [
    #             {
    #               identifer: "ECSTaskSetIdentifier",
    #               desired_count: 1,
    #               pending_count: 1,
    #               running_count: 1,
    #               status: "ECSTaskSetStatus",
    #               traffic_weight: 1.0,
    #               target_group: {
    #                 name: "TargetGroupName"
    #               },
    #               task_set_label: "Blue" # One of: ["Blue", "Green"]
    #             }
    #           ]
    #         },
    #         cloud_formation_target: {
    #           deployment_id: "DeploymentId",
    #           target_id: "TargetId",
    #           last_updated_at: Time.now,
    #           lifecycle_events: [
    #             {
    #               lifecycle_event_name: "LifecycleEventName",
    #               diagnostics: {
    #                 error_code: "Success" # One of: ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"],
    #                 script_name: "ScriptName",
    #                 message: "LifecycleMessage",
    #                 log_tail: "LogTail"
    #               },
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #             }
    #           ],
    #           status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"],
    #           resource_type: "CloudFormationResourceType",
    #           target_version_weight: 1.0
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetDeploymentTargetsOutput]
    def batch_get_deployment_targets(params = {}, options = {})
      request = build_request(:batch_get_deployment_targets, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more deployments. The maximum number of deployments that
    #             can be returned is 25.</p>
    # @param [Hash, Types::BatchGetDeploymentsInput] params
    # @option params [Array<String>] :deployment_ids
    #   <p> A list of deployment IDs, separated by spaces. The maximum number of deployment IDs
    #               you can specify is 25.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_ids: ["DeploymentId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployments_info: [
    #       {
    #         application_name: "ApplicationName",
    #         deployment_group_name: "DeploymentGroupName",
    #         deployment_config_name: "DeploymentConfigName",
    #         deployment_id: "DeploymentId",
    #         previous_revision: {
    #           revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #             version: "VersionId",
    #             e_tag: "ETag"
    #           },
    #           git_hub_location: {
    #             repository: "Repository",
    #             commit_id: "CommitId"
    #           },
    #           string: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256"
    #           },
    #           app_spec_content: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256"
    #           }
    #         },
    #         revision: {
    #           revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #             version: "VersionId",
    #             e_tag: "ETag"
    #           },
    #           git_hub_location: {
    #             repository: "Repository",
    #             commit_id: "CommitId"
    #           },
    #           string: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256"
    #           },
    #           app_spec_content: {
    #             content: "RawStringContent",
    #             sha256: "RawStringSha256"
    #           }
    #         },
    #         status: "Created" # One of: ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"],
    #         error_information: {
    #           code: "AGENT_ISSUE" # One of: ["AGENT_ISSUE", "ALARM_ACTIVE", "APPLICATION_MISSING", "AUTOSCALING_VALIDATION_ERROR", "AUTO_SCALING_CONFIGURATION", "AUTO_SCALING_IAM_ROLE_PERMISSIONS", "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND", "CUSTOMER_APPLICATION_UNHEALTHY", "DEPLOYMENT_GROUP_MISSING", "ECS_UPDATE_ERROR", "ELASTIC_LOAD_BALANCING_INVALID", "ELB_INVALID_INSTANCE", "HEALTH_CONSTRAINTS", "HEALTH_CONSTRAINTS_INVALID", "HOOK_EXECUTION_FAILURE", "IAM_ROLE_MISSING", "IAM_ROLE_PERMISSIONS", "INTERNAL_ERROR", "INVALID_ECS_SERVICE", "INVALID_LAMBDA_CONFIGURATION", "INVALID_LAMBDA_FUNCTION", "INVALID_REVISION", "MANUAL_STOP", "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION", "MISSING_ELB_INFORMATION", "MISSING_GITHUB_TOKEN", "NO_EC2_SUBSCRIPTION", "NO_INSTANCES", "OVER_MAX_INSTANCES", "RESOURCE_LIMIT_EXCEEDED", "REVISION_MISSING", "THROTTLED", "TIMEOUT", "CLOUDFORMATION_STACK_FAILURE"],
    #           message: "ErrorMessage"
    #         },
    #         create_time: Time.now,
    #         start_time: Time.now,
    #         complete_time: Time.now,
    #         deployment_overview: {
    #           pending: 1,
    #           in_progress: 1,
    #           succeeded: 1,
    #           failed: 1,
    #           skipped: 1,
    #           ready: 1
    #         },
    #         description: "Description",
    #         creator: "user" # One of: ["user", "autoscaling", "codeDeployRollback", "CodeDeploy", "CodeDeployAutoUpdate", "CloudFormation", "CloudFormationRollback", "autoscalingTermination"],
    #         ignore_application_stop_failures: false,
    #         auto_rollback_configuration: {
    #           enabled: false,
    #           events: ["DEPLOYMENT_FAILURE" # One of: ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]]
    #         },
    #         update_outdated_instances_only: false,
    #         rollback_info: {
    #           rollback_deployment_id: "DeploymentId",
    #           rollback_triggering_deployment_id: "DeploymentId",
    #           rollback_message: "Description"
    #         },
    #         deployment_style: {
    #           deployment_type: "IN_PLACE" # One of: ["IN_PLACE", "BLUE_GREEN"],
    #           deployment_option: "WITH_TRAFFIC_CONTROL" # One of: ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #         },
    #         target_instances: {
    #           tag_filters: [
    #             {
    #               key: "Key",
    #               value: "Value",
    #               type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #             }
    #           ],
    #           auto_scaling_groups: ["AutoScalingGroupName"],
    #           ec2_tag_set: {
    #             ec2_tag_set_list: [
    #               [
    #                 {
    #                   key: "Key",
    #                   value: "Value",
    #                   type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #                 }
    #               ]
    #             ]
    #           }
    #         },
    #         instance_termination_wait_time_started: false,
    #         blue_green_deployment_configuration: {
    #           terminate_blue_instances_on_deployment_success: {
    #             action: "TERMINATE" # One of: ["TERMINATE", "KEEP_ALIVE"],
    #             termination_wait_time_in_minutes: 1
    #           },
    #           deployment_ready_option: {
    #             action_on_timeout: "CONTINUE_DEPLOYMENT" # One of: ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"],
    #             wait_time_in_minutes: 1
    #           },
    #           green_fleet_provisioning_option: {
    #             action: "DISCOVER_EXISTING" # One of: ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #           }
    #         },
    #         load_balancer_info: {
    #           elb_info_list: [
    #             {
    #               name: "ELBName"
    #             }
    #           ],
    #           target_group_info_list: [
    #             {
    #               name: "TargetGroupName"
    #             }
    #           ],
    #           target_group_pair_info_list: [
    #             {
    #               target_groups: [
    #                 {
    #                   name: "TargetGroupName"
    #                 }
    #               ],
    #               prod_traffic_route: {
    #                 listener_arns: ["ListenerArn"]
    #               },
    #               test_traffic_route: {
    #                 listener_arns: ["ListenerArn"]
    #               }
    #             }
    #           ]
    #         },
    #         additional_deployment_status_info: "AdditionalDeploymentStatusInfo",
    #         file_exists_behavior: "DISALLOW" # One of: ["DISALLOW", "OVERWRITE", "RETAIN"],
    #         deployment_status_messages: ["ErrorMessage"],
    #         compute_platform: "Server" # One of: ["Server", "Lambda", "ECS"],
    #         external_id: "ExternalId",
    #         related_deployments: {
    #           auto_update_outdated_instances_root_deployment_id: "DeploymentId",
    #           auto_update_outdated_instances_deployment_ids: ["DeploymentId"]
    #         },
    #         override_alarm_configuration: {
    #           enabled: false,
    #           ignore_poll_alarm_failure: false,
    #           alarms: [
    #             {
    #               name: "AlarmName"
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetDeploymentsOutput]
    def batch_get_deployments(params = {}, options = {})
      request = build_request(:batch_get_deployments, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more on-premises instances. The maximum number of
    #             on-premises instances that can be returned is 25.</p>
    # @param [Hash, Types::BatchGetOnPremisesInstancesInput] params
    # @option params [Array<String>] :instance_names
    #   <p>The names of the on-premises instances about which to get information. The maximum
    #               number of instance names you can specify is 25.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_names: ["InstanceName"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_on_premises_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_infos: [
    #       {
    #         instance_name: "InstanceName",
    #         iam_session_arn: "IamSessionArn",
    #         iam_user_arn: "IamUserArn",
    #         instance_arn: "InstanceArn",
    #         register_time: Time.now,
    #         deregister_time: Time.now,
    #         tags: [
    #           {
    #             key: "Key",
    #             value: "Value"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetOnPremisesInstancesOutput]
    def batch_get_on_premises_instances(params = {}, options = {})
      request = build_request(:batch_get_on_premises_instances, params)
      request.send_request(options)
    end

    # <p>For a blue/green deployment, starts the process of rerouting traffic from instances in
    #             the original environment to instances in the replacement environment without waiting for
    #             a specified wait time to elapse. (Traffic rerouting, which is achieved by registering
    #             instances in the replacement environment with the load balancer, can start as soon as
    #             all instances have a status of Ready.) </p>
    # @param [Hash, Types::ContinueDeploymentInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a blue/green deployment for which you want to start rerouting
    #               traffic to the replacement environment. </p>
    # @option params [String] :deployment_wait_type
    #   <p> The status of the deployment's waiting period. <code>READY_WAIT</code> indicates that
    #               the deployment is ready to start shifting traffic. <code>TERMINATION_WAIT</code>
    #               indicates that the traffic is shifted, but the original target is not terminated.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId",
    #     deployment_wait_type: "READY_WAIT" # One of: ["READY_WAIT", "TERMINATION_WAIT"]
    #   }
    #   options = {}
    #   response = client.continue_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def continue_deployment(params = {}, options = {})
      request = build_request(:continue_deployment, params)
      request.send_request(options)
    end

    # <p>Creates an application.</p>
    # @param [Hash, Types::CreateApplicationInput] params
    # @option params [String] :application_name
    #   <p>The name of the application. This name must be unique with the applicable user or
    #                   Amazon Web Services account.</p>
    # @option params [String] :compute_platform
    #   <p> The destination platform type for the deployment (<code>Lambda</code>,
    #                   <code>Server</code>, or <code>ECS</code>).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> The metadata that you apply to CodeDeploy applications to help you organize and
    #               categorize them. Each tag consists of a key and an optional value, both of which you
    #               define. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     compute_platform: "Server" # One of: ["Server", "Lambda", "ECS"],
    #     tags: [
    #       {
    #         key: "Key",
    #         value: "Value"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId"
    #   }
    # @return [Types::CreateApplicationOutput]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Deploys an application revision through the specified deployment group.</p>
    # @param [Hash, Types::CreateDeploymentInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    # @option params [String] :deployment_group_name
    #   <p>The name of the deployment group.</p>
    # @option params [Types::RevisionLocation] :revision
    #   <p> The type and location of the revision to deploy. </p>
    # @option params [String] :deployment_config_name
    #   <p>The name of a deployment configuration associated with the user or Amazon Web Services account.</p>
    #            <p>If not specified, the value configured in the deployment group is used as the default.
    #               If the deployment group does not have a deployment configuration associated with it,
    #                   <code>CodeDeployDefault</code>.<code>OneAtATime</code> is used by default.</p>
    # @option params [String] :description
    #   <p>A comment about the deployment.</p>
    # @option params [Boolean] :ignore_application_stop_failures
    #   <p> If true, then if an <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, or
    #                   <code>AfterBlockTraffic</code> deployment lifecycle event to an instance fails, then
    #               the deployment continues to the next deployment lifecycle event. For example, if
    #                   <code>ApplicationStop</code> fails, the deployment continues with
    #                   <code>DownloadBundle</code>. If <code>BeforeBlockTraffic</code> fails, the
    #               deployment continues with <code>BlockTraffic</code>. If <code>AfterBlockTraffic</code>
    #               fails, the deployment continues with <code>ApplicationStop</code>. </p>
    #            <p> If false or not specified, then if a lifecycle event fails during a deployment to an
    #               instance, that deployment fails. If deployment to that instance is part of an overall
    #               deployment and the number of healthy hosts is not less than the minimum number of
    #               healthy hosts, then a deployment to the next instance is attempted. </p>
    #            <p> During a deployment, the CodeDeploy agent runs the scripts specified for
    #                   <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
    #                   <code>AfterBlockTraffic</code> in the AppSpec file from the previous successful
    #               deployment. (All other scripts are run from the AppSpec file in the current deployment.)
    #               If one of these scripts contains an error and does not run successfully, the deployment
    #               can fail. </p>
    #            <p> If the cause of the failure is a script from the last successful deployment that will
    #               never run successfully, create a new deployment and use
    #                   <code>ignoreApplicationStopFailures</code> to specify that the
    #                   <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
    #                   <code>AfterBlockTraffic</code> failures should be ignored. </p>
    # @option params [Types::TargetInstances] :target_instances
    #   <p> Information about the instances that belong to the replacement environment in a
    #               blue/green deployment. </p>
    # @option params [Types::AutoRollbackConfiguration] :auto_rollback_configuration
    #   <p>Configuration information for an automatic rollback that is added when a deployment is
    #               created.</p>
    # @option params [Boolean] :update_outdated_instances_only
    #   <p> Indicates whether to deploy to all instances or only to instances that are not
    #               running the latest application revision. </p>
    # @option params [String] :file_exists_behavior
    #   <p>Information about how CodeDeploy handles files that already exist in a
    #               deployment target location but weren't part of the previous successful
    #               deployment.</p>
    #            <p>The <code>fileExistsBehavior</code> parameter takes any of the following
    #               values:</p>
    #            <ul>
    #               <li>
    #                  <p>DISALLOW: The deployment fails. This is also the default behavior if no option
    #                       is specified.</p>
    #               </li>
    #               <li>
    #                  <p>OVERWRITE: The version of the file from the application revision currently
    #                       being deployed replaces the version already on the instance.</p>
    #               </li>
    #               <li>
    #                  <p>RETAIN: The version of the file already on the instance is kept and used as
    #                       part of the new deployment.</p>
    #               </li>
    #            </ul>
    # @option params [Types::AlarmConfiguration] :override_alarm_configuration
    #   <p>Allows you to specify information about alarms associated with a deployment. The alarm
    #               configuration that you specify here will override the alarm configuration at the
    #               deployment group level. Consider overriding the alarm configuration if you have set up
    #               alarms at the deployment group level that are causing deployment failures. In this case,
    #               you would call <code>CreateDeployment</code> to create a new deployment that uses a
    #               previous application revision that is known to work, and set its alarm configuration to
    #               turn off alarm polling. Turning off alarm polling ensures that the new deployment
    #               proceeds without being blocked by the alarm that was generated by the previous, failed,
    #               deployment.</p>
    #            <note>
    #               <p>If you specify an <code>overrideAlarmConfiguration</code>, you need the
    #                       <code>UpdateDeploymentGroup</code>
    #                   IAM permission when calling <code>CreateDeployment</code>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     deployment_group_name: "DeploymentGroupName",
    #     revision: {
    #       revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #         version: "VersionId",
    #         e_tag: "ETag"
    #       },
    #       git_hub_location: {
    #         repository: "Repository",
    #         commit_id: "CommitId"
    #       },
    #       string: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256"
    #       },
    #       app_spec_content: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256"
    #       }
    #     },
    #     deployment_config_name: "DeploymentConfigName",
    #     description: "Description",
    #     ignore_application_stop_failures: false,
    #     target_instances: {
    #       tag_filters: [
    #         {
    #           key: "Key",
    #           value: "Value",
    #           type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #         }
    #       ],
    #       auto_scaling_groups: ["AutoScalingGroupName"],
    #       ec2_tag_set: {
    #         ec2_tag_set_list: [
    #           [
    #             {
    #               key: "Key",
    #               value: "Value",
    #               type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #             }
    #           ]
    #         ]
    #       }
    #     },
    #     auto_rollback_configuration: {
    #       enabled: false,
    #       events: ["DEPLOYMENT_FAILURE" # One of: ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]]
    #     },
    #     update_outdated_instances_only: false,
    #     file_exists_behavior: "DISALLOW" # One of: ["DISALLOW", "OVERWRITE", "RETAIN"],
    #     override_alarm_configuration: {
    #       enabled: false,
    #       ignore_poll_alarm_failure: false,
    #       alarms: [
    #         {
    #           name: "AlarmName"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "DeploymentId"
    #   }
    # @return [Types::CreateDeploymentOutput]
    def create_deployment(params = {}, options = {})
      request = build_request(:create_deployment, params)
      request.send_request(options)
    end

    # <p> Creates a deployment configuration. </p>
    # @param [Hash, Types::CreateDeploymentConfigInput] params
    # @option params [String] :deployment_config_name
    #   <p>The name of the deployment configuration to create.</p>
    # @option params [Types::MinimumHealthyHosts] :minimum_healthy_hosts
    #   <p>The minimum number of healthy instances that should be available at any time during
    #               the deployment. There are two parameters expected in the input: type and value.</p>
    #            <p>The type parameter takes either of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>HOST_COUNT: The value parameter represents the minimum number of healthy
    #                       instances as an absolute value.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_PERCENT: The value parameter represents the minimum number of healthy
    #                       instances as a percentage of the total number of instances in the deployment. If
    #                       you specify FLEET_PERCENT, at the start of the deployment, CodeDeploy converts the percentage to the equivalent number of instances and rounds up
    #                       fractional instances.</p>
    #               </li>
    #            </ul>
    #            <p>The value parameter takes an integer.</p>
    #            <p>For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT
    #               and a value of 95.</p>
    # @option params [Types::TrafficRoutingConfig] :traffic_routing_config
    #   <p>The configuration that specifies how the deployment traffic is routed.</p>
    # @option params [String] :compute_platform
    #   <p>The destination platform type for the deployment (<code>Lambda</code>,
    #                   <code>Server</code>, or <code>ECS</code>).</p>
    # @option params [Types::ZonalConfig] :zonal_config
    #   <p>Configure the <code>ZonalConfig</code> object if you want CodeDeploy to
    #               deploy your application to one <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-availability-zones">Availability Zone</a> at a time, within an Amazon Web Services Region.</p>
    #            <p>For more information about the zonal configuration feature, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations-create.html#zonal-config">zonal configuration</a> in the <i>CodeDeploy User
    #                   Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_config_name: "DeploymentConfigName", # required
    #     minimum_healthy_hosts: {
    #       type: "HOST_COUNT" # One of: ["HOST_COUNT", "FLEET_PERCENT"],
    #       value: 1
    #     },
    #     traffic_routing_config: {
    #       type: "TimeBasedCanary" # One of: ["TimeBasedCanary", "TimeBasedLinear", "AllAtOnce"],
    #       time_based_canary: {
    #         canary_percentage: 1,
    #         canary_interval: 1
    #       },
    #       time_based_linear: {
    #         linear_percentage: 1,
    #         linear_interval: 1
    #       }
    #     },
    #     compute_platform: "Server" # One of: ["Server", "Lambda", "ECS"],
    #     zonal_config: {
    #       first_zone_monitor_duration_in_seconds: 1,
    #       monitor_duration_in_seconds: 1,
    #       minimum_healthy_hosts_per_zone: {
    #         type: "HOST_COUNT" # One of: ["HOST_COUNT", "FLEET_PERCENT"],
    #         value: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_deployment_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_config_id: "DeploymentConfigId"
    #   }
    # @return [Types::CreateDeploymentConfigOutput]
    def create_deployment_config(params = {}, options = {})
      request = build_request(:create_deployment_config, params)
      request.send_request(options)
    end

    # <p>Creates a deployment group to which application revisions are deployed.</p>
    # @param [Hash, Types::CreateDeploymentGroupInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    # @option params [String] :deployment_group_name
    #   <p>The name of a new deployment group for the specified application.</p>
    # @option params [String] :deployment_config_name
    #   <p>If specified, the deployment configuration name can be either one of the predefined
    #               configurations provided with CodeDeploy or a custom deployment configuration
    #               that you create by calling the create deployment configuration operation.</p>
    #            <p>
    #               <code>CodeDeployDefault.OneAtATime</code> is the default deployment configuration. It
    #               is used if a configuration isn't specified for the deployment or deployment
    #               group.</p>
    #            <p>For more information about the predefined deployment configurations in CodeDeploy, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html">Working with
    #                   Deployment Configurations in CodeDeploy</a> in the <i>CodeDeploy User Guide</i>.</p>
    # @option params [Array<Types::EC2TagFilter>] :ec2_tag_filters
    #   <p>The Amazon EC2 tags on which to filter. The deployment group includes Amazon EC2 instances with any of the specified tags. Cannot be used in the same call
    #               as ec2TagSet.</p>
    # @option params [Array<Types::TagFilter>] :on_premises_instance_tag_filters
    #   <p>The on-premises instance tags on which to filter. The deployment group includes
    #               on-premises instances with any of the specified tags. Cannot be used in the same call as
    #                   <code>OnPremisesTagSet</code>.</p>
    # @option params [Array<String>] :auto_scaling_groups
    #   <p>A list of associated Amazon EC2 Auto Scaling groups.</p>
    # @option params [String] :service_role_arn
    #   <p>A service role Amazon Resource Name (ARN) that allows CodeDeploy to act on
    #               the user's behalf when interacting with Amazon Web Services services.</p>
    # @option params [Array<Types::TriggerConfig>] :trigger_configurations
    #   <p>Information about triggers to create when the deployment group is created. For
    #               examples, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html">Create a Trigger for an
    #                       CodeDeploy Event</a> in the <i>CodeDeploy
    #                   User Guide</i>.</p>
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   <p>Information to add about Amazon CloudWatch alarms when the deployment group is
    #               created.</p>
    # @option params [Types::AutoRollbackConfiguration] :auto_rollback_configuration
    #   <p>Configuration information for an automatic rollback that is added when a deployment
    #               group is created.</p>
    # @option params [String] :outdated_instances_strategy
    #   <p>Indicates what happens when new Amazon EC2 instances are launched
    #               mid-deployment and do not receive the deployed application revision.</p>
    #            <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
    #               one or more 'auto-update outdated instances' deployments to apply the deployed
    #               application revision to the new Amazon EC2 instances.</p>
    #            <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
    #               deployment to update the new Amazon EC2 instances. This may result in instances
    #               having different revisions.</p>
    # @option params [Types::DeploymentStyle] :deployment_style
    #   <p>Information about the type of deployment, in-place or blue/green, that you want to run
    #               and whether to route deployment traffic behind a load balancer.</p>
    # @option params [Types::BlueGreenDeploymentConfiguration] :blue_green_deployment_configuration
    #   <p>Information about blue/green deployment options for a deployment group.</p>
    # @option params [Types::LoadBalancerInfo] :load_balancer_info
    #   <p>Information about the load balancer used in a deployment.</p>
    # @option params [Types::EC2TagSet] :ec2_tag_set
    #   <p>Information about groups of tags applied to Amazon EC2 instances. The
    #               deployment group includes only Amazon EC2 instances identified by all the tag
    #               groups. Cannot be used in the same call as <code>ec2TagFilters</code>.</p>
    # @option params [Array<Types::ECSService>] :ecs_services
    #   <p> The target Amazon ECS services in the deployment group. This applies only to
    #               deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name
    #               pair using the format <code><clustername>:<servicename></code>. </p>
    # @option params [Types::OnPremisesTagSet] :on_premises_tag_set
    #   <p>Information about groups of tags applied to on-premises instances. The deployment
    #               group includes only on-premises instances identified by all of the tag groups. Cannot be
    #               used in the same call as <code>onPremisesInstanceTagFilters</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> The metadata that you apply to CodeDeploy deployment groups to help you organize and
    #               categorize them. Each tag consists of a key and an optional value, both of which you
    #               define. </p>
    # @option params [Boolean] :termination_hook_enabled
    #   <p>This parameter only applies if you are using CodeDeploy with Amazon EC2 Auto Scaling. For more information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html">Integrating
    #                       CodeDeploy with Amazon EC2 Auto Scaling</a> in the <i>CodeDeploy User Guide</i>.</p>
    #            <p>Set <code>terminationHookEnabled</code> to <code>true</code> to have CodeDeploy install a termination hook into your Auto Scaling group when you create a
    #               deployment group. When this hook is installed, CodeDeploy will perform
    #               termination deployments.</p>
    #            <p>For information about termination deployments, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors-hook-enable">Enabling termination deployments during Auto Scaling scale-in events</a> in the
    #                       <i>CodeDeploy User Guide</i>.</p>
    #            <p>For more information about Auto Scaling scale-in events, see the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-lifecycle.html#as-lifecycle-scale-in">Scale in</a> topic in the <i>Amazon EC2 Auto Scaling User
    #               Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     deployment_group_name: "DeploymentGroupName", # required
    #     deployment_config_name: "DeploymentConfigName",
    #     ec2_tag_filters: [
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #       }
    #     ],
    #     on_premises_instance_tag_filters: [
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #       }
    #     ],
    #     auto_scaling_groups: ["AutoScalingGroupName"],
    #     service_role_arn: "Role", # required
    #     trigger_configurations: [
    #       {
    #         trigger_name: "TriggerName",
    #         trigger_target_arn: "TriggerTargetArn",
    #         trigger_events: ["DeploymentStart" # One of: ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"]]
    #       }
    #     ],
    #     alarm_configuration: {
    #       enabled: false,
    #       ignore_poll_alarm_failure: false,
    #       alarms: [
    #         {
    #           name: "AlarmName"
    #         }
    #       ]
    #     },
    #     auto_rollback_configuration: {
    #       enabled: false,
    #       events: ["DEPLOYMENT_FAILURE" # One of: ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]]
    #     },
    #     outdated_instances_strategy: "UPDATE" # One of: ["UPDATE", "IGNORE"],
    #     deployment_style: {
    #       deployment_type: "IN_PLACE" # One of: ["IN_PLACE", "BLUE_GREEN"],
    #       deployment_option: "WITH_TRAFFIC_CONTROL" # One of: ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #     },
    #     blue_green_deployment_configuration: {
    #       terminate_blue_instances_on_deployment_success: {
    #         action: "TERMINATE" # One of: ["TERMINATE", "KEEP_ALIVE"],
    #         termination_wait_time_in_minutes: 1
    #       },
    #       deployment_ready_option: {
    #         action_on_timeout: "CONTINUE_DEPLOYMENT" # One of: ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"],
    #         wait_time_in_minutes: 1
    #       },
    #       green_fleet_provisioning_option: {
    #         action: "DISCOVER_EXISTING" # One of: ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #       }
    #     },
    #     load_balancer_info: {
    #       elb_info_list: [
    #         {
    #           name: "ELBName"
    #         }
    #       ],
    #       target_group_info_list: [
    #         {
    #           name: "TargetGroupName"
    #         }
    #       ],
    #       target_group_pair_info_list: [
    #         {
    #           target_groups: [
    #             {
    #               name: "TargetGroupName"
    #             }
    #           ],
    #           prod_traffic_route: {
    #             listener_arns: ["ListenerArn"]
    #           },
    #           test_traffic_route: {
    #             listener_arns: ["ListenerArn"]
    #           }
    #         }
    #       ]
    #     },
    #     ec2_tag_set: {
    #       ec2_tag_set_list: [
    #         [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #           }
    #         ]
    #       ]
    #     },
    #     ecs_services: [
    #       {
    #         service_name: "ECSServiceName",
    #         cluster_name: "ECSClusterName"
    #       }
    #     ],
    #     on_premises_tag_set: {
    #       on_premises_tag_set_list: [
    #         [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #           }
    #         ]
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "Key",
    #         value: "Value"
    #       }
    #     ],
    #     termination_hook_enabled: false
    #   }
    #   options = {}
    #   response = client.create_deployment_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_group_id: "DeploymentGroupId"
    #   }
    # @return [Types::CreateDeploymentGroupOutput]
    def create_deployment_group(params = {}, options = {})
      request = build_request(:create_deployment_group, params)
      request.send_request(options)
    end

    # <p>Deletes an application.</p>
    # @param [Hash, Types::DeleteApplicationInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes a deployment configuration.</p>
    #          <note>
    #             <p>A deployment configuration cannot be deleted if it is currently in use. Predefined
    #                 configurations cannot be deleted.</p>
    #          </note>
    # @param [Hash, Types::DeleteDeploymentConfigInput] params
    # @option params [String] :deployment_config_name
    #   <p>The name of a deployment configuration associated with the user or Amazon Web Services account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_config_name: "DeploymentConfigName", # required
    #   }
    #   options = {}
    #   response = client.delete_deployment_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_deployment_config(params = {}, options = {})
      request = build_request(:delete_deployment_config, params)
      request.send_request(options)
    end

    # <p>Deletes a deployment group.</p>
    # @param [Hash, Types::DeleteDeploymentGroupInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    # @option params [String] :deployment_group_name
    #   <p>The name of a deployment group for the specified application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     deployment_group_name: "DeploymentGroupName", # required
    #   }
    #   options = {}
    #   response = client.delete_deployment_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hooks_not_cleaned_up: [
    #       {
    #         name: "AutoScalingGroupName",
    #         hook: "AutoScalingGroupHook",
    #         termination_hook: "AutoScalingGroupHook"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteDeploymentGroupOutput]
    def delete_deployment_group(params = {}, options = {})
      request = build_request(:delete_deployment_group, params)
      request.send_request(options)
    end

    # <p>Deletes a GitHub account connection.</p>
    # @param [Hash, Types::DeleteGitHubAccountTokenInput] params
    # @option params [String] :token_name
    #   <p>The name of the GitHub account connection to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     token_name: "GitHubAccountTokenName"
    #   }
    #   options = {}
    #   response = client.delete_git_hub_account_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_name: "GitHubAccountTokenName"
    #   }
    # @return [Types::DeleteGitHubAccountTokenOutput]
    def delete_git_hub_account_token(params = {}, options = {})
      request = build_request(:delete_git_hub_account_token, params)
      request.send_request(options)
    end

    # <p>Deletes resources linked to an external ID. This action only applies if you have
    #             configured blue/green deployments through CloudFormation. </p>
    #          <note>
    #             <p>It is not necessary to call this action directly. CloudFormation calls it
    #                 on your behalf when it needs to delete stack resources. This action is offered
    #                 publicly in case you need to delete resources to comply with General Data Protection
    #                 Regulation (GDPR) requirements.</p>
    #          </note>
    # @param [Hash, Types::DeleteResourcesByExternalIdInput] params
    # @option params [String] :external_id
    #   <p>The unique ID of an external resource (for example, a CloudFormation stack
    #               ID) that is linked to one or more CodeDeploy resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     external_id: "ExternalId"
    #   }
    #   options = {}
    #   response = client.delete_resources_by_external_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcesByExternalIdOutput]
    def delete_resources_by_external_id(params = {}, options = {})
      request = build_request(:delete_resources_by_external_id, params)
      request.send_request(options)
    end

    # <p>Deregisters an on-premises instance.</p>
    # @param [Hash, Types::DeregisterOnPremisesInstanceInput] params
    # @option params [String] :instance_name
    #   <p>The name of the on-premises instance to deregister.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "InstanceName", # required
    #   }
    #   options = {}
    #   response = client.deregister_on_premises_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_on_premises_instance(params = {}, options = {})
      request = build_request(:deregister_on_premises_instance, params)
      request.send_request(options)
    end

    # <p>Gets information about an application.</p>
    # @param [Hash, Types::GetApplicationInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: {
    #       application_id: "ApplicationId",
    #       application_name: "ApplicationName",
    #       create_time: Time.now,
    #       linked_to_git_hub: false,
    #       git_hub_account_name: "GitHubAccountTokenName",
    #       compute_platform: "Server" # One of: ["Server", "Lambda", "ECS"]
    #     }
    #   }
    # @return [Types::GetApplicationOutput]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Gets information about an application revision.</p>
    # @param [Hash, Types::GetApplicationRevisionInput] params
    # @option params [String] :application_name
    #   <p>The name of the application that corresponds to the revision.</p>
    # @option params [Types::RevisionLocation] :revision
    #   <p>Information about the application revision to get, including type and location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     revision: { # required
    #       revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #         version: "VersionId",
    #         e_tag: "ETag"
    #       },
    #       git_hub_location: {
    #         repository: "Repository",
    #         commit_id: "CommitId"
    #       },
    #       string: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256"
    #       },
    #       app_spec_content: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_application_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_name: "ApplicationName",
    #     revision: {
    #       revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #         version: "VersionId",
    #         e_tag: "ETag"
    #       },
    #       git_hub_location: {
    #         repository: "Repository",
    #         commit_id: "CommitId"
    #       },
    #       string: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256"
    #       },
    #       app_spec_content: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256"
    #       }
    #     },
    #     revision_info: {
    #       description: "Description",
    #       deployment_groups: ["DeploymentGroupName"],
    #       first_used_time: Time.now,
    #       last_used_time: Time.now,
    #       register_time: Time.now
    #     }
    #   }
    # @return [Types::GetApplicationRevisionOutput]
    def get_application_revision(params = {}, options = {})
      request = build_request(:get_application_revision, params)
      request.send_request(options)
    end

    # <p>Gets information about a deployment.</p>
    #          <note>
    #             <p> The <code>content</code> property of the <code>appSpecContent</code> object in
    #                 the returned revision is always null. Use <code>GetApplicationRevision</code> and
    #                 the <code>sha256</code> property of the returned <code>appSpecContent</code> object
    #                 to get the content of the deployment’s AppSpec file. </p>
    #          </note>
    # @param [Hash, Types::GetDeploymentInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment associated with the user or Amazon Web Services account.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_info: {
    #       application_name: "ApplicationName",
    #       deployment_group_name: "DeploymentGroupName",
    #       deployment_config_name: "DeploymentConfigName",
    #       deployment_id: "DeploymentId",
    #       previous_revision: {
    #         revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #           version: "VersionId",
    #           e_tag: "ETag"
    #         },
    #         git_hub_location: {
    #           repository: "Repository",
    #           commit_id: "CommitId"
    #         },
    #         string: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256"
    #         },
    #         app_spec_content: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256"
    #         }
    #       },
    #       revision: {
    #         revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #           version: "VersionId",
    #           e_tag: "ETag"
    #         },
    #         git_hub_location: {
    #           repository: "Repository",
    #           commit_id: "CommitId"
    #         },
    #         string: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256"
    #         },
    #         app_spec_content: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256"
    #         }
    #       },
    #       status: "Created" # One of: ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"],
    #       error_information: {
    #         code: "AGENT_ISSUE" # One of: ["AGENT_ISSUE", "ALARM_ACTIVE", "APPLICATION_MISSING", "AUTOSCALING_VALIDATION_ERROR", "AUTO_SCALING_CONFIGURATION", "AUTO_SCALING_IAM_ROLE_PERMISSIONS", "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND", "CUSTOMER_APPLICATION_UNHEALTHY", "DEPLOYMENT_GROUP_MISSING", "ECS_UPDATE_ERROR", "ELASTIC_LOAD_BALANCING_INVALID", "ELB_INVALID_INSTANCE", "HEALTH_CONSTRAINTS", "HEALTH_CONSTRAINTS_INVALID", "HOOK_EXECUTION_FAILURE", "IAM_ROLE_MISSING", "IAM_ROLE_PERMISSIONS", "INTERNAL_ERROR", "INVALID_ECS_SERVICE", "INVALID_LAMBDA_CONFIGURATION", "INVALID_LAMBDA_FUNCTION", "INVALID_REVISION", "MANUAL_STOP", "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION", "MISSING_ELB_INFORMATION", "MISSING_GITHUB_TOKEN", "NO_EC2_SUBSCRIPTION", "NO_INSTANCES", "OVER_MAX_INSTANCES", "RESOURCE_LIMIT_EXCEEDED", "REVISION_MISSING", "THROTTLED", "TIMEOUT", "CLOUDFORMATION_STACK_FAILURE"],
    #         message: "ErrorMessage"
    #       },
    #       create_time: Time.now,
    #       start_time: Time.now,
    #       complete_time: Time.now,
    #       deployment_overview: {
    #         pending: 1,
    #         in_progress: 1,
    #         succeeded: 1,
    #         failed: 1,
    #         skipped: 1,
    #         ready: 1
    #       },
    #       description: "Description",
    #       creator: "user" # One of: ["user", "autoscaling", "codeDeployRollback", "CodeDeploy", "CodeDeployAutoUpdate", "CloudFormation", "CloudFormationRollback", "autoscalingTermination"],
    #       ignore_application_stop_failures: false,
    #       auto_rollback_configuration: {
    #         enabled: false,
    #         events: ["DEPLOYMENT_FAILURE" # One of: ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]]
    #       },
    #       update_outdated_instances_only: false,
    #       rollback_info: {
    #         rollback_deployment_id: "DeploymentId",
    #         rollback_triggering_deployment_id: "DeploymentId",
    #         rollback_message: "Description"
    #       },
    #       deployment_style: {
    #         deployment_type: "IN_PLACE" # One of: ["IN_PLACE", "BLUE_GREEN"],
    #         deployment_option: "WITH_TRAFFIC_CONTROL" # One of: ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #       },
    #       target_instances: {
    #         tag_filters: [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #           }
    #         ],
    #         auto_scaling_groups: ["AutoScalingGroupName"],
    #         ec2_tag_set: {
    #           ec2_tag_set_list: [
    #             [
    #               {
    #                 key: "Key",
    #                 value: "Value",
    #                 type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #               }
    #             ]
    #           ]
    #         }
    #       },
    #       instance_termination_wait_time_started: false,
    #       blue_green_deployment_configuration: {
    #         terminate_blue_instances_on_deployment_success: {
    #           action: "TERMINATE" # One of: ["TERMINATE", "KEEP_ALIVE"],
    #           termination_wait_time_in_minutes: 1
    #         },
    #         deployment_ready_option: {
    #           action_on_timeout: "CONTINUE_DEPLOYMENT" # One of: ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"],
    #           wait_time_in_minutes: 1
    #         },
    #         green_fleet_provisioning_option: {
    #           action: "DISCOVER_EXISTING" # One of: ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #         }
    #       },
    #       load_balancer_info: {
    #         elb_info_list: [
    #           {
    #             name: "ELBName"
    #           }
    #         ],
    #         target_group_info_list: [
    #           {
    #             name: "TargetGroupName"
    #           }
    #         ],
    #         target_group_pair_info_list: [
    #           {
    #             target_groups: [
    #               {
    #                 name: "TargetGroupName"
    #               }
    #             ],
    #             prod_traffic_route: {
    #               listener_arns: ["ListenerArn"]
    #             },
    #             test_traffic_route: {
    #               listener_arns: ["ListenerArn"]
    #             }
    #           }
    #         ]
    #       },
    #       additional_deployment_status_info: "AdditionalDeploymentStatusInfo",
    #       file_exists_behavior: "DISALLOW" # One of: ["DISALLOW", "OVERWRITE", "RETAIN"],
    #       deployment_status_messages: ["ErrorMessage"],
    #       compute_platform: "Server" # One of: ["Server", "Lambda", "ECS"],
    #       external_id: "ExternalId",
    #       related_deployments: {
    #         auto_update_outdated_instances_root_deployment_id: "DeploymentId",
    #         auto_update_outdated_instances_deployment_ids: ["DeploymentId"]
    #       },
    #       override_alarm_configuration: {
    #         enabled: false,
    #         ignore_poll_alarm_failure: false,
    #         alarms: [
    #           {
    #             name: "AlarmName"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetDeploymentOutput]
    def get_deployment(params = {}, options = {})
      request = build_request(:get_deployment, params)
      request.send_request(options)
    end

    # <p>Gets information about a deployment configuration.</p>
    # @param [Hash, Types::GetDeploymentConfigInput] params
    # @option params [String] :deployment_config_name
    #   <p>The name of a deployment configuration associated with the user or Amazon Web Services account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_config_name: "DeploymentConfigName", # required
    #   }
    #   options = {}
    #   response = client.get_deployment_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_config_info: {
    #       deployment_config_id: "DeploymentConfigId",
    #       deployment_config_name: "DeploymentConfigName",
    #       minimum_healthy_hosts: {
    #         type: "HOST_COUNT" # One of: ["HOST_COUNT", "FLEET_PERCENT"],
    #         value: 1
    #       },
    #       create_time: Time.now,
    #       compute_platform: "Server" # One of: ["Server", "Lambda", "ECS"],
    #       traffic_routing_config: {
    #         type: "TimeBasedCanary" # One of: ["TimeBasedCanary", "TimeBasedLinear", "AllAtOnce"],
    #         time_based_canary: {
    #           canary_percentage: 1,
    #           canary_interval: 1
    #         },
    #         time_based_linear: {
    #           linear_percentage: 1,
    #           linear_interval: 1
    #         }
    #       },
    #       zonal_config: {
    #         first_zone_monitor_duration_in_seconds: 1,
    #         monitor_duration_in_seconds: 1,
    #         minimum_healthy_hosts_per_zone: {
    #           type: "HOST_COUNT" # One of: ["HOST_COUNT", "FLEET_PERCENT"],
    #           value: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetDeploymentConfigOutput]
    def get_deployment_config(params = {}, options = {})
      request = build_request(:get_deployment_config, params)
      request.send_request(options)
    end

    # <p>Gets information about a deployment group.</p>
    # @param [Hash, Types::GetDeploymentGroupInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    # @option params [String] :deployment_group_name
    #   <p>The name of a deployment group for the specified application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     deployment_group_name: "DeploymentGroupName", # required
    #   }
    #   options = {}
    #   response = client.get_deployment_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_group_info: {
    #       application_name: "ApplicationName",
    #       deployment_group_id: "DeploymentGroupId",
    #       deployment_group_name: "DeploymentGroupName",
    #       deployment_config_name: "DeploymentConfigName",
    #       ec2_tag_filters: [
    #         {
    #           key: "Key",
    #           value: "Value",
    #           type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #         }
    #       ],
    #       on_premises_instance_tag_filters: [
    #         {
    #           key: "Key",
    #           value: "Value",
    #           type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #         }
    #       ],
    #       auto_scaling_groups: [
    #         {
    #           name: "AutoScalingGroupName",
    #           hook: "AutoScalingGroupHook",
    #           termination_hook: "AutoScalingGroupHook"
    #         }
    #       ],
    #       service_role_arn: "Role",
    #       target_revision: {
    #         revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #           version: "VersionId",
    #           e_tag: "ETag"
    #         },
    #         git_hub_location: {
    #           repository: "Repository",
    #           commit_id: "CommitId"
    #         },
    #         string: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256"
    #         },
    #         app_spec_content: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256"
    #         }
    #       },
    #       trigger_configurations: [
    #         {
    #           trigger_name: "TriggerName",
    #           trigger_target_arn: "TriggerTargetArn",
    #           trigger_events: ["DeploymentStart" # One of: ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"]]
    #         }
    #       ],
    #       alarm_configuration: {
    #         enabled: false,
    #         ignore_poll_alarm_failure: false,
    #         alarms: [
    #           {
    #             name: "AlarmName"
    #           }
    #         ]
    #       },
    #       auto_rollback_configuration: {
    #         enabled: false,
    #         events: ["DEPLOYMENT_FAILURE" # One of: ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]]
    #       },
    #       deployment_style: {
    #         deployment_type: "IN_PLACE" # One of: ["IN_PLACE", "BLUE_GREEN"],
    #         deployment_option: "WITH_TRAFFIC_CONTROL" # One of: ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #       },
    #       outdated_instances_strategy: "UPDATE" # One of: ["UPDATE", "IGNORE"],
    #       blue_green_deployment_configuration: {
    #         terminate_blue_instances_on_deployment_success: {
    #           action: "TERMINATE" # One of: ["TERMINATE", "KEEP_ALIVE"],
    #           termination_wait_time_in_minutes: 1
    #         },
    #         deployment_ready_option: {
    #           action_on_timeout: "CONTINUE_DEPLOYMENT" # One of: ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"],
    #           wait_time_in_minutes: 1
    #         },
    #         green_fleet_provisioning_option: {
    #           action: "DISCOVER_EXISTING" # One of: ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #         }
    #       },
    #       load_balancer_info: {
    #         elb_info_list: [
    #           {
    #             name: "ELBName"
    #           }
    #         ],
    #         target_group_info_list: [
    #           {
    #             name: "TargetGroupName"
    #           }
    #         ],
    #         target_group_pair_info_list: [
    #           {
    #             target_groups: [
    #               {
    #                 name: "TargetGroupName"
    #               }
    #             ],
    #             prod_traffic_route: {
    #               listener_arns: ["ListenerArn"]
    #             },
    #             test_traffic_route: {
    #               listener_arns: ["ListenerArn"]
    #             }
    #           }
    #         ]
    #       },
    #       last_successful_deployment: {
    #         deployment_id: "DeploymentId",
    #         status: "Created" # One of: ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"],
    #         end_time: Time.now,
    #         create_time: Time.now
    #       },
    #       last_attempted_deployment: {
    #         deployment_id: "DeploymentId",
    #         status: "Created" # One of: ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"],
    #         end_time: Time.now,
    #         create_time: Time.now
    #       },
    #       ec2_tag_set: {
    #         ec2_tag_set_list: [
    #           [
    #             {
    #               key: "Key",
    #               value: "Value",
    #               type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #             }
    #           ]
    #         ]
    #       },
    #       on_premises_tag_set: {
    #         on_premises_tag_set_list: [
    #           [
    #             {
    #               key: "Key",
    #               value: "Value",
    #               type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #             }
    #           ]
    #         ]
    #       },
    #       compute_platform: "Server" # One of: ["Server", "Lambda", "ECS"],
    #       ecs_services: [
    #         {
    #           service_name: "ECSServiceName",
    #           cluster_name: "ECSClusterName"
    #         }
    #       ],
    #       termination_hook_enabled: false
    #     }
    #   }
    # @return [Types::GetDeploymentGroupOutput]
    def get_deployment_group(params = {}, options = {})
      request = build_request(:get_deployment_group, params)
      request.send_request(options)
    end

    # <p>Gets information about an instance as part of a deployment.</p>
    # @param [Hash, Types::GetDeploymentInstanceInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    # @option params [String] :instance_id
    #   <p> The unique ID of an instance in the deployment group. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_deployment_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_summary: {
    #       deployment_id: "DeploymentId",
    #       instance_id: "InstanceId",
    #       status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"],
    #       last_updated_at: Time.now,
    #       lifecycle_events: [
    #         {
    #           lifecycle_event_name: "LifecycleEventName",
    #           diagnostics: {
    #             error_code: "Success" # One of: ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"],
    #             script_name: "ScriptName",
    #             message: "LifecycleMessage",
    #             log_tail: "LogTail"
    #           },
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #         }
    #       ],
    #       instance_type: "Blue" # One of: ["Blue", "Green"]
    #     }
    #   }
    # @deprecated
    #   This operation is deprecated, use GetDeploymentTarget instead.
    # @return [Types::GetDeploymentInstanceOutput]
    def get_deployment_instance(params = {}, options = {})
      request = build_request(:get_deployment_instance, params)
      request.send_request(options)
    end

    # <p> Returns information about a deployment target. </p>
    # @param [Hash, Types::GetDeploymentTargetInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    # @option params [String] :target_id
    #   <p> The unique ID of a deployment target. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #     target_id: "TargetId", # required
    #   }
    #   options = {}
    #   response = client.get_deployment_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_target: {
    #       deployment_target_type: "InstanceTarget" # One of: ["InstanceTarget", "LambdaTarget", "ECSTarget", "CloudFormationTarget"],
    #       instance_target: {
    #         deployment_id: "DeploymentId",
    #         target_id: "TargetId",
    #         target_arn: "TargetArn",
    #         status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"],
    #         last_updated_at: Time.now,
    #         lifecycle_events: [
    #           {
    #             lifecycle_event_name: "LifecycleEventName",
    #             diagnostics: {
    #               error_code: "Success" # One of: ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"],
    #               script_name: "ScriptName",
    #               message: "LifecycleMessage",
    #               log_tail: "LogTail"
    #             },
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #           }
    #         ],
    #         instance_label: "Blue" # One of: ["Blue", "Green"]
    #       },
    #       lambda_target: {
    #         deployment_id: "DeploymentId",
    #         target_id: "TargetId",
    #         target_arn: "TargetArn",
    #         status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"],
    #         last_updated_at: Time.now,
    #         lifecycle_events: [
    #           {
    #             lifecycle_event_name: "LifecycleEventName",
    #             diagnostics: {
    #               error_code: "Success" # One of: ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"],
    #               script_name: "ScriptName",
    #               message: "LifecycleMessage",
    #               log_tail: "LogTail"
    #             },
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #           }
    #         ],
    #         lambda_function_info: {
    #           function_name: "LambdaFunctionName",
    #           function_alias: "LambdaFunctionAlias",
    #           current_version: "Version",
    #           target_version: "Version",
    #           target_version_weight: 1.0
    #         }
    #       },
    #       ecs_target: {
    #         deployment_id: "DeploymentId",
    #         target_id: "TargetId",
    #         target_arn: "TargetArn",
    #         last_updated_at: Time.now,
    #         lifecycle_events: [
    #           {
    #             lifecycle_event_name: "LifecycleEventName",
    #             diagnostics: {
    #               error_code: "Success" # One of: ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"],
    #               script_name: "ScriptName",
    #               message: "LifecycleMessage",
    #               log_tail: "LogTail"
    #             },
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #           }
    #         ],
    #         status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"],
    #         task_sets_info: [
    #           {
    #             identifer: "ECSTaskSetIdentifier",
    #             desired_count: 1,
    #             pending_count: 1,
    #             running_count: 1,
    #             status: "ECSTaskSetStatus",
    #             traffic_weight: 1.0,
    #             target_group: {
    #               name: "TargetGroupName"
    #             },
    #             task_set_label: "Blue" # One of: ["Blue", "Green"]
    #           }
    #         ]
    #       },
    #       cloud_formation_target: {
    #         deployment_id: "DeploymentId",
    #         target_id: "TargetId",
    #         last_updated_at: Time.now,
    #         lifecycle_events: [
    #           {
    #             lifecycle_event_name: "LifecycleEventName",
    #             diagnostics: {
    #               error_code: "Success" # One of: ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"],
    #               script_name: "ScriptName",
    #               message: "LifecycleMessage",
    #               log_tail: "LogTail"
    #             },
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #           }
    #         ],
    #         status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"],
    #         resource_type: "CloudFormationResourceType",
    #         target_version_weight: 1.0
    #       }
    #     }
    #   }
    # @return [Types::GetDeploymentTargetOutput]
    def get_deployment_target(params = {}, options = {})
      request = build_request(:get_deployment_target, params)
      request.send_request(options)
    end

    # <p> Gets information about an on-premises instance. </p>
    # @param [Hash, Types::GetOnPremisesInstanceInput] params
    # @option params [String] :instance_name
    #   <p> The name of the on-premises instance about which to get information. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "InstanceName", # required
    #   }
    #   options = {}
    #   response = client.get_on_premises_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_info: {
    #       instance_name: "InstanceName",
    #       iam_session_arn: "IamSessionArn",
    #       iam_user_arn: "IamUserArn",
    #       instance_arn: "InstanceArn",
    #       register_time: Time.now,
    #       deregister_time: Time.now,
    #       tags: [
    #         {
    #           key: "Key",
    #           value: "Value"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetOnPremisesInstanceOutput]
    def get_on_premises_instance(params = {}, options = {})
      request = build_request(:get_on_premises_instance, params)
      request.send_request(options)
    end

    # <p>Lists information about revisions for an application.</p>
    # @param [Hash, Types::ListApplicationRevisionsInput] params
    # @option params [String] :application_name
    #   <p> The name of an CodeDeploy application associated with the user or Amazon Web Services account. </p>
    # @option params [String] :sort_by
    #   <p>The column name to use to sort the list results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>registerTime</code>: Sort by the time the revisions were registered with
    #                           CodeDeploy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>firstUsedTime</code>: Sort by the time the revisions were first used in
    #                       a deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lastUsedTime</code>: Sort by the time the revisions were last used in a
    #                       deployment.</p>
    #               </li>
    #            </ul>
    #            <p> If not specified or set to null, the results are returned in an arbitrary order.
    #           </p>
    # @option params [String] :sort_order
    #   <p> The order in which to sort the list results: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ascending</code>: ascending order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>descending</code>: descending order.</p>
    #               </li>
    #            </ul>
    #            <p>If not specified, the results are sorted in ascending order.</p>
    #            <p>If set to null, the results are sorted in an arbitrary order.</p>
    # @option params [String] :s3_bucket
    #   <p> An Amazon S3 bucket name to limit the search for revisions. </p>
    #            <p> If set to null, all of the user's buckets are searched. </p>
    # @option params [String] :s3_key_prefix
    #   <p> A key prefix for the set of Amazon S3 objects to limit the search for
    #               revisions. </p>
    # @option params [String] :deployed
    #   <p> Whether to list revisions based on whether the revision is the target revision of a
    #               deployment group: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>include</code>: List revisions that are target revisions of a deployment
    #                       group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>exclude</code>: Do not list revisions that are target revisions of a
    #                       deployment group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ignore</code>: List all revisions.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous <code>ListApplicationRevisions</code> call.
    #               It can be used to return the next set of applications in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     sort_by: "registerTime" # One of: ["registerTime", "firstUsedTime", "lastUsedTime"],
    #     sort_order: "ascending" # One of: ["ascending", "descending"],
    #     s3_bucket: "S3Bucket",
    #     s3_key_prefix: "S3Key",
    #     deployed: "include" # One of: ["include", "exclude", "ignore"],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_application_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revisions: [
    #       {
    #         revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #           version: "VersionId",
    #           e_tag: "ETag"
    #         },
    #         git_hub_location: {
    #           repository: "Repository",
    #           commit_id: "CommitId"
    #         },
    #         string: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256"
    #         },
    #         app_spec_content: {
    #           content: "RawStringContent",
    #           sha256: "RawStringSha256"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationRevisionsOutput]
    def list_application_revisions(params = {}, options = {})
      request = build_request(:list_application_revisions, params)
      request.send_request(options)
    end

    # <p>Lists the applications registered with the user or Amazon Web Services account.</p>
    # @param [Hash, Types::ListApplicationsInput] params
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous list applications call. It can be used to
    #               return the next set of applications in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: ["ApplicationName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsOutput]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists the deployment configurations with the user or Amazon Web Services account.</p>
    # @param [Hash, Types::ListDeploymentConfigsInput] params
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous <code>ListDeploymentConfigs</code> call. It
    #               can be used to return the next set of deployment configurations in the list. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_deployment_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_configs_list: ["DeploymentConfigName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeploymentConfigsOutput]
    def list_deployment_configs(params = {}, options = {})
      request = build_request(:list_deployment_configs, params)
      request.send_request(options)
    end

    # <p>Lists the deployment groups for an application registered with the Amazon Web Services
    #             user or Amazon Web Services account.</p>
    # @param [Hash, Types::ListDeploymentGroupsInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous list deployment groups call. It can be used
    #               to return the next set of deployment groups in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_deployment_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_name: "ApplicationName",
    #     deployment_groups: ["DeploymentGroupName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeploymentGroupsOutput]
    def list_deployment_groups(params = {}, options = {})
      request = build_request(:list_deployment_groups, params)
      request.send_request(options)
    end

    # <note>
    #             <p> The newer <code>BatchGetDeploymentTargets</code> should be used instead because
    #                 it works with all compute types. <code>ListDeploymentInstances</code> throws an
    #                 exception if it is used with a compute platform other than EC2/On-premises or
    #                     Lambda. </p>
    #          </note>
    #          <p> Lists the instance for a deployment associated with the user or Amazon Web Services account. </p>
    # @param [Hash, Types::ListDeploymentInstancesInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous list deployment instances call. It can be
    #               used to return the next set of deployment instances in the list.</p>
    # @option params [Array<String>] :instance_status_filter
    #   <p>A subset of instances to list by status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Pending</code>: Include those instances with pending deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InProgress</code>: Include those instances where deployments are still
    #                       in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Succeeded</code>: Include those instances with successful
    #                       deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: Include those instances with failed deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Skipped</code>: Include those instances with skipped deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Unknown</code>: Include those instances with deployments in an unknown
    #                       state.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :instance_type_filter
    #   <p>The set of instances in a blue/green deployment, either those in the original
    #               environment ("BLUE") or those in the replacement environment ("GREEN"), for which you
    #               want to view instance information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #     next_token: "NextToken",
    #     instance_status_filter: ["Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]],
    #     instance_type_filter: ["Blue" # One of: ["Blue", "Green"]]
    #   }
    #   options = {}
    #   response = client.list_deployment_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances_list: ["InstanceId"],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   This operation is deprecated, use ListDeploymentTargets instead.
    # @return [Types::ListDeploymentInstancesOutput]
    def list_deployment_instances(params = {}, options = {})
      request = build_request(:list_deployment_instances, params)
      request.send_request(options)
    end

    # <p> Returns an array of target IDs that are associated a deployment. </p>
    # @param [Hash, Types::ListDeploymentTargetsInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    # @option params [String] :next_token
    #   <p> A token identifier returned from the previous <code>ListDeploymentTargets</code>
    #               call. It can be used to return the next set of deployment targets in the list. </p>
    # @option params [Hash<String, Array<String>>] :target_filters
    #   <p> A key used to filter the returned targets. The two valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TargetStatus</code> - A <code>TargetStatus</code> filter string can be
    #                           <code>Failed</code>, <code>InProgress</code>, <code>Pending</code>,
    #                           <code>Ready</code>, <code>Skipped</code>, <code>Succeeded</code>, or
    #                           <code>Unknown</code>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ServerInstanceLabel</code> - A <code>ServerInstanceLabel</code> filter
    #                       string can be <code>Blue</code> or <code>Green</code>. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #     next_token: "NextToken",
    #     target_filters: {
    #       "TargetFilterName" => ["FilterValue"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_deployment_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_ids: ["TargetId"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeploymentTargetsOutput]
    def list_deployment_targets(params = {}, options = {})
      request = build_request(:list_deployment_targets, params)
      request.send_request(options)
    end

    # <p>Lists the deployments in a deployment group for an application registered with the
    #             user or Amazon Web Services account.</p>
    # @param [Hash, Types::ListDeploymentsInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    #            <note>
    #               <p>If <code>applicationName</code> is specified, then
    #                       <code>deploymentGroupName</code> must be specified. If it is not specified, then
    #                       <code>deploymentGroupName</code> must not be specified. </p>
    #            </note>
    # @option params [String] :deployment_group_name
    #   <p>The name of a deployment group for the specified application.</p>
    #            <note>
    #               <p>If <code>deploymentGroupName</code> is specified, then
    #                       <code>applicationName</code> must be specified. If it is not specified, then
    #                       <code>applicationName</code> must not be specified. </p>
    #            </note>
    # @option params [String] :external_id
    #   <p>The unique ID of an external resource for returning deployments linked to the external
    #               resource.</p>
    # @option params [Array<String>] :include_only_statuses
    #   <p>A subset of deployments to list by status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Created</code>: Include created deployments in the resulting
    #                       list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Queued</code>: Include queued deployments in the resulting list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>In Progress</code>: Include in-progress deployments in the resulting
    #                       list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Succeeded</code>: Include successful deployments in the resulting
    #                       list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: Include failed deployments in the resulting list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Stopped</code>: Include stopped deployments in the resulting
    #                       list.</p>
    #               </li>
    #            </ul>
    # @option params [Types::TimeRange] :create_time_range
    #   <p>A time range (start and end) for returning a subset of the list of deployments.</p>
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous list deployments call. It can be used to
    #               return the next set of deployments in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName",
    #     deployment_group_name: "DeploymentGroupName",
    #     external_id: "ExternalId",
    #     include_only_statuses: ["Created" # One of: ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"]],
    #     create_time_range: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployments: ["DeploymentId"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeploymentsOutput]
    def list_deployments(params = {}, options = {})
      request = build_request(:list_deployments, params)
      request.send_request(options)
    end

    # <p>Lists the names of stored connections to GitHub accounts.</p>
    # @param [Hash, Types::ListGitHubAccountTokenNamesInput] params
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous <code>ListGitHubAccountTokenNames</code>
    #               call. It can be used to return the next set of names in the list. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_git_hub_account_token_names(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_name_list: ["GitHubAccountTokenName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGitHubAccountTokenNamesOutput]
    def list_git_hub_account_token_names(params = {}, options = {})
      request = build_request(:list_git_hub_account_token_names, params)
      request.send_request(options)
    end

    # <p>Gets a list of names for one or more on-premises instances.</p>
    #          <p>Unless otherwise specified, both registered and deregistered on-premises instance
    #             names are listed. To list only registered or deregistered on-premises instance names,
    #             use the registration status parameter.</p>
    # @param [Hash, Types::ListOnPremisesInstancesInput] params
    # @option params [String] :registration_status
    #   <p>The registration status of the on-premises instances:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Deregistered</code>: Include deregistered on-premises instances in the
    #                       resulting list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Registered</code>: Include registered on-premises instances in the
    #                       resulting list.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::TagFilter>] :tag_filters
    #   <p>The on-premises instance tags that are used to restrict the on-premises instance names
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous list on-premises instances call. It can be
    #               used to return the next set of on-premises instances in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_status: "Registered" # One of: ["Registered", "Deregistered"],
    #     tag_filters: [
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_on_premises_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_names: ["InstanceName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOnPremisesInstancesOutput]
    def list_on_premises_instances(params = {}, options = {})
      request = build_request(:list_on_premises_instances, params)
      request.send_request(options)
    end

    # <p> Returns a list of tags for the resource identified by a specified Amazon Resource
    #             Name (ARN). Tags are used to organize and categorize your CodeDeploy resources. </p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p> The ARN of a CodeDeploy resource. <code>ListTagsForResource</code> returns all the
    #               tags associated with the resource that is identified by the <code>ResourceArn</code>.
    #           </p>
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous <code>ListTagsForResource</code> call. It can
    #               be used to return the next set of applications in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "Key",
    #         value: "Value"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p> Sets the result of a Lambda validation function. The function validates
    #             lifecycle hooks during a deployment that uses the Lambda or Amazon ECS compute platform. For Lambda deployments, the available
    #             lifecycle hooks are <code>BeforeAllowTraffic</code> and <code>AfterAllowTraffic</code>.
    #             For Amazon ECS deployments, the available lifecycle hooks are
    #                 <code>BeforeInstall</code>, <code>AfterInstall</code>,
    #                 <code>AfterAllowTestTraffic</code>, <code>BeforeAllowTraffic</code>, and
    #                 <code>AfterAllowTraffic</code>. Lambda validation functions return
    #                 <code>Succeeded</code> or <code>Failed</code>. For more information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-lambda">AppSpec 'hooks' Section for an Lambda Deployment </a> and
    #                 <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-ecs">AppSpec 'hooks' Section for an Amazon ECS Deployment</a>.</p>
    # @param [Hash, Types::PutLifecycleEventHookExecutionStatusInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. Pass this ID to a Lambda function that
    #               validates a deployment lifecycle event. </p>
    # @option params [String] :lifecycle_event_hook_execution_id
    #   <p> The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is
    #               specified in the <code>hooks</code> section of the AppSpec file. </p>
    # @option params [String] :status
    #   <p>The result of a Lambda function that validates a deployment lifecycle
    #               event. The values listed in <b>Valid Values</b> are valid for
    #               lifecycle statuses in general; however, only <code>Succeeded</code> and
    #                   <code>Failed</code> can be passed successfully in your API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId",
    #     lifecycle_event_hook_execution_id: "LifecycleEventHookExecutionId",
    #     status: "Pending" # One of: ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #   }
    #   options = {}
    #   response = client.put_lifecycle_event_hook_execution_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_event_hook_execution_id: "LifecycleEventHookExecutionId"
    #   }
    # @return [Types::PutLifecycleEventHookExecutionStatusOutput]
    def put_lifecycle_event_hook_execution_status(params = {}, options = {})
      request = build_request(:put_lifecycle_event_hook_execution_status, params)
      request.send_request(options)
    end

    # <p>Registers with CodeDeploy a revision for the specified application.</p>
    # @param [Hash, Types::RegisterApplicationRevisionInput] params
    # @option params [String] :application_name
    #   <p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>
    # @option params [String] :description
    #   <p>A comment about the revision.</p>
    # @option params [Types::RevisionLocation] :revision
    #   <p>Information about the application revision to register, including type and
    #               location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     description: "Description",
    #     revision: { # required
    #       revision_type: "S3" # One of: ["S3", "GitHub", "String", "AppSpecContent"],
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         bundle_type: "tar" # One of: ["tar", "tgz", "zip", "YAML", "JSON"],
    #         version: "VersionId",
    #         e_tag: "ETag"
    #       },
    #       git_hub_location: {
    #         repository: "Repository",
    #         commit_id: "CommitId"
    #       },
    #       string: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256"
    #       },
    #       app_spec_content: {
    #         content: "RawStringContent",
    #         sha256: "RawStringSha256"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.register_application_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def register_application_revision(params = {}, options = {})
      request = build_request(:register_application_revision, params)
      request.send_request(options)
    end

    # <p>Registers an on-premises instance.</p>
    #          <note>
    #             <p>Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both.</p>
    #          </note>
    # @param [Hash, Types::RegisterOnPremisesInstanceInput] params
    # @option params [String] :instance_name
    #   <p>The name of the on-premises instance to register.</p>
    # @option params [String] :iam_session_arn
    #   <p>The ARN of the IAM session to associate with the on-premises
    #               instance.</p>
    # @option params [String] :iam_user_arn
    #   <p>The ARN of the user to associate with the on-premises instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "InstanceName", # required
    #     iam_session_arn: "IamSessionArn",
    #     iam_user_arn: "IamUserArn"
    #   }
    #   options = {}
    #   response = client.register_on_premises_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def register_on_premises_instance(params = {}, options = {})
      request = build_request(:register_on_premises_instance, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from one or more on-premises instances.</p>
    # @param [Hash, Types::RemoveTagsFromOnPremisesInstancesInput] params
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag key-value pairs to remove from the on-premises instances.</p>
    # @option params [Array<String>] :instance_names
    #   <p>The names of the on-premises instances from which to remove tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: [ # required
    #       {
    #         key: "Key",
    #         value: "Value"
    #       }
    #     ],
    #     instance_names: ["InstanceName"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags_from_on_premises_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_tags_from_on_premises_instances(params = {}, options = {})
      request = build_request(:remove_tags_from_on_premises_instances, params)
      request.send_request(options)
    end

    # <p>In a blue/green deployment, overrides any specified wait time and starts terminating
    #             instances immediately after the traffic routing is complete.</p>
    # @param [Hash, Types::SkipWaitTimeForInstanceTerminationInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a blue/green deployment for which you want to skip the instance
    #               termination wait time. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId"
    #   }
    #   options = {}
    #   response = client.skip_wait_time_for_instance_termination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   This operation is deprecated, use ContinueDeployment with DeploymentWaitType instead.
    # @return [Smithy::Schema::EmptyStructure]
    def skip_wait_time_for_instance_termination(params = {}, options = {})
      request = build_request(:skip_wait_time_for_instance_termination, params)
      request.send_request(options)
    end

    # <p>Attempts to stop an ongoing deployment.</p>
    # @param [Hash, Types::StopDeploymentInput] params
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    # @option params [Boolean] :auto_rollback_enabled
    #   <p> Indicates, when a deployment is stopped, whether instances that have been updated
    #               should be rolled back to the previous version of the application revision. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #     auto_rollback_enabled: false
    #   }
    #   options = {}
    #   response = client.stop_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Pending" # One of: ["Pending", "Succeeded"],
    #     status_message: "Message"
    #   }
    # @return [Types::StopDeploymentOutput]
    def stop_deployment(params = {}, options = {})
      request = build_request(:stop_deployment, params)
      request.send_request(options)
    end

    # <p> Associates the list of tags in the input <code>Tags</code> parameter with the
    #             resource identified by the <code>ResourceArn</code> input parameter. </p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p> The ARN of a resource, such as a CodeDeploy application or deployment group. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> A list of tags that <code>TagResource</code> associates with a resource. The resource
    #               is identified by the <code>ResourceArn</code> input parameter. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "Key",
    #         value: "Value"
    #       }
    #     ]
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

    # <p> Disassociates a resource from a list of tags. The resource is identified by the
    #                 <code>ResourceArn</code> input parameter. The tags are identified by the list of
    #             keys in the <code>TagKeys</code> input parameter. </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) that specifies from which resource to disassociate the
    #               tags with the keys in the <code>TagKeys</code> input parameter. </p>
    # @option params [Array<String>] :tag_keys
    #   <p> A list of keys of <code>Tag</code> objects. The <code>Tag</code> objects identified
    #               by the keys are disassociated from the resource specified by the
    #                   <code>ResourceArn</code> input parameter. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["Key"], # required
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

    # <p>Changes the name of an application.</p>
    # @param [Hash, Types::UpdateApplicationInput] params
    # @option params [String] :application_name
    #   <p>The current name of the application you want to change.</p>
    # @option params [String] :new_application_name
    #   <p>The new name to give the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName",
    #     new_application_name: "ApplicationName"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Changes information about a deployment group.</p>
    # @param [Hash, Types::UpdateDeploymentGroupInput] params
    # @option params [String] :application_name
    #   <p>The application name that corresponds to the deployment group to update.</p>
    # @option params [String] :current_deployment_group_name
    #   <p>The current name of the deployment group.</p>
    # @option params [String] :new_deployment_group_name
    #   <p>The new name of the deployment group, if you want to change it.</p>
    # @option params [String] :deployment_config_name
    #   <p>The replacement deployment configuration name to use, if you want to change it.</p>
    # @option params [Array<Types::EC2TagFilter>] :ec2_tag_filters
    #   <p>The replacement set of Amazon EC2 tags on which to filter, if you want to
    #               change them. To keep the existing tags, enter their names. To remove tags, do not enter
    #               any tag names.</p>
    # @option params [Array<Types::TagFilter>] :on_premises_instance_tag_filters
    #   <p>The replacement set of on-premises instance tags on which to filter, if you want to
    #               change them. To keep the existing tags, enter their names. To remove tags, do not enter
    #               any tag names.</p>
    # @option params [Array<String>] :auto_scaling_groups
    #   <p>The replacement list of Auto Scaling groups to be included in the deployment
    #               group, if you want to change them.</p>
    #            <ul>
    #               <li>
    #                  <p>To keep the Auto Scaling groups, enter their names or do not specify this
    #                       parameter. </p>
    #               </li>
    #               <li>
    #                  <p>To remove Auto Scaling groups, specify a non-null empty list of Auto Scaling group names to detach all CodeDeploy-managed Auto Scaling lifecycle hooks. For examples, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/troubleshooting-auto-scaling.html#troubleshooting-auto-scaling-heartbeat">Amazon EC2 instances in an Amazon EC2 Auto Scaling group fail to
    #                           launch and receive the error "Heartbeat Timeout"</a> in the
    #                               <i>CodeDeploy User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :service_role_arn
    #   <p>A replacement ARN for the service role, if you want to change it.</p>
    # @option params [Array<Types::TriggerConfig>] :trigger_configurations
    #   <p>Information about triggers to change when the deployment group is updated. For
    #               examples, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html">Edit a Trigger in a
    #                   CodeDeploy Deployment Group</a> in the <i>CodeDeploy User
    #                   Guide</i>.</p>
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   <p>Information to add or change about Amazon CloudWatch alarms when the deployment group
    #               is updated.</p>
    # @option params [Types::AutoRollbackConfiguration] :auto_rollback_configuration
    #   <p>Information for an automatic rollback configuration that is added or changed when a
    #               deployment group is updated.</p>
    # @option params [String] :outdated_instances_strategy
    #   <p>Indicates what happens when new Amazon EC2 instances are launched
    #               mid-deployment and do not receive the deployed application revision.</p>
    #            <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
    #               one or more 'auto-update outdated instances' deployments to apply the deployed
    #               application revision to the new Amazon EC2 instances.</p>
    #            <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
    #               deployment to update the new Amazon EC2 instances. This may result in instances
    #               having different revisions.</p>
    # @option params [Types::DeploymentStyle] :deployment_style
    #   <p>Information about the type of deployment, either in-place or blue/green, you want to
    #               run and whether to route deployment traffic behind a load balancer.</p>
    # @option params [Types::BlueGreenDeploymentConfiguration] :blue_green_deployment_configuration
    #   <p>Information about blue/green deployment options for a deployment group.</p>
    # @option params [Types::LoadBalancerInfo] :load_balancer_info
    #   <p>Information about the load balancer used in a deployment.</p>
    # @option params [Types::EC2TagSet] :ec2_tag_set
    #   <p>Information about groups of tags applied to on-premises instances. The deployment
    #               group includes only Amazon EC2 instances identified by all the tag
    #               groups.</p>
    # @option params [Array<Types::ECSService>] :ecs_services
    #   <p> The target Amazon ECS services in the deployment group. This applies only to
    #               deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name
    #               pair using the format <code><clustername>:<servicename></code>. </p>
    # @option params [Types::OnPremisesTagSet] :on_premises_tag_set
    #   <p>Information about an on-premises instance tag set. The deployment group includes only
    #               on-premises instances identified by all the tag groups.</p>
    # @option params [Boolean] :termination_hook_enabled
    #   <p>This parameter only applies if you are using CodeDeploy with Amazon EC2 Auto Scaling. For more information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html">Integrating
    #                   CodeDeploy with Amazon EC2 Auto Scaling</a> in the <i>CodeDeploy User Guide</i>.</p>
    #            <p>Set <code>terminationHookEnabled</code> to <code>true</code> to have CodeDeploy install a termination hook into your Auto Scaling group when you update a
    #               deployment group. When this hook is installed, CodeDeploy will perform
    #               termination deployments.</p>
    #            <p>For information about termination deployments, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors-hook-enable">Enabling termination deployments during Auto Scaling scale-in events</a> in the
    #               <i>CodeDeploy User Guide</i>.</p>
    #            <p>For more information about Auto Scaling scale-in events, see the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-lifecycle.html#as-lifecycle-scale-in">Scale in</a> topic in the <i>Amazon EC2 Auto Scaling User
    #                   Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_deployment_group_name: "DeploymentGroupName", # required
    #     new_deployment_group_name: "DeploymentGroupName",
    #     deployment_config_name: "DeploymentConfigName",
    #     ec2_tag_filters: [
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #       }
    #     ],
    #     on_premises_instance_tag_filters: [
    #       {
    #         key: "Key",
    #         value: "Value",
    #         type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #       }
    #     ],
    #     auto_scaling_groups: ["AutoScalingGroupName"],
    #     service_role_arn: "Role",
    #     trigger_configurations: [
    #       {
    #         trigger_name: "TriggerName",
    #         trigger_target_arn: "TriggerTargetArn",
    #         trigger_events: ["DeploymentStart" # One of: ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"]]
    #       }
    #     ],
    #     alarm_configuration: {
    #       enabled: false,
    #       ignore_poll_alarm_failure: false,
    #       alarms: [
    #         {
    #           name: "AlarmName"
    #         }
    #       ]
    #     },
    #     auto_rollback_configuration: {
    #       enabled: false,
    #       events: ["DEPLOYMENT_FAILURE" # One of: ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]]
    #     },
    #     outdated_instances_strategy: "UPDATE" # One of: ["UPDATE", "IGNORE"],
    #     deployment_style: {
    #       deployment_type: "IN_PLACE" # One of: ["IN_PLACE", "BLUE_GREEN"],
    #       deployment_option: "WITH_TRAFFIC_CONTROL" # One of: ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #     },
    #     blue_green_deployment_configuration: {
    #       terminate_blue_instances_on_deployment_success: {
    #         action: "TERMINATE" # One of: ["TERMINATE", "KEEP_ALIVE"],
    #         termination_wait_time_in_minutes: 1
    #       },
    #       deployment_ready_option: {
    #         action_on_timeout: "CONTINUE_DEPLOYMENT" # One of: ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"],
    #         wait_time_in_minutes: 1
    #       },
    #       green_fleet_provisioning_option: {
    #         action: "DISCOVER_EXISTING" # One of: ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #       }
    #     },
    #     load_balancer_info: {
    #       elb_info_list: [
    #         {
    #           name: "ELBName"
    #         }
    #       ],
    #       target_group_info_list: [
    #         {
    #           name: "TargetGroupName"
    #         }
    #       ],
    #       target_group_pair_info_list: [
    #         {
    #           target_groups: [
    #             {
    #               name: "TargetGroupName"
    #             }
    #           ],
    #           prod_traffic_route: {
    #             listener_arns: ["ListenerArn"]
    #           },
    #           test_traffic_route: {
    #             listener_arns: ["ListenerArn"]
    #           }
    #         }
    #       ]
    #     },
    #     ec2_tag_set: {
    #       ec2_tag_set_list: [
    #         [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #           }
    #         ]
    #       ]
    #     },
    #     ecs_services: [
    #       {
    #         service_name: "ECSServiceName",
    #         cluster_name: "ECSClusterName"
    #       }
    #     ],
    #     on_premises_tag_set: {
    #       on_premises_tag_set_list: [
    #         [
    #           {
    #             key: "Key",
    #             value: "Value",
    #             type: "KEY_ONLY" # One of: ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #           }
    #         ]
    #       ]
    #     },
    #     termination_hook_enabled: false
    #   }
    #   options = {}
    #   response = client.update_deployment_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hooks_not_cleaned_up: [
    #       {
    #         name: "AutoScalingGroupName",
    #         hook: "AutoScalingGroupHook",
    #         termination_hook: "AutoScalingGroupHook"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateDeploymentGroupOutput]
    def update_deployment_group(params = {}, options = {})
      request = build_request(:update_deployment_group, params)
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
      context[:gem_name] = 'aws-sdk-codedeploy'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        deployment_successful: Waiters::DeploymentSuccessful
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
