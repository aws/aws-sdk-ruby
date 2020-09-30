# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:sms)

module Aws::SMS
  # An API client for SMS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SMS::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :sms

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates an application. An application consists of one or more server
    # groups. Each server group contain one or more servers.
    #
    # @option params [String] :name
    #   The name of the new application.
    #
    # @option params [String] :description
    #   The description of the new application
    #
    # @option params [String] :role_name
    #   The name of the service role in the customer's account to be used by
    #   AWS SMS.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of application creation.
    #
    # @option params [Array<Types::ServerGroup>] :server_groups
    #   The server groups to include in the application.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be associated with the application.
    #
    # @return [Types::CreateAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppResponse#app_summary #app_summary} => Types::AppSummary
    #   * {Types::CreateAppResponse#server_groups #server_groups} => Array&lt;Types::ServerGroup&gt;
    #   * {Types::CreateAppResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app({
    #     name: "AppName",
    #     description: "AppDescription",
    #     role_name: "RoleName",
    #     client_token: "ClientToken",
    #     server_groups: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         name: "ServerGroupName",
    #         server_list: [
    #           {
    #             server_id: "ServerId",
    #             server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: "VmManagerId",
    #                 vm_id: "VmId",
    #               },
    #               vm_name: "VmName",
    #               vm_manager_name: "VmManagerName",
    #               vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #               vm_path: "VmPath",
    #             },
    #             replication_job_id: "ReplicationJobId",
    #             replication_job_terminated: false,
    #           },
    #         ],
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.app_summary.app_id #=> String
    #   resp.app_summary.imported_app_id #=> String
    #   resp.app_summary.name #=> String
    #   resp.app_summary.description #=> String
    #   resp.app_summary.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.app_summary.status_message #=> String
    #   resp.app_summary.replication_configuration_status #=> String, one of "NOT_CONFIGURED", "CONFIGURED"
    #   resp.app_summary.replication_status #=> String, one of "READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"
    #   resp.app_summary.replication_status_message #=> String
    #   resp.app_summary.latest_replication_time #=> Time
    #   resp.app_summary.launch_configuration_status #=> String, one of "NOT_CONFIGURED", "CONFIGURED"
    #   resp.app_summary.launch_status #=> String, one of "READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"
    #   resp.app_summary.launch_status_message #=> String
    #   resp.app_summary.launch_details.latest_launch_time #=> Time
    #   resp.app_summary.launch_details.stack_name #=> String
    #   resp.app_summary.launch_details.stack_id #=> String
    #   resp.app_summary.creation_time #=> Time
    #   resp.app_summary.last_modified #=> Time
    #   resp.app_summary.role_name #=> String
    #   resp.app_summary.total_server_groups #=> Integer
    #   resp.app_summary.total_servers #=> Integer
    #   resp.server_groups #=> Array
    #   resp.server_groups[0].server_group_id #=> String
    #   resp.server_groups[0].name #=> String
    #   resp.server_groups[0].server_list #=> Array
    #   resp.server_groups[0].server_list[0].server_id #=> String
    #   resp.server_groups[0].server_list[0].server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.server_groups[0].server_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_name #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_manager_name #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.server_groups[0].server_list[0].vm_server.vm_path #=> String
    #   resp.server_groups[0].server_list[0].replication_job_id #=> String
    #   resp.server_groups[0].server_list[0].replication_job_terminated #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/CreateApp AWS API Documentation
    #
    # @overload create_app(params = {})
    # @param [Hash] params ({})
    def create_app(params = {}, options = {})
      req = build_request(:create_app, params)
      req.send_request(options)
    end

    # Creates a replication job. The replication job schedules periodic
    # replication runs to replicate your server to AWS. Each replication run
    # creates an Amazon Machine Image (AMI).
    #
    # @option params [required, String] :server_id
    #   The ID of the server.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :seed_replication_time
    #   The seed replication time.
    #
    # @option params [Integer] :frequency
    #   The time between consecutive replication runs, in hours.
    #
    # @option params [Boolean] :run_once
    #   Indicates whether to run the replication job one time.
    #
    # @option params [String] :license_type
    #   The license type to be used for the AMI created by a successful
    #   replication run.
    #
    # @option params [String] :role_name
    #   The name of the IAM role to be used by the AWS SMS.
    #
    # @option params [String] :description
    #   The description of the replication job.
    #
    # @option params [Integer] :number_of_recent_amis_to_keep
    #   The maximum number of SMS-created AMIs to retain. The oldest is
    #   deleted after the maximum number is reached and a new AMI is created.
    #
    # @option params [Boolean] :encrypted
    #   Indicates whether the replication job produces encrypted AMIs.
    #
    # @option params [String] :kms_key_id
    #   The ID of the KMS key for replication jobs that produce encrypted
    #   AMIs. This value can be any of the following:
    #
    #   * KMS key ID
    #
    #   * KMS key alias
    #
    #   * ARN referring to the KMS key ID
    #
    #   * ARN referring to the KMS key alias
    #
    #   If encrypted is *true* but a KMS key ID is not specified, the
    #   customer's default KMS key for Amazon EBS is used.
    #
    # @return [Types::CreateReplicationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReplicationJobResponse#replication_job_id #replication_job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_job({
    #     server_id: "ServerId", # required
    #     seed_replication_time: Time.now, # required
    #     frequency: 1,
    #     run_once: false,
    #     license_type: "AWS", # accepts AWS, BYOL
    #     role_name: "RoleName",
    #     description: "Description",
    #     number_of_recent_amis_to_keep: 1,
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/CreateReplicationJob AWS API Documentation
    #
    # @overload create_replication_job(params = {})
    # @param [Hash] params ({})
    def create_replication_job(params = {}, options = {})
      req = build_request(:create_replication_job, params)
      req.send_request(options)
    end

    # Deletes the specified application. Optionally deletes the launched
    # stack associated with the application and all AWS SMS replication jobs
    # for servers in the application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @option params [Boolean] :force_stop_app_replication
    #   Indicates whether to stop all replication jobs corresponding to the
    #   servers in the application while deleting the application.
    #
    # @option params [Boolean] :force_terminate_app
    #   Indicates whether to terminate the stack corresponding to the
    #   application while deleting the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app({
    #     app_id: "AppId",
    #     force_stop_app_replication: false,
    #     force_terminate_app: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteApp AWS API Documentation
    #
    # @overload delete_app(params = {})
    # @param [Hash] params ({})
    def delete_app(params = {}, options = {})
      req = build_request(:delete_app, params)
      req.send_request(options)
    end

    # Deletes the launch configuration for the specified application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_launch_configuration({
    #     app_id: "AppId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteAppLaunchConfiguration AWS API Documentation
    #
    # @overload delete_app_launch_configuration(params = {})
    # @param [Hash] params ({})
    def delete_app_launch_configuration(params = {}, options = {})
      req = build_request(:delete_app_launch_configuration, params)
      req.send_request(options)
    end

    # Deletes the replication configuration for the specified application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_replication_configuration({
    #     app_id: "AppId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteAppReplicationConfiguration AWS API Documentation
    #
    # @overload delete_app_replication_configuration(params = {})
    # @param [Hash] params ({})
    def delete_app_replication_configuration(params = {}, options = {})
      req = build_request(:delete_app_replication_configuration, params)
      req.send_request(options)
    end

    # Deletes the validation configuration for the specified application.
    #
    # @option params [required, String] :app_id
    #   The ID of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_validation_configuration({
    #     app_id: "AppIdWithValidation", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteAppValidationConfiguration AWS API Documentation
    #
    # @overload delete_app_validation_configuration(params = {})
    # @param [Hash] params ({})
    def delete_app_validation_configuration(params = {}, options = {})
      req = build_request(:delete_app_validation_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified replication job.
    #
    # After you delete a replication job, there are no further replication
    # runs. AWS deletes the contents of the Amazon S3 bucket used to store
    # AWS SMS artifacts. The AMIs created by the replication runs are not
    # deleted.
    #
    # @option params [required, String] :replication_job_id
    #   The ID of the replication job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_job({
    #     replication_job_id: "ReplicationJobId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteReplicationJob AWS API Documentation
    #
    # @overload delete_replication_job(params = {})
    # @param [Hash] params ({})
    def delete_replication_job(params = {}, options = {})
      req = build_request(:delete_replication_job, params)
      req.send_request(options)
    end

    # Deletes all servers from your server catalog.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteServerCatalog AWS API Documentation
    #
    # @overload delete_server_catalog(params = {})
    # @param [Hash] params ({})
    def delete_server_catalog(params = {}, options = {})
      req = build_request(:delete_server_catalog, params)
      req.send_request(options)
    end

    # Disassociates the specified connector from AWS SMS.
    #
    # After you disassociate a connector, it is no longer available to
    # support replication jobs.
    #
    # @option params [required, String] :connector_id
    #   The ID of the connector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connector({
    #     connector_id: "ConnectorId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DisassociateConnector AWS API Documentation
    #
    # @overload disassociate_connector(params = {})
    # @param [Hash] params ({})
    def disassociate_connector(params = {}, options = {})
      req = build_request(:disassociate_connector, params)
      req.send_request(options)
    end

    # Generates a target change set for a currently launched stack and
    # writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    #
    # @option params [String] :app_id
    #   The ID of the application associated with the change set.
    #
    # @option params [String] :changeset_format
    #   The format for the change set.
    #
    # @return [Types::GenerateChangeSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateChangeSetResponse#s3_location #s3_location} => Types::S3Location
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_change_set({
    #     app_id: "AppId",
    #     changeset_format: "JSON", # accepts JSON, YAML
    #   })
    #
    # @example Response structure
    #
    #   resp.s3_location.bucket #=> String
    #   resp.s3_location.key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GenerateChangeSet AWS API Documentation
    #
    # @overload generate_change_set(params = {})
    # @param [Hash] params ({})
    def generate_change_set(params = {}, options = {})
      req = build_request(:generate_change_set, params)
      req.send_request(options)
    end

    # Generates an AWS CloudFormation template based on the current launch
    # configuration and writes it to an Amazon S3 object in the customer’s
    # Amazon S3 bucket.
    #
    # @option params [String] :app_id
    #   The ID of the application associated with the AWS CloudFormation
    #   template.
    #
    # @option params [String] :template_format
    #   The format for generating the AWS CloudFormation template.
    #
    # @return [Types::GenerateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateTemplateResponse#s3_location #s3_location} => Types::S3Location
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_template({
    #     app_id: "AppId",
    #     template_format: "JSON", # accepts JSON, YAML
    #   })
    #
    # @example Response structure
    #
    #   resp.s3_location.bucket #=> String
    #   resp.s3_location.key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GenerateTemplate AWS API Documentation
    #
    # @overload generate_template(params = {})
    # @param [Hash] params ({})
    def generate_template(params = {}, options = {})
      req = build_request(:generate_template, params)
      req.send_request(options)
    end

    # Retrieve information about the specified application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @return [Types::GetAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppResponse#app_summary #app_summary} => Types::AppSummary
    #   * {Types::GetAppResponse#server_groups #server_groups} => Array&lt;Types::ServerGroup&gt;
    #   * {Types::GetAppResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app({
    #     app_id: "AppId",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_summary.app_id #=> String
    #   resp.app_summary.imported_app_id #=> String
    #   resp.app_summary.name #=> String
    #   resp.app_summary.description #=> String
    #   resp.app_summary.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.app_summary.status_message #=> String
    #   resp.app_summary.replication_configuration_status #=> String, one of "NOT_CONFIGURED", "CONFIGURED"
    #   resp.app_summary.replication_status #=> String, one of "READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"
    #   resp.app_summary.replication_status_message #=> String
    #   resp.app_summary.latest_replication_time #=> Time
    #   resp.app_summary.launch_configuration_status #=> String, one of "NOT_CONFIGURED", "CONFIGURED"
    #   resp.app_summary.launch_status #=> String, one of "READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"
    #   resp.app_summary.launch_status_message #=> String
    #   resp.app_summary.launch_details.latest_launch_time #=> Time
    #   resp.app_summary.launch_details.stack_name #=> String
    #   resp.app_summary.launch_details.stack_id #=> String
    #   resp.app_summary.creation_time #=> Time
    #   resp.app_summary.last_modified #=> Time
    #   resp.app_summary.role_name #=> String
    #   resp.app_summary.total_server_groups #=> Integer
    #   resp.app_summary.total_servers #=> Integer
    #   resp.server_groups #=> Array
    #   resp.server_groups[0].server_group_id #=> String
    #   resp.server_groups[0].name #=> String
    #   resp.server_groups[0].server_list #=> Array
    #   resp.server_groups[0].server_list[0].server_id #=> String
    #   resp.server_groups[0].server_list[0].server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.server_groups[0].server_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_name #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_manager_name #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.server_groups[0].server_list[0].vm_server.vm_path #=> String
    #   resp.server_groups[0].server_list[0].replication_job_id #=> String
    #   resp.server_groups[0].server_list[0].replication_job_terminated #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetApp AWS API Documentation
    #
    # @overload get_app(params = {})
    # @param [Hash] params ({})
    def get_app(params = {}, options = {})
      req = build_request(:get_app, params)
      req.send_request(options)
    end

    # Retrieves the application launch configuration associated with the
    # specified application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @return [Types::GetAppLaunchConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppLaunchConfigurationResponse#app_id #app_id} => String
    #   * {Types::GetAppLaunchConfigurationResponse#role_name #role_name} => String
    #   * {Types::GetAppLaunchConfigurationResponse#auto_launch #auto_launch} => Boolean
    #   * {Types::GetAppLaunchConfigurationResponse#server_group_launch_configurations #server_group_launch_configurations} => Array&lt;Types::ServerGroupLaunchConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_launch_configuration({
    #     app_id: "AppId",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.role_name #=> String
    #   resp.auto_launch #=> Boolean
    #   resp.server_group_launch_configurations #=> Array
    #   resp.server_group_launch_configurations[0].server_group_id #=> String
    #   resp.server_group_launch_configurations[0].launch_order #=> Integer
    #   resp.server_group_launch_configurations[0].server_launch_configurations #=> Array
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].server.server_id #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].server.server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_server_address.vm_id #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_name #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_manager_name #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_path #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].server.replication_job_id #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].server.replication_job_terminated #=> Boolean
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].logical_id #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].vpc #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].subnet #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].security_group #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].ec2_key_name #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].user_data.s3_location.bucket #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].user_data.s3_location.key #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].instance_type #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].associate_public_ip_address #=> Boolean
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].iam_instance_profile_name #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].configure_script.bucket #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].configure_script.key #=> String
    #   resp.server_group_launch_configurations[0].server_launch_configurations[0].configure_script_type #=> String, one of "SHELL_SCRIPT", "POWERSHELL_SCRIPT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetAppLaunchConfiguration AWS API Documentation
    #
    # @overload get_app_launch_configuration(params = {})
    # @param [Hash] params ({})
    def get_app_launch_configuration(params = {}, options = {})
      req = build_request(:get_app_launch_configuration, params)
      req.send_request(options)
    end

    # Retrieves the application replication configuration associated with
    # the specified application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @return [Types::GetAppReplicationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppReplicationConfigurationResponse#server_group_replication_configurations #server_group_replication_configurations} => Array&lt;Types::ServerGroupReplicationConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_replication_configuration({
    #     app_id: "AppId",
    #   })
    #
    # @example Response structure
    #
    #   resp.server_group_replication_configurations #=> Array
    #   resp.server_group_replication_configurations[0].server_group_id #=> String
    #   resp.server_group_replication_configurations[0].server_replication_configurations #=> Array
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server.server_id #=> String
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server.server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_server_address.vm_id #=> String
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_name #=> String
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_manager_name #=> String
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_path #=> String
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server.replication_job_id #=> String
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server.replication_job_terminated #=> Boolean
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.seed_time #=> Time
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.frequency #=> Integer
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.run_once #=> Boolean
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.license_type #=> String, one of "AWS", "BYOL"
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.number_of_recent_amis_to_keep #=> Integer
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.encrypted #=> Boolean
    #   resp.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetAppReplicationConfiguration AWS API Documentation
    #
    # @overload get_app_replication_configuration(params = {})
    # @param [Hash] params ({})
    def get_app_replication_configuration(params = {}, options = {})
      req = build_request(:get_app_replication_configuration, params)
      req.send_request(options)
    end

    # Retrieves information about a configuration for validating an
    # application.
    #
    # @option params [required, String] :app_id
    #   The ID of the application.
    #
    # @return [Types::GetAppValidationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppValidationConfigurationResponse#app_validation_configurations #app_validation_configurations} => Array&lt;Types::AppValidationConfiguration&gt;
    #   * {Types::GetAppValidationConfigurationResponse#server_group_validation_configurations #server_group_validation_configurations} => Array&lt;Types::ServerGroupValidationConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_validation_configuration({
    #     app_id: "AppIdWithValidation", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_validation_configurations #=> Array
    #   resp.app_validation_configurations[0].validation_id #=> String
    #   resp.app_validation_configurations[0].name #=> String
    #   resp.app_validation_configurations[0].app_validation_strategy #=> String, one of "SSM"
    #   resp.app_validation_configurations[0].ssm_validation_parameters.source.s3_location.bucket #=> String
    #   resp.app_validation_configurations[0].ssm_validation_parameters.source.s3_location.key #=> String
    #   resp.app_validation_configurations[0].ssm_validation_parameters.instance_id #=> String
    #   resp.app_validation_configurations[0].ssm_validation_parameters.script_type #=> String, one of "SHELL_SCRIPT", "POWERSHELL_SCRIPT"
    #   resp.app_validation_configurations[0].ssm_validation_parameters.command #=> String
    #   resp.app_validation_configurations[0].ssm_validation_parameters.execution_timeout_seconds #=> Integer
    #   resp.app_validation_configurations[0].ssm_validation_parameters.output_s3_bucket_name #=> String
    #   resp.server_group_validation_configurations #=> Array
    #   resp.server_group_validation_configurations[0].server_group_id #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations #=> Array
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server.server_id #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server.server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_server_address.vm_id #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_name #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_manager_name #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_path #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server.replication_job_id #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server.replication_job_terminated #=> Boolean
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].validation_id #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].name #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].server_validation_strategy #=> String, one of "USERDATA"
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].user_data_validation_parameters.source.s3_location.bucket #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].user_data_validation_parameters.source.s3_location.key #=> String
    #   resp.server_group_validation_configurations[0].server_validation_configurations[0].user_data_validation_parameters.script_type #=> String, one of "SHELL_SCRIPT", "POWERSHELL_SCRIPT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetAppValidationConfiguration AWS API Documentation
    #
    # @overload get_app_validation_configuration(params = {})
    # @param [Hash] params ({})
    def get_app_validation_configuration(params = {}, options = {})
      req = build_request(:get_app_validation_configuration, params)
      req.send_request(options)
    end

    # Retrieves output from validating an application.
    #
    # @option params [required, String] :app_id
    #   The ID of the application.
    #
    # @return [Types::GetAppValidationOutputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppValidationOutputResponse#validation_output_list #validation_output_list} => Array&lt;Types::ValidationOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_validation_output({
    #     app_id: "AppIdWithValidation", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.validation_output_list #=> Array
    #   resp.validation_output_list[0].validation_id #=> String
    #   resp.validation_output_list[0].name #=> String
    #   resp.validation_output_list[0].status #=> String, one of "READY_FOR_VALIDATION", "PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.validation_output_list[0].status_message #=> String
    #   resp.validation_output_list[0].latest_validation_time #=> Time
    #   resp.validation_output_list[0].app_validation_output.ssm_output.s3_location.bucket #=> String
    #   resp.validation_output_list[0].app_validation_output.ssm_output.s3_location.key #=> String
    #   resp.validation_output_list[0].server_validation_output.server.server_id #=> String
    #   resp.validation_output_list[0].server_validation_output.server.server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.validation_output_list[0].server_validation_output.server.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.validation_output_list[0].server_validation_output.server.vm_server.vm_server_address.vm_id #=> String
    #   resp.validation_output_list[0].server_validation_output.server.vm_server.vm_name #=> String
    #   resp.validation_output_list[0].server_validation_output.server.vm_server.vm_manager_name #=> String
    #   resp.validation_output_list[0].server_validation_output.server.vm_server.vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.validation_output_list[0].server_validation_output.server.vm_server.vm_path #=> String
    #   resp.validation_output_list[0].server_validation_output.server.replication_job_id #=> String
    #   resp.validation_output_list[0].server_validation_output.server.replication_job_terminated #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetAppValidationOutput AWS API Documentation
    #
    # @overload get_app_validation_output(params = {})
    # @param [Hash] params ({})
    def get_app_validation_output(params = {}, options = {})
      req = build_request(:get_app_validation_output, params)
      req.send_request(options)
    end

    # Describes the connectors registered with the AWS SMS.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 50. To retrieve the remaining results, make another call with
    #   the returned `NextToken` value.
    #
    # @return [Types::GetConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectorsResponse#connector_list #connector_list} => Array&lt;Types::Connector&gt;
    #   * {Types::GetConnectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connectors({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_list #=> Array
    #   resp.connector_list[0].connector_id #=> String
    #   resp.connector_list[0].version #=> String
    #   resp.connector_list[0].status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.connector_list[0].capability_list #=> Array
    #   resp.connector_list[0].capability_list[0] #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER", "SNAPSHOT_BATCHING", "SMS_OPTIMIZED"
    #   resp.connector_list[0].vm_manager_name #=> String
    #   resp.connector_list[0].vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.connector_list[0].vm_manager_id #=> String
    #   resp.connector_list[0].ip_address #=> String
    #   resp.connector_list[0].mac_address #=> String
    #   resp.connector_list[0].associated_on #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetConnectors AWS API Documentation
    #
    # @overload get_connectors(params = {})
    # @param [Hash] params ({})
    def get_connectors(params = {}, options = {})
      req = build_request(:get_connectors, params)
      req.send_request(options)
    end

    # Describes the specified replication job or all of your replication
    # jobs.
    #
    # @option params [String] :replication_job_id
    #   The ID of the replication job.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 50. To retrieve the remaining results, make another call with
    #   the returned `NextToken` value.
    #
    # @return [Types::GetReplicationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReplicationJobsResponse#replication_job_list #replication_job_list} => Array&lt;Types::ReplicationJob&gt;
    #   * {Types::GetReplicationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_jobs({
    #     replication_job_id: "ReplicationJobId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_job_list #=> Array
    #   resp.replication_job_list[0].replication_job_id #=> String
    #   resp.replication_job_list[0].server_id #=> String
    #   resp.replication_job_list[0].server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.replication_job_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.replication_job_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.replication_job_list[0].vm_server.vm_name #=> String
    #   resp.replication_job_list[0].vm_server.vm_manager_name #=> String
    #   resp.replication_job_list[0].vm_server.vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.replication_job_list[0].vm_server.vm_path #=> String
    #   resp.replication_job_list[0].seed_replication_time #=> Time
    #   resp.replication_job_list[0].frequency #=> Integer
    #   resp.replication_job_list[0].run_once #=> Boolean
    #   resp.replication_job_list[0].next_replication_run_start_time #=> Time
    #   resp.replication_job_list[0].license_type #=> String, one of "AWS", "BYOL"
    #   resp.replication_job_list[0].role_name #=> String
    #   resp.replication_job_list[0].latest_ami_id #=> String
    #   resp.replication_job_list[0].state #=> String, one of "PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED", "COMPLETED", "PAUSED_ON_FAILURE", "FAILING"
    #   resp.replication_job_list[0].status_message #=> String
    #   resp.replication_job_list[0].description #=> String
    #   resp.replication_job_list[0].number_of_recent_amis_to_keep #=> Integer
    #   resp.replication_job_list[0].encrypted #=> Boolean
    #   resp.replication_job_list[0].kms_key_id #=> String
    #   resp.replication_job_list[0].replication_run_list #=> Array
    #   resp.replication_job_list[0].replication_run_list[0].replication_run_id #=> String
    #   resp.replication_job_list[0].replication_run_list[0].state #=> String, one of "PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"
    #   resp.replication_job_list[0].replication_run_list[0].type #=> String, one of "ON_DEMAND", "AUTOMATIC"
    #   resp.replication_job_list[0].replication_run_list[0].stage_details.stage #=> String
    #   resp.replication_job_list[0].replication_run_list[0].stage_details.stage_progress #=> String
    #   resp.replication_job_list[0].replication_run_list[0].status_message #=> String
    #   resp.replication_job_list[0].replication_run_list[0].ami_id #=> String
    #   resp.replication_job_list[0].replication_run_list[0].scheduled_start_time #=> Time
    #   resp.replication_job_list[0].replication_run_list[0].completed_time #=> Time
    #   resp.replication_job_list[0].replication_run_list[0].description #=> String
    #   resp.replication_job_list[0].replication_run_list[0].encrypted #=> Boolean
    #   resp.replication_job_list[0].replication_run_list[0].kms_key_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetReplicationJobs AWS API Documentation
    #
    # @overload get_replication_jobs(params = {})
    # @param [Hash] params ({})
    def get_replication_jobs(params = {}, options = {})
      req = build_request(:get_replication_jobs, params)
      req.send_request(options)
    end

    # Describes the replication runs for the specified replication job.
    #
    # @option params [required, String] :replication_job_id
    #   The ID of the replication job.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 50. To retrieve the remaining results, make another call with
    #   the returned `NextToken` value.
    #
    # @return [Types::GetReplicationRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReplicationRunsResponse#replication_job #replication_job} => Types::ReplicationJob
    #   * {Types::GetReplicationRunsResponse#replication_run_list #replication_run_list} => Array&lt;Types::ReplicationRun&gt;
    #   * {Types::GetReplicationRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_runs({
    #     replication_job_id: "ReplicationJobId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_job.replication_job_id #=> String
    #   resp.replication_job.server_id #=> String
    #   resp.replication_job.server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.replication_job.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.replication_job.vm_server.vm_server_address.vm_id #=> String
    #   resp.replication_job.vm_server.vm_name #=> String
    #   resp.replication_job.vm_server.vm_manager_name #=> String
    #   resp.replication_job.vm_server.vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.replication_job.vm_server.vm_path #=> String
    #   resp.replication_job.seed_replication_time #=> Time
    #   resp.replication_job.frequency #=> Integer
    #   resp.replication_job.run_once #=> Boolean
    #   resp.replication_job.next_replication_run_start_time #=> Time
    #   resp.replication_job.license_type #=> String, one of "AWS", "BYOL"
    #   resp.replication_job.role_name #=> String
    #   resp.replication_job.latest_ami_id #=> String
    #   resp.replication_job.state #=> String, one of "PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED", "COMPLETED", "PAUSED_ON_FAILURE", "FAILING"
    #   resp.replication_job.status_message #=> String
    #   resp.replication_job.description #=> String
    #   resp.replication_job.number_of_recent_amis_to_keep #=> Integer
    #   resp.replication_job.encrypted #=> Boolean
    #   resp.replication_job.kms_key_id #=> String
    #   resp.replication_job.replication_run_list #=> Array
    #   resp.replication_job.replication_run_list[0].replication_run_id #=> String
    #   resp.replication_job.replication_run_list[0].state #=> String, one of "PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"
    #   resp.replication_job.replication_run_list[0].type #=> String, one of "ON_DEMAND", "AUTOMATIC"
    #   resp.replication_job.replication_run_list[0].stage_details.stage #=> String
    #   resp.replication_job.replication_run_list[0].stage_details.stage_progress #=> String
    #   resp.replication_job.replication_run_list[0].status_message #=> String
    #   resp.replication_job.replication_run_list[0].ami_id #=> String
    #   resp.replication_job.replication_run_list[0].scheduled_start_time #=> Time
    #   resp.replication_job.replication_run_list[0].completed_time #=> Time
    #   resp.replication_job.replication_run_list[0].description #=> String
    #   resp.replication_job.replication_run_list[0].encrypted #=> Boolean
    #   resp.replication_job.replication_run_list[0].kms_key_id #=> String
    #   resp.replication_run_list #=> Array
    #   resp.replication_run_list[0].replication_run_id #=> String
    #   resp.replication_run_list[0].state #=> String, one of "PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"
    #   resp.replication_run_list[0].type #=> String, one of "ON_DEMAND", "AUTOMATIC"
    #   resp.replication_run_list[0].stage_details.stage #=> String
    #   resp.replication_run_list[0].stage_details.stage_progress #=> String
    #   resp.replication_run_list[0].status_message #=> String
    #   resp.replication_run_list[0].ami_id #=> String
    #   resp.replication_run_list[0].scheduled_start_time #=> Time
    #   resp.replication_run_list[0].completed_time #=> Time
    #   resp.replication_run_list[0].description #=> String
    #   resp.replication_run_list[0].encrypted #=> Boolean
    #   resp.replication_run_list[0].kms_key_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetReplicationRuns AWS API Documentation
    #
    # @overload get_replication_runs(params = {})
    # @param [Hash] params ({})
    def get_replication_runs(params = {}, options = {})
      req = build_request(:get_replication_runs, params)
      req.send_request(options)
    end

    # Describes the servers in your server catalog.
    #
    # Before you can describe your servers, you must import them using
    # ImportServerCatalog.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 50. To retrieve the remaining results, make another call with
    #   the returned `NextToken` value.
    #
    # @option params [Array<Types::VmServerAddress>] :vm_server_address_list
    #   The server addresses.
    #
    # @return [Types::GetServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServersResponse#last_modified_on #last_modified_on} => Time
    #   * {Types::GetServersResponse#server_catalog_status #server_catalog_status} => String
    #   * {Types::GetServersResponse#server_list #server_list} => Array&lt;Types::Server&gt;
    #   * {Types::GetServersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_servers({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     vm_server_address_list: [
    #       {
    #         vm_manager_id: "VmManagerId",
    #         vm_id: "VmId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.last_modified_on #=> Time
    #   resp.server_catalog_status #=> String, one of "NOT_IMPORTED", "IMPORTING", "AVAILABLE", "DELETED", "EXPIRED"
    #   resp.server_list #=> Array
    #   resp.server_list[0].server_id #=> String
    #   resp.server_list[0].server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.server_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.server_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.server_list[0].vm_server.vm_name #=> String
    #   resp.server_list[0].vm_server.vm_manager_name #=> String
    #   resp.server_list[0].vm_server.vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.server_list[0].vm_server.vm_path #=> String
    #   resp.server_list[0].replication_job_id #=> String
    #   resp.server_list[0].replication_job_terminated #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetServers AWS API Documentation
    #
    # @overload get_servers(params = {})
    # @param [Hash] params ({})
    def get_servers(params = {}, options = {})
      req = build_request(:get_servers, params)
      req.send_request(options)
    end

    # Allows application import from AWS Migration Hub.
    #
    # @option params [String] :role_name
    #   The name of the service role. If you omit this parameter, we create a
    #   service-linked role for AWS Migration Hub in your account. Otherwise,
    #   the role that you provide must have the [policy and trust policy][1]
    #   described in the *AWS Migration Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_app_catalog({
    #     role_name: "RoleName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ImportAppCatalog AWS API Documentation
    #
    # @overload import_app_catalog(params = {})
    # @param [Hash] params ({})
    def import_app_catalog(params = {}, options = {})
      req = build_request(:import_app_catalog, params)
      req.send_request(options)
    end

    # Gathers a complete list of on-premises servers. Connectors must be
    # installed and monitoring all servers to import.
    #
    # This call returns immediately, but might take additional time to
    # retrieve all the servers.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ImportServerCatalog AWS API Documentation
    #
    # @overload import_server_catalog(params = {})
    # @param [Hash] params ({})
    def import_server_catalog(params = {}, options = {})
      req = build_request(:import_server_catalog, params)
      req.send_request(options)
    end

    # Launches the specified application as a stack in AWS CloudFormation.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.launch_app({
    #     app_id: "AppId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/LaunchApp AWS API Documentation
    #
    # @overload launch_app(params = {})
    # @param [Hash] params ({})
    def launch_app(params = {}, options = {})
      req = build_request(:launch_app, params)
      req.send_request(options)
    end

    # Retrieves summaries for all applications.
    #
    # @option params [Array<String>] :app_ids
    #   The unique application IDs.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 100. To retrieve the remaining results, make another call
    #   with the returned `NextToken` value.
    #
    # @return [Types::ListAppsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppsResponse#apps #apps} => Array&lt;Types::AppSummary&gt;
    #   * {Types::ListAppsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_apps({
    #     app_ids: ["AppId"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.apps #=> Array
    #   resp.apps[0].app_id #=> String
    #   resp.apps[0].imported_app_id #=> String
    #   resp.apps[0].name #=> String
    #   resp.apps[0].description #=> String
    #   resp.apps[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.apps[0].status_message #=> String
    #   resp.apps[0].replication_configuration_status #=> String, one of "NOT_CONFIGURED", "CONFIGURED"
    #   resp.apps[0].replication_status #=> String, one of "READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"
    #   resp.apps[0].replication_status_message #=> String
    #   resp.apps[0].latest_replication_time #=> Time
    #   resp.apps[0].launch_configuration_status #=> String, one of "NOT_CONFIGURED", "CONFIGURED"
    #   resp.apps[0].launch_status #=> String, one of "READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"
    #   resp.apps[0].launch_status_message #=> String
    #   resp.apps[0].launch_details.latest_launch_time #=> Time
    #   resp.apps[0].launch_details.stack_name #=> String
    #   resp.apps[0].launch_details.stack_id #=> String
    #   resp.apps[0].creation_time #=> Time
    #   resp.apps[0].last_modified #=> Time
    #   resp.apps[0].role_name #=> String
    #   resp.apps[0].total_server_groups #=> Integer
    #   resp.apps[0].total_servers #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ListApps AWS API Documentation
    #
    # @overload list_apps(params = {})
    # @param [Hash] params ({})
    def list_apps(params = {}, options = {})
      req = build_request(:list_apps, params)
      req.send_request(options)
    end

    # Provides information to AWS SMS about whether application validation
    # is successful.
    #
    # @option params [required, String] :app_id
    #   The ID of the application.
    #
    # @option params [Types::NotificationContext] :notification_context
    #   The notification information.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_app_validation_output({
    #     app_id: "AppIdWithValidation", # required
    #     notification_context: {
    #       validation_id: "ValidationId",
    #       status: "READY_FOR_VALIDATION", # accepts READY_FOR_VALIDATION, PENDING, IN_PROGRESS, SUCCEEDED, FAILED
    #       status_message: "ValidationStatusMessage",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/NotifyAppValidationOutput AWS API Documentation
    #
    # @overload notify_app_validation_output(params = {})
    # @param [Hash] params ({})
    def notify_app_validation_output(params = {}, options = {})
      req = build_request(:notify_app_validation_output, params)
      req.send_request(options)
    end

    # Creates or updates the launch configuration for the specified
    # application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @option params [String] :role_name
    #   The name of service role in the customer's account that AWS
    #   CloudFormation uses to launch the application.
    #
    # @option params [Boolean] :auto_launch
    #   Indicates whether the application is configured to launch
    #   automatically after replication is complete.
    #
    # @option params [Array<Types::ServerGroupLaunchConfiguration>] :server_group_launch_configurations
    #   Information about the launch configurations for server groups in the
    #   application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_launch_configuration({
    #     app_id: "AppId",
    #     role_name: "RoleName",
    #     auto_launch: false,
    #     server_group_launch_configurations: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         launch_order: 1,
    #         server_launch_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId",
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #                 vm_path: "VmPath",
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false,
    #             },
    #             logical_id: "LogicalId",
    #             vpc: "VPC",
    #             subnet: "Subnet",
    #             security_group: "SecurityGroup",
    #             ec2_key_name: "EC2KeyName",
    #             user_data: {
    #               s3_location: {
    #                 bucket: "S3BucketName",
    #                 key: "S3KeyName",
    #               },
    #             },
    #             instance_type: "InstanceType",
    #             associate_public_ip_address: false,
    #             iam_instance_profile_name: "RoleName",
    #             configure_script: {
    #               bucket: "S3BucketName",
    #               key: "S3KeyName",
    #             },
    #             configure_script_type: "SHELL_SCRIPT", # accepts SHELL_SCRIPT, POWERSHELL_SCRIPT
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/PutAppLaunchConfiguration AWS API Documentation
    #
    # @overload put_app_launch_configuration(params = {})
    # @param [Hash] params ({})
    def put_app_launch_configuration(params = {}, options = {})
      req = build_request(:put_app_launch_configuration, params)
      req.send_request(options)
    end

    # Creates or updates the replication configuration for the specified
    # application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @option params [Array<Types::ServerGroupReplicationConfiguration>] :server_group_replication_configurations
    #   Information about the replication configurations for server groups in
    #   the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_replication_configuration({
    #     app_id: "AppId",
    #     server_group_replication_configurations: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         server_replication_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId",
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #                 vm_path: "VmPath",
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false,
    #             },
    #             server_replication_parameters: {
    #               seed_time: Time.now,
    #               frequency: 1,
    #               run_once: false,
    #               license_type: "AWS", # accepts AWS, BYOL
    #               number_of_recent_amis_to_keep: 1,
    #               encrypted: false,
    #               kms_key_id: "KmsKeyId",
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/PutAppReplicationConfiguration AWS API Documentation
    #
    # @overload put_app_replication_configuration(params = {})
    # @param [Hash] params ({})
    def put_app_replication_configuration(params = {}, options = {})
      req = build_request(:put_app_replication_configuration, params)
      req.send_request(options)
    end

    # Creates or updates a validation configuration for the specified
    # application.
    #
    # @option params [required, String] :app_id
    #   The ID of the application.
    #
    # @option params [Array<Types::AppValidationConfiguration>] :app_validation_configurations
    #   The configuration for application validation.
    #
    # @option params [Array<Types::ServerGroupValidationConfiguration>] :server_group_validation_configurations
    #   The configuration for instance validation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_validation_configuration({
    #     app_id: "AppIdWithValidation", # required
    #     app_validation_configurations: [
    #       {
    #         validation_id: "ValidationId",
    #         name: "NonEmptyStringWithMaxLen255",
    #         app_validation_strategy: "SSM", # accepts SSM
    #         ssm_validation_parameters: {
    #           source: {
    #             s3_location: {
    #               bucket: "S3BucketName",
    #               key: "S3KeyName",
    #             },
    #           },
    #           instance_id: "InstanceId",
    #           script_type: "SHELL_SCRIPT", # accepts SHELL_SCRIPT, POWERSHELL_SCRIPT
    #           command: "Command",
    #           execution_timeout_seconds: 1,
    #           output_s3_bucket_name: "BucketName",
    #         },
    #       },
    #     ],
    #     server_group_validation_configurations: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         server_validation_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId",
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #                 vm_path: "VmPath",
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false,
    #             },
    #             validation_id: "ValidationId",
    #             name: "NonEmptyStringWithMaxLen255",
    #             server_validation_strategy: "USERDATA", # accepts USERDATA
    #             user_data_validation_parameters: {
    #               source: {
    #                 s3_location: {
    #                   bucket: "S3BucketName",
    #                   key: "S3KeyName",
    #                 },
    #               },
    #               script_type: "SHELL_SCRIPT", # accepts SHELL_SCRIPT, POWERSHELL_SCRIPT
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/PutAppValidationConfiguration AWS API Documentation
    #
    # @overload put_app_validation_configuration(params = {})
    # @param [Hash] params ({})
    def put_app_validation_configuration(params = {}, options = {})
      req = build_request(:put_app_validation_configuration, params)
      req.send_request(options)
    end

    # Starts replicating the specified application by creating replication
    # jobs for each server in the application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_app_replication({
    #     app_id: "AppId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StartAppReplication AWS API Documentation
    #
    # @overload start_app_replication(params = {})
    # @param [Hash] params ({})
    def start_app_replication(params = {}, options = {})
      req = build_request(:start_app_replication, params)
      req.send_request(options)
    end

    # Starts an on-demand replication run for the specified application.
    #
    # @option params [required, String] :app_id
    #   The ID of the application.
    #
    # @option params [String] :description
    #   The description of the replication run.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_on_demand_app_replication({
    #     app_id: "AppId", # required
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StartOnDemandAppReplication AWS API Documentation
    #
    # @overload start_on_demand_app_replication(params = {})
    # @param [Hash] params ({})
    def start_on_demand_app_replication(params = {}, options = {})
      req = build_request(:start_on_demand_app_replication, params)
      req.send_request(options)
    end

    # Starts an on-demand replication run for the specified replication job.
    # This replication run starts immediately. This replication run is in
    # addition to the ones already scheduled.
    #
    # There is a limit on the number of on-demand replications runs that you
    # can request in a 24-hour period.
    #
    # @option params [required, String] :replication_job_id
    #   The ID of the replication job.
    #
    # @option params [String] :description
    #   The description of the replication run.
    #
    # @return [Types::StartOnDemandReplicationRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOnDemandReplicationRunResponse#replication_run_id #replication_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_on_demand_replication_run({
    #     replication_job_id: "ReplicationJobId", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StartOnDemandReplicationRun AWS API Documentation
    #
    # @overload start_on_demand_replication_run(params = {})
    # @param [Hash] params ({})
    def start_on_demand_replication_run(params = {}, options = {})
      req = build_request(:start_on_demand_replication_run, params)
      req.send_request(options)
    end

    # Stops replicating the specified application by deleting the
    # replication job for each server in the application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_app_replication({
    #     app_id: "AppId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StopAppReplication AWS API Documentation
    #
    # @overload stop_app_replication(params = {})
    # @param [Hash] params ({})
    def stop_app_replication(params = {}, options = {})
      req = build_request(:stop_app_replication, params)
      req.send_request(options)
    end

    # Terminates the stack for the specified application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_app({
    #     app_id: "AppId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/TerminateApp AWS API Documentation
    #
    # @overload terminate_app(params = {})
    # @param [Hash] params ({})
    def terminate_app(params = {}, options = {})
      req = build_request(:terminate_app, params)
      req.send_request(options)
    end

    # Updates the specified application.
    #
    # @option params [String] :app_id
    #   The ID of the application.
    #
    # @option params [String] :name
    #   The new name of the application.
    #
    # @option params [String] :description
    #   The new description of the application.
    #
    # @option params [String] :role_name
    #   The name of the service role in the customer's account used by AWS
    #   SMS.
    #
    # @option params [Array<Types::ServerGroup>] :server_groups
    #   The server groups in the application to update.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to associate with the application.
    #
    # @return [Types::UpdateAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppResponse#app_summary #app_summary} => Types::AppSummary
    #   * {Types::UpdateAppResponse#server_groups #server_groups} => Array&lt;Types::ServerGroup&gt;
    #   * {Types::UpdateAppResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app({
    #     app_id: "AppId",
    #     name: "AppName",
    #     description: "AppDescription",
    #     role_name: "RoleName",
    #     server_groups: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         name: "ServerGroupName",
    #         server_list: [
    #           {
    #             server_id: "ServerId",
    #             server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: "VmManagerId",
    #                 vm_id: "VmId",
    #               },
    #               vm_name: "VmName",
    #               vm_manager_name: "VmManagerName",
    #               vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #               vm_path: "VmPath",
    #             },
    #             replication_job_id: "ReplicationJobId",
    #             replication_job_terminated: false,
    #           },
    #         ],
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.app_summary.app_id #=> String
    #   resp.app_summary.imported_app_id #=> String
    #   resp.app_summary.name #=> String
    #   resp.app_summary.description #=> String
    #   resp.app_summary.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.app_summary.status_message #=> String
    #   resp.app_summary.replication_configuration_status #=> String, one of "NOT_CONFIGURED", "CONFIGURED"
    #   resp.app_summary.replication_status #=> String, one of "READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"
    #   resp.app_summary.replication_status_message #=> String
    #   resp.app_summary.latest_replication_time #=> Time
    #   resp.app_summary.launch_configuration_status #=> String, one of "NOT_CONFIGURED", "CONFIGURED"
    #   resp.app_summary.launch_status #=> String, one of "READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"
    #   resp.app_summary.launch_status_message #=> String
    #   resp.app_summary.launch_details.latest_launch_time #=> Time
    #   resp.app_summary.launch_details.stack_name #=> String
    #   resp.app_summary.launch_details.stack_id #=> String
    #   resp.app_summary.creation_time #=> Time
    #   resp.app_summary.last_modified #=> Time
    #   resp.app_summary.role_name #=> String
    #   resp.app_summary.total_server_groups #=> Integer
    #   resp.app_summary.total_servers #=> Integer
    #   resp.server_groups #=> Array
    #   resp.server_groups[0].server_group_id #=> String
    #   resp.server_groups[0].name #=> String
    #   resp.server_groups[0].server_list #=> Array
    #   resp.server_groups[0].server_list[0].server_id #=> String
    #   resp.server_groups[0].server_list[0].server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.server_groups[0].server_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_name #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_manager_name #=> String
    #   resp.server_groups[0].server_list[0].vm_server.vm_manager_type #=> String, one of "VSPHERE", "SCVMM", "HYPERV-MANAGER"
    #   resp.server_groups[0].server_list[0].vm_server.vm_path #=> String
    #   resp.server_groups[0].server_list[0].replication_job_id #=> String
    #   resp.server_groups[0].server_list[0].replication_job_terminated #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/UpdateApp AWS API Documentation
    #
    # @overload update_app(params = {})
    # @param [Hash] params ({})
    def update_app(params = {}, options = {})
      req = build_request(:update_app, params)
      req.send_request(options)
    end

    # Updates the specified settings for the specified replication job.
    #
    # @option params [required, String] :replication_job_id
    #   The ID of the replication job.
    #
    # @option params [Integer] :frequency
    #   The time between consecutive replication runs, in hours.
    #
    # @option params [Time,DateTime,Date,Integer,String] :next_replication_run_start_time
    #   The start time of the next replication run.
    #
    # @option params [String] :license_type
    #   The license type to be used for the AMI created by a successful
    #   replication run.
    #
    # @option params [String] :role_name
    #   The name of the IAM role to be used by AWS SMS.
    #
    # @option params [String] :description
    #   The description of the replication job.
    #
    # @option params [Integer] :number_of_recent_amis_to_keep
    #   The maximum number of SMS-created AMIs to retain. The oldest is
    #   deleted after the maximum number is reached and a new AMI is created.
    #
    # @option params [Boolean] :encrypted
    #   When true, the replication job produces encrypted AMIs. For more
    #   information, `KmsKeyId`.
    #
    # @option params [String] :kms_key_id
    #   The ID of the KMS key for replication jobs that produce encrypted
    #   AMIs. This value can be any of the following:
    #
    #   * KMS key ID
    #
    #   * KMS key alias
    #
    #   * ARN referring to the KMS key ID
    #
    #   * ARN referring to the KMS key alias
    #
    #   If encrypted is enabled but a KMS key ID is not specified, the
    #   customer's default KMS key for Amazon EBS is used.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_job({
    #     replication_job_id: "ReplicationJobId", # required
    #     frequency: 1,
    #     next_replication_run_start_time: Time.now,
    #     license_type: "AWS", # accepts AWS, BYOL
    #     role_name: "RoleName",
    #     description: "Description",
    #     number_of_recent_amis_to_keep: 1,
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/UpdateReplicationJob AWS API Documentation
    #
    # @overload update_replication_job(params = {})
    # @param [Hash] params ({})
    def update_replication_job(params = {}, options = {})
      req = build_request(:update_replication_job, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-sms'
      context[:gem_version] = '1.27.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
