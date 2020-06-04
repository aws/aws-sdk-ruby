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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lightsail)

module Aws::Lightsail
  # An API client for Lightsail.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Lightsail::Client.new(
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

    @identifier = :lightsail

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
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
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
    #     to test endpoints. This should be a valid HTTP(S) URI.
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

    # Allocates a static IP address.
    #
    # @option params [required, String] :static_ip_name
    #   The name of the static IP address.
    #
    # @return [Types::AllocateStaticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AllocateStaticIpResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_static_ip({
    #     static_ip_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AllocateStaticIp AWS API Documentation
    #
    # @overload allocate_static_ip(params = {})
    # @param [Hash] params ({})
    def allocate_static_ip(params = {}, options = {})
      req = build_request(:allocate_static_ip, params)
      req.send_request(options)
    end

    # Attaches a block storage disk to a running or stopped Lightsail
    # instance and exposes it to the instance with the specified disk name.
    #
    # The `attach disk` operation supports tag-based access control via
    # resource tags applied to the resource identified by `disk name`. For
    # more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :disk_name
    #   The unique Lightsail disk name (e.g., `my-disk`).
    #
    # @option params [required, String] :instance_name
    #   The name of the Lightsail instance where you want to utilize the
    #   storage disk.
    #
    # @option params [required, String] :disk_path
    #   The disk path to expose to the instance (e.g., `/dev/xvdf`).
    #
    # @return [Types::AttachDiskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachDiskResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_disk({
    #     disk_name: "ResourceName", # required
    #     instance_name: "ResourceName", # required
    #     disk_path: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachDisk AWS API Documentation
    #
    # @overload attach_disk(params = {})
    # @param [Hash] params ({})
    def attach_disk(params = {}, options = {})
      req = build_request(:attach_disk, params)
      req.send_request(options)
    end

    # Attaches one or more Lightsail instances to a load balancer.
    #
    # After some time, the instances are attached to the load balancer and
    # the health check status is available.
    #
    # The `attach instances to load balancer` operation supports tag-based
    # access control via resource tags applied to the resource identified by
    # `load balancer name`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, Array<String>] :instance_names
    #   An array of strings representing the instance name(s) you want to
    #   attach to your load balancer.
    #
    #   An instance must be `running` before you can attach it to your load
    #   balancer.
    #
    #   There are no additional limits on the number of instances you can
    #   attach to your load balancer, aside from the limit of Lightsail
    #   instances you can create in your account (20).
    #
    # @return [Types::AttachInstancesToLoadBalancerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachInstancesToLoadBalancerResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_instances_to_load_balancer({
    #     load_balancer_name: "ResourceName", # required
    #     instance_names: ["ResourceName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachInstancesToLoadBalancer AWS API Documentation
    #
    # @overload attach_instances_to_load_balancer(params = {})
    # @param [Hash] params ({})
    def attach_instances_to_load_balancer(params = {}, options = {})
      req = build_request(:attach_instances_to_load_balancer, params)
      req.send_request(options)
    end

    # Attaches a Transport Layer Security (TLS) certificate to your load
    # balancer. TLS is just an updated, more secure version of Secure Socket
    # Layer (SSL).
    #
    # Once you create and validate your certificate, you can attach it to
    # your load balancer. You can also use this API to rotate the
    # certificates on your account. Use the
    # `AttachLoadBalancerTlsCertificate` action with the non-attached
    # certificate, and it will replace the existing one and become the
    # attached certificate.
    #
    # The `AttachLoadBalancerTlsCertificate` operation supports tag-based
    # access control via resource tags applied to the resource identified by
    # `load balancer name`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer to which you want to associate the
    #   SSL/TLS certificate.
    #
    # @option params [required, String] :certificate_name
    #   The name of your SSL/TLS certificate.
    #
    # @return [Types::AttachLoadBalancerTlsCertificateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachLoadBalancerTlsCertificateResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_load_balancer_tls_certificate({
    #     load_balancer_name: "ResourceName", # required
    #     certificate_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachLoadBalancerTlsCertificate AWS API Documentation
    #
    # @overload attach_load_balancer_tls_certificate(params = {})
    # @param [Hash] params ({})
    def attach_load_balancer_tls_certificate(params = {}, options = {})
      req = build_request(:attach_load_balancer_tls_certificate, params)
      req.send_request(options)
    end

    # Attaches a static IP address to a specific Amazon Lightsail instance.
    #
    # @option params [required, String] :static_ip_name
    #   The name of the static IP.
    #
    # @option params [required, String] :instance_name
    #   The instance name to which you want to attach the static IP address.
    #
    # @return [Types::AttachStaticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachStaticIpResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_static_ip({
    #     static_ip_name: "ResourceName", # required
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachStaticIp AWS API Documentation
    #
    # @overload attach_static_ip(params = {})
    # @param [Hash] params ({})
    def attach_static_ip(params = {}, options = {})
      req = build_request(:attach_static_ip, params)
      req.send_request(options)
    end

    # Closes ports for a specific Amazon Lightsail instance.
    #
    # The `CloseInstancePublicPorts` action supports tag-based access
    # control via resource tags applied to the resource identified by
    # `instanceName`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, Types::PortInfo] :port_info
    #   An object to describe the ports to close for the specified instance.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance for which to close ports.
    #
    # @return [Types::CloseInstancePublicPortsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CloseInstancePublicPortsResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.close_instance_public_ports({
    #     port_info: { # required
    #       from_port: 1,
    #       to_port: 1,
    #       protocol: "tcp", # accepts tcp, all, udp, icmp
    #       cidrs: ["string"],
    #       cidr_list_aliases: ["string"],
    #     },
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloseInstancePublicPorts AWS API Documentation
    #
    # @overload close_instance_public_ports(params = {})
    # @param [Hash] params ({})
    def close_instance_public_ports(params = {}, options = {})
      req = build_request(:close_instance_public_ports, params)
      req.send_request(options)
    end

    # Copies a manual snapshot of an instance or disk as another manual
    # snapshot, or copies an automatic snapshot of an instance or disk as a
    # manual snapshot. This operation can also be used to copy a manual or
    # automatic snapshot of an instance or a disk from one AWS Region to
    # another in Amazon Lightsail.
    #
    # When copying a *manual snapshot*, be sure to define the `source
    # region`, `source snapshot name`, and `target snapshot name`
    # parameters.
    #
    # When copying an *automatic snapshot*, be sure to define the `source
    # region`, `source resource name`, `target snapshot name`, and either
    # the `restore date` or the `use latest restorable auto snapshot`
    # parameters.
    #
    # @option params [String] :source_snapshot_name
    #   The name of the source manual snapshot to copy.
    #
    #   Constraint:
    #
    #   * Define this parameter only when copying a manual snapshot as another
    #     manual snapshot.
    #
    #   ^
    #
    # @option params [String] :source_resource_name
    #   The name of the source instance or disk from which the source
    #   automatic snapshot was created.
    #
    #   Constraint:
    #
    #   * Define this parameter only when copying an automatic snapshot as a
    #     manual snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #   ^
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots
    #
    # @option params [String] :restore_date
    #   The date of the source automatic snapshot to copy. Use the `get auto
    #   snapshots` operation to identify the dates of the available automatic
    #   snapshots.
    #
    #   Constraints:
    #
    #   * Must be specified in `YYYY-MM-DD` format.
    #
    #   * This parameter cannot be defined together with the `use latest
    #     restorable auto snapshot` parameter. The `restore date` and `use
    #     latest restorable auto snapshot` parameters are mutually exclusive.
    #
    #   * Define this parameter only when copying an automatic snapshot as a
    #     manual snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots
    #
    # @option params [Boolean] :use_latest_restorable_auto_snapshot
    #   A Boolean value to indicate whether to use the latest available
    #   automatic snapshot of the specified source instance or disk.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `restore date`
    #     parameter. The `use latest restorable auto snapshot` and `restore
    #     date` parameters are mutually exclusive.
    #
    #   * Define this parameter only when copying an automatic snapshot as a
    #     manual snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots
    #
    # @option params [required, String] :target_snapshot_name
    #   The name of the new manual snapshot to be created as a copy.
    #
    # @option params [required, String] :source_region
    #   The AWS Region where the source manual or automatic snapshot is
    #   located.
    #
    # @return [Types::CopySnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopySnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_snapshot({
    #     source_snapshot_name: "ResourceName",
    #     source_resource_name: "string",
    #     restore_date: "string",
    #     use_latest_restorable_auto_snapshot: false,
    #     target_snapshot_name: "ResourceName", # required
    #     source_region: "us-east-1", # required, accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-west-2, eu-west-3, eu-central-1, ca-central-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CopySnapshot AWS API Documentation
    #
    # @overload copy_snapshot(params = {})
    # @param [Hash] params ({})
    def copy_snapshot(params = {}, options = {})
      req = build_request(:copy_snapshot, params)
      req.send_request(options)
    end

    # Creates an AWS CloudFormation stack, which creates a new Amazon EC2
    # instance from an exported Amazon Lightsail snapshot. This operation
    # results in a CloudFormation stack record that can be used to track the
    # AWS CloudFormation stack created. Use the `get cloud formation stack
    # records` operation to get a list of the CloudFormation stacks created.
    #
    # Wait until after your new Amazon EC2 instance is created before
    # running the `create cloud formation stack` operation again with the
    # same export snapshot record.
    #
    # @option params [required, Array<Types::InstanceEntry>] :instances
    #   An array of parameters that will be used to create the new Amazon EC2
    #   instance. You can only pass one instance entry at a time in this
    #   array. You will get an invalid parameter error if you pass more than
    #   one instance entry in this array.
    #
    # @return [Types::CreateCloudFormationStackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudFormationStackResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_formation_stack({
    #     instances: [ # required
    #       {
    #         source_name: "ResourceName", # required
    #         instance_type: "NonEmptyString", # required
    #         port_info_source: "DEFAULT", # required, accepts DEFAULT, INSTANCE, NONE, CLOSED
    #         user_data: "string",
    #         availability_zone: "string", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateCloudFormationStack AWS API Documentation
    #
    # @overload create_cloud_formation_stack(params = {})
    # @param [Hash] params ({})
    def create_cloud_formation_stack(params = {}, options = {})
      req = build_request(:create_cloud_formation_stack, params)
      req.send_request(options)
    end

    # Creates an email or SMS text message contact method.
    #
    # A contact method is used to send you notifications about your Amazon
    # Lightsail resources. You can add one email address and one mobile
    # phone number contact method in each AWS Region. However, SMS text
    # messaging is not supported in some AWS Regions, and SMS text messages
    # cannot be sent to some countries/regions. For more information, see
    # [Notifications in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications
    #
    # @option params [required, String] :protocol
    #   The protocol of the contact method, such as `Email` or `SMS` (text
    #   messaging).
    #
    #   The `SMS` protocol is supported only in the following AWS Regions.
    #
    #   * US East (N. Virginia) (`us-east-1`)
    #
    #   * US West (Oregon) (`us-west-2`)
    #
    #   * Europe (Ireland) (`eu-west-1`)
    #
    #   * Asia Pacific (Tokyo) (`ap-northeast-1`)
    #
    #   * Asia Pacific (Singapore) (`ap-southeast-1`)
    #
    #   * Asia Pacific (Sydney) (`ap-southeast-2`)
    #
    #   For a list of countries/regions where SMS text messages can be sent,
    #   and the latest AWS Regions where SMS text messaging is supported, see
    #   [Supported Regions and Countries][1] in the *Amazon SNS Developer
    #   Guide*.
    #
    #   For more information about notifications in Amazon Lightsail, see
    #   [Notifications in Amazon Lightsail][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/dg/sns-supported-regions-countries.html
    #   [2]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications
    #
    # @option params [required, String] :contact_endpoint
    #   The destination of the contact method, such as an email address or a
    #   mobile phone number.
    #
    #   Use the E.164 format when specifying a mobile phone number. E.164 is a
    #   standard for the phone number structure used for international
    #   telecommunication. Phone numbers that follow this format can have a
    #   maximum of 15 digits, and they are prefixed with the plus character
    #   (+) and the country code. For example, a U.S. phone number in E.164
    #   format would be specified as +1XXX5550100. For more information, see
    #   [E.164][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/E.164
    #
    # @return [Types::CreateContactMethodResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactMethodResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_method({
    #     protocol: "Email", # required, accepts Email, SMS
    #     contact_endpoint: "StringMax256", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContactMethod AWS API Documentation
    #
    # @overload create_contact_method(params = {})
    # @param [Hash] params ({})
    def create_contact_method(params = {}, options = {})
      req = build_request(:create_contact_method, params)
      req.send_request(options)
    end

    # Creates a block storage disk that can be attached to an Amazon
    # Lightsail instance in the same Availability Zone (e.g., `us-east-2a`).
    #
    # The `create disk` operation supports tag-based access control via
    # request tags. For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :disk_name
    #   The unique Lightsail disk name (e.g., `my-disk`).
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone where you want to create the disk (e.g.,
    #   `us-east-2a`). Use the same Availability Zone as the Lightsail
    #   instance to which you want to attach the disk.
    #
    #   Use the `get regions` operation to list the Availability Zones where
    #   Lightsail is currently available.
    #
    # @option params [required, Integer] :size_in_gb
    #   The size of the disk in GB (e.g., `32`).
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @option params [Array<Types::AddOnRequest>] :add_ons
    #   An array of objects that represent the add-ons to enable for the new
    #   disk.
    #
    # @return [Types::CreateDiskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDiskResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_disk({
    #     disk_name: "ResourceName", # required
    #     availability_zone: "NonEmptyString", # required
    #     size_in_gb: 1, # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     add_ons: [
    #       {
    #         add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #         auto_snapshot_add_on_request: {
    #           snapshot_time_of_day: "TimeOfDay",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDisk AWS API Documentation
    #
    # @overload create_disk(params = {})
    # @param [Hash] params ({})
    def create_disk(params = {}, options = {})
      req = build_request(:create_disk, params)
      req.send_request(options)
    end

    # Creates a block storage disk from a manual or automatic snapshot of a
    # disk. The resulting disk can be attached to an Amazon Lightsail
    # instance in the same Availability Zone (e.g., `us-east-2a`).
    #
    # The `create disk from snapshot` operation supports tag-based access
    # control via request tags and resource tags applied to the resource
    # identified by `disk snapshot name`. For more information, see the
    # [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :disk_name
    #   The unique Lightsail disk name (e.g., `my-disk`).
    #
    # @option params [String] :disk_snapshot_name
    #   The name of the disk snapshot (e.g., `my-snapshot`) from which to
    #   create the new storage disk.
    #
    #   Constraint:
    #
    #   * This parameter cannot be defined together with the `source disk
    #     name` parameter. The `disk snapshot name` and `source disk name`
    #     parameters are mutually exclusive.
    #
    #   ^
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone where you want to create the disk (e.g.,
    #   `us-east-2a`). Choose the same Availability Zone as the Lightsail
    #   instance where you want to create the disk.
    #
    #   Use the GetRegions operation to list the Availability Zones where
    #   Lightsail is currently available.
    #
    # @option params [required, Integer] :size_in_gb
    #   The size of the disk in GB (e.g., `32`).
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @option params [Array<Types::AddOnRequest>] :add_ons
    #   An array of objects that represent the add-ons to enable for the new
    #   disk.
    #
    # @option params [String] :source_disk_name
    #   The name of the source disk from which the source automatic snapshot
    #   was created.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `disk snapshot
    #     name` parameter. The `source disk name` and `disk snapshot name`
    #     parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new disk from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #
    # @option params [String] :restore_date
    #   The date of the automatic snapshot to use for the new disk. Use the
    #   `get auto snapshots` operation to identify the dates of the available
    #   automatic snapshots.
    #
    #   Constraints:
    #
    #   * Must be specified in `YYYY-MM-DD` format.
    #
    #   * This parameter cannot be defined together with the `use latest
    #     restorable auto snapshot` parameter. The `restore date` and `use
    #     latest restorable auto snapshot` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new disk from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #
    # @option params [Boolean] :use_latest_restorable_auto_snapshot
    #   A Boolean value to indicate whether to use the latest available
    #   automatic snapshot.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `restore date`
    #     parameter. The `use latest restorable auto snapshot` and `restore
    #     date` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new disk from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #
    # @return [Types::CreateDiskFromSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDiskFromSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_disk_from_snapshot({
    #     disk_name: "ResourceName", # required
    #     disk_snapshot_name: "ResourceName",
    #     availability_zone: "NonEmptyString", # required
    #     size_in_gb: 1, # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     add_ons: [
    #       {
    #         add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #         auto_snapshot_add_on_request: {
    #           snapshot_time_of_day: "TimeOfDay",
    #         },
    #       },
    #     ],
    #     source_disk_name: "string",
    #     restore_date: "string",
    #     use_latest_restorable_auto_snapshot: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskFromSnapshot AWS API Documentation
    #
    # @overload create_disk_from_snapshot(params = {})
    # @param [Hash] params ({})
    def create_disk_from_snapshot(params = {}, options = {})
      req = build_request(:create_disk_from_snapshot, params)
      req.send_request(options)
    end

    # Creates a snapshot of a block storage disk. You can use snapshots for
    # backups, to make copies of disks, and to save data before shutting
    # down a Lightsail instance.
    #
    # You can take a snapshot of an attached disk that is in use; however,
    # snapshots only capture data that has been written to your disk at the
    # time the snapshot command is issued. This may exclude any data that
    # has been cached by any applications or the operating system. If you
    # can pause any file systems on the disk long enough to take a snapshot,
    # your snapshot should be complete. Nevertheless, if you cannot pause
    # all file writes to the disk, you should unmount the disk from within
    # the Lightsail instance, issue the create disk snapshot command, and
    # then remount the disk to ensure a consistent and complete snapshot.
    # You may remount and use your disk while the snapshot status is
    # pending.
    #
    # You can also use this operation to create a snapshot of an instance's
    # system volume. You might want to do this, for example, to recover data
    # from the system volume of a botched instance or to create a backup of
    # the system volume like you would for a block storage disk. To create a
    # snapshot of a system volume, just define the `instance name` parameter
    # when issuing the snapshot command, and a snapshot of the defined
    # instance's system volume will be created. After the snapshot is
    # available, you can create a block storage disk from the snapshot and
    # attach it to a running instance to access the data on the disk.
    #
    # The `create disk snapshot` operation supports tag-based access control
    # via request tags. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [String] :disk_name
    #   The unique name of the source disk (e.g., `Disk-Virginia-1`).
    #
    #   <note markdown="1"> This parameter cannot be defined together with the `instance name`
    #   parameter. The `disk name` and `instance name` parameters are mutually
    #   exclusive.
    #
    #    </note>
    #
    # @option params [required, String] :disk_snapshot_name
    #   The name of the destination disk snapshot (e.g., `my-disk-snapshot`)
    #   based on the source disk.
    #
    # @option params [String] :instance_name
    #   The unique name of the source instance (e.g.,
    #   `Amazon_Linux-512MB-Virginia-1`). When this is defined, a snapshot of
    #   the instance's system volume is created.
    #
    #   <note markdown="1"> This parameter cannot be defined together with the `disk name`
    #   parameter. The `instance name` and `disk name` parameters are mutually
    #   exclusive.
    #
    #    </note>
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @return [Types::CreateDiskSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDiskSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_disk_snapshot({
    #     disk_name: "ResourceName",
    #     disk_snapshot_name: "ResourceName", # required
    #     instance_name: "ResourceName",
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
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskSnapshot AWS API Documentation
    #
    # @overload create_disk_snapshot(params = {})
    # @param [Hash] params ({})
    def create_disk_snapshot(params = {}, options = {})
      req = build_request(:create_disk_snapshot, params)
      req.send_request(options)
    end

    # Creates a domain resource for the specified domain (e.g.,
    # example.com).
    #
    # The `create domain` operation supports tag-based access control via
    # request tags. For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :domain_name
    #   The domain name to manage (e.g., `example.com`).
    #
    #   <note markdown="1"> You cannot register a new domain name using Lightsail. You must
    #   register a domain name using Amazon Route 53 or another domain name
    #   registrar. If you have already registered your domain, you can enter
    #   its name in this parameter to manage the DNS records for that domain.
    #
    #    </note>
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @return [Types::CreateDomainResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     domain_name: "DomainName", # required
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
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates one of the following entry records associated with the domain:
    # Address (A), canonical name (CNAME), mail exchanger (MX), name server
    # (NS), start of authority (SOA), service locator (SRV), or text (TXT).
    #
    # The `create domain entry` operation supports tag-based access control
    # via resource tags applied to the resource identified by `domain name`.
    # For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :domain_name
    #   The domain name (e.g., `example.com`) for which you want to create the
    #   domain entry.
    #
    # @option params [required, Types::DomainEntry] :domain_entry
    #   An array of key-value pairs containing information about the domain
    #   entry request.
    #
    # @return [Types::CreateDomainEntryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainEntryResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_entry({
    #     domain_name: "DomainName", # required
    #     domain_entry: { # required
    #       id: "NonEmptyString",
    #       name: "DomainName",
    #       target: "string",
    #       is_alias: false,
    #       type: "DomainEntryType",
    #       options: {
    #         "DomainEntryOptionsKeys" => "string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainEntry AWS API Documentation
    #
    # @overload create_domain_entry(params = {})
    # @param [Hash] params ({})
    def create_domain_entry(params = {}, options = {})
      req = build_request(:create_domain_entry, params)
      req.send_request(options)
    end

    # Creates a snapshot of a specific virtual private server, or
    # *instance*. You can use a snapshot to create a new instance that is
    # based on that snapshot.
    #
    # The `create instance snapshot` operation supports tag-based access
    # control via request tags. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :instance_snapshot_name
    #   The name for your new snapshot.
    #
    # @option params [required, String] :instance_name
    #   The Lightsail instance on which to base your snapshot.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @return [Types::CreateInstanceSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstanceSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance_snapshot({
    #     instance_snapshot_name: "ResourceName", # required
    #     instance_name: "ResourceName", # required
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
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstanceSnapshot AWS API Documentation
    #
    # @overload create_instance_snapshot(params = {})
    # @param [Hash] params ({})
    def create_instance_snapshot(params = {}, options = {})
      req = build_request(:create_instance_snapshot, params)
      req.send_request(options)
    end

    # Creates one or more Amazon Lightsail instances.
    #
    # The `create instances` operation supports tag-based access control via
    # request tags. For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, Array<String>] :instance_names
    #   The names to use for your new Lightsail instances. Separate multiple
    #   values using quotation marks and commas, for example:
    #   `["MyFirstInstance","MySecondInstance"]`
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone in which to create your instance. Use the
    #   following format: `us-east-2a` (case sensitive). You can get a list of
    #   Availability Zones by using the [get regions][1] operation. Be sure to
    #   add the `include Availability Zones` parameter to your request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html
    #
    # @option params [String] :custom_image_name
    #   (Deprecated) The name for your custom image.
    #
    #   <note markdown="1"> In releases prior to June 12, 2017, this parameter was ignored by the
    #   API. It is now deprecated.
    #
    #    </note>
    #
    # @option params [required, String] :blueprint_id
    #   The ID for a virtual private server image (e.g., `app_wordpress_4_4`
    #   or `app_lamp_7_0`). Use the `get blueprints` operation to return a
    #   list of available images (or *blueprints*).
    #
    #   <note markdown="1"> Use active blueprints when creating new instances. Inactive blueprints
    #   are listed to support customers with existing instances and are not
    #   necessarily available to create new instances. Blueprints are marked
    #   inactive when they become outdated due to operating system updates or
    #   new application releases.
    #
    #    </note>
    #
    # @option params [required, String] :bundle_id
    #   The bundle of specification information for your virtual private
    #   server (or *instance*), including the pricing plan (e.g.,
    #   `micro_1_0`).
    #
    # @option params [String] :user_data
    #   A launch script you can create that configures a server with
    #   additional user data. For example, you might want to run `apt-get -y
    #   update`.
    #
    #   <note markdown="1"> Depending on the machine image you choose, the command to get software
    #   on your instance varies. Amazon Linux and CentOS use `yum`, Debian and
    #   Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a complete list, see
    #   the [Dev Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image
    #
    # @option params [String] :key_pair_name
    #   The name of your key pair.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @option params [Array<Types::AddOnRequest>] :add_ons
    #   An array of objects representing the add-ons to enable for the new
    #   instance.
    #
    # @return [Types::CreateInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstancesResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instances({
    #     instance_names: ["string"], # required
    #     availability_zone: "string", # required
    #     custom_image_name: "ResourceName",
    #     blueprint_id: "NonEmptyString", # required
    #     bundle_id: "NonEmptyString", # required
    #     user_data: "string",
    #     key_pair_name: "ResourceName",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     add_ons: [
    #       {
    #         add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #         auto_snapshot_add_on_request: {
    #           snapshot_time_of_day: "TimeOfDay",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstances AWS API Documentation
    #
    # @overload create_instances(params = {})
    # @param [Hash] params ({})
    def create_instances(params = {}, options = {})
      req = build_request(:create_instances, params)
      req.send_request(options)
    end

    # Creates one or more new instances from a manual or automatic snapshot
    # of an instance.
    #
    # The `create instances from snapshot` operation supports tag-based
    # access control via request tags and resource tags applied to the
    # resource identified by `instance snapshot name`. For more information,
    # see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, Array<String>] :instance_names
    #   The names for your new instances.
    #
    # @option params [Hash<String,Array>] :attached_disk_mapping
    #   An object containing information about one or more disk mappings.
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone where you want to create your instances. Use the
    #   following formatting: `us-east-2a` (case sensitive). You can get a
    #   list of Availability Zones by using the [get regions][1] operation. Be
    #   sure to add the `include Availability Zones` parameter to your
    #   request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html
    #
    # @option params [String] :instance_snapshot_name
    #   The name of the instance snapshot on which you are basing your new
    #   instances. Use the get instance snapshots operation to return
    #   information about your existing snapshots.
    #
    #   Constraint:
    #
    #   * This parameter cannot be defined together with the `source instance
    #     name` parameter. The `instance snapshot name` and `source instance
    #     name` parameters are mutually exclusive.
    #
    #   ^
    #
    # @option params [required, String] :bundle_id
    #   The bundle of specification information for your virtual private
    #   server (or *instance*), including the pricing plan (e.g.,
    #   `micro_1_0`).
    #
    # @option params [String] :user_data
    #   You can create a launch script that configures a server with
    #   additional user data. For example, `apt-get -y update`.
    #
    #   <note markdown="1"> Depending on the machine image you choose, the command to get software
    #   on your instance varies. Amazon Linux and CentOS use `yum`, Debian and
    #   Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a complete list, see
    #   the [Dev Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image
    #
    # @option params [String] :key_pair_name
    #   The name for your key pair.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @option params [Array<Types::AddOnRequest>] :add_ons
    #   An array of objects representing the add-ons to enable for the new
    #   instance.
    #
    # @option params [String] :source_instance_name
    #   The name of the source instance from which the source automatic
    #   snapshot was created.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `instance
    #     snapshot name` parameter. The `source instance name` and `instance
    #     snapshot name` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new instance from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #
    # @option params [String] :restore_date
    #   The date of the automatic snapshot to use for the new instance. Use
    #   the `get auto snapshots` operation to identify the dates of the
    #   available automatic snapshots.
    #
    #   Constraints:
    #
    #   * Must be specified in `YYYY-MM-DD` format.
    #
    #   * This parameter cannot be defined together with the `use latest
    #     restorable auto snapshot` parameter. The `restore date` and `use
    #     latest restorable auto snapshot` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new instance from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #
    # @option params [Boolean] :use_latest_restorable_auto_snapshot
    #   A Boolean value to indicate whether to use the latest available
    #   automatic snapshot.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `restore date`
    #     parameter. The `use latest restorable auto snapshot` and `restore
    #     date` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new instance from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #
    # @return [Types::CreateInstancesFromSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstancesFromSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instances_from_snapshot({
    #     instance_names: ["string"], # required
    #     attached_disk_mapping: {
    #       "ResourceName" => [
    #         {
    #           original_disk_path: "NonEmptyString",
    #           new_disk_name: "ResourceName",
    #         },
    #       ],
    #     },
    #     availability_zone: "string", # required
    #     instance_snapshot_name: "ResourceName",
    #     bundle_id: "NonEmptyString", # required
    #     user_data: "string",
    #     key_pair_name: "ResourceName",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     add_ons: [
    #       {
    #         add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #         auto_snapshot_add_on_request: {
    #           snapshot_time_of_day: "TimeOfDay",
    #         },
    #       },
    #     ],
    #     source_instance_name: "string",
    #     restore_date: "string",
    #     use_latest_restorable_auto_snapshot: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesFromSnapshot AWS API Documentation
    #
    # @overload create_instances_from_snapshot(params = {})
    # @param [Hash] params ({})
    def create_instances_from_snapshot(params = {}, options = {})
      req = build_request(:create_instances_from_snapshot, params)
      req.send_request(options)
    end

    # Creates an SSH key pair.
    #
    # The `create key pair` operation supports tag-based access control via
    # request tags. For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :key_pair_name
    #   The name for your new key pair.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @return [Types::CreateKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyPairResult#key_pair #key_pair} => Types::KeyPair
    #   * {Types::CreateKeyPairResult#public_key_base_64 #public_key_base_64} => String
    #   * {Types::CreateKeyPairResult#private_key_base_64 #private_key_base_64} => String
    #   * {Types::CreateKeyPairResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key_pair({
    #     key_pair_name: "ResourceName", # required
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
    #   resp.key_pair.name #=> String
    #   resp.key_pair.arn #=> String
    #   resp.key_pair.support_code #=> String
    #   resp.key_pair.created_at #=> Time
    #   resp.key_pair.location.availability_zone #=> String
    #   resp.key_pair.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.key_pair.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.key_pair.tags #=> Array
    #   resp.key_pair.tags[0].key #=> String
    #   resp.key_pair.tags[0].value #=> String
    #   resp.key_pair.fingerprint #=> String
    #   resp.public_key_base_64 #=> String
    #   resp.private_key_base_64 #=> String
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateKeyPair AWS API Documentation
    #
    # @overload create_key_pair(params = {})
    # @param [Hash] params ({})
    def create_key_pair(params = {}, options = {})
      req = build_request(:create_key_pair, params)
      req.send_request(options)
    end

    # Creates a Lightsail load balancer. To learn more about deciding
    # whether to load balance your application, see [Configure your
    # Lightsail instances for load balancing][1]. You can create up to 5
    # load balancers per AWS Region in your account.
    #
    # When you create a load balancer, you can specify a unique name and
    # port settings. To change additional load balancer settings, use the
    # `UpdateLoadBalancerAttribute` operation.
    #
    # The `create load balancer` operation supports tag-based access control
    # via request tags. For more information, see the [Lightsail Dev
    # Guide][2].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/how-to/article/configure-lightsail-instances-for-load-balancing
    # [2]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :load_balancer_name
    #   The name of your load balancer.
    #
    # @option params [required, Integer] :instance_port
    #   The instance port where you're creating your load balancer.
    #
    # @option params [String] :health_check_path
    #   The path you provided to perform the load balancer health check. If
    #   you didn't specify a health check path, Lightsail uses the root path
    #   of your website (e.g., `"/"`).
    #
    #   You may want to specify a custom health check path other than the root
    #   of your application if your home page loads slowly or has a lot of
    #   media or scripting on it.
    #
    # @option params [String] :certificate_name
    #   The name of the SSL/TLS certificate.
    #
    #   If you specify `certificateName`, then `certificateDomainName` is
    #   required (and vice-versa).
    #
    # @option params [String] :certificate_domain_name
    #   The domain name with which your certificate is associated (e.g.,
    #   `example.com`).
    #
    #   If you specify `certificateDomainName`, then `certificateName` is
    #   required (and vice-versa).
    #
    # @option params [Array<String>] :certificate_alternative_names
    #   The optional alternative domains and subdomains to use with your
    #   SSL/TLS certificate (e.g., `www.example.com`, `example.com`,
    #   `m.example.com`, `blog.example.com`).
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @return [Types::CreateLoadBalancerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLoadBalancerResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer({
    #     load_balancer_name: "ResourceName", # required
    #     instance_port: 1, # required
    #     health_check_path: "string",
    #     certificate_name: "ResourceName",
    #     certificate_domain_name: "DomainName",
    #     certificate_alternative_names: ["DomainName"],
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
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateLoadBalancer AWS API Documentation
    #
    # @overload create_load_balancer(params = {})
    # @param [Hash] params ({})
    def create_load_balancer(params = {}, options = {})
      req = build_request(:create_load_balancer, params)
      req.send_request(options)
    end

    # Creates a Lightsail load balancer TLS certificate.
    #
    # TLS is just an updated, more secure version of Secure Socket Layer
    # (SSL).
    #
    # The `CreateLoadBalancerTlsCertificate` operation supports tag-based
    # access control via resource tags applied to the resource identified by
    # `load balancer name`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :load_balancer_name
    #   The load balancer name where you want to create the SSL/TLS
    #   certificate.
    #
    # @option params [required, String] :certificate_name
    #   The SSL/TLS certificate name.
    #
    #   You can have up to 10 certificates in your account at one time. Each
    #   Lightsail load balancer can have up to 2 certificates associated with
    #   it at one time. There is also an overall limit to the number of
    #   certificates that can be issue in a 365-day period. For more
    #   information, see [Limits][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html
    #
    # @option params [required, String] :certificate_domain_name
    #   The domain name (e.g., `example.com`) for your SSL/TLS certificate.
    #
    # @option params [Array<String>] :certificate_alternative_names
    #   An array of strings listing alternative domains and subdomains for
    #   your SSL/TLS certificate. Lightsail will de-dupe the names for you.
    #   You can have a maximum of 9 alternative names (in addition to the 1
    #   primary domain). We do not support wildcards (e.g., `*.example.com`).
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @return [Types::CreateLoadBalancerTlsCertificateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLoadBalancerTlsCertificateResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer_tls_certificate({
    #     load_balancer_name: "ResourceName", # required
    #     certificate_name: "ResourceName", # required
    #     certificate_domain_name: "DomainName", # required
    #     certificate_alternative_names: ["DomainName"],
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
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateLoadBalancerTlsCertificate AWS API Documentation
    #
    # @overload create_load_balancer_tls_certificate(params = {})
    # @param [Hash] params ({})
    def create_load_balancer_tls_certificate(params = {}, options = {})
      req = build_request(:create_load_balancer_tls_certificate, params)
      req.send_request(options)
    end

    # Creates a new database in Amazon Lightsail.
    #
    # The `create relational database` operation supports tag-based access
    # control via request tags. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :relational_database_name
    #   The name to use for your new database.
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #
    # @option params [String] :availability_zone
    #   The Availability Zone in which to create your new database. Use the
    #   `us-east-2a` case-sensitive format.
    #
    #   You can get a list of Availability Zones by using the `get regions`
    #   operation. Be sure to add the `include relational database
    #   Availability Zones` parameter to your request.
    #
    # @option params [required, String] :relational_database_blueprint_id
    #   The blueprint ID for your new database. A blueprint describes the
    #   major engine version of a database.
    #
    #   You can get a list of database blueprints IDs by using the `get
    #   relational database blueprints` operation.
    #
    # @option params [required, String] :relational_database_bundle_id
    #   The bundle ID for your new database. A bundle describes the
    #   performance specifications for your database.
    #
    #   You can get a list of database bundle IDs by using the `get relational
    #   database bundles` operation.
    #
    # @option params [required, String] :master_database_name
    #   The name of the master database created when the Lightsail database
    #   resource is created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 64 alphanumeric characters.
    #
    #   * Cannot be a word reserved by the specified database engine
    #
    # @option params [required, String] :master_username
    #   The master user name for your new database.
    #
    #   Constraints:
    #
    #   * Master user name is required.
    #
    #   * Must contain from 1 to 16 alphanumeric characters.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word for the database engine you choose.
    #
    #     For more information about reserved words in MySQL 5.6 or 5.7, see
    #     the Keywords and Reserved Words articles for [MySQL 5.6][1] or
    #     [MySQL 5.7][2] respectively.
    #
    #
    #
    #   [1]: https://dev.mysql.com/doc/refman/5.6/en/keywords.html
    #   [2]: https://dev.mysql.com/doc/refman/5.7/en/keywords.html
    #
    # @option params [String] :master_user_password
    #   The password for the master user of your new database. The password
    #   can include any printable ASCII character except "/", """, or
    #   "@".
    #
    #   Constraints: Must contain 8 to 41 characters.
    #
    # @option params [String] :preferred_backup_window
    #   The daily time range during which automated backups are created for
    #   your new database if automated backups are enabled.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. For more information about the
    #   preferred backup window time blocks for each region, see the [Working
    #   With Backups][1] guide in the Amazon Relational Database Service
    #   (Amazon RDS) documentation.
    #
    #   Constraints:
    #
    #   * Must be in the `hh24:mi-hh24:mi` format.
    #
    #     Example: `16:00-16:30`
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur on
    #   your new database.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Constraints:
    #
    #   * Must be in the `ddd:hh24:mi-ddd:hh24:mi` format.
    #
    #   * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   * Must be at least 30 minutes.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Example: `Tue:17:00-Tue:17:30`
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies the accessibility options for your new database. A value of
    #   `true` specifies a database that is available to resources outside of
    #   your Lightsail account. A value of `false` specifies a database that
    #   is available only to your Lightsail resources in the same region as
    #   your database.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @return [Types::CreateRelationalDatabaseResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRelationalDatabaseResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_relational_database({
    #     relational_database_name: "ResourceName", # required
    #     availability_zone: "string",
    #     relational_database_blueprint_id: "string", # required
    #     relational_database_bundle_id: "string", # required
    #     master_database_name: "string", # required
    #     master_username: "string", # required
    #     master_user_password: "SensitiveString",
    #     preferred_backup_window: "string",
    #     preferred_maintenance_window: "string",
    #     publicly_accessible: false,
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
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabase AWS API Documentation
    #
    # @overload create_relational_database(params = {})
    # @param [Hash] params ({})
    def create_relational_database(params = {}, options = {})
      req = build_request(:create_relational_database, params)
      req.send_request(options)
    end

    # Creates a new database from an existing database snapshot in Amazon
    # Lightsail.
    #
    # You can create a new database from a snapshot in if something goes
    # wrong with your original database, or to change it to a different
    # plan, such as a high availability or standard plan.
    #
    # The `create relational database from snapshot` operation supports
    # tag-based access control via request tags and resource tags applied to
    # the resource identified by relationalDatabaseSnapshotName. For more
    # information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :relational_database_name
    #   The name to use for your new database.
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #
    # @option params [String] :availability_zone
    #   The Availability Zone in which to create your new database. Use the
    #   `us-east-2a` case-sensitive format.
    #
    #   You can get a list of Availability Zones by using the `get regions`
    #   operation. Be sure to add the `include relational database
    #   Availability Zones` parameter to your request.
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies the accessibility options for your new database. A value of
    #   `true` specifies a database that is available to resources outside of
    #   your Lightsail account. A value of `false` specifies a database that
    #   is available only to your Lightsail resources in the same region as
    #   your database.
    #
    # @option params [String] :relational_database_snapshot_name
    #   The name of the database snapshot from which to create your new
    #   database.
    #
    # @option params [String] :relational_database_bundle_id
    #   The bundle ID for your new database. A bundle describes the
    #   performance specifications for your database.
    #
    #   You can get a list of database bundle IDs by using the `get relational
    #   database bundles` operation.
    #
    #   When creating a new database from a snapshot, you cannot choose a
    #   bundle that is smaller than the bundle of the source database.
    #
    # @option params [String] :source_relational_database_name
    #   The name of the source database.
    #
    # @option params [Time,DateTime,Date,Integer,String] :restore_time
    #   The date and time to restore your database from.
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the database.
    #
    #   * Cannot be specified if the `use latest restorable time` parameter is
    #     `true`.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a restore time of October 1, 2018,
    #     at 8 PM UTC, then you input `1538424000` as the restore time.
    #
    # @option params [Boolean] :use_latest_restorable_time
    #   Specifies whether your database is restored from the latest backup
    #   time. A value of `true` restores from the latest backup time.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if the `restore time` parameter is
    #   provided.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @return [Types::CreateRelationalDatabaseFromSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRelationalDatabaseFromSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_relational_database_from_snapshot({
    #     relational_database_name: "ResourceName", # required
    #     availability_zone: "string",
    #     publicly_accessible: false,
    #     relational_database_snapshot_name: "ResourceName",
    #     relational_database_bundle_id: "string",
    #     source_relational_database_name: "ResourceName",
    #     restore_time: Time.now,
    #     use_latest_restorable_time: false,
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
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseFromSnapshot AWS API Documentation
    #
    # @overload create_relational_database_from_snapshot(params = {})
    # @param [Hash] params ({})
    def create_relational_database_from_snapshot(params = {}, options = {})
      req = build_request(:create_relational_database_from_snapshot, params)
      req.send_request(options)
    end

    # Creates a snapshot of your database in Amazon Lightsail. You can use
    # snapshots for backups, to make copies of a database, and to save data
    # before deleting a database.
    #
    # The `create relational database snapshot` operation supports tag-based
    # access control via request tags. For more information, see the
    # [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :relational_database_name
    #   The name of the database on which to base your new snapshot.
    #
    # @option params [required, String] :relational_database_snapshot_name
    #   The name for your new database snapshot.
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag keys and optional values to add to the resource during create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #
    # @return [Types::CreateRelationalDatabaseSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRelationalDatabaseSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_relational_database_snapshot({
    #     relational_database_name: "ResourceName", # required
    #     relational_database_snapshot_name: "ResourceName", # required
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
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseSnapshot AWS API Documentation
    #
    # @overload create_relational_database_snapshot(params = {})
    # @param [Hash] params ({})
    def create_relational_database_snapshot(params = {}, options = {})
      req = build_request(:create_relational_database_snapshot, params)
      req.send_request(options)
    end

    # Deletes an alarm.
    #
    # An alarm is used to monitor a single metric for one of your resources.
    # When a metric condition is met, the alarm can notify you by email, SMS
    # text message, and a banner displayed on the Amazon Lightsail console.
    # For more information, see [Alarms in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms
    #
    # @option params [required, String] :alarm_name
    #   The name of the alarm to delete.
    #
    # @return [Types::DeleteAlarmResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAlarmResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alarm({
    #     alarm_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteAlarm AWS API Documentation
    #
    # @overload delete_alarm(params = {})
    # @param [Hash] params ({})
    def delete_alarm(params = {}, options = {})
      req = build_request(:delete_alarm, params)
      req.send_request(options)
    end

    # Deletes an automatic snapshot of an instance or disk. For more
    # information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #
    # @option params [required, String] :resource_name
    #   The name of the source instance or disk from which to delete the
    #   automatic snapshot.
    #
    # @option params [required, String] :date
    #   The date of the automatic snapshot to delete in `YYYY-MM-DD` format.
    #   Use the `get auto snapshots` operation to get the available automatic
    #   snapshots for a resource.
    #
    # @return [Types::DeleteAutoSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAutoSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_auto_snapshot({
    #     resource_name: "ResourceName", # required
    #     date: "AutoSnapshotDate", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteAutoSnapshot AWS API Documentation
    #
    # @overload delete_auto_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_auto_snapshot(params = {}, options = {})
      req = build_request(:delete_auto_snapshot, params)
      req.send_request(options)
    end

    # Deletes a contact method.
    #
    # A contact method is used to send you notifications about your Amazon
    # Lightsail resources. You can add one email address and one mobile
    # phone number contact method in each AWS Region. However, SMS text
    # messaging is not supported in some AWS Regions, and SMS text messages
    # cannot be sent to some countries/regions. For more information, see
    # [Notifications in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications
    #
    # @option params [required, String] :protocol
    #   The protocol that will be deleted, such as `Email` or `SMS` (text
    #   messaging).
    #
    #   <note markdown="1"> To delete an `Email` and an `SMS` contact method if you added both,
    #   you must run separate `DeleteContactMethod` actions to delete each
    #   protocol.
    #
    #    </note>
    #
    # @return [Types::DeleteContactMethodResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteContactMethodResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_method({
    #     protocol: "Email", # required, accepts Email, SMS
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteContactMethod AWS API Documentation
    #
    # @overload delete_contact_method(params = {})
    # @param [Hash] params ({})
    def delete_contact_method(params = {}, options = {})
      req = build_request(:delete_contact_method, params)
      req.send_request(options)
    end

    # Deletes the specified block storage disk. The disk must be in the
    # `available` state (not attached to a Lightsail instance).
    #
    # <note markdown="1"> The disk may remain in the `deleting` state for several minutes.
    #
    #  </note>
    #
    # The `delete disk` operation supports tag-based access control via
    # resource tags applied to the resource identified by `disk name`. For
    # more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :disk_name
    #   The unique name of the disk you want to delete (e.g., `my-disk`).
    #
    # @option params [Boolean] :force_delete_add_ons
    #   A Boolean value to indicate whether to delete the enabled add-ons for
    #   the disk.
    #
    # @return [Types::DeleteDiskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDiskResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_disk({
    #     disk_name: "ResourceName", # required
    #     force_delete_add_ons: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDisk AWS API Documentation
    #
    # @overload delete_disk(params = {})
    # @param [Hash] params ({})
    def delete_disk(params = {}, options = {})
      req = build_request(:delete_disk, params)
      req.send_request(options)
    end

    # Deletes the specified disk snapshot.
    #
    # When you make periodic snapshots of a disk, the snapshots are
    # incremental, and only the blocks on the device that have changed since
    # your last snapshot are saved in the new snapshot. When you delete a
    # snapshot, only the data not needed for any other snapshot is removed.
    # So regardless of which prior snapshots have been deleted, all active
    # snapshots will have access to all the information needed to restore
    # the disk.
    #
    # The `delete disk snapshot` operation supports tag-based access control
    # via resource tags applied to the resource identified by `disk snapshot
    # name`. For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :disk_snapshot_name
    #   The name of the disk snapshot you want to delete (e.g.,
    #   `my-disk-snapshot`).
    #
    # @return [Types::DeleteDiskSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDiskSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_disk_snapshot({
    #     disk_snapshot_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDiskSnapshot AWS API Documentation
    #
    # @overload delete_disk_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_disk_snapshot(params = {}, options = {})
      req = build_request(:delete_disk_snapshot, params)
      req.send_request(options)
    end

    # Deletes the specified domain recordset and all of its domain records.
    #
    # The `delete domain` operation supports tag-based access control via
    # resource tags applied to the resource identified by `domain name`. For
    # more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :domain_name
    #   The specific domain name to delete.
    #
    # @return [Types::DeleteDomainResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Deletes a specific domain entry.
    #
    # The `delete domain entry` operation supports tag-based access control
    # via resource tags applied to the resource identified by `domain name`.
    # For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :domain_name
    #   The name of the domain entry to delete.
    #
    # @option params [required, Types::DomainEntry] :domain_entry
    #   An array of key-value pairs containing information about your domain
    #   entries.
    #
    # @return [Types::DeleteDomainEntryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainEntryResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_entry({
    #     domain_name: "DomainName", # required
    #     domain_entry: { # required
    #       id: "NonEmptyString",
    #       name: "DomainName",
    #       target: "string",
    #       is_alias: false,
    #       type: "DomainEntryType",
    #       options: {
    #         "DomainEntryOptionsKeys" => "string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainEntry AWS API Documentation
    #
    # @overload delete_domain_entry(params = {})
    # @param [Hash] params ({})
    def delete_domain_entry(params = {}, options = {})
      req = build_request(:delete_domain_entry, params)
      req.send_request(options)
    end

    # Deletes an Amazon Lightsail instance.
    #
    # The `delete instance` operation supports tag-based access control via
    # resource tags applied to the resource identified by `instance name`.
    # For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :instance_name
    #   The name of the instance to delete.
    #
    # @option params [Boolean] :force_delete_add_ons
    #   A Boolean value to indicate whether to delete the enabled add-ons for
    #   the disk.
    #
    # @return [Types::DeleteInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInstanceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance({
    #     instance_name: "ResourceName", # required
    #     force_delete_add_ons: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstance AWS API Documentation
    #
    # @overload delete_instance(params = {})
    # @param [Hash] params ({})
    def delete_instance(params = {}, options = {})
      req = build_request(:delete_instance, params)
      req.send_request(options)
    end

    # Deletes a specific snapshot of a virtual private server (or
    # *instance*).
    #
    # The `delete instance snapshot` operation supports tag-based access
    # control via resource tags applied to the resource identified by
    # `instance snapshot name`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :instance_snapshot_name
    #   The name of the snapshot to delete.
    #
    # @return [Types::DeleteInstanceSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInstanceSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance_snapshot({
    #     instance_snapshot_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceSnapshot AWS API Documentation
    #
    # @overload delete_instance_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_instance_snapshot(params = {}, options = {})
      req = build_request(:delete_instance_snapshot, params)
      req.send_request(options)
    end

    # Deletes a specific SSH key pair.
    #
    # The `delete key pair` operation supports tag-based access control via
    # resource tags applied to the resource identified by `key pair name`.
    # For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :key_pair_name
    #   The name of the key pair to delete.
    #
    # @return [Types::DeleteKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteKeyPairResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key_pair({
    #     key_pair_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKeyPair AWS API Documentation
    #
    # @overload delete_key_pair(params = {})
    # @param [Hash] params ({})
    def delete_key_pair(params = {}, options = {})
      req = build_request(:delete_key_pair, params)
      req.send_request(options)
    end

    # Deletes the known host key or certificate used by the Amazon Lightsail
    # browser-based SSH or RDP clients to authenticate an instance. This
    # operation enables the Lightsail browser-based SSH or RDP clients to
    # connect to the instance after a host key mismatch.
    #
    # Perform this operation only if you were expecting the host key or
    # certificate mismatch or if you are familiar with the new host key or
    # certificate on the instance. For more information, see
    # [Troubleshooting connection issues when using the Amazon Lightsail
    # browser-based SSH or RDP client][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-troubleshooting-browser-based-ssh-rdp-client-connection
    #
    # @option params [required, String] :instance_name
    #   The name of the instance for which you want to reset the host key or
    #   certificate.
    #
    # @return [Types::DeleteKnownHostKeysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteKnownHostKeysResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_known_host_keys({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKnownHostKeys AWS API Documentation
    #
    # @overload delete_known_host_keys(params = {})
    # @param [Hash] params ({})
    def delete_known_host_keys(params = {}, options = {})
      req = build_request(:delete_known_host_keys, params)
      req.send_request(options)
    end

    # Deletes a Lightsail load balancer and all its associated SSL/TLS
    # certificates. Once the load balancer is deleted, you will need to
    # create a new load balancer, create a new certificate, and verify
    # domain ownership again.
    #
    # The `delete load balancer` operation supports tag-based access control
    # via resource tags applied to the resource identified by `load balancer
    # name`. For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer you want to delete.
    #
    # @return [Types::DeleteLoadBalancerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLoadBalancerResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer({
    #     load_balancer_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteLoadBalancer AWS API Documentation
    #
    # @overload delete_load_balancer(params = {})
    # @param [Hash] params ({})
    def delete_load_balancer(params = {}, options = {})
      req = build_request(:delete_load_balancer, params)
      req.send_request(options)
    end

    # Deletes an SSL/TLS certificate associated with a Lightsail load
    # balancer.
    #
    # The `DeleteLoadBalancerTlsCertificate` operation supports tag-based
    # access control via resource tags applied to the resource identified by
    # `load balancer name`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :load_balancer_name
    #   The load balancer name.
    #
    # @option params [required, String] :certificate_name
    #   The SSL/TLS certificate name.
    #
    # @option params [Boolean] :force
    #   When `true`, forces the deletion of an SSL/TLS certificate.
    #
    #   There can be two certificates associated with a Lightsail load
    #   balancer: the primary and the backup. The `force` parameter is
    #   required when the primary SSL/TLS certificate is in use by an instance
    #   attached to the load balancer.
    #
    # @return [Types::DeleteLoadBalancerTlsCertificateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLoadBalancerTlsCertificateResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer_tls_certificate({
    #     load_balancer_name: "ResourceName", # required
    #     certificate_name: "ResourceName", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteLoadBalancerTlsCertificate AWS API Documentation
    #
    # @overload delete_load_balancer_tls_certificate(params = {})
    # @param [Hash] params ({})
    def delete_load_balancer_tls_certificate(params = {}, options = {})
      req = build_request(:delete_load_balancer_tls_certificate, params)
      req.send_request(options)
    end

    # Deletes a database in Amazon Lightsail.
    #
    # The `delete relational database` operation supports tag-based access
    # control via resource tags applied to the resource identified by
    # relationalDatabaseName. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :relational_database_name
    #   The name of the database that you are deleting.
    #
    # @option params [Boolean] :skip_final_snapshot
    #   Determines whether a final database snapshot is created before your
    #   database is deleted. If `true` is specified, no database snapshot is
    #   created. If `false` is specified, a database snapshot is created
    #   before your database is deleted.
    #
    #   You must specify the `final relational database snapshot name`
    #   parameter if the `skip final snapshot` parameter is `false`.
    #
    #   Default: `false`
    #
    # @option params [String] :final_relational_database_snapshot_name
    #   The name of the database snapshot created if `skip final snapshot` is
    #   `false`, which is the default value for that parameter.
    #
    #   <note markdown="1"> Specifying this parameter and also specifying the `skip final
    #   snapshot` parameter to `true` results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #
    # @return [Types::DeleteRelationalDatabaseResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRelationalDatabaseResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_relational_database({
    #     relational_database_name: "ResourceName", # required
    #     skip_final_snapshot: false,
    #     final_relational_database_snapshot_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteRelationalDatabase AWS API Documentation
    #
    # @overload delete_relational_database(params = {})
    # @param [Hash] params ({})
    def delete_relational_database(params = {}, options = {})
      req = build_request(:delete_relational_database, params)
      req.send_request(options)
    end

    # Deletes a database snapshot in Amazon Lightsail.
    #
    # The `delete relational database snapshot` operation supports tag-based
    # access control via resource tags applied to the resource identified by
    # relationalDatabaseName. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :relational_database_snapshot_name
    #   The name of the database snapshot that you are deleting.
    #
    # @return [Types::DeleteRelationalDatabaseSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRelationalDatabaseSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_relational_database_snapshot({
    #     relational_database_snapshot_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteRelationalDatabaseSnapshot AWS API Documentation
    #
    # @overload delete_relational_database_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_relational_database_snapshot(params = {}, options = {})
      req = build_request(:delete_relational_database_snapshot, params)
      req.send_request(options)
    end

    # Detaches a stopped block storage disk from a Lightsail instance. Make
    # sure to unmount any file systems on the device within your operating
    # system before stopping the instance and detaching the disk.
    #
    # The `detach disk` operation supports tag-based access control via
    # resource tags applied to the resource identified by `disk name`. For
    # more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :disk_name
    #   The unique name of the disk you want to detach from your instance
    #   (e.g., `my-disk`).
    #
    # @return [Types::DetachDiskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachDiskResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_disk({
    #     disk_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachDisk AWS API Documentation
    #
    # @overload detach_disk(params = {})
    # @param [Hash] params ({})
    def detach_disk(params = {}, options = {})
      req = build_request(:detach_disk, params)
      req.send_request(options)
    end

    # Detaches the specified instances from a Lightsail load balancer.
    #
    # This operation waits until the instances are no longer needed before
    # they are detached from the load balancer.
    #
    # The `detach instances from load balancer` operation supports tag-based
    # access control via resource tags applied to the resource identified by
    # `load balancer name`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the Lightsail load balancer.
    #
    # @option params [required, Array<String>] :instance_names
    #   An array of strings containing the names of the instances you want to
    #   detach from the load balancer.
    #
    # @return [Types::DetachInstancesFromLoadBalancerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachInstancesFromLoadBalancerResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_instances_from_load_balancer({
    #     load_balancer_name: "ResourceName", # required
    #     instance_names: ["ResourceName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachInstancesFromLoadBalancer AWS API Documentation
    #
    # @overload detach_instances_from_load_balancer(params = {})
    # @param [Hash] params ({})
    def detach_instances_from_load_balancer(params = {}, options = {})
      req = build_request(:detach_instances_from_load_balancer, params)
      req.send_request(options)
    end

    # Detaches a static IP from the Amazon Lightsail instance to which it is
    # attached.
    #
    # @option params [required, String] :static_ip_name
    #   The name of the static IP to detach from the instance.
    #
    # @return [Types::DetachStaticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachStaticIpResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_static_ip({
    #     static_ip_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachStaticIp AWS API Documentation
    #
    # @overload detach_static_ip(params = {})
    # @param [Hash] params ({})
    def detach_static_ip(params = {}, options = {})
      req = build_request(:detach_static_ip, params)
      req.send_request(options)
    end

    # Disables an add-on for an Amazon Lightsail resource. For more
    # information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #
    # @option params [required, String] :add_on_type
    #   The add-on type to disable.
    #
    # @option params [required, String] :resource_name
    #   The name of the source resource for which to disable the add-on.
    #
    # @return [Types::DisableAddOnResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableAddOnResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_add_on({
    #     add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #     resource_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DisableAddOn AWS API Documentation
    #
    # @overload disable_add_on(params = {})
    # @param [Hash] params ({})
    def disable_add_on(params = {}, options = {})
      req = build_request(:disable_add_on, params)
      req.send_request(options)
    end

    # Downloads the default SSH key pair from the user's account.
    #
    # @return [Types::DownloadDefaultKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DownloadDefaultKeyPairResult#public_key_base_64 #public_key_base_64} => String
    #   * {Types::DownloadDefaultKeyPairResult#private_key_base_64 #private_key_base_64} => String
    #
    # @example Response structure
    #
    #   resp.public_key_base_64 #=> String
    #   resp.private_key_base_64 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DownloadDefaultKeyPair AWS API Documentation
    #
    # @overload download_default_key_pair(params = {})
    # @param [Hash] params ({})
    def download_default_key_pair(params = {}, options = {})
      req = build_request(:download_default_key_pair, params)
      req.send_request(options)
    end

    # Enables or modifies an add-on for an Amazon Lightsail resource. For
    # more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #
    # @option params [required, String] :resource_name
    #   The name of the source resource for which to enable or modify the
    #   add-on.
    #
    # @option params [required, Types::AddOnRequest] :add_on_request
    #   An array of strings representing the add-on to enable or modify.
    #
    # @return [Types::EnableAddOnResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableAddOnResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_add_on({
    #     resource_name: "ResourceName", # required
    #     add_on_request: { # required
    #       add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #       auto_snapshot_add_on_request: {
    #         snapshot_time_of_day: "TimeOfDay",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/EnableAddOn AWS API Documentation
    #
    # @overload enable_add_on(params = {})
    # @param [Hash] params ({})
    def enable_add_on(params = {}, options = {})
      req = build_request(:enable_add_on, params)
      req.send_request(options)
    end

    # Exports an Amazon Lightsail instance or block storage disk snapshot to
    # Amazon Elastic Compute Cloud (Amazon EC2). This operation results in
    # an export snapshot record that can be used with the `create cloud
    # formation stack` operation to create new Amazon EC2 instances.
    #
    # Exported instance snapshots appear in Amazon EC2 as Amazon Machine
    # Images (AMIs), and the instance system disk appears as an Amazon
    # Elastic Block Store (Amazon EBS) volume. Exported disk snapshots
    # appear in Amazon EC2 as Amazon EBS volumes. Snapshots are exported to
    # the same Amazon Web Services Region in Amazon EC2 as the source
    # Lightsail snapshot.
    #
    #
    #
    # The `export snapshot` operation supports tag-based access control via
    # resource tags applied to the resource identified by `source snapshot
    # name`. For more information, see the [Lightsail Dev Guide][1].
    #
    # <note markdown="1"> Use the `get instance snapshots` or `get disk snapshots` operations to
    # get a list of snapshots that you can export to Amazon EC2.
    #
    #  </note>
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :source_snapshot_name
    #   The name of the instance or disk snapshot to be exported to Amazon
    #   EC2.
    #
    # @return [Types::ExportSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportSnapshotResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_snapshot({
    #     source_snapshot_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ExportSnapshot AWS API Documentation
    #
    # @overload export_snapshot(params = {})
    # @param [Hash] params ({})
    def export_snapshot(params = {}, options = {})
      req = build_request(:export_snapshot, params)
      req.send_request(options)
    end

    # Returns the names of all active (not deleted) resources.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetActiveNames` request. If
    #   your results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetActiveNamesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetActiveNamesResult#active_names #active_names} => Array&lt;String&gt;
    #   * {Types::GetActiveNamesResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_active_names({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.active_names #=> Array
    #   resp.active_names[0] #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetActiveNames AWS API Documentation
    #
    # @overload get_active_names(params = {})
    # @param [Hash] params ({})
    def get_active_names(params = {}, options = {})
      req = build_request(:get_active_names, params)
      req.send_request(options)
    end

    # Returns information about the configured alarms. Specify an alarm name
    # in your request to return information about a specific alarm, or
    # specify a monitored resource name to return information about all
    # alarms for a specific resource.
    #
    # An alarm is used to monitor a single metric for one of your resources.
    # When a metric condition is met, the alarm can notify you by email, SMS
    # text message, and a banner displayed on the Amazon Lightsail console.
    # For more information, see [Alarms in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms
    #
    # @option params [String] :alarm_name
    #   The name of the alarm.
    #
    #   Specify an alarm name to return information about a specific alarm.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetAlarms` request. If your
    #   results are paginated, the response will return a next page token that
    #   you can specify as the page token in a subsequent request.
    #
    # @option params [String] :monitored_resource_name
    #   The name of the Lightsail resource being monitored by the alarm.
    #
    #   Specify a monitored resource name to return information about all
    #   alarms for a specific resource.
    #
    # @return [Types::GetAlarmsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAlarmsResult#alarms #alarms} => Array&lt;Types::Alarm&gt;
    #   * {Types::GetAlarmsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alarms({
    #     alarm_name: "ResourceName",
    #     page_token: "string",
    #     monitored_resource_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.alarms #=> Array
    #   resp.alarms[0].name #=> String
    #   resp.alarms[0].arn #=> String
    #   resp.alarms[0].created_at #=> Time
    #   resp.alarms[0].location.availability_zone #=> String
    #   resp.alarms[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.alarms[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.alarms[0].support_code #=> String
    #   resp.alarms[0].monitored_resource_info.arn #=> String
    #   resp.alarms[0].monitored_resource_info.name #=> String
    #   resp.alarms[0].monitored_resource_info.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.alarms[0].comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
    #   resp.alarms[0].evaluation_periods #=> Integer
    #   resp.alarms[0].period #=> Integer
    #   resp.alarms[0].threshold #=> Float
    #   resp.alarms[0].datapoints_to_alarm #=> Integer
    #   resp.alarms[0].treat_missing_data #=> String, one of "breaching", "notBreaching", "ignore", "missing"
    #   resp.alarms[0].statistic #=> String, one of "Minimum", "Maximum", "Sum", "Average", "SampleCount"
    #   resp.alarms[0].metric_name #=> String, one of "CPUUtilization", "NetworkIn", "NetworkOut", "StatusCheckFailed", "StatusCheckFailed_Instance", "StatusCheckFailed_System", "ClientTLSNegotiationErrorCount", "HealthyHostCount", "UnhealthyHostCount", "HTTPCode_LB_4XX_Count", "HTTPCode_LB_5XX_Count", "HTTPCode_Instance_2XX_Count", "HTTPCode_Instance_3XX_Count", "HTTPCode_Instance_4XX_Count", "HTTPCode_Instance_5XX_Count", "InstanceResponseTime", "RejectedConnectionCount", "RequestCount", "DatabaseConnections", "DiskQueueDepth", "FreeStorageSpace", "NetworkReceiveThroughput", "NetworkTransmitThroughput", "BurstCapacityTime", "BurstCapacityPercentage"
    #   resp.alarms[0].state #=> String, one of "OK", "ALARM", "INSUFFICIENT_DATA"
    #   resp.alarms[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.alarms[0].contact_protocols #=> Array
    #   resp.alarms[0].contact_protocols[0] #=> String, one of "Email", "SMS"
    #   resp.alarms[0].notification_triggers #=> Array
    #   resp.alarms[0].notification_triggers[0] #=> String, one of "OK", "ALARM", "INSUFFICIENT_DATA"
    #   resp.alarms[0].notification_enabled #=> Boolean
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetAlarms AWS API Documentation
    #
    # @overload get_alarms(params = {})
    # @param [Hash] params ({})
    def get_alarms(params = {}, options = {})
      req = build_request(:get_alarms, params)
      req.send_request(options)
    end

    # Returns the available automatic snapshots for an instance or disk. For
    # more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #
    # @option params [required, String] :resource_name
    #   The name of the source instance or disk from which to get automatic
    #   snapshot information.
    #
    # @return [Types::GetAutoSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutoSnapshotsResult#resource_name #resource_name} => String
    #   * {Types::GetAutoSnapshotsResult#resource_type #resource_type} => String
    #   * {Types::GetAutoSnapshotsResult#auto_snapshots #auto_snapshots} => Array&lt;Types::AutoSnapshotDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_auto_snapshots({
    #     resource_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_name #=> String
    #   resp.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.auto_snapshots #=> Array
    #   resp.auto_snapshots[0].date #=> String
    #   resp.auto_snapshots[0].created_at #=> Time
    #   resp.auto_snapshots[0].status #=> String, one of "Success", "Failed", "InProgress", "NotFound"
    #   resp.auto_snapshots[0].from_attached_disks #=> Array
    #   resp.auto_snapshots[0].from_attached_disks[0].path #=> String
    #   resp.auto_snapshots[0].from_attached_disks[0].size_in_gb #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetAutoSnapshots AWS API Documentation
    #
    # @overload get_auto_snapshots(params = {})
    # @param [Hash] params ({})
    def get_auto_snapshots(params = {}, options = {})
      req = build_request(:get_auto_snapshots, params)
      req.send_request(options)
    end

    # Returns the list of available instance images, or *blueprints*. You
    # can use a blueprint to create a new instance already running a
    # specific operating system, as well as a preinstalled app or
    # development stack. The software each instance is running depends on
    # the blueprint image you choose.
    #
    # <note markdown="1"> Use active blueprints when creating new instances. Inactive blueprints
    # are listed to support customers with existing instances and are not
    # necessarily available to create new instances. Blueprints are marked
    # inactive when they become outdated due to operating system updates or
    # new application releases.
    #
    #  </note>
    #
    # @option params [Boolean] :include_inactive
    #   A Boolean value indicating whether to include inactive results in your
    #   request.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetBlueprints` request. If
    #   your results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetBlueprintsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlueprintsResult#blueprints #blueprints} => Array&lt;Types::Blueprint&gt;
    #   * {Types::GetBlueprintsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blueprints({
    #     include_inactive: false,
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprints #=> Array
    #   resp.blueprints[0].blueprint_id #=> String
    #   resp.blueprints[0].name #=> String
    #   resp.blueprints[0].group #=> String
    #   resp.blueprints[0].type #=> String, one of "os", "app"
    #   resp.blueprints[0].description #=> String
    #   resp.blueprints[0].is_active #=> Boolean
    #   resp.blueprints[0].min_power #=> Integer
    #   resp.blueprints[0].version #=> String
    #   resp.blueprints[0].version_code #=> String
    #   resp.blueprints[0].product_url #=> String
    #   resp.blueprints[0].license_url #=> String
    #   resp.blueprints[0].platform #=> String, one of "LINUX_UNIX", "WINDOWS"
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBlueprints AWS API Documentation
    #
    # @overload get_blueprints(params = {})
    # @param [Hash] params ({})
    def get_blueprints(params = {}, options = {})
      req = build_request(:get_blueprints, params)
      req.send_request(options)
    end

    # Returns the list of bundles that are available for purchase. A bundle
    # describes the specs for your virtual private server (or *instance*).
    #
    # @option params [Boolean] :include_inactive
    #   A Boolean value that indicates whether to include inactive bundle
    #   results in your request.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetBundles` request. If your
    #   results are paginated, the response will return a next page token that
    #   you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetBundlesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBundlesResult#bundles #bundles} => Array&lt;Types::Bundle&gt;
    #   * {Types::GetBundlesResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bundles({
    #     include_inactive: false,
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.bundles #=> Array
    #   resp.bundles[0].price #=> Float
    #   resp.bundles[0].cpu_count #=> Integer
    #   resp.bundles[0].disk_size_in_gb #=> Integer
    #   resp.bundles[0].bundle_id #=> String
    #   resp.bundles[0].instance_type #=> String
    #   resp.bundles[0].is_active #=> Boolean
    #   resp.bundles[0].name #=> String
    #   resp.bundles[0].power #=> Integer
    #   resp.bundles[0].ram_size_in_gb #=> Float
    #   resp.bundles[0].transfer_per_month_in_gb #=> Integer
    #   resp.bundles[0].supported_platforms #=> Array
    #   resp.bundles[0].supported_platforms[0] #=> String, one of "LINUX_UNIX", "WINDOWS"
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBundles AWS API Documentation
    #
    # @overload get_bundles(params = {})
    # @param [Hash] params ({})
    def get_bundles(params = {}, options = {})
      req = build_request(:get_bundles, params)
      req.send_request(options)
    end

    # Returns the CloudFormation stack record created as a result of the
    # `create cloud formation stack` operation.
    #
    # An AWS CloudFormation stack is used to create a new Amazon EC2
    # instance from an exported Lightsail snapshot.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetClouFormationStackRecords`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a subsequent
    #   request.
    #
    # @return [Types::GetCloudFormationStackRecordsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudFormationStackRecordsResult#cloud_formation_stack_records #cloud_formation_stack_records} => Array&lt;Types::CloudFormationStackRecord&gt;
    #   * {Types::GetCloudFormationStackRecordsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_formation_stack_records({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_formation_stack_records #=> Array
    #   resp.cloud_formation_stack_records[0].name #=> String
    #   resp.cloud_formation_stack_records[0].arn #=> String
    #   resp.cloud_formation_stack_records[0].created_at #=> Time
    #   resp.cloud_formation_stack_records[0].location.availability_zone #=> String
    #   resp.cloud_formation_stack_records[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.cloud_formation_stack_records[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.cloud_formation_stack_records[0].state #=> String, one of "Started", "Succeeded", "Failed"
    #   resp.cloud_formation_stack_records[0].source_info #=> Array
    #   resp.cloud_formation_stack_records[0].source_info[0].resource_type #=> String, one of "ExportSnapshotRecord"
    #   resp.cloud_formation_stack_records[0].source_info[0].name #=> String
    #   resp.cloud_formation_stack_records[0].source_info[0].arn #=> String
    #   resp.cloud_formation_stack_records[0].destination_info.id #=> String
    #   resp.cloud_formation_stack_records[0].destination_info.service #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetCloudFormationStackRecords AWS API Documentation
    #
    # @overload get_cloud_formation_stack_records(params = {})
    # @param [Hash] params ({})
    def get_cloud_formation_stack_records(params = {}, options = {})
      req = build_request(:get_cloud_formation_stack_records, params)
      req.send_request(options)
    end

    # Returns information about the configured contact methods. Specify a
    # protocol in your request to return information about a specific
    # contact method.
    #
    # A contact method is used to send you notifications about your Amazon
    # Lightsail resources. You can add one email address and one mobile
    # phone number contact method in each AWS Region. However, SMS text
    # messaging is not supported in some AWS Regions, and SMS text messages
    # cannot be sent to some countries/regions. For more information, see
    # [Notifications in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications
    #
    # @option params [Array<String>] :protocols
    #   The protocols used to send notifications, such as `Email`, or `SMS`
    #   (text messaging).
    #
    #   Specify a protocol in your request to return information about a
    #   specific contact method protocol.
    #
    # @return [Types::GetContactMethodsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactMethodsResult#contact_methods #contact_methods} => Array&lt;Types::ContactMethod&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_methods({
    #     protocols: ["Email"], # accepts Email, SMS
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_methods #=> Array
    #   resp.contact_methods[0].contact_endpoint #=> String
    #   resp.contact_methods[0].status #=> String, one of "PendingVerification", "Valid", "Invalid"
    #   resp.contact_methods[0].protocol #=> String, one of "Email", "SMS"
    #   resp.contact_methods[0].name #=> String
    #   resp.contact_methods[0].arn #=> String
    #   resp.contact_methods[0].created_at #=> Time
    #   resp.contact_methods[0].location.availability_zone #=> String
    #   resp.contact_methods[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.contact_methods[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.contact_methods[0].support_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContactMethods AWS API Documentation
    #
    # @overload get_contact_methods(params = {})
    # @param [Hash] params ({})
    def get_contact_methods(params = {}, options = {})
      req = build_request(:get_contact_methods, params)
      req.send_request(options)
    end

    # Returns information about a specific block storage disk.
    #
    # @option params [required, String] :disk_name
    #   The name of the disk (e.g., `my-disk`).
    #
    # @return [Types::GetDiskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDiskResult#disk #disk} => Types::Disk
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_disk({
    #     disk_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.disk.name #=> String
    #   resp.disk.arn #=> String
    #   resp.disk.support_code #=> String
    #   resp.disk.created_at #=> Time
    #   resp.disk.location.availability_zone #=> String
    #   resp.disk.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.disk.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.disk.tags #=> Array
    #   resp.disk.tags[0].key #=> String
    #   resp.disk.tags[0].value #=> String
    #   resp.disk.add_ons #=> Array
    #   resp.disk.add_ons[0].name #=> String
    #   resp.disk.add_ons[0].status #=> String
    #   resp.disk.add_ons[0].snapshot_time_of_day #=> String
    #   resp.disk.add_ons[0].next_snapshot_time_of_day #=> String
    #   resp.disk.size_in_gb #=> Integer
    #   resp.disk.is_system_disk #=> Boolean
    #   resp.disk.iops #=> Integer
    #   resp.disk.path #=> String
    #   resp.disk.state #=> String, one of "pending", "error", "available", "in-use", "unknown"
    #   resp.disk.attached_to #=> String
    #   resp.disk.is_attached #=> Boolean
    #   resp.disk.attachment_state #=> String
    #   resp.disk.gb_in_use #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDisk AWS API Documentation
    #
    # @overload get_disk(params = {})
    # @param [Hash] params ({})
    def get_disk(params = {}, options = {})
      req = build_request(:get_disk, params)
      req.send_request(options)
    end

    # Returns information about a specific block storage disk snapshot.
    #
    # @option params [required, String] :disk_snapshot_name
    #   The name of the disk snapshot (e.g., `my-disk-snapshot`).
    #
    # @return [Types::GetDiskSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDiskSnapshotResult#disk_snapshot #disk_snapshot} => Types::DiskSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_disk_snapshot({
    #     disk_snapshot_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.disk_snapshot.name #=> String
    #   resp.disk_snapshot.arn #=> String
    #   resp.disk_snapshot.support_code #=> String
    #   resp.disk_snapshot.created_at #=> Time
    #   resp.disk_snapshot.location.availability_zone #=> String
    #   resp.disk_snapshot.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.disk_snapshot.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.disk_snapshot.tags #=> Array
    #   resp.disk_snapshot.tags[0].key #=> String
    #   resp.disk_snapshot.tags[0].value #=> String
    #   resp.disk_snapshot.size_in_gb #=> Integer
    #   resp.disk_snapshot.state #=> String, one of "pending", "completed", "error", "unknown"
    #   resp.disk_snapshot.progress #=> String
    #   resp.disk_snapshot.from_disk_name #=> String
    #   resp.disk_snapshot.from_disk_arn #=> String
    #   resp.disk_snapshot.from_instance_name #=> String
    #   resp.disk_snapshot.from_instance_arn #=> String
    #   resp.disk_snapshot.is_from_auto_snapshot #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskSnapshot AWS API Documentation
    #
    # @overload get_disk_snapshot(params = {})
    # @param [Hash] params ({})
    def get_disk_snapshot(params = {}, options = {})
      req = build_request(:get_disk_snapshot, params)
      req.send_request(options)
    end

    # Returns information about all block storage disk snapshots in your AWS
    # account and region.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetDiskSnapshots` request. If
    #   your results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetDiskSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDiskSnapshotsResult#disk_snapshots #disk_snapshots} => Array&lt;Types::DiskSnapshot&gt;
    #   * {Types::GetDiskSnapshotsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_disk_snapshots({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.disk_snapshots #=> Array
    #   resp.disk_snapshots[0].name #=> String
    #   resp.disk_snapshots[0].arn #=> String
    #   resp.disk_snapshots[0].support_code #=> String
    #   resp.disk_snapshots[0].created_at #=> Time
    #   resp.disk_snapshots[0].location.availability_zone #=> String
    #   resp.disk_snapshots[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.disk_snapshots[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.disk_snapshots[0].tags #=> Array
    #   resp.disk_snapshots[0].tags[0].key #=> String
    #   resp.disk_snapshots[0].tags[0].value #=> String
    #   resp.disk_snapshots[0].size_in_gb #=> Integer
    #   resp.disk_snapshots[0].state #=> String, one of "pending", "completed", "error", "unknown"
    #   resp.disk_snapshots[0].progress #=> String
    #   resp.disk_snapshots[0].from_disk_name #=> String
    #   resp.disk_snapshots[0].from_disk_arn #=> String
    #   resp.disk_snapshots[0].from_instance_name #=> String
    #   resp.disk_snapshots[0].from_instance_arn #=> String
    #   resp.disk_snapshots[0].is_from_auto_snapshot #=> Boolean
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskSnapshots AWS API Documentation
    #
    # @overload get_disk_snapshots(params = {})
    # @param [Hash] params ({})
    def get_disk_snapshots(params = {}, options = {})
      req = build_request(:get_disk_snapshots, params)
      req.send_request(options)
    end

    # Returns information about all block storage disks in your AWS account
    # and region.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetDisks` request. If your
    #   results are paginated, the response will return a next page token that
    #   you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetDisksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDisksResult#disks #disks} => Array&lt;Types::Disk&gt;
    #   * {Types::GetDisksResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_disks({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.disks #=> Array
    #   resp.disks[0].name #=> String
    #   resp.disks[0].arn #=> String
    #   resp.disks[0].support_code #=> String
    #   resp.disks[0].created_at #=> Time
    #   resp.disks[0].location.availability_zone #=> String
    #   resp.disks[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.disks[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.disks[0].tags #=> Array
    #   resp.disks[0].tags[0].key #=> String
    #   resp.disks[0].tags[0].value #=> String
    #   resp.disks[0].add_ons #=> Array
    #   resp.disks[0].add_ons[0].name #=> String
    #   resp.disks[0].add_ons[0].status #=> String
    #   resp.disks[0].add_ons[0].snapshot_time_of_day #=> String
    #   resp.disks[0].add_ons[0].next_snapshot_time_of_day #=> String
    #   resp.disks[0].size_in_gb #=> Integer
    #   resp.disks[0].is_system_disk #=> Boolean
    #   resp.disks[0].iops #=> Integer
    #   resp.disks[0].path #=> String
    #   resp.disks[0].state #=> String, one of "pending", "error", "available", "in-use", "unknown"
    #   resp.disks[0].attached_to #=> String
    #   resp.disks[0].is_attached #=> Boolean
    #   resp.disks[0].attachment_state #=> String
    #   resp.disks[0].gb_in_use #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDisks AWS API Documentation
    #
    # @overload get_disks(params = {})
    # @param [Hash] params ({})
    def get_disks(params = {}, options = {})
      req = build_request(:get_disks, params)
      req.send_request(options)
    end

    # Returns information about a specific domain recordset.
    #
    # @option params [required, String] :domain_name
    #   The domain name for which your want to return information about.
    #
    # @return [Types::GetDomainResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainResult#domain #domain} => Types::Domain
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain.name #=> String
    #   resp.domain.arn #=> String
    #   resp.domain.support_code #=> String
    #   resp.domain.created_at #=> Time
    #   resp.domain.location.availability_zone #=> String
    #   resp.domain.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.domain.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.domain.tags #=> Array
    #   resp.domain.tags[0].key #=> String
    #   resp.domain.tags[0].value #=> String
    #   resp.domain.domain_entries #=> Array
    #   resp.domain.domain_entries[0].id #=> String
    #   resp.domain.domain_entries[0].name #=> String
    #   resp.domain.domain_entries[0].target #=> String
    #   resp.domain.domain_entries[0].is_alias #=> Boolean
    #   resp.domain.domain_entries[0].type #=> String
    #   resp.domain.domain_entries[0].options #=> Hash
    #   resp.domain.domain_entries[0].options["DomainEntryOptionsKeys"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomain AWS API Documentation
    #
    # @overload get_domain(params = {})
    # @param [Hash] params ({})
    def get_domain(params = {}, options = {})
      req = build_request(:get_domain, params)
      req.send_request(options)
    end

    # Returns a list of all domains in the user's account.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetDomains` request. If your
    #   results are paginated, the response will return a next page token that
    #   you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetDomainsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainsResult#domains #domains} => Array&lt;Types::Domain&gt;
    #   * {Types::GetDomainsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domains({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.domains #=> Array
    #   resp.domains[0].name #=> String
    #   resp.domains[0].arn #=> String
    #   resp.domains[0].support_code #=> String
    #   resp.domains[0].created_at #=> Time
    #   resp.domains[0].location.availability_zone #=> String
    #   resp.domains[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.domains[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.domains[0].tags #=> Array
    #   resp.domains[0].tags[0].key #=> String
    #   resp.domains[0].tags[0].value #=> String
    #   resp.domains[0].domain_entries #=> Array
    #   resp.domains[0].domain_entries[0].id #=> String
    #   resp.domains[0].domain_entries[0].name #=> String
    #   resp.domains[0].domain_entries[0].target #=> String
    #   resp.domains[0].domain_entries[0].is_alias #=> Boolean
    #   resp.domains[0].domain_entries[0].type #=> String
    #   resp.domains[0].domain_entries[0].options #=> Hash
    #   resp.domains[0].domain_entries[0].options["DomainEntryOptionsKeys"] #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomains AWS API Documentation
    #
    # @overload get_domains(params = {})
    # @param [Hash] params ({})
    def get_domains(params = {}, options = {})
      req = build_request(:get_domains, params)
      req.send_request(options)
    end

    # Returns the export snapshot record created as a result of the `export
    # snapshot` operation.
    #
    # An export snapshot record can be used to create a new Amazon EC2
    # instance and its related resources with the `create cloud formation
    # stack` operation.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetExportSnapshotRecords`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a subsequent
    #   request.
    #
    # @return [Types::GetExportSnapshotRecordsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExportSnapshotRecordsResult#export_snapshot_records #export_snapshot_records} => Array&lt;Types::ExportSnapshotRecord&gt;
    #   * {Types::GetExportSnapshotRecordsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_export_snapshot_records({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.export_snapshot_records #=> Array
    #   resp.export_snapshot_records[0].name #=> String
    #   resp.export_snapshot_records[0].arn #=> String
    #   resp.export_snapshot_records[0].created_at #=> Time
    #   resp.export_snapshot_records[0].location.availability_zone #=> String
    #   resp.export_snapshot_records[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.export_snapshot_records[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.export_snapshot_records[0].state #=> String, one of "Started", "Succeeded", "Failed"
    #   resp.export_snapshot_records[0].source_info.resource_type #=> String, one of "InstanceSnapshot", "DiskSnapshot"
    #   resp.export_snapshot_records[0].source_info.created_at #=> Time
    #   resp.export_snapshot_records[0].source_info.name #=> String
    #   resp.export_snapshot_records[0].source_info.arn #=> String
    #   resp.export_snapshot_records[0].source_info.from_resource_name #=> String
    #   resp.export_snapshot_records[0].source_info.from_resource_arn #=> String
    #   resp.export_snapshot_records[0].source_info.instance_snapshot_info.from_bundle_id #=> String
    #   resp.export_snapshot_records[0].source_info.instance_snapshot_info.from_blueprint_id #=> String
    #   resp.export_snapshot_records[0].source_info.instance_snapshot_info.from_disk_info #=> Array
    #   resp.export_snapshot_records[0].source_info.instance_snapshot_info.from_disk_info[0].name #=> String
    #   resp.export_snapshot_records[0].source_info.instance_snapshot_info.from_disk_info[0].path #=> String
    #   resp.export_snapshot_records[0].source_info.instance_snapshot_info.from_disk_info[0].size_in_gb #=> Integer
    #   resp.export_snapshot_records[0].source_info.instance_snapshot_info.from_disk_info[0].is_system_disk #=> Boolean
    #   resp.export_snapshot_records[0].source_info.disk_snapshot_info.size_in_gb #=> Integer
    #   resp.export_snapshot_records[0].destination_info.id #=> String
    #   resp.export_snapshot_records[0].destination_info.service #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetExportSnapshotRecords AWS API Documentation
    #
    # @overload get_export_snapshot_records(params = {})
    # @param [Hash] params ({})
    def get_export_snapshot_records(params = {}, options = {})
      req = build_request(:get_export_snapshot_records, params)
      req.send_request(options)
    end

    # Returns information about a specific Amazon Lightsail instance, which
    # is a virtual private server.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance.
    #
    # @return [Types::GetInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceResult#instance #instance} => Types::Instance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance.name #=> String
    #   resp.instance.arn #=> String
    #   resp.instance.support_code #=> String
    #   resp.instance.created_at #=> Time
    #   resp.instance.location.availability_zone #=> String
    #   resp.instance.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instance.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.instance.tags #=> Array
    #   resp.instance.tags[0].key #=> String
    #   resp.instance.tags[0].value #=> String
    #   resp.instance.blueprint_id #=> String
    #   resp.instance.blueprint_name #=> String
    #   resp.instance.bundle_id #=> String
    #   resp.instance.add_ons #=> Array
    #   resp.instance.add_ons[0].name #=> String
    #   resp.instance.add_ons[0].status #=> String
    #   resp.instance.add_ons[0].snapshot_time_of_day #=> String
    #   resp.instance.add_ons[0].next_snapshot_time_of_day #=> String
    #   resp.instance.is_static_ip #=> Boolean
    #   resp.instance.private_ip_address #=> String
    #   resp.instance.public_ip_address #=> String
    #   resp.instance.ipv6_address #=> String
    #   resp.instance.hardware.cpu_count #=> Integer
    #   resp.instance.hardware.disks #=> Array
    #   resp.instance.hardware.disks[0].name #=> String
    #   resp.instance.hardware.disks[0].arn #=> String
    #   resp.instance.hardware.disks[0].support_code #=> String
    #   resp.instance.hardware.disks[0].created_at #=> Time
    #   resp.instance.hardware.disks[0].location.availability_zone #=> String
    #   resp.instance.hardware.disks[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instance.hardware.disks[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.instance.hardware.disks[0].tags #=> Array
    #   resp.instance.hardware.disks[0].tags[0].key #=> String
    #   resp.instance.hardware.disks[0].tags[0].value #=> String
    #   resp.instance.hardware.disks[0].add_ons #=> Array
    #   resp.instance.hardware.disks[0].add_ons[0].name #=> String
    #   resp.instance.hardware.disks[0].add_ons[0].status #=> String
    #   resp.instance.hardware.disks[0].add_ons[0].snapshot_time_of_day #=> String
    #   resp.instance.hardware.disks[0].add_ons[0].next_snapshot_time_of_day #=> String
    #   resp.instance.hardware.disks[0].size_in_gb #=> Integer
    #   resp.instance.hardware.disks[0].is_system_disk #=> Boolean
    #   resp.instance.hardware.disks[0].iops #=> Integer
    #   resp.instance.hardware.disks[0].path #=> String
    #   resp.instance.hardware.disks[0].state #=> String, one of "pending", "error", "available", "in-use", "unknown"
    #   resp.instance.hardware.disks[0].attached_to #=> String
    #   resp.instance.hardware.disks[0].is_attached #=> Boolean
    #   resp.instance.hardware.disks[0].attachment_state #=> String
    #   resp.instance.hardware.disks[0].gb_in_use #=> Integer
    #   resp.instance.hardware.ram_size_in_gb #=> Float
    #   resp.instance.networking.monthly_transfer.gb_per_month_allocated #=> Integer
    #   resp.instance.networking.ports #=> Array
    #   resp.instance.networking.ports[0].from_port #=> Integer
    #   resp.instance.networking.ports[0].to_port #=> Integer
    #   resp.instance.networking.ports[0].protocol #=> String, one of "tcp", "all", "udp", "icmp"
    #   resp.instance.networking.ports[0].access_from #=> String
    #   resp.instance.networking.ports[0].access_type #=> String, one of "Public", "Private"
    #   resp.instance.networking.ports[0].common_name #=> String
    #   resp.instance.networking.ports[0].access_direction #=> String, one of "inbound", "outbound"
    #   resp.instance.networking.ports[0].cidrs #=> Array
    #   resp.instance.networking.ports[0].cidrs[0] #=> String
    #   resp.instance.networking.ports[0].cidr_list_aliases #=> Array
    #   resp.instance.networking.ports[0].cidr_list_aliases[0] #=> String
    #   resp.instance.state.code #=> Integer
    #   resp.instance.state.name #=> String
    #   resp.instance.username #=> String
    #   resp.instance.ssh_key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstance AWS API Documentation
    #
    # @overload get_instance(params = {})
    # @param [Hash] params ({})
    def get_instance(params = {}, options = {})
      req = build_request(:get_instance, params)
      req.send_request(options)
    end

    # Returns temporary SSH keys you can use to connect to a specific
    # virtual private server, or *instance*.
    #
    # The `get instance access details` operation supports tag-based access
    # control via resource tags applied to the resource identified by
    # `instance name`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :instance_name
    #   The name of the instance to access.
    #
    # @option params [String] :protocol
    #   The protocol to use to connect to your instance. Defaults to `ssh`.
    #
    # @return [Types::GetInstanceAccessDetailsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceAccessDetailsResult#access_details #access_details} => Types::InstanceAccessDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_access_details({
    #     instance_name: "ResourceName", # required
    #     protocol: "ssh", # accepts ssh, rdp
    #   })
    #
    # @example Response structure
    #
    #   resp.access_details.cert_key #=> String
    #   resp.access_details.expires_at #=> Time
    #   resp.access_details.ip_address #=> String
    #   resp.access_details.password #=> String
    #   resp.access_details.password_data.ciphertext #=> String
    #   resp.access_details.password_data.key_pair_name #=> String
    #   resp.access_details.private_key #=> String
    #   resp.access_details.protocol #=> String, one of "ssh", "rdp"
    #   resp.access_details.instance_name #=> String
    #   resp.access_details.username #=> String
    #   resp.access_details.host_keys #=> Array
    #   resp.access_details.host_keys[0].algorithm #=> String
    #   resp.access_details.host_keys[0].public_key #=> String
    #   resp.access_details.host_keys[0].witnessed_at #=> Time
    #   resp.access_details.host_keys[0].fingerprint_sha1 #=> String
    #   resp.access_details.host_keys[0].fingerprint_sha256 #=> String
    #   resp.access_details.host_keys[0].not_valid_before #=> Time
    #   resp.access_details.host_keys[0].not_valid_after #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceAccessDetails AWS API Documentation
    #
    # @overload get_instance_access_details(params = {})
    # @param [Hash] params ({})
    def get_instance_access_details(params = {}, options = {})
      req = build_request(:get_instance_access_details, params)
      req.send_request(options)
    end

    # Returns the data points for the specified Amazon Lightsail instance
    # metric, given an instance name.
    #
    # Metrics report the utilization of your resources, and the error counts
    # generated by them. Monitor and collect metric data regularly to
    # maintain the reliability, availability, and performance of your
    # resources.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance for which you want to get metrics data.
    #
    # @option params [required, String] :metric_name
    #   The metric for which you want to return information.
    #
    #   Valid instance metric names are listed below, along with the most
    #   useful `statistics` to include in your request, and the published
    #   `unit` value.
    #
    #   * <b> <code>BurstCapacityPercentage</code> </b> - The percentage of
    #     CPU performance available for your instance to burst above its
    #     baseline. Your instance continously accrues and consumes burst
    #     capacity. Burst capacity stops accruing when your instance's
    #     `BurstCapacityPercentage` reaches 100%. For more information, see
    #     [Viewing instance burst capacity in Amazon Lightsail][1].
    #
    #     `Statistics`\: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`\: The published unit is `Percent`.
    #
    #   * <b> <code>BurstCapacityTime</code> </b> - The available amount of
    #     time for your instance to burst at 100% CPU utilization. Your
    #     instance continously accrues and consumes burst capacity. Burst
    #     capacity time stops accruing when your instance's
    #     `BurstCapacityPercentage` metric reaches 100%.
    #
    #     Burst capacity time is consumed at the full rate only when your
    #     instance operates at 100% CPU utilization. For example, if your
    #     instance operates at 50% CPU utilization in the burstable zone for a
    #     5-minute period, then it consumes CPU burst capacity minutes at a
    #     50% rate in that period. Your instance consumed 2 minutes and 30
    #     seconds of CPU burst capacity minutes in the 5-minute period. For
    #     more information, see [Viewing instance burst capacity in Amazon
    #     Lightsail][1].
    #
    #     `Statistics`\: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`\: The published unit is `Seconds`.
    #
    #   * <b> <code>CPUUtilization</code> </b> - The percentage of allocated
    #     compute units that are currently in use on the instance. This metric
    #     identifies the processing power to run the applications on the
    #     instance. Tools in your operating system can show a lower percentage
    #     than Lightsail when the instance is not allocated a full processor
    #     core.
    #
    #     `Statistics`\: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`\: The published unit is `Percent`.
    #
    #   * <b> <code>NetworkIn</code> </b> - The number of bytes received on
    #     all network interfaces by the instance. This metric identifies the
    #     volume of incoming network traffic to the instance. The number
    #     reported is the number of bytes received during the period. Because
    #     this metric is reported in 5-minute intervals, divide the reported
    #     number by 300 to find Bytes/second.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Bytes`.
    #
    #   * <b> <code>NetworkOut</code> </b> - The number of bytes sent out on
    #     all network interfaces by the instance. This metric identifies the
    #     volume of outgoing network traffic from the instance. The number
    #     reported is the number of bytes sent during the period. Because this
    #     metric is reported in 5-minute intervals, divide the reported number
    #     by 300 to find Bytes/second.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Bytes`.
    #
    #   * <b> <code>StatusCheckFailed</code> </b> - Reports whether the
    #     instance passed or failed both the instance status check and the
    #     system status check. This metric can be either 0 (passed) or 1
    #     (failed). This metric data is available in 1-minute (60 seconds)
    #     granularity.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>StatusCheckFailed_Instance</code> </b> - Reports whether
    #     the instance passed or failed the instance status check. This metric
    #     can be either 0 (passed) or 1 (failed). This metric data is
    #     available in 1-minute (60 seconds) granularity.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>StatusCheckFailed_System</code> </b> - Reports whether the
    #     instance passed or failed the system status check. This metric can
    #     be either 0 (passed) or 1 (failed). This metric data is available in
    #     1-minute (60 seconds) granularity.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-viewing-instance-burst-capacity
    #
    # @option params [required, Integer] :period
    #   The granularity, in seconds, of the returned data points.
    #
    #   The `StatusCheckFailed`, `StatusCheckFailed_Instance`, and
    #   `StatusCheckFailed_System` instance metric data is available in
    #   1-minute (60 seconds) granularity. All other instance metric data is
    #   available in 5-minute (300 seconds) granularity.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the time period.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the time period.
    #
    # @option params [required, String] :unit
    #   The unit for the metric data request. Valid units depend on the metric
    #   data being requested. For the valid units to specify with each
    #   available metric, see the `metricName` parameter.
    #
    # @option params [required, Array<String>] :statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified period.
    #     Use this value to determine high volumes of activity for your
    #     application.
    #
    #   * `Sum` - All values submitted for the matching metric added together.
    #     You can use this statistic to determine the total volume of a
    #     metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #
    # @return [Types::GetInstanceMetricDataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceMetricDataResult#metric_name #metric_name} => String
    #   * {Types::GetInstanceMetricDataResult#metric_data #metric_data} => Array&lt;Types::MetricDatapoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_metric_data({
    #     instance_name: "ResourceName", # required
    #     metric_name: "CPUUtilization", # required, accepts CPUUtilization, NetworkIn, NetworkOut, StatusCheckFailed, StatusCheckFailed_Instance, StatusCheckFailed_System, BurstCapacityTime, BurstCapacityPercentage
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     unit: "Seconds", # required, accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #     statistics: ["Minimum"], # required, accepts Minimum, Maximum, Sum, Average, SampleCount
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_name #=> String, one of "CPUUtilization", "NetworkIn", "NetworkOut", "StatusCheckFailed", "StatusCheckFailed_Instance", "StatusCheckFailed_System", "BurstCapacityTime", "BurstCapacityPercentage"
    #   resp.metric_data #=> Array
    #   resp.metric_data[0].average #=> Float
    #   resp.metric_data[0].maximum #=> Float
    #   resp.metric_data[0].minimum #=> Float
    #   resp.metric_data[0].sample_count #=> Float
    #   resp.metric_data[0].sum #=> Float
    #   resp.metric_data[0].timestamp #=> Time
    #   resp.metric_data[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceMetricData AWS API Documentation
    #
    # @overload get_instance_metric_data(params = {})
    # @param [Hash] params ({})
    def get_instance_metric_data(params = {}, options = {})
      req = build_request(:get_instance_metric_data, params)
      req.send_request(options)
    end

    # Returns the firewall port states for a specific Amazon Lightsail
    # instance, the IP addresses allowed to connect to the instance through
    # the ports, and the protocol.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance for which to return firewall port states.
    #
    # @return [Types::GetInstancePortStatesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstancePortStatesResult#port_states #port_states} => Array&lt;Types::InstancePortState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_port_states({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.port_states #=> Array
    #   resp.port_states[0].from_port #=> Integer
    #   resp.port_states[0].to_port #=> Integer
    #   resp.port_states[0].protocol #=> String, one of "tcp", "all", "udp", "icmp"
    #   resp.port_states[0].state #=> String, one of "open", "closed"
    #   resp.port_states[0].cidrs #=> Array
    #   resp.port_states[0].cidrs[0] #=> String
    #   resp.port_states[0].cidr_list_aliases #=> Array
    #   resp.port_states[0].cidr_list_aliases[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancePortStates AWS API Documentation
    #
    # @overload get_instance_port_states(params = {})
    # @param [Hash] params ({})
    def get_instance_port_states(params = {}, options = {})
      req = build_request(:get_instance_port_states, params)
      req.send_request(options)
    end

    # Returns information about a specific instance snapshot.
    #
    # @option params [required, String] :instance_snapshot_name
    #   The name of the snapshot for which you are requesting information.
    #
    # @return [Types::GetInstanceSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceSnapshotResult#instance_snapshot #instance_snapshot} => Types::InstanceSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_snapshot({
    #     instance_snapshot_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_snapshot.name #=> String
    #   resp.instance_snapshot.arn #=> String
    #   resp.instance_snapshot.support_code #=> String
    #   resp.instance_snapshot.created_at #=> Time
    #   resp.instance_snapshot.location.availability_zone #=> String
    #   resp.instance_snapshot.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instance_snapshot.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.instance_snapshot.tags #=> Array
    #   resp.instance_snapshot.tags[0].key #=> String
    #   resp.instance_snapshot.tags[0].value #=> String
    #   resp.instance_snapshot.state #=> String, one of "pending", "error", "available"
    #   resp.instance_snapshot.progress #=> String
    #   resp.instance_snapshot.from_attached_disks #=> Array
    #   resp.instance_snapshot.from_attached_disks[0].name #=> String
    #   resp.instance_snapshot.from_attached_disks[0].arn #=> String
    #   resp.instance_snapshot.from_attached_disks[0].support_code #=> String
    #   resp.instance_snapshot.from_attached_disks[0].created_at #=> Time
    #   resp.instance_snapshot.from_attached_disks[0].location.availability_zone #=> String
    #   resp.instance_snapshot.from_attached_disks[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instance_snapshot.from_attached_disks[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.instance_snapshot.from_attached_disks[0].tags #=> Array
    #   resp.instance_snapshot.from_attached_disks[0].tags[0].key #=> String
    #   resp.instance_snapshot.from_attached_disks[0].tags[0].value #=> String
    #   resp.instance_snapshot.from_attached_disks[0].add_ons #=> Array
    #   resp.instance_snapshot.from_attached_disks[0].add_ons[0].name #=> String
    #   resp.instance_snapshot.from_attached_disks[0].add_ons[0].status #=> String
    #   resp.instance_snapshot.from_attached_disks[0].add_ons[0].snapshot_time_of_day #=> String
    #   resp.instance_snapshot.from_attached_disks[0].add_ons[0].next_snapshot_time_of_day #=> String
    #   resp.instance_snapshot.from_attached_disks[0].size_in_gb #=> Integer
    #   resp.instance_snapshot.from_attached_disks[0].is_system_disk #=> Boolean
    #   resp.instance_snapshot.from_attached_disks[0].iops #=> Integer
    #   resp.instance_snapshot.from_attached_disks[0].path #=> String
    #   resp.instance_snapshot.from_attached_disks[0].state #=> String, one of "pending", "error", "available", "in-use", "unknown"
    #   resp.instance_snapshot.from_attached_disks[0].attached_to #=> String
    #   resp.instance_snapshot.from_attached_disks[0].is_attached #=> Boolean
    #   resp.instance_snapshot.from_attached_disks[0].attachment_state #=> String
    #   resp.instance_snapshot.from_attached_disks[0].gb_in_use #=> Integer
    #   resp.instance_snapshot.from_instance_name #=> String
    #   resp.instance_snapshot.from_instance_arn #=> String
    #   resp.instance_snapshot.from_blueprint_id #=> String
    #   resp.instance_snapshot.from_bundle_id #=> String
    #   resp.instance_snapshot.is_from_auto_snapshot #=> Boolean
    #   resp.instance_snapshot.size_in_gb #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshot AWS API Documentation
    #
    # @overload get_instance_snapshot(params = {})
    # @param [Hash] params ({})
    def get_instance_snapshot(params = {}, options = {})
      req = build_request(:get_instance_snapshot, params)
      req.send_request(options)
    end

    # Returns all instance snapshots for the user's account.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetInstanceSnapshots`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a subsequent
    #   request.
    #
    # @return [Types::GetInstanceSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceSnapshotsResult#instance_snapshots #instance_snapshots} => Array&lt;Types::InstanceSnapshot&gt;
    #   * {Types::GetInstanceSnapshotsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_snapshots({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_snapshots #=> Array
    #   resp.instance_snapshots[0].name #=> String
    #   resp.instance_snapshots[0].arn #=> String
    #   resp.instance_snapshots[0].support_code #=> String
    #   resp.instance_snapshots[0].created_at #=> Time
    #   resp.instance_snapshots[0].location.availability_zone #=> String
    #   resp.instance_snapshots[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instance_snapshots[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.instance_snapshots[0].tags #=> Array
    #   resp.instance_snapshots[0].tags[0].key #=> String
    #   resp.instance_snapshots[0].tags[0].value #=> String
    #   resp.instance_snapshots[0].state #=> String, one of "pending", "error", "available"
    #   resp.instance_snapshots[0].progress #=> String
    #   resp.instance_snapshots[0].from_attached_disks #=> Array
    #   resp.instance_snapshots[0].from_attached_disks[0].name #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].arn #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].support_code #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].created_at #=> Time
    #   resp.instance_snapshots[0].from_attached_disks[0].location.availability_zone #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instance_snapshots[0].from_attached_disks[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.instance_snapshots[0].from_attached_disks[0].tags #=> Array
    #   resp.instance_snapshots[0].from_attached_disks[0].tags[0].key #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].tags[0].value #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].add_ons #=> Array
    #   resp.instance_snapshots[0].from_attached_disks[0].add_ons[0].name #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].add_ons[0].status #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].add_ons[0].snapshot_time_of_day #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].add_ons[0].next_snapshot_time_of_day #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].size_in_gb #=> Integer
    #   resp.instance_snapshots[0].from_attached_disks[0].is_system_disk #=> Boolean
    #   resp.instance_snapshots[0].from_attached_disks[0].iops #=> Integer
    #   resp.instance_snapshots[0].from_attached_disks[0].path #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].state #=> String, one of "pending", "error", "available", "in-use", "unknown"
    #   resp.instance_snapshots[0].from_attached_disks[0].attached_to #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].is_attached #=> Boolean
    #   resp.instance_snapshots[0].from_attached_disks[0].attachment_state #=> String
    #   resp.instance_snapshots[0].from_attached_disks[0].gb_in_use #=> Integer
    #   resp.instance_snapshots[0].from_instance_name #=> String
    #   resp.instance_snapshots[0].from_instance_arn #=> String
    #   resp.instance_snapshots[0].from_blueprint_id #=> String
    #   resp.instance_snapshots[0].from_bundle_id #=> String
    #   resp.instance_snapshots[0].is_from_auto_snapshot #=> Boolean
    #   resp.instance_snapshots[0].size_in_gb #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshots AWS API Documentation
    #
    # @overload get_instance_snapshots(params = {})
    # @param [Hash] params ({})
    def get_instance_snapshots(params = {}, options = {})
      req = build_request(:get_instance_snapshots, params)
      req.send_request(options)
    end

    # Returns the state of a specific instance. Works on one instance at a
    # time.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance to get state information about.
    #
    # @return [Types::GetInstanceStateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceStateResult#state #state} => Types::InstanceState
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_state({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state.code #=> Integer
    #   resp.state.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceState AWS API Documentation
    #
    # @overload get_instance_state(params = {})
    # @param [Hash] params ({})
    def get_instance_state(params = {}, options = {})
      req = build_request(:get_instance_state, params)
      req.send_request(options)
    end

    # Returns information about all Amazon Lightsail virtual private
    # servers, or *instances*.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetInstances` request. If
    #   your results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstancesResult#instances #instances} => Array&lt;Types::Instance&gt;
    #   * {Types::GetInstancesResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instances({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].name #=> String
    #   resp.instances[0].arn #=> String
    #   resp.instances[0].support_code #=> String
    #   resp.instances[0].created_at #=> Time
    #   resp.instances[0].location.availability_zone #=> String
    #   resp.instances[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instances[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.instances[0].tags #=> Array
    #   resp.instances[0].tags[0].key #=> String
    #   resp.instances[0].tags[0].value #=> String
    #   resp.instances[0].blueprint_id #=> String
    #   resp.instances[0].blueprint_name #=> String
    #   resp.instances[0].bundle_id #=> String
    #   resp.instances[0].add_ons #=> Array
    #   resp.instances[0].add_ons[0].name #=> String
    #   resp.instances[0].add_ons[0].status #=> String
    #   resp.instances[0].add_ons[0].snapshot_time_of_day #=> String
    #   resp.instances[0].add_ons[0].next_snapshot_time_of_day #=> String
    #   resp.instances[0].is_static_ip #=> Boolean
    #   resp.instances[0].private_ip_address #=> String
    #   resp.instances[0].public_ip_address #=> String
    #   resp.instances[0].ipv6_address #=> String
    #   resp.instances[0].hardware.cpu_count #=> Integer
    #   resp.instances[0].hardware.disks #=> Array
    #   resp.instances[0].hardware.disks[0].name #=> String
    #   resp.instances[0].hardware.disks[0].arn #=> String
    #   resp.instances[0].hardware.disks[0].support_code #=> String
    #   resp.instances[0].hardware.disks[0].created_at #=> Time
    #   resp.instances[0].hardware.disks[0].location.availability_zone #=> String
    #   resp.instances[0].hardware.disks[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.instances[0].hardware.disks[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.instances[0].hardware.disks[0].tags #=> Array
    #   resp.instances[0].hardware.disks[0].tags[0].key #=> String
    #   resp.instances[0].hardware.disks[0].tags[0].value #=> String
    #   resp.instances[0].hardware.disks[0].add_ons #=> Array
    #   resp.instances[0].hardware.disks[0].add_ons[0].name #=> String
    #   resp.instances[0].hardware.disks[0].add_ons[0].status #=> String
    #   resp.instances[0].hardware.disks[0].add_ons[0].snapshot_time_of_day #=> String
    #   resp.instances[0].hardware.disks[0].add_ons[0].next_snapshot_time_of_day #=> String
    #   resp.instances[0].hardware.disks[0].size_in_gb #=> Integer
    #   resp.instances[0].hardware.disks[0].is_system_disk #=> Boolean
    #   resp.instances[0].hardware.disks[0].iops #=> Integer
    #   resp.instances[0].hardware.disks[0].path #=> String
    #   resp.instances[0].hardware.disks[0].state #=> String, one of "pending", "error", "available", "in-use", "unknown"
    #   resp.instances[0].hardware.disks[0].attached_to #=> String
    #   resp.instances[0].hardware.disks[0].is_attached #=> Boolean
    #   resp.instances[0].hardware.disks[0].attachment_state #=> String
    #   resp.instances[0].hardware.disks[0].gb_in_use #=> Integer
    #   resp.instances[0].hardware.ram_size_in_gb #=> Float
    #   resp.instances[0].networking.monthly_transfer.gb_per_month_allocated #=> Integer
    #   resp.instances[0].networking.ports #=> Array
    #   resp.instances[0].networking.ports[0].from_port #=> Integer
    #   resp.instances[0].networking.ports[0].to_port #=> Integer
    #   resp.instances[0].networking.ports[0].protocol #=> String, one of "tcp", "all", "udp", "icmp"
    #   resp.instances[0].networking.ports[0].access_from #=> String
    #   resp.instances[0].networking.ports[0].access_type #=> String, one of "Public", "Private"
    #   resp.instances[0].networking.ports[0].common_name #=> String
    #   resp.instances[0].networking.ports[0].access_direction #=> String, one of "inbound", "outbound"
    #   resp.instances[0].networking.ports[0].cidrs #=> Array
    #   resp.instances[0].networking.ports[0].cidrs[0] #=> String
    #   resp.instances[0].networking.ports[0].cidr_list_aliases #=> Array
    #   resp.instances[0].networking.ports[0].cidr_list_aliases[0] #=> String
    #   resp.instances[0].state.code #=> Integer
    #   resp.instances[0].state.name #=> String
    #   resp.instances[0].username #=> String
    #   resp.instances[0].ssh_key_name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstances AWS API Documentation
    #
    # @overload get_instances(params = {})
    # @param [Hash] params ({})
    def get_instances(params = {}, options = {})
      req = build_request(:get_instances, params)
      req.send_request(options)
    end

    # Returns information about a specific key pair.
    #
    # @option params [required, String] :key_pair_name
    #   The name of the key pair for which you are requesting information.
    #
    # @return [Types::GetKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyPairResult#key_pair #key_pair} => Types::KeyPair
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key_pair({
    #     key_pair_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_pair.name #=> String
    #   resp.key_pair.arn #=> String
    #   resp.key_pair.support_code #=> String
    #   resp.key_pair.created_at #=> Time
    #   resp.key_pair.location.availability_zone #=> String
    #   resp.key_pair.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.key_pair.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.key_pair.tags #=> Array
    #   resp.key_pair.tags[0].key #=> String
    #   resp.key_pair.tags[0].value #=> String
    #   resp.key_pair.fingerprint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPair AWS API Documentation
    #
    # @overload get_key_pair(params = {})
    # @param [Hash] params ({})
    def get_key_pair(params = {}, options = {})
      req = build_request(:get_key_pair, params)
      req.send_request(options)
    end

    # Returns information about all key pairs in the user's account.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetKeyPairs` request. If your
    #   results are paginated, the response will return a next page token that
    #   you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetKeyPairsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyPairsResult#key_pairs #key_pairs} => Array&lt;Types::KeyPair&gt;
    #   * {Types::GetKeyPairsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key_pairs({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.key_pairs #=> Array
    #   resp.key_pairs[0].name #=> String
    #   resp.key_pairs[0].arn #=> String
    #   resp.key_pairs[0].support_code #=> String
    #   resp.key_pairs[0].created_at #=> Time
    #   resp.key_pairs[0].location.availability_zone #=> String
    #   resp.key_pairs[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.key_pairs[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.key_pairs[0].tags #=> Array
    #   resp.key_pairs[0].tags[0].key #=> String
    #   resp.key_pairs[0].tags[0].value #=> String
    #   resp.key_pairs[0].fingerprint #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairs AWS API Documentation
    #
    # @overload get_key_pairs(params = {})
    # @param [Hash] params ({})
    def get_key_pairs(params = {}, options = {})
      req = build_request(:get_key_pairs, params)
      req.send_request(options)
    end

    # Returns information about the specified Lightsail load balancer.
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @return [Types::GetLoadBalancerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoadBalancerResult#load_balancer #load_balancer} => Types::LoadBalancer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_load_balancer({
    #     load_balancer_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancer.name #=> String
    #   resp.load_balancer.arn #=> String
    #   resp.load_balancer.support_code #=> String
    #   resp.load_balancer.created_at #=> Time
    #   resp.load_balancer.location.availability_zone #=> String
    #   resp.load_balancer.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.load_balancer.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.load_balancer.tags #=> Array
    #   resp.load_balancer.tags[0].key #=> String
    #   resp.load_balancer.tags[0].value #=> String
    #   resp.load_balancer.dns_name #=> String
    #   resp.load_balancer.state #=> String, one of "active", "provisioning", "active_impaired", "failed", "unknown"
    #   resp.load_balancer.protocol #=> String, one of "HTTP_HTTPS", "HTTP"
    #   resp.load_balancer.public_ports #=> Array
    #   resp.load_balancer.public_ports[0] #=> Integer
    #   resp.load_balancer.health_check_path #=> String
    #   resp.load_balancer.instance_port #=> Integer
    #   resp.load_balancer.instance_health_summary #=> Array
    #   resp.load_balancer.instance_health_summary[0].instance_name #=> String
    #   resp.load_balancer.instance_health_summary[0].instance_health #=> String, one of "initial", "healthy", "unhealthy", "unused", "draining", "unavailable"
    #   resp.load_balancer.instance_health_summary[0].instance_health_reason #=> String, one of "Lb.RegistrationInProgress", "Lb.InitialHealthChecking", "Lb.InternalError", "Instance.ResponseCodeMismatch", "Instance.Timeout", "Instance.FailedHealthChecks", "Instance.NotRegistered", "Instance.NotInUse", "Instance.DeregistrationInProgress", "Instance.InvalidState", "Instance.IpUnusable"
    #   resp.load_balancer.tls_certificate_summaries #=> Array
    #   resp.load_balancer.tls_certificate_summaries[0].name #=> String
    #   resp.load_balancer.tls_certificate_summaries[0].is_attached #=> Boolean
    #   resp.load_balancer.configuration_options #=> Hash
    #   resp.load_balancer.configuration_options["LoadBalancerAttributeName"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancer AWS API Documentation
    #
    # @overload get_load_balancer(params = {})
    # @param [Hash] params ({})
    def get_load_balancer(params = {}, options = {})
      req = build_request(:get_load_balancer, params)
      req.send_request(options)
    end

    # Returns information about health metrics for your Lightsail load
    # balancer.
    #
    # Metrics report the utilization of your resources, and the error counts
    # generated by them. Monitor and collect metric data regularly to
    # maintain the reliability, availability, and performance of your
    # resources.
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer.
    #
    # @option params [required, String] :metric_name
    #   The metric for which you want to return information.
    #
    #   Valid load balancer metric names are listed below, along with the most
    #   useful `statistics` to include in your request, and the published
    #   `unit` value.
    #
    #   * <b> <code>ClientTLSNegotiationErrorCount</code> </b> - The number of
    #     TLS connections initiated by the client that did not establish a
    #     session with the load balancer due to a TLS error generated by the
    #     load balancer. Possible causes include a mismatch of ciphers or
    #     protocols.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HealthyHostCount</code> </b> - The number of target
    #     instances that are considered healthy.
    #
    #     `Statistics`\: The most useful statistic are `Average`, `Minimum`,
    #     and `Maximum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_2XX_Count</code> </b> - The number of
    #     HTTP 2XX response codes generated by the target instances. This does
    #     not include any response codes generated by the load balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_3XX_Count</code> </b> - The number of
    #     HTTP 3XX response codes generated by the target instances. This does
    #     not include any response codes generated by the load balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_4XX_Count</code> </b> - The number of
    #     HTTP 4XX response codes generated by the target instances. This does
    #     not include any response codes generated by the load balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_5XX_Count</code> </b> - The number of
    #     HTTP 5XX response codes generated by the target instances. This does
    #     not include any response codes generated by the load balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_LB_4XX_Count</code> </b> - The number of HTTP 4XX
    #     client error codes that originated from the load balancer. Client
    #     errors are generated when requests are malformed or incomplete.
    #     These requests were not received by the target instance. This count
    #     does not include response codes generated by the target instances.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_LB_5XX_Count</code> </b> - The number of HTTP 5XX
    #     server error codes that originated from the load balancer. This does
    #     not include any response codes generated by the target instance.
    #     This metric is reported if there are no healthy instances attached
    #     to the load balancer, or if the request rate exceeds the capacity of
    #     the instances (spillover) or the load balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>InstanceResponseTime</code> </b> - The time elapsed, in
    #     seconds, after the request leaves the load balancer until a response
    #     from the target instance is received.
    #
    #     `Statistics`\: The most useful statistic is `Average`.
    #
    #     `Unit`\: The published unit is `Seconds`.
    #
    #   * <b> <code>RejectedConnectionCount</code> </b> - The number of
    #     connections that were rejected because the load balancer had reached
    #     its maximum number of connections.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>RequestCount</code> </b> - The number of requests
    #     processed over IPv4. This count includes only the requests with a
    #     response generated by a target instance of the load balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>UnhealthyHostCount</code> </b> - The number of target
    #     instances that are considered unhealthy.
    #
    #     `Statistics`\: The most useful statistic are `Average`, `Minimum`,
    #     and `Maximum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    # @option params [required, Integer] :period
    #   The granularity, in seconds, of the returned data points.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the period.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the period.
    #
    # @option params [required, String] :unit
    #   The unit for the metric data request. Valid units depend on the metric
    #   data being requested. For the valid units with each available metric,
    #   see the `metricName` parameter.
    #
    # @option params [required, Array<String>] :statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified period.
    #     Use this value to determine high volumes of activity for your
    #     application.
    #
    #   * `Sum` - All values submitted for the matching metric added together.
    #     You can use this statistic to determine the total volume of a
    #     metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #
    # @return [Types::GetLoadBalancerMetricDataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoadBalancerMetricDataResult#metric_name #metric_name} => String
    #   * {Types::GetLoadBalancerMetricDataResult#metric_data #metric_data} => Array&lt;Types::MetricDatapoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_load_balancer_metric_data({
    #     load_balancer_name: "ResourceName", # required
    #     metric_name: "ClientTLSNegotiationErrorCount", # required, accepts ClientTLSNegotiationErrorCount, HealthyHostCount, UnhealthyHostCount, HTTPCode_LB_4XX_Count, HTTPCode_LB_5XX_Count, HTTPCode_Instance_2XX_Count, HTTPCode_Instance_3XX_Count, HTTPCode_Instance_4XX_Count, HTTPCode_Instance_5XX_Count, InstanceResponseTime, RejectedConnectionCount, RequestCount
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     unit: "Seconds", # required, accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #     statistics: ["Minimum"], # required, accepts Minimum, Maximum, Sum, Average, SampleCount
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_name #=> String, one of "ClientTLSNegotiationErrorCount", "HealthyHostCount", "UnhealthyHostCount", "HTTPCode_LB_4XX_Count", "HTTPCode_LB_5XX_Count", "HTTPCode_Instance_2XX_Count", "HTTPCode_Instance_3XX_Count", "HTTPCode_Instance_4XX_Count", "HTTPCode_Instance_5XX_Count", "InstanceResponseTime", "RejectedConnectionCount", "RequestCount"
    #   resp.metric_data #=> Array
    #   resp.metric_data[0].average #=> Float
    #   resp.metric_data[0].maximum #=> Float
    #   resp.metric_data[0].minimum #=> Float
    #   resp.metric_data[0].sample_count #=> Float
    #   resp.metric_data[0].sum #=> Float
    #   resp.metric_data[0].timestamp #=> Time
    #   resp.metric_data[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerMetricData AWS API Documentation
    #
    # @overload get_load_balancer_metric_data(params = {})
    # @param [Hash] params ({})
    def get_load_balancer_metric_data(params = {}, options = {})
      req = build_request(:get_load_balancer_metric_data, params)
      req.send_request(options)
    end

    # Returns information about the TLS certificates that are associated
    # with the specified Lightsail load balancer.
    #
    # TLS is just an updated, more secure version of Secure Socket Layer
    # (SSL).
    #
    # You can have a maximum of 2 certificates associated with a Lightsail
    # load balancer. One is active and the other is inactive.
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer you associated with your SSL/TLS
    #   certificate.
    #
    # @return [Types::GetLoadBalancerTlsCertificatesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoadBalancerTlsCertificatesResult#tls_certificates #tls_certificates} => Array&lt;Types::LoadBalancerTlsCertificate&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_load_balancer_tls_certificates({
    #     load_balancer_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tls_certificates #=> Array
    #   resp.tls_certificates[0].name #=> String
    #   resp.tls_certificates[0].arn #=> String
    #   resp.tls_certificates[0].support_code #=> String
    #   resp.tls_certificates[0].created_at #=> Time
    #   resp.tls_certificates[0].location.availability_zone #=> String
    #   resp.tls_certificates[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.tls_certificates[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.tls_certificates[0].tags #=> Array
    #   resp.tls_certificates[0].tags[0].key #=> String
    #   resp.tls_certificates[0].tags[0].value #=> String
    #   resp.tls_certificates[0].load_balancer_name #=> String
    #   resp.tls_certificates[0].is_attached #=> Boolean
    #   resp.tls_certificates[0].status #=> String, one of "PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED", "UNKNOWN"
    #   resp.tls_certificates[0].domain_name #=> String
    #   resp.tls_certificates[0].domain_validation_records #=> Array
    #   resp.tls_certificates[0].domain_validation_records[0].name #=> String
    #   resp.tls_certificates[0].domain_validation_records[0].type #=> String
    #   resp.tls_certificates[0].domain_validation_records[0].value #=> String
    #   resp.tls_certificates[0].domain_validation_records[0].validation_status #=> String, one of "PENDING_VALIDATION", "FAILED", "SUCCESS"
    #   resp.tls_certificates[0].domain_validation_records[0].domain_name #=> String
    #   resp.tls_certificates[0].failure_reason #=> String, one of "NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "OTHER"
    #   resp.tls_certificates[0].issued_at #=> Time
    #   resp.tls_certificates[0].issuer #=> String
    #   resp.tls_certificates[0].key_algorithm #=> String
    #   resp.tls_certificates[0].not_after #=> Time
    #   resp.tls_certificates[0].not_before #=> Time
    #   resp.tls_certificates[0].renewal_summary.renewal_status #=> String, one of "PENDING_AUTO_RENEWAL", "PENDING_VALIDATION", "SUCCESS", "FAILED"
    #   resp.tls_certificates[0].renewal_summary.domain_validation_options #=> Array
    #   resp.tls_certificates[0].renewal_summary.domain_validation_options[0].domain_name #=> String
    #   resp.tls_certificates[0].renewal_summary.domain_validation_options[0].validation_status #=> String, one of "PENDING_VALIDATION", "FAILED", "SUCCESS"
    #   resp.tls_certificates[0].revocation_reason #=> String, one of "UNSPECIFIED", "KEY_COMPROMISE", "CA_COMPROMISE", "AFFILIATION_CHANGED", "SUPERCEDED", "CESSATION_OF_OPERATION", "CERTIFICATE_HOLD", "REMOVE_FROM_CRL", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"
    #   resp.tls_certificates[0].revoked_at #=> Time
    #   resp.tls_certificates[0].serial #=> String
    #   resp.tls_certificates[0].signature_algorithm #=> String
    #   resp.tls_certificates[0].subject #=> String
    #   resp.tls_certificates[0].subject_alternative_names #=> Array
    #   resp.tls_certificates[0].subject_alternative_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerTlsCertificates AWS API Documentation
    #
    # @overload get_load_balancer_tls_certificates(params = {})
    # @param [Hash] params ({})
    def get_load_balancer_tls_certificates(params = {}, options = {})
      req = build_request(:get_load_balancer_tls_certificates, params)
      req.send_request(options)
    end

    # Returns information about all load balancers in an account.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetLoadBalancers` request. If
    #   your results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetLoadBalancersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoadBalancersResult#load_balancers #load_balancers} => Array&lt;Types::LoadBalancer&gt;
    #   * {Types::GetLoadBalancersResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_load_balancers({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancers #=> Array
    #   resp.load_balancers[0].name #=> String
    #   resp.load_balancers[0].arn #=> String
    #   resp.load_balancers[0].support_code #=> String
    #   resp.load_balancers[0].created_at #=> Time
    #   resp.load_balancers[0].location.availability_zone #=> String
    #   resp.load_balancers[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.load_balancers[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.load_balancers[0].tags #=> Array
    #   resp.load_balancers[0].tags[0].key #=> String
    #   resp.load_balancers[0].tags[0].value #=> String
    #   resp.load_balancers[0].dns_name #=> String
    #   resp.load_balancers[0].state #=> String, one of "active", "provisioning", "active_impaired", "failed", "unknown"
    #   resp.load_balancers[0].protocol #=> String, one of "HTTP_HTTPS", "HTTP"
    #   resp.load_balancers[0].public_ports #=> Array
    #   resp.load_balancers[0].public_ports[0] #=> Integer
    #   resp.load_balancers[0].health_check_path #=> String
    #   resp.load_balancers[0].instance_port #=> Integer
    #   resp.load_balancers[0].instance_health_summary #=> Array
    #   resp.load_balancers[0].instance_health_summary[0].instance_name #=> String
    #   resp.load_balancers[0].instance_health_summary[0].instance_health #=> String, one of "initial", "healthy", "unhealthy", "unused", "draining", "unavailable"
    #   resp.load_balancers[0].instance_health_summary[0].instance_health_reason #=> String, one of "Lb.RegistrationInProgress", "Lb.InitialHealthChecking", "Lb.InternalError", "Instance.ResponseCodeMismatch", "Instance.Timeout", "Instance.FailedHealthChecks", "Instance.NotRegistered", "Instance.NotInUse", "Instance.DeregistrationInProgress", "Instance.InvalidState", "Instance.IpUnusable"
    #   resp.load_balancers[0].tls_certificate_summaries #=> Array
    #   resp.load_balancers[0].tls_certificate_summaries[0].name #=> String
    #   resp.load_balancers[0].tls_certificate_summaries[0].is_attached #=> Boolean
    #   resp.load_balancers[0].configuration_options #=> Hash
    #   resp.load_balancers[0].configuration_options["LoadBalancerAttributeName"] #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancers AWS API Documentation
    #
    # @overload get_load_balancers(params = {})
    # @param [Hash] params ({})
    def get_load_balancers(params = {}, options = {})
      req = build_request(:get_load_balancers, params)
      req.send_request(options)
    end

    # Returns information about a specific operation. Operations include
    # events such as when you create an instance, allocate a static IP,
    # attach a static IP, and so on.
    #
    # @option params [required, String] :operation_id
    #   A GUID used to identify the operation.
    #
    # @return [Types::GetOperationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperationResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operation({
    #     operation_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperation AWS API Documentation
    #
    # @overload get_operation(params = {})
    # @param [Hash] params ({})
    def get_operation(params = {}, options = {})
      req = build_request(:get_operation, params)
      req.send_request(options)
    end

    # Returns information about all operations.
    #
    # Results are returned from oldest to newest, up to a maximum of 200.
    # Results can be paged by making each subsequent call to `GetOperations`
    # use the maximum (last) `statusChangedAt` value from the previous
    # request.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetOperations` request. If
    #   your results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetOperationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperationsResult#operations #operations} => Array&lt;Types::Operation&gt;
    #   * {Types::GetOperationsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operations({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperations AWS API Documentation
    #
    # @overload get_operations(params = {})
    # @param [Hash] params ({})
    def get_operations(params = {}, options = {})
      req = build_request(:get_operations, params)
      req.send_request(options)
    end

    # Gets operations for a specific resource (e.g., an instance or a static
    # IP).
    #
    # @option params [required, String] :resource_name
    #   The name of the resource for which you are requesting information.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetOperationsForResource`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a subsequent
    #   request.
    #
    # @return [Types::GetOperationsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperationsForResourceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #   * {Types::GetOperationsForResourceResult#next_page_count #next_page_count} => String
    #   * {Types::GetOperationsForResourceResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operations_for_resource({
    #     resource_name: "ResourceName", # required
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #   resp.next_page_count #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsForResource AWS API Documentation
    #
    # @overload get_operations_for_resource(params = {})
    # @param [Hash] params ({})
    def get_operations_for_resource(params = {}, options = {})
      req = build_request(:get_operations_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of all valid regions for Amazon Lightsail. Use the
    # `include availability zones` parameter to also return the Availability
    # Zones in a region.
    #
    # @option params [Boolean] :include_availability_zones
    #   A Boolean value indicating whether to also include Availability Zones
    #   in your get regions request. Availability Zones are indicated with a
    #   letter: e.g., `us-east-2a`.
    #
    # @option params [Boolean] :include_relational_database_availability_zones
    #   &gt;A Boolean value indicating whether to also include Availability
    #   Zones for databases in your get regions request. Availability Zones
    #   are indicated with a letter (e.g., `us-east-2a`).
    #
    # @return [Types::GetRegionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegionsResult#regions #regions} => Array&lt;Types::Region&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_regions({
    #     include_availability_zones: false,
    #     include_relational_database_availability_zones: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.regions #=> Array
    #   resp.regions[0].continent_code #=> String
    #   resp.regions[0].description #=> String
    #   resp.regions[0].display_name #=> String
    #   resp.regions[0].name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.regions[0].availability_zones #=> Array
    #   resp.regions[0].availability_zones[0].zone_name #=> String
    #   resp.regions[0].availability_zones[0].state #=> String
    #   resp.regions[0].relational_database_availability_zones #=> Array
    #   resp.regions[0].relational_database_availability_zones[0].zone_name #=> String
    #   resp.regions[0].relational_database_availability_zones[0].state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRegions AWS API Documentation
    #
    # @overload get_regions(params = {})
    # @param [Hash] params ({})
    def get_regions(params = {}, options = {})
      req = build_request(:get_regions, params)
      req.send_request(options)
    end

    # Returns information about a specific database in Amazon Lightsail.
    #
    # @option params [required, String] :relational_database_name
    #   The name of the database that you are looking up.
    #
    # @return [Types::GetRelationalDatabaseResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseResult#relational_database #relational_database} => Types::RelationalDatabase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database({
    #     relational_database_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.relational_database.name #=> String
    #   resp.relational_database.arn #=> String
    #   resp.relational_database.support_code #=> String
    #   resp.relational_database.created_at #=> Time
    #   resp.relational_database.location.availability_zone #=> String
    #   resp.relational_database.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.relational_database.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.relational_database.tags #=> Array
    #   resp.relational_database.tags[0].key #=> String
    #   resp.relational_database.tags[0].value #=> String
    #   resp.relational_database.relational_database_blueprint_id #=> String
    #   resp.relational_database.relational_database_bundle_id #=> String
    #   resp.relational_database.master_database_name #=> String
    #   resp.relational_database.hardware.cpu_count #=> Integer
    #   resp.relational_database.hardware.disk_size_in_gb #=> Integer
    #   resp.relational_database.hardware.ram_size_in_gb #=> Float
    #   resp.relational_database.state #=> String
    #   resp.relational_database.secondary_availability_zone #=> String
    #   resp.relational_database.backup_retention_enabled #=> Boolean
    #   resp.relational_database.pending_modified_values.master_user_password #=> String
    #   resp.relational_database.pending_modified_values.engine_version #=> String
    #   resp.relational_database.pending_modified_values.backup_retention_enabled #=> Boolean
    #   resp.relational_database.engine #=> String
    #   resp.relational_database.engine_version #=> String
    #   resp.relational_database.latest_restorable_time #=> Time
    #   resp.relational_database.master_username #=> String
    #   resp.relational_database.parameter_apply_status #=> String
    #   resp.relational_database.preferred_backup_window #=> String
    #   resp.relational_database.preferred_maintenance_window #=> String
    #   resp.relational_database.publicly_accessible #=> Boolean
    #   resp.relational_database.master_endpoint.port #=> Integer
    #   resp.relational_database.master_endpoint.address #=> String
    #   resp.relational_database.pending_maintenance_actions #=> Array
    #   resp.relational_database.pending_maintenance_actions[0].action #=> String
    #   resp.relational_database.pending_maintenance_actions[0].description #=> String
    #   resp.relational_database.pending_maintenance_actions[0].current_apply_date #=> Time
    #   resp.relational_database.ca_certificate_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabase AWS API Documentation
    #
    # @overload get_relational_database(params = {})
    # @param [Hash] params ({})
    def get_relational_database(params = {}, options = {})
      req = build_request(:get_relational_database, params)
      req.send_request(options)
    end

    # Returns a list of available database blueprints in Amazon Lightsail. A
    # blueprint describes the major engine version of a database.
    #
    # You can use a blueprint ID to create a new database that runs a
    # specific database engine.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseBlueprints` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #
    # @return [Types::GetRelationalDatabaseBlueprintsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseBlueprintsResult#blueprints #blueprints} => Array&lt;Types::RelationalDatabaseBlueprint&gt;
    #   * {Types::GetRelationalDatabaseBlueprintsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database_blueprints({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprints #=> Array
    #   resp.blueprints[0].blueprint_id #=> String
    #   resp.blueprints[0].engine #=> String, one of "mysql"
    #   resp.blueprints[0].engine_version #=> String
    #   resp.blueprints[0].engine_description #=> String
    #   resp.blueprints[0].engine_version_description #=> String
    #   resp.blueprints[0].is_engine_default #=> Boolean
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseBlueprints AWS API Documentation
    #
    # @overload get_relational_database_blueprints(params = {})
    # @param [Hash] params ({})
    def get_relational_database_blueprints(params = {}, options = {})
      req = build_request(:get_relational_database_blueprints, params)
      req.send_request(options)
    end

    # Returns the list of bundles that are available in Amazon Lightsail. A
    # bundle describes the performance specifications for a database.
    #
    # You can use a bundle ID to create a new database with explicit
    # performance specifications.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetRelationalDatabaseBundles`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a subsequent
    #   request.
    #
    # @return [Types::GetRelationalDatabaseBundlesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseBundlesResult#bundles #bundles} => Array&lt;Types::RelationalDatabaseBundle&gt;
    #   * {Types::GetRelationalDatabaseBundlesResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database_bundles({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.bundles #=> Array
    #   resp.bundles[0].bundle_id #=> String
    #   resp.bundles[0].name #=> String
    #   resp.bundles[0].price #=> Float
    #   resp.bundles[0].ram_size_in_gb #=> Float
    #   resp.bundles[0].disk_size_in_gb #=> Integer
    #   resp.bundles[0].transfer_per_month_in_gb #=> Integer
    #   resp.bundles[0].cpu_count #=> Integer
    #   resp.bundles[0].is_encrypted #=> Boolean
    #   resp.bundles[0].is_active #=> Boolean
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseBundles AWS API Documentation
    #
    # @overload get_relational_database_bundles(params = {})
    # @param [Hash] params ({})
    def get_relational_database_bundles(params = {}, options = {})
      req = build_request(:get_relational_database_bundles, params)
      req.send_request(options)
    end

    # Returns a list of events for a specific database in Amazon Lightsail.
    #
    # @option params [required, String] :relational_database_name
    #   The name of the database from which to get events.
    #
    # @option params [Integer] :duration_in_minutes
    #   The number of minutes in the past from which to retrieve events. For
    #   example, to get all events from the past 2 hours, enter 120.
    #
    #   Default: `60`
    #
    #   The minimum is 1 and the maximum is 14 days (20160 minutes).
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetRelationalDatabaseEvents`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a subsequent
    #   request.
    #
    # @return [Types::GetRelationalDatabaseEventsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseEventsResult#relational_database_events #relational_database_events} => Array&lt;Types::RelationalDatabaseEvent&gt;
    #   * {Types::GetRelationalDatabaseEventsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database_events({
    #     relational_database_name: "ResourceName", # required
    #     duration_in_minutes: 1,
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.relational_database_events #=> Array
    #   resp.relational_database_events[0].resource #=> String
    #   resp.relational_database_events[0].created_at #=> Time
    #   resp.relational_database_events[0].message #=> String
    #   resp.relational_database_events[0].event_categories #=> Array
    #   resp.relational_database_events[0].event_categories[0] #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseEvents AWS API Documentation
    #
    # @overload get_relational_database_events(params = {})
    # @param [Hash] params ({})
    def get_relational_database_events(params = {}, options = {})
      req = build_request(:get_relational_database_events, params)
      req.send_request(options)
    end

    # Returns a list of log events for a database in Amazon Lightsail.
    #
    # @option params [required, String] :relational_database_name
    #   The name of your database for which to get log events.
    #
    # @option params [required, String] :log_stream_name
    #   The name of the log stream.
    #
    #   Use the `get relational database log streams` operation to get a list
    #   of available log streams.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time interval from which to get log events.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a start time of October 1, 2018, at
    #     8 PM UTC, then you input `1538424000` as the start time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval from which to get log events.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use an end time of October 1, 2018, at 8
    #     PM UTC, then you input `1538424000` as the end time.
    #
    # @option params [Boolean] :start_from_head
    #   Parameter to specify if the log should start from head or tail. If
    #   `true` is specified, the log event starts from the head of the log. If
    #   `false` is specified, the log event starts from the tail of the log.
    #
    #   <note markdown="1"> For PostgreSQL, the default value of `false` is the only option
    #   available.
    #
    #    </note>
    #
    # @option params [String] :page_token
    #   The token to advance to the next or previous page of results from your
    #   request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseLogEvents` request. If your results are
    #   paginated, the response will return a next forward token and/or next
    #   backward token that you can specify as the page token in a subsequent
    #   request.
    #
    # @return [Types::GetRelationalDatabaseLogEventsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseLogEventsResult#resource_log_events #resource_log_events} => Array&lt;Types::LogEvent&gt;
    #   * {Types::GetRelationalDatabaseLogEventsResult#next_backward_token #next_backward_token} => String
    #   * {Types::GetRelationalDatabaseLogEventsResult#next_forward_token #next_forward_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database_log_events({
    #     relational_database_name: "ResourceName", # required
    #     log_stream_name: "string", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     start_from_head: false,
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_log_events #=> Array
    #   resp.resource_log_events[0].created_at #=> Time
    #   resp.resource_log_events[0].message #=> String
    #   resp.next_backward_token #=> String
    #   resp.next_forward_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseLogEvents AWS API Documentation
    #
    # @overload get_relational_database_log_events(params = {})
    # @param [Hash] params ({})
    def get_relational_database_log_events(params = {}, options = {})
      req = build_request(:get_relational_database_log_events, params)
      req.send_request(options)
    end

    # Returns a list of available log streams for a specific database in
    # Amazon Lightsail.
    #
    # @option params [required, String] :relational_database_name
    #   The name of your database for which to get log streams.
    #
    # @return [Types::GetRelationalDatabaseLogStreamsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseLogStreamsResult#log_streams #log_streams} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database_log_streams({
    #     relational_database_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_streams #=> Array
    #   resp.log_streams[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseLogStreams AWS API Documentation
    #
    # @overload get_relational_database_log_streams(params = {})
    # @param [Hash] params ({})
    def get_relational_database_log_streams(params = {}, options = {})
      req = build_request(:get_relational_database_log_streams, params)
      req.send_request(options)
    end

    # Returns the current, previous, or pending versions of the master user
    # password for a Lightsail database.
    #
    # The `GetRelationalDatabaseMasterUserPassword` operation supports
    # tag-based access control via resource tags applied to the resource
    # identified by relationalDatabaseName.
    #
    # @option params [required, String] :relational_database_name
    #   The name of your database for which to get the master user password.
    #
    # @option params [String] :password_version
    #   The password version to return.
    #
    #   Specifying `CURRENT` or `PREVIOUS` returns the current or previous
    #   passwords respectively. Specifying `PENDING` returns the newest
    #   version of the password that will rotate to `CURRENT`. After the
    #   `PENDING` password rotates to `CURRENT`, the `PENDING` password is no
    #   longer available.
    #
    #   Default: `CURRENT`
    #
    # @return [Types::GetRelationalDatabaseMasterUserPasswordResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseMasterUserPasswordResult#master_user_password #master_user_password} => String
    #   * {Types::GetRelationalDatabaseMasterUserPasswordResult#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database_master_user_password({
    #     relational_database_name: "ResourceName", # required
    #     password_version: "CURRENT", # accepts CURRENT, PREVIOUS, PENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.master_user_password #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseMasterUserPassword AWS API Documentation
    #
    # @overload get_relational_database_master_user_password(params = {})
    # @param [Hash] params ({})
    def get_relational_database_master_user_password(params = {}, options = {})
      req = build_request(:get_relational_database_master_user_password, params)
      req.send_request(options)
    end

    # Returns the data points of the specified metric for a database in
    # Amazon Lightsail.
    #
    # Metrics report the utilization of your resources, and the error counts
    # generated by them. Monitor and collect metric data regularly to
    # maintain the reliability, availability, and performance of your
    # resources.
    #
    # @option params [required, String] :relational_database_name
    #   The name of your database from which to get metric data.
    #
    # @option params [required, String] :metric_name
    #   The metric for which you want to return information.
    #
    #   Valid relational database metric names are listed below, along with
    #   the most useful `statistics` to include in your request, and the
    #   published `unit` value. All relational database metric data is
    #   available in 1-minute (60 seconds) granularity.
    #
    #   * <b> <code>CPUUtilization</code> </b> - The percentage of CPU
    #     utilization currently in use on the database.
    #
    #     `Statistics`\: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`\: The published unit is `Percent`.
    #
    #   * <b> <code>DatabaseConnections</code> </b> - The number of database
    #     connections in use.
    #
    #     `Statistics`\: The most useful statistics are `Maximum` and `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>DiskQueueDepth</code> </b> - The number of outstanding IOs
    #     (read/write requests) that are waiting to access the disk.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>FreeStorageSpace</code> </b> - The amount of available
    #     storage space.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Bytes`.
    #
    #   * <b> <code>NetworkReceiveThroughput</code> </b> - The incoming
    #     (Receive) network traffic on the database, including both customer
    #     database traffic and AWS traffic used for monitoring and
    #     replication.
    #
    #     `Statistics`\: The most useful statistic is `Average`.
    #
    #     `Unit`\: The published unit is `Bytes/Second`.
    #
    #   * <b> <code>NetworkTransmitThroughput</code> </b> - The outgoing
    #     (Transmit) network traffic on the database, including both customer
    #     database traffic and AWS traffic used for monitoring and
    #     replication.
    #
    #     `Statistics`\: The most useful statistic is `Average`.
    #
    #     `Unit`\: The published unit is `Bytes/Second`.
    #
    # @option params [required, Integer] :period
    #   The granularity, in seconds, of the returned data points.
    #
    #   All relational database metric data is available in 1-minute (60
    #   seconds) granularity.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time interval from which to get metric data.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a start time of October 1, 2018, at
    #     8 PM UTC, then you input `1538424000` as the start time.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval from which to get metric data.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use an end time of October 1, 2018, at 8
    #     PM UTC, then you input `1538424000` as the end time.
    #
    # @option params [required, String] :unit
    #   The unit for the metric data request. Valid units depend on the metric
    #   data being requested. For the valid units with each available metric,
    #   see the `metricName` parameter.
    #
    # @option params [required, Array<String>] :statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified period.
    #     Use this value to determine high volumes of activity for your
    #     application.
    #
    #   * `Sum` - All values submitted for the matching metric added together.
    #     You can use this statistic to determine the total volume of a
    #     metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #
    # @return [Types::GetRelationalDatabaseMetricDataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseMetricDataResult#metric_name #metric_name} => String
    #   * {Types::GetRelationalDatabaseMetricDataResult#metric_data #metric_data} => Array&lt;Types::MetricDatapoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database_metric_data({
    #     relational_database_name: "ResourceName", # required
    #     metric_name: "CPUUtilization", # required, accepts CPUUtilization, DatabaseConnections, DiskQueueDepth, FreeStorageSpace, NetworkReceiveThroughput, NetworkTransmitThroughput
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     unit: "Seconds", # required, accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #     statistics: ["Minimum"], # required, accepts Minimum, Maximum, Sum, Average, SampleCount
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_name #=> String, one of "CPUUtilization", "DatabaseConnections", "DiskQueueDepth", "FreeStorageSpace", "NetworkReceiveThroughput", "NetworkTransmitThroughput"
    #   resp.metric_data #=> Array
    #   resp.metric_data[0].average #=> Float
    #   resp.metric_data[0].maximum #=> Float
    #   resp.metric_data[0].minimum #=> Float
    #   resp.metric_data[0].sample_count #=> Float
    #   resp.metric_data[0].sum #=> Float
    #   resp.metric_data[0].timestamp #=> Time
    #   resp.metric_data[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseMetricData AWS API Documentation
    #
    # @overload get_relational_database_metric_data(params = {})
    # @param [Hash] params ({})
    def get_relational_database_metric_data(params = {}, options = {})
      req = build_request(:get_relational_database_metric_data, params)
      req.send_request(options)
    end

    # Returns all of the runtime parameters offered by the underlying
    # database software, or engine, for a specific database in Amazon
    # Lightsail.
    #
    # In addition to the parameter names and values, this operation returns
    # other information about each parameter. This information includes
    # whether changes require a reboot, whether the parameter is modifiable,
    # the allowed values, and the data types.
    #
    # @option params [required, String] :relational_database_name
    #   The name of your database for which to get parameters.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseParameters` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #
    # @return [Types::GetRelationalDatabaseParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseParametersResult#parameters #parameters} => Array&lt;Types::RelationalDatabaseParameter&gt;
    #   * {Types::GetRelationalDatabaseParametersResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database_parameters({
    #     relational_database_name: "ResourceName", # required
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].allowed_values #=> String
    #   resp.parameters[0].apply_method #=> String
    #   resp.parameters[0].apply_type #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].is_modifiable #=> Boolean
    #   resp.parameters[0].parameter_name #=> String
    #   resp.parameters[0].parameter_value #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseParameters AWS API Documentation
    #
    # @overload get_relational_database_parameters(params = {})
    # @param [Hash] params ({})
    def get_relational_database_parameters(params = {}, options = {})
      req = build_request(:get_relational_database_parameters, params)
      req.send_request(options)
    end

    # Returns information about a specific database snapshot in Amazon
    # Lightsail.
    #
    # @option params [required, String] :relational_database_snapshot_name
    #   The name of the database snapshot for which to get information.
    #
    # @return [Types::GetRelationalDatabaseSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseSnapshotResult#relational_database_snapshot #relational_database_snapshot} => Types::RelationalDatabaseSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database_snapshot({
    #     relational_database_snapshot_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.relational_database_snapshot.name #=> String
    #   resp.relational_database_snapshot.arn #=> String
    #   resp.relational_database_snapshot.support_code #=> String
    #   resp.relational_database_snapshot.created_at #=> Time
    #   resp.relational_database_snapshot.location.availability_zone #=> String
    #   resp.relational_database_snapshot.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.relational_database_snapshot.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.relational_database_snapshot.tags #=> Array
    #   resp.relational_database_snapshot.tags[0].key #=> String
    #   resp.relational_database_snapshot.tags[0].value #=> String
    #   resp.relational_database_snapshot.engine #=> String
    #   resp.relational_database_snapshot.engine_version #=> String
    #   resp.relational_database_snapshot.size_in_gb #=> Integer
    #   resp.relational_database_snapshot.state #=> String
    #   resp.relational_database_snapshot.from_relational_database_name #=> String
    #   resp.relational_database_snapshot.from_relational_database_arn #=> String
    #   resp.relational_database_snapshot.from_relational_database_bundle_id #=> String
    #   resp.relational_database_snapshot.from_relational_database_blueprint_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseSnapshot AWS API Documentation
    #
    # @overload get_relational_database_snapshot(params = {})
    # @param [Hash] params ({})
    def get_relational_database_snapshot(params = {}, options = {})
      req = build_request(:get_relational_database_snapshot, params)
      req.send_request(options)
    end

    # Returns information about all of your database snapshots in Amazon
    # Lightsail.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseSnapshots` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #
    # @return [Types::GetRelationalDatabaseSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabaseSnapshotsResult#relational_database_snapshots #relational_database_snapshots} => Array&lt;Types::RelationalDatabaseSnapshot&gt;
    #   * {Types::GetRelationalDatabaseSnapshotsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_database_snapshots({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.relational_database_snapshots #=> Array
    #   resp.relational_database_snapshots[0].name #=> String
    #   resp.relational_database_snapshots[0].arn #=> String
    #   resp.relational_database_snapshots[0].support_code #=> String
    #   resp.relational_database_snapshots[0].created_at #=> Time
    #   resp.relational_database_snapshots[0].location.availability_zone #=> String
    #   resp.relational_database_snapshots[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.relational_database_snapshots[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.relational_database_snapshots[0].tags #=> Array
    #   resp.relational_database_snapshots[0].tags[0].key #=> String
    #   resp.relational_database_snapshots[0].tags[0].value #=> String
    #   resp.relational_database_snapshots[0].engine #=> String
    #   resp.relational_database_snapshots[0].engine_version #=> String
    #   resp.relational_database_snapshots[0].size_in_gb #=> Integer
    #   resp.relational_database_snapshots[0].state #=> String
    #   resp.relational_database_snapshots[0].from_relational_database_name #=> String
    #   resp.relational_database_snapshots[0].from_relational_database_arn #=> String
    #   resp.relational_database_snapshots[0].from_relational_database_bundle_id #=> String
    #   resp.relational_database_snapshots[0].from_relational_database_blueprint_id #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseSnapshots AWS API Documentation
    #
    # @overload get_relational_database_snapshots(params = {})
    # @param [Hash] params ({})
    def get_relational_database_snapshots(params = {}, options = {})
      req = build_request(:get_relational_database_snapshots, params)
      req.send_request(options)
    end

    # Returns information about all of your databases in Amazon Lightsail.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetRelationalDatabases`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a subsequent
    #   request.
    #
    # @return [Types::GetRelationalDatabasesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationalDatabasesResult#relational_databases #relational_databases} => Array&lt;Types::RelationalDatabase&gt;
    #   * {Types::GetRelationalDatabasesResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relational_databases({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.relational_databases #=> Array
    #   resp.relational_databases[0].name #=> String
    #   resp.relational_databases[0].arn #=> String
    #   resp.relational_databases[0].support_code #=> String
    #   resp.relational_databases[0].created_at #=> Time
    #   resp.relational_databases[0].location.availability_zone #=> String
    #   resp.relational_databases[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.relational_databases[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.relational_databases[0].tags #=> Array
    #   resp.relational_databases[0].tags[0].key #=> String
    #   resp.relational_databases[0].tags[0].value #=> String
    #   resp.relational_databases[0].relational_database_blueprint_id #=> String
    #   resp.relational_databases[0].relational_database_bundle_id #=> String
    #   resp.relational_databases[0].master_database_name #=> String
    #   resp.relational_databases[0].hardware.cpu_count #=> Integer
    #   resp.relational_databases[0].hardware.disk_size_in_gb #=> Integer
    #   resp.relational_databases[0].hardware.ram_size_in_gb #=> Float
    #   resp.relational_databases[0].state #=> String
    #   resp.relational_databases[0].secondary_availability_zone #=> String
    #   resp.relational_databases[0].backup_retention_enabled #=> Boolean
    #   resp.relational_databases[0].pending_modified_values.master_user_password #=> String
    #   resp.relational_databases[0].pending_modified_values.engine_version #=> String
    #   resp.relational_databases[0].pending_modified_values.backup_retention_enabled #=> Boolean
    #   resp.relational_databases[0].engine #=> String
    #   resp.relational_databases[0].engine_version #=> String
    #   resp.relational_databases[0].latest_restorable_time #=> Time
    #   resp.relational_databases[0].master_username #=> String
    #   resp.relational_databases[0].parameter_apply_status #=> String
    #   resp.relational_databases[0].preferred_backup_window #=> String
    #   resp.relational_databases[0].preferred_maintenance_window #=> String
    #   resp.relational_databases[0].publicly_accessible #=> Boolean
    #   resp.relational_databases[0].master_endpoint.port #=> Integer
    #   resp.relational_databases[0].master_endpoint.address #=> String
    #   resp.relational_databases[0].pending_maintenance_actions #=> Array
    #   resp.relational_databases[0].pending_maintenance_actions[0].action #=> String
    #   resp.relational_databases[0].pending_maintenance_actions[0].description #=> String
    #   resp.relational_databases[0].pending_maintenance_actions[0].current_apply_date #=> Time
    #   resp.relational_databases[0].ca_certificate_identifier #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabases AWS API Documentation
    #
    # @overload get_relational_databases(params = {})
    # @param [Hash] params ({})
    def get_relational_databases(params = {}, options = {})
      req = build_request(:get_relational_databases, params)
      req.send_request(options)
    end

    # Returns information about a specific static IP.
    #
    # @option params [required, String] :static_ip_name
    #   The name of the static IP in Lightsail.
    #
    # @return [Types::GetStaticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStaticIpResult#static_ip #static_ip} => Types::StaticIp
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_static_ip({
    #     static_ip_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.static_ip.name #=> String
    #   resp.static_ip.arn #=> String
    #   resp.static_ip.support_code #=> String
    #   resp.static_ip.created_at #=> Time
    #   resp.static_ip.location.availability_zone #=> String
    #   resp.static_ip.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.static_ip.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.static_ip.ip_address #=> String
    #   resp.static_ip.attached_to #=> String
    #   resp.static_ip.is_attached #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIp AWS API Documentation
    #
    # @overload get_static_ip(params = {})
    # @param [Hash] params ({})
    def get_static_ip(params = {}, options = {})
      req = build_request(:get_static_ip, params)
      req.send_request(options)
    end

    # Returns information about all static IPs in the user's account.
    #
    # @option params [String] :page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetStaticIps` request. If
    #   your results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #
    # @return [Types::GetStaticIpsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStaticIpsResult#static_ips #static_ips} => Array&lt;Types::StaticIp&gt;
    #   * {Types::GetStaticIpsResult#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_static_ips({
    #     page_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.static_ips #=> Array
    #   resp.static_ips[0].name #=> String
    #   resp.static_ips[0].arn #=> String
    #   resp.static_ips[0].support_code #=> String
    #   resp.static_ips[0].created_at #=> Time
    #   resp.static_ips[0].location.availability_zone #=> String
    #   resp.static_ips[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.static_ips[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.static_ips[0].ip_address #=> String
    #   resp.static_ips[0].attached_to #=> String
    #   resp.static_ips[0].is_attached #=> Boolean
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIps AWS API Documentation
    #
    # @overload get_static_ips(params = {})
    # @param [Hash] params ({})
    def get_static_ips(params = {}, options = {})
      req = build_request(:get_static_ips, params)
      req.send_request(options)
    end

    # Imports a public SSH key from a specific key pair.
    #
    # @option params [required, String] :key_pair_name
    #   The name of the key pair for which you want to import the public key.
    #
    # @option params [required, String] :public_key_base_64
    #   A base64-encoded public key of the `ssh-rsa` type.
    #
    # @return [Types::ImportKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportKeyPairResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_key_pair({
    #     key_pair_name: "ResourceName", # required
    #     public_key_base_64: "Base64", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ImportKeyPair AWS API Documentation
    #
    # @overload import_key_pair(params = {})
    # @param [Hash] params ({})
    def import_key_pair(params = {}, options = {})
      req = build_request(:import_key_pair, params)
      req.send_request(options)
    end

    # Returns a Boolean value indicating whether your Lightsail VPC is
    # peered.
    #
    # @return [Types::IsVpcPeeredResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IsVpcPeeredResult#is_peered #is_peered} => Boolean
    #
    # @example Response structure
    #
    #   resp.is_peered #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/IsVpcPeered AWS API Documentation
    #
    # @overload is_vpc_peered(params = {})
    # @param [Hash] params ({})
    def is_vpc_peered(params = {}, options = {})
      req = build_request(:is_vpc_peered, params)
      req.send_request(options)
    end

    # Opens ports for a specific Amazon Lightsail instance, and specifies
    # the IP addresses allowed to connect to the instance through the ports,
    # and the protocol.
    #
    # The `OpenInstancePublicPorts` action supports tag-based access control
    # via resource tags applied to the resource identified by
    # `instanceName`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, Types::PortInfo] :port_info
    #   An object to describe the ports to open for the specified instance.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance for which to open ports.
    #
    # @return [Types::OpenInstancePublicPortsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::OpenInstancePublicPortsResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.open_instance_public_ports({
    #     port_info: { # required
    #       from_port: 1,
    #       to_port: 1,
    #       protocol: "tcp", # accepts tcp, all, udp, icmp
    #       cidrs: ["string"],
    #       cidr_list_aliases: ["string"],
    #     },
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OpenInstancePublicPorts AWS API Documentation
    #
    # @overload open_instance_public_ports(params = {})
    # @param [Hash] params ({})
    def open_instance_public_ports(params = {}, options = {})
      req = build_request(:open_instance_public_ports, params)
      req.send_request(options)
    end

    # Tries to peer the Lightsail VPC with the user's default VPC.
    #
    # @return [Types::PeerVpcResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PeerVpcResult#operation #operation} => Types::Operation
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PeerVpc AWS API Documentation
    #
    # @overload peer_vpc(params = {})
    # @param [Hash] params ({})
    def peer_vpc(params = {}, options = {})
      req = build_request(:peer_vpc, params)
      req.send_request(options)
    end

    # Creates or updates an alarm, and associates it with the specified
    # metric.
    #
    # An alarm is used to monitor a single metric for one of your resources.
    # When a metric condition is met, the alarm can notify you by email, SMS
    # text message, and a banner displayed on the Amazon Lightsail console.
    # For more information, see [Alarms in Amazon Lightsail][1].
    #
    # When this action creates an alarm, the alarm state is immediately set
    # to `INSUFFICIENT_DATA`. The alarm is then evaluated and its state is
    # set appropriately. Any actions associated with the new state are then
    # executed.
    #
    # When you update an existing alarm, its state is left unchanged, but
    # the update completely overwrites the previous configuration of the
    # alarm. The alarm is then evaluated with the updated configuration.
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms
    #
    # @option params [required, String] :alarm_name
    #   The name for the alarm. Specify the name of an existing alarm to
    #   update, and overwrite the previous configuration of the alarm.
    #
    # @option params [required, String] :metric_name
    #   The name of the metric to associate with the alarm.
    #
    #   You can configure up to two alarms per metric.
    #
    #   The following metrics are available for each resource type:
    #
    #   * **Instances**\: `BurstCapacityPercentage`, `BurstCapacityTime`,
    #     `CPUUtilization`, `NetworkIn`, `NetworkOut`, `StatusCheckFailed`,
    #     `StatusCheckFailed_Instance`, and `StatusCheckFailed_System`.
    #
    #   * **Load balancers**\: `ClientTLSNegotiationErrorCount`,
    #     `HealthyHostCount`, `UnhealthyHostCount`, `HTTPCode_LB_4XX_Count`,
    #     `HTTPCode_LB_5XX_Count`, `HTTPCode_Instance_2XX_Count`,
    #     `HTTPCode_Instance_3XX_Count`, `HTTPCode_Instance_4XX_Count`,
    #     `HTTPCode_Instance_5XX_Count`, `InstanceResponseTime`,
    #     `RejectedConnectionCount`, and `RequestCount`.
    #
    #   * **Relational databases**\: `CPUUtilization`, `DatabaseConnections`,
    #     `DiskQueueDepth`, `FreeStorageSpace`, `NetworkReceiveThroughput`,
    #     and `NetworkTransmitThroughput`.
    #
    #   For more information about these metrics, see [Metrics available in
    #   Lightsail][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-resource-health-metrics#available-metrics
    #
    # @option params [required, String] :monitored_resource_name
    #   The name of the Lightsail resource that will be monitored.
    #
    #   Instances, load balancers, and relational databases are the only
    #   Lightsail resources that can currently be monitored by alarms.
    #
    # @option params [required, String] :comparison_operator
    #   The arithmetic operation to use when comparing the specified statistic
    #   to the threshold. The specified statistic value is used as the first
    #   operand.
    #
    # @option params [required, Float] :threshold
    #   The value against which the specified statistic is compared.
    #
    # @option params [required, Integer] :evaluation_periods
    #   The number of most recent periods over which data is compared to the
    #   specified threshold. If you are setting an "M out of N" alarm, this
    #   value (`evaluationPeriods`) is the N.
    #
    #   If you are setting an alarm that requires that a number of consecutive
    #   data points be breaching to trigger the alarm, this value specifies
    #   the rolling period of time in which data points are evaluated.
    #
    #   Each evaluation period is five minutes long. For example, specify an
    #   evaluation period of 24 to evaluate a metric over a rolling period of
    #   two hours.
    #
    #   You can specify a minimum valuation period of 1 (5 minutes), and a
    #   maximum evaluation period of 288 (24 hours).
    #
    # @option params [Integer] :datapoints_to_alarm
    #   The number of data points that must be not within the specified
    #   threshold to trigger the alarm. If you are setting an "M out of N"
    #   alarm, this value (`datapointsToAlarm`) is the M.
    #
    # @option params [String] :treat_missing_data
    #   Sets how this alarm will handle missing data points.
    #
    #   An alarm can treat missing data in the following ways:
    #
    #   * `breaching` - Assume the missing data is not within the threshold.
    #     Missing data counts towards the number of times the metric is not
    #     within the threshold.
    #
    #   * `notBreaching` - Assume the missing data is within the threshold.
    #     Missing data does not count towards the number of times the metric
    #     is not within the threshold.
    #
    #   * `ignore` - Ignore the missing data. Maintains the current alarm
    #     state.
    #
    #   * `missing` - Missing data is treated as missing.
    #
    #   If `treatMissingData` is not specified, the default behavior of
    #   `missing` is used.
    #
    # @option params [Array<String>] :contact_protocols
    #   The contact protocols to use for the alarm, such as `Email`, `SMS`
    #   (text messaging), or both.
    #
    #   A notification is sent via the specified contact protocol if
    #   notifications are enabled for the alarm, and when the alarm is
    #   triggered.
    #
    #   A notification is not sent if a contact protocol is not specified, if
    #   the specified contact protocol is not configured in the AWS Region, or
    #   if notifications are not enabled for the alarm using the
    #   `notificationEnabled` paramater.
    #
    #   Use the `CreateContactMethod` action to configure a contact protocol
    #   in an AWS Region.
    #
    # @option params [Array<String>] :notification_triggers
    #   The alarm states that trigger a notification.
    #
    #   An alarm has the following possible states:
    #
    #   * `ALARM` - The metric is outside of the defined threshold.
    #
    #   * `INSUFFICIENT_DATA` - The alarm has just started, the metric is not
    #     available, or not enough data is available for the metric to
    #     determine the alarm state.
    #
    #   * `OK` - The metric is within the defined threshold.
    #
    #   When you specify a notification trigger, the `ALARM` state must be
    #   specified. The `INSUFFICIENT_DATA` and `OK` states can be specified in
    #   addition to the `ALARM` state.
    #
    #   * If you specify `OK` as an alarm trigger, a notification is sent when
    #     the alarm switches from an `ALARM` or `INSUFFICIENT_DATA` alarm
    #     state to an `OK` state. This can be thought of as an *all clear*
    #     alarm notification.
    #
    #   * If you specify `INSUFFICIENT_DATA` as the alarm trigger, a
    #     notification is sent when the alarm switches from an `OK` or `ALARM`
    #     alarm state to an `INSUFFICIENT_DATA` state.
    #
    #   The notification trigger defaults to `ALARM` if you don't specify
    #   this parameter.
    #
    # @option params [Boolean] :notification_enabled
    #   Indicates whether the alarm is enabled.
    #
    #   Notifications are enabled by default if you don't specify this
    #   parameter.
    #
    # @return [Types::PutAlarmResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAlarmResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_alarm({
    #     alarm_name: "ResourceName", # required
    #     metric_name: "CPUUtilization", # required, accepts CPUUtilization, NetworkIn, NetworkOut, StatusCheckFailed, StatusCheckFailed_Instance, StatusCheckFailed_System, ClientTLSNegotiationErrorCount, HealthyHostCount, UnhealthyHostCount, HTTPCode_LB_4XX_Count, HTTPCode_LB_5XX_Count, HTTPCode_Instance_2XX_Count, HTTPCode_Instance_3XX_Count, HTTPCode_Instance_4XX_Count, HTTPCode_Instance_5XX_Count, InstanceResponseTime, RejectedConnectionCount, RequestCount, DatabaseConnections, DiskQueueDepth, FreeStorageSpace, NetworkReceiveThroughput, NetworkTransmitThroughput, BurstCapacityTime, BurstCapacityPercentage
    #     monitored_resource_name: "ResourceName", # required
    #     comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
    #     threshold: 1.0, # required
    #     evaluation_periods: 1, # required
    #     datapoints_to_alarm: 1,
    #     treat_missing_data: "breaching", # accepts breaching, notBreaching, ignore, missing
    #     contact_protocols: ["Email"], # accepts Email, SMS
    #     notification_triggers: ["OK"], # accepts OK, ALARM, INSUFFICIENT_DATA
    #     notification_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutAlarm AWS API Documentation
    #
    # @overload put_alarm(params = {})
    # @param [Hash] params ({})
    def put_alarm(params = {}, options = {})
      req = build_request(:put_alarm, params)
      req.send_request(options)
    end

    # Opens ports for a specific Amazon Lightsail instance, and specifies
    # the IP addresses allowed to connect to the instance through the ports,
    # and the protocol. This action also closes all currently open ports
    # that are not included in the request. Include all of the ports and the
    # protocols you want to open in your `PutInstancePublicPorts`request. Or
    # use the `OpenInstancePublicPorts` action to open ports without closing
    # currently open ports.
    #
    # The `PutInstancePublicPorts` action supports tag-based access control
    # via resource tags applied to the resource identified by
    # `instanceName`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, Array<Types::PortInfo>] :port_infos
    #   An array of objects to describe the ports to open for the specified
    #   instance.
    #
    # @option params [required, String] :instance_name
    #   The name of the instance for which to open ports.
    #
    # @return [Types::PutInstancePublicPortsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutInstancePublicPortsResult#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_instance_public_ports({
    #     port_infos: [ # required
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #         protocol: "tcp", # accepts tcp, all, udp, icmp
    #         cidrs: ["string"],
    #         cidr_list_aliases: ["string"],
    #       },
    #     ],
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutInstancePublicPorts AWS API Documentation
    #
    # @overload put_instance_public_ports(params = {})
    # @param [Hash] params ({})
    def put_instance_public_ports(params = {}, options = {})
      req = build_request(:put_instance_public_ports, params)
      req.send_request(options)
    end

    # Restarts a specific instance.
    #
    # The `reboot instance` operation supports tag-based access control via
    # resource tags applied to the resource identified by `instance name`.
    # For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :instance_name
    #   The name of the instance to reboot.
    #
    # @return [Types::RebootInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootInstanceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_instance({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootInstance AWS API Documentation
    #
    # @overload reboot_instance(params = {})
    # @param [Hash] params ({})
    def reboot_instance(params = {}, options = {})
      req = build_request(:reboot_instance, params)
      req.send_request(options)
    end

    # Restarts a specific database in Amazon Lightsail.
    #
    # The `reboot relational database` operation supports tag-based access
    # control via resource tags applied to the resource identified by
    # relationalDatabaseName. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :relational_database_name
    #   The name of your database to reboot.
    #
    # @return [Types::RebootRelationalDatabaseResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootRelationalDatabaseResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_relational_database({
    #     relational_database_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootRelationalDatabase AWS API Documentation
    #
    # @overload reboot_relational_database(params = {})
    # @param [Hash] params ({})
    def reboot_relational_database(params = {}, options = {})
      req = build_request(:reboot_relational_database, params)
      req.send_request(options)
    end

    # Deletes a specific static IP from your account.
    #
    # @option params [required, String] :static_ip_name
    #   The name of the static IP to delete.
    #
    # @return [Types::ReleaseStaticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReleaseStaticIpResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_static_ip({
    #     static_ip_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ReleaseStaticIp AWS API Documentation
    #
    # @overload release_static_ip(params = {})
    # @param [Hash] params ({})
    def release_static_ip(params = {}, options = {})
      req = build_request(:release_static_ip, params)
      req.send_request(options)
    end

    # Sends a verification request to an email contact method to ensure
    # it's owned by the requester. SMS contact methods don't need to be
    # verified.
    #
    # A contact method is used to send you notifications about your Amazon
    # Lightsail resources. You can add one email address and one mobile
    # phone number contact method in each AWS Region. However, SMS text
    # messaging is not supported in some AWS Regions, and SMS text messages
    # cannot be sent to some countries/regions. For more information, see
    # [Notifications in Amazon Lightsail][1].
    #
    # A verification request is sent to the contact method when you
    # initially create it. Use this action to send another verification
    # request if a previous verification request was deleted, or has
    # expired.
    #
    # Notifications are not sent to an email contact method until after it
    # is verified, and confirmed as valid.
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications
    #
    # @option params [required, String] :protocol
    #   The protocol to verify, such as `Email` or `SMS` (text messaging).
    #
    # @return [Types::SendContactMethodVerificationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendContactMethodVerificationResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_contact_method_verification({
    #     protocol: "Email", # required, accepts Email
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SendContactMethodVerification AWS API Documentation
    #
    # @overload send_contact_method_verification(params = {})
    # @param [Hash] params ({})
    def send_contact_method_verification(params = {}, options = {})
      req = build_request(:send_contact_method_verification, params)
      req.send_request(options)
    end

    # Starts a specific Amazon Lightsail instance from a stopped state. To
    # restart an instance, use the `reboot instance` operation.
    #
    # <note markdown="1"> When you start a stopped instance, Lightsail assigns a new public IP
    # address to the instance. To use the same IP address after stopping and
    # starting an instance, create a static IP address and attach it to the
    # instance. For more information, see the [Lightsail Dev Guide][1].
    #
    #  </note>
    #
    # The `start instance` operation supports tag-based access control via
    # resource tags applied to the resource identified by `instance name`.
    # For more information, see the [Lightsail Dev Guide][2].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/lightsail-create-static-ip
    # [2]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :instance_name
    #   The name of the instance (a virtual private server) to start.
    #
    # @return [Types::StartInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartInstanceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_instance({
    #     instance_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartInstance AWS API Documentation
    #
    # @overload start_instance(params = {})
    # @param [Hash] params ({})
    def start_instance(params = {}, options = {})
      req = build_request(:start_instance, params)
      req.send_request(options)
    end

    # Starts a specific database from a stopped state in Amazon Lightsail.
    # To restart a database, use the `reboot relational database` operation.
    #
    # The `start relational database` operation supports tag-based access
    # control via resource tags applied to the resource identified by
    # relationalDatabaseName. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :relational_database_name
    #   The name of your database to start.
    #
    # @return [Types::StartRelationalDatabaseResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRelationalDatabaseResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_relational_database({
    #     relational_database_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartRelationalDatabase AWS API Documentation
    #
    # @overload start_relational_database(params = {})
    # @param [Hash] params ({})
    def start_relational_database(params = {}, options = {})
      req = build_request(:start_relational_database, params)
      req.send_request(options)
    end

    # Stops a specific Amazon Lightsail instance that is currently running.
    #
    # <note markdown="1"> When you start a stopped instance, Lightsail assigns a new public IP
    # address to the instance. To use the same IP address after stopping and
    # starting an instance, create a static IP address and attach it to the
    # instance. For more information, see the [Lightsail Dev Guide][1].
    #
    #  </note>
    #
    # The `stop instance` operation supports tag-based access control via
    # resource tags applied to the resource identified by `instance name`.
    # For more information, see the [Lightsail Dev Guide][2].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/lightsail-create-static-ip
    # [2]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :instance_name
    #   The name of the instance (a virtual private server) to stop.
    #
    # @option params [Boolean] :force
    #   When set to `True`, forces a Lightsail instance that is stuck in a
    #   `stopping` state to stop.
    #
    #   Only use the `force` parameter if your instance is stuck in the
    #   `stopping` state. In any other state, your instance should stop
    #   normally without adding this parameter to your API request.
    #
    # @return [Types::StopInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopInstanceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_instance({
    #     instance_name: "ResourceName", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopInstance AWS API Documentation
    #
    # @overload stop_instance(params = {})
    # @param [Hash] params ({})
    def stop_instance(params = {}, options = {})
      req = build_request(:stop_instance, params)
      req.send_request(options)
    end

    # Stops a specific database that is currently running in Amazon
    # Lightsail.
    #
    # The `stop relational database` operation supports tag-based access
    # control via resource tags applied to the resource identified by
    # relationalDatabaseName. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :relational_database_name
    #   The name of your database to stop.
    #
    # @option params [String] :relational_database_snapshot_name
    #   The name of your new database snapshot to be created before stopping
    #   your database.
    #
    # @return [Types::StopRelationalDatabaseResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopRelationalDatabaseResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_relational_database({
    #     relational_database_name: "ResourceName", # required
    #     relational_database_snapshot_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopRelationalDatabase AWS API Documentation
    #
    # @overload stop_relational_database(params = {})
    # @param [Hash] params ({})
    def stop_relational_database(params = {}, options = {})
      req = build_request(:stop_relational_database, params)
      req.send_request(options)
    end

    # Adds one or more tags to the specified Amazon Lightsail resource. Each
    # resource can have a maximum of 50 tags. Each tag consists of a key and
    # an optional value. Tag keys must be unique per resource. For more
    # information about tags, see the [Lightsail Dev Guide][1].
    #
    # The `tag resource` operation supports tag-based access control via
    # request tags and resource tags applied to the resource identified by
    # `resource name`. For more information, see the [Lightsail Dev
    # Guide][2].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    # [2]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :resource_name
    #   The name of the resource to which you are adding tags.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add a tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag key and optional value.
    #
    # @return [Types::TagResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagResourceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_name: "ResourceName", # required
    #     resource_arn: "ResourceArn",
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Tests an alarm by displaying a banner on the Amazon Lightsail console.
    # If a notification trigger is configured for the specified alarm, the
    # test also sends a notification to the notification protocol (`Email`
    # and/or `SMS`) configured for the alarm.
    #
    # An alarm is used to monitor a single metric for one of your resources.
    # When a metric condition is met, the alarm can notify you by email, SMS
    # text message, and a banner displayed on the Amazon Lightsail console.
    # For more information, see [Alarms in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms
    #
    # @option params [required, String] :alarm_name
    #   The name of the alarm to test.
    #
    # @option params [required, String] :state
    #   The alarm state to test.
    #
    #   An alarm has the following possible states that can be tested:
    #
    #   * `ALARM` - The metric is outside of the defined threshold.
    #
    #   * `INSUFFICIENT_DATA` - The alarm has just started, the metric is not
    #     available, or not enough data is available for the metric to
    #     determine the alarm state.
    #
    #   * `OK` - The metric is within the defined threshold.
    #
    # @return [Types::TestAlarmResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestAlarmResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_alarm({
    #     alarm_name: "ResourceName", # required
    #     state: "OK", # required, accepts OK, ALARM, INSUFFICIENT_DATA
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TestAlarm AWS API Documentation
    #
    # @overload test_alarm(params = {})
    # @param [Hash] params ({})
    def test_alarm(params = {}, options = {})
      req = build_request(:test_alarm, params)
      req.send_request(options)
    end

    # Attempts to unpeer the Lightsail VPC from the user's default VPC.
    #
    # @return [Types::UnpeerVpcResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UnpeerVpcResult#operation #operation} => Types::Operation
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.resource_name #=> String
    #   resp.operation.resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operation.created_at #=> Time
    #   resp.operation.location.availability_zone #=> String
    #   resp.operation.location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operation.is_terminal #=> Boolean
    #   resp.operation.operation_details #=> String
    #   resp.operation.operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operation.status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operation.status_changed_at #=> Time
    #   resp.operation.error_code #=> String
    #   resp.operation.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnpeerVpc AWS API Documentation
    #
    # @overload unpeer_vpc(params = {})
    # @param [Hash] params ({})
    def unpeer_vpc(params = {}, options = {})
      req = build_request(:unpeer_vpc, params)
      req.send_request(options)
    end

    # Deletes the specified set of tag keys and their values from the
    # specified Amazon Lightsail resource.
    #
    # The `untag resource` operation supports tag-based access control via
    # request tags and resource tags applied to the resource identified by
    # `resource name`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :resource_name
    #   The name of the resource from which you are removing a tag.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which you want to
    #   remove a tag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to delete from the specified resource.
    #
    # @return [Types::UntagResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagResourceResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_name: "ResourceName", # required
    #     resource_arn: "ResourceArn",
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a domain recordset after it is created.
    #
    # The `update domain entry` operation supports tag-based access control
    # via resource tags applied to the resource identified by `domain name`.
    # For more information, see the [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :domain_name
    #   The name of the domain recordset to update.
    #
    # @option params [required, Types::DomainEntry] :domain_entry
    #   An array of key-value pairs containing information about the domain
    #   entry.
    #
    # @return [Types::UpdateDomainEntryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainEntryResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_entry({
    #     domain_name: "DomainName", # required
    #     domain_entry: { # required
    #       id: "NonEmptyString",
    #       name: "DomainName",
    #       target: "string",
    #       is_alias: false,
    #       type: "DomainEntryType",
    #       options: {
    #         "DomainEntryOptionsKeys" => "string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDomainEntry AWS API Documentation
    #
    # @overload update_domain_entry(params = {})
    # @param [Hash] params ({})
    def update_domain_entry(params = {}, options = {})
      req = build_request(:update_domain_entry, params)
      req.send_request(options)
    end

    # Updates the specified attribute for a load balancer. You can only
    # update one attribute at a time.
    #
    # The `update load balancer attribute` operation supports tag-based
    # access control via resource tags applied to the resource identified by
    # `load balancer name`. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :load_balancer_name
    #   The name of the load balancer that you want to modify (e.g.,
    #   `my-load-balancer`.
    #
    # @option params [required, String] :attribute_name
    #   The name of the attribute you want to update. Valid values are below.
    #
    # @option params [required, String] :attribute_value
    #   The value that you want to specify for the attribute name.
    #
    # @return [Types::UpdateLoadBalancerAttributeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLoadBalancerAttributeResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_load_balancer_attribute({
    #     load_balancer_name: "ResourceName", # required
    #     attribute_name: "HealthCheckPath", # required, accepts HealthCheckPath, SessionStickinessEnabled, SessionStickiness_LB_CookieDurationSeconds
    #     attribute_value: "StringMax256", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateLoadBalancerAttribute AWS API Documentation
    #
    # @overload update_load_balancer_attribute(params = {})
    # @param [Hash] params ({})
    def update_load_balancer_attribute(params = {}, options = {})
      req = build_request(:update_load_balancer_attribute, params)
      req.send_request(options)
    end

    # Allows the update of one or more attributes of a database in Amazon
    # Lightsail.
    #
    # Updates are applied immediately, or in cases where the updates could
    # result in an outage, are applied during the database's predefined
    # maintenance window.
    #
    # The `update relational database` operation supports tag-based access
    # control via resource tags applied to the resource identified by
    # relationalDatabaseName. For more information, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :relational_database_name
    #   The name of your database to update.
    #
    # @option params [String] :master_user_password
    #   The password for the master user of your database. The password can
    #   include any printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain 8 to 41 characters.
    #
    # @option params [Boolean] :rotate_master_user_password
    #   When `true`, the master user password is changed to a new strong
    #   password generated by Lightsail.
    #
    #   Use the `get relational database master user password` operation to
    #   get the new password.
    #
    # @option params [String] :preferred_backup_window
    #   The daily time range during which automated backups are created for
    #   your database if automated backups are enabled.
    #
    #   Constraints:
    #
    #   * Must be in the `hh24:mi-hh24:mi` format.
    #
    #     Example: `16:00-16:30`
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur on
    #   your database.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Constraints:
    #
    #   * Must be in the `ddd:hh24:mi-ddd:hh24:mi` format.
    #
    #   * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   * Must be at least 30 minutes.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Example: `Tue:17:00-Tue:17:30`
    #
    # @option params [Boolean] :enable_backup_retention
    #   When `true`, enables automated backup retention for your database.
    #
    #   Updates are applied during the next maintenance window because this
    #   can result in an outage.
    #
    # @option params [Boolean] :disable_backup_retention
    #   When `true`, disables automated backup retention for your database.
    #
    #   Disabling backup retention deletes all automated database backups.
    #   Before disabling this, you may want to create a snapshot of your
    #   database using the `create relational database snapshot` operation.
    #
    #   Updates are applied during the next maintenance window because this
    #   can result in an outage.
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies the accessibility options for your database. A value of
    #   `true` specifies a database that is available to resources outside of
    #   your Lightsail account. A value of `false` specifies a database that
    #   is available only to your Lightsail resources in the same region as
    #   your database.
    #
    # @option params [Boolean] :apply_immediately
    #   When `true`, applies changes immediately. When `false`, applies
    #   changes during the preferred maintenance window. Some changes may
    #   cause an outage.
    #
    #   Default: `false`
    #
    # @option params [String] :ca_certificate_identifier
    #   Indicates the certificate that needs to be associated with the
    #   database.
    #
    # @return [Types::UpdateRelationalDatabaseResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRelationalDatabaseResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_relational_database({
    #     relational_database_name: "ResourceName", # required
    #     master_user_password: "SensitiveString",
    #     rotate_master_user_password: false,
    #     preferred_backup_window: "string",
    #     preferred_maintenance_window: "string",
    #     enable_backup_retention: false,
    #     disable_backup_retention: false,
    #     publicly_accessible: false,
    #     apply_immediately: false,
    #     ca_certificate_identifier: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateRelationalDatabase AWS API Documentation
    #
    # @overload update_relational_database(params = {})
    # @param [Hash] params ({})
    def update_relational_database(params = {}, options = {})
      req = build_request(:update_relational_database, params)
      req.send_request(options)
    end

    # Allows the update of one or more parameters of a database in Amazon
    # Lightsail.
    #
    # Parameter updates don't cause outages; therefore, their application
    # is not subject to the preferred maintenance window. However, there are
    # two ways in which parameter updates are applied: `dynamic` or
    # `pending-reboot`. Parameters marked with a `dynamic` apply type are
    # applied immediately. Parameters marked with a `pending-reboot` apply
    # type are applied only after the database is rebooted using the `reboot
    # relational database` operation.
    #
    # The `update relational database parameters` operation supports
    # tag-based access control via resource tags applied to the resource
    # identified by relationalDatabaseName. For more information, see the
    # [Lightsail Dev Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags
    #
    # @option params [required, String] :relational_database_name
    #   The name of your database for which to update parameters.
    #
    # @option params [required, Array<Types::RelationalDatabaseParameter>] :parameters
    #   The database parameters to update.
    #
    # @return [Types::UpdateRelationalDatabaseParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRelationalDatabaseParametersResult#operations #operations} => Array&lt;Types::Operation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_relational_database_parameters({
    #     relational_database_name: "ResourceName", # required
    #     parameters: [ # required
    #       {
    #         allowed_values: "string",
    #         apply_method: "string",
    #         apply_type: "string",
    #         data_type: "string",
    #         description: "string",
    #         is_modifiable: false,
    #         parameter_name: "string",
    #         parameter_value: "string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].resource_name #=> String
    #   resp.operations[0].resource_type #=> String, one of "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod"
    #   resp.operations[0].created_at #=> Time
    #   resp.operations[0].location.availability_zone #=> String
    #   resp.operations[0].location.region_name #=> String, one of "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2"
    #   resp.operations[0].is_terminal #=> Boolean
    #   resp.operations[0].operation_details #=> String
    #   resp.operations[0].operation_type #=> String, one of "DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod"
    #   resp.operations[0].status #=> String, one of "NotStarted", "Started", "Failed", "Completed", "Succeeded"
    #   resp.operations[0].status_changed_at #=> Time
    #   resp.operations[0].error_code #=> String
    #   resp.operations[0].error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateRelationalDatabaseParameters AWS API Documentation
    #
    # @overload update_relational_database_parameters(params = {})
    # @param [Hash] params ({})
    def update_relational_database_parameters(params = {}, options = {})
      req = build_request(:update_relational_database_parameters, params)
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
      context[:gem_name] = 'aws-sdk-lightsail'
      context[:gem_version] = '1.32.0'
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
