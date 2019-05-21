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

Aws::Plugins::GlobalConfiguration.add_identifier(:datasync)

module Aws::DataSync
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :datasync

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
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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

    # Cancels execution of a task.
    #
    # When you cancel a task execution, the transfer of some files are
    # abruptly interrupted. The contents of files that are transferred to
    # the destination might be incomplete or inconsistent with the source
    # files. However, if you start a new task execution on the same task and
    # you allow the task execution to complete, file content on the
    # destination is complete and consistent. This applies to other
    # unexpected failures that interrupt a task execution. In all of these
    # cases, AWS DataSync successfully complete the transfer when you start
    # the next task execution.
    #
    # @option params [required, String] :task_execution_arn
    #   The Amazon Resource Name (ARN) of the task execution to cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_task_execution({
    #     task_execution_arn: "TaskExecutionArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CancelTaskExecution AWS API Documentation
    #
    # @overload cancel_task_execution(params = {})
    # @param [Hash] params ({})
    def cancel_task_execution(params = {}, options = {})
      req = build_request(:cancel_task_execution, params)
      req.send_request(options)
    end

    # Activates an AWS DataSync agent that you have deployed on your host.
    # The activation process associates your agent with your account. In the
    # activation process, you specify information such as the AWS Region
    # that you want to activate the agent in. You activate the agent in the
    # AWS Region where your target locations (in Amazon S3 or Amazon EFS)
    # reside. Your tasks are created in this AWS Region.
    #
    # You can use an agent for more than one location. If a task uses
    # multiple agents, all of them need to have status AVAILABLE for the
    # task to run. If you use multiple agents for a source location, the
    # status of all the agents must be AVAILABLE for the task to run.
    #
    # For more information, see
    # "https://docs.aws.amazon.com/datasync/latest/userguide/working-with-agents.html#activating-agent"
    # (Activating an Agent) in the *AWS DataSync User Guide.*
    #
    # Agents are automatically updated by AWS on a regular basis, using a
    # mechanism that ensures minimal interruption to your tasks.
    #
    # @option params [required, String] :activation_key
    #   Your agent activation key. You can get the activation key either by
    #   sending an HTTP GET request with redirects that enable you to get the
    #   agent IP address (port 80). Alternatively, you can get it from the AWS
    #   DataSync console.
    #
    #   The redirect URL returned in the response provides you the activation
    #   key for your agent in the query string parameter `activationKey`. It
    #   might also include other activation-related parameters; however, these
    #   are merely defaults. The arguments you pass to this API call determine
    #   the actual configuration of your agent.
    #
    #   For more information, see
    #   "https://docs.aws.amazon.com/datasync/latest/userguide/working-with-agents.html#activating-agent"
    #   (Activating a Agent) in the *AWS DataSync User Guide.*
    #
    # @option params [String] :agent_name
    #   The name you configured for your agent. This value is a text reference
    #   that is used to identify the agent in the console.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   The key-value pair that represents the tag that you want to associate
    #   with the agent. The value can be an empty string. This value helps you
    #   manage, filter, and search for your agents.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @.
    #
    #    </note>
    #
    # @return [Types::CreateAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentResponse#agent_arn #agent_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent({
    #     activation_key: "ActivationKey", # required
    #     agent_name: "TagValue",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateAgent AWS API Documentation
    #
    # @overload create_agent(params = {})
    # @param [Hash] params ({})
    def create_agent(params = {}, options = {})
      req = build_request(:create_agent, params)
      req.send_request(options)
    end

    # Creates an endpoint for an Amazon EFS file system.
    #
    # @option params [String] :subdirectory
    #   A subdirectory in the location’s path. This subdirectory in the EFS
    #   file system is used to read data from the EFS source location or write
    #   data to the EFS destination. By default, AWS DataSync uses the root
    #   directory.
    #
    # @option params [required, String] :efs_filesystem_arn
    #   The Amazon Resource Name (ARN) for the Amazon EFS file system.
    #
    # @option params [required, Types::Ec2Config] :ec2_config
    #   The subnet and security group that the Amazon EFS file system uses.
    #   The security group that you provide needs to be able to communicate
    #   with the security group on the mount target in the subnet specified.
    #
    #   The exact relationship between security group M (of the mount target)
    #   and security group S (which you provide for DataSync to use at this
    #   stage) is as follows:
    #
    #   * Security group M (which you associate with the mount target) must
    #     allow inbound access for the Transmission Control Protocol (TCP) on
    #     the NFS port (2049) from security group S. You can enable inbound
    #     connections either by IP address (CIDR range) or security group.
    #
    #   * Security group S (provided to DataSync to access EFS) should have a
    #     rule that enables outbound connections to the NFS port on one of the
    #     file system’s mount targets. You can enable outbound connections
    #     either by IP address (CIDR range) or security group.
    #
    #     For information about security groups and mount targets, see
    #     "https://docs.aws.amazon.com/efs/latest/ug/security-considerations.html#network-access"
    #     (Security Groups for Amazon EC2 Instances and Mount Targets) in the
    #     *Amazon EFS User Guide*.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   The key-value pair that represents a tag that you want to add to the
    #   resource. The value can be an empty string. This value helps you
    #   manage, filter, and search for your resources. We recommend that you
    #   create a name tag for your location.
    #
    # @return [Types::CreateLocationEfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationEfsResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_efs({
    #     subdirectory: "Subdirectory",
    #     efs_filesystem_arn: "EfsFilesystemArn", # required
    #     ec2_config: { # required
    #       subnet_arn: "Ec2SubnetArn", # required
    #       security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationEfs AWS API Documentation
    #
    # @overload create_location_efs(params = {})
    # @param [Hash] params ({})
    def create_location_efs(params = {}, options = {})
      req = build_request(:create_location_efs, params)
      req.send_request(options)
    end

    # Creates an endpoint for a Network File System (NFS) file system.
    #
    # @option params [required, String] :subdirectory
    #   The subdirectory in the NFS file system that is used to read data from
    #   the NFS source location or write data to the NFS destination. The NFS
    #   path should be a path that's exported by the NFS server, or a
    #   subdirectory of that path. The path should be such that it can be
    #   mounted by other NFS clients in your network.
    #
    #   To see all the paths exported by your NFS server. run "`showmount -e
    #   nfs-server-name`" from an NFS client that has access to your server.
    #   You can specify any directory that appears in the results, and any
    #   subdirectory of that directory. Ensure that the NFS export is
    #   accessible without Kerberos authentication.
    #
    #   To transfer all the data in the folder you specified, DataSync needs
    #   to have permissions to read all the data. To ensure this, either
    #   configure the NFS export with `no_root_squash,` or ensure that the
    #   permissions for all of the files that you want DataSync allow read
    #   access for all users. Doing either enables the agent to read the
    #   files. For the agent to access directories, you must additionally
    #   enable all execute access.
    #
    #   For information about NFS export configuration, see
    #   "http://web.mit.edu/rhel-doc/5/RHEL-5-manual/Deployment\_Guide-en-US/s1-nfs-server-config-exports.html"
    #   (18.7. The /etc/exports Configuration File).
    #
    # @option params [required, String] :server_hostname
    #   The name of the NFS server. This value is the IP address or Domain
    #   Name Service (DNS) name of the NFS server. An agent that is installed
    #   on-premises uses this host name to mount the NFS server in a network.
    #
    #   <note markdown="1"> This name must either be DNS-compliant or must be an IP version 4
    #   (IPv4) address.
    #
    #    </note>
    #
    # @option params [required, Types::OnPremConfig] :on_prem_config
    #   Contains a list of Amazon Resource Names (ARNs) of agents that are
    #   used to connect to an NFS server.
    #
    # @option params [Types::NfsMountOptions] :mount_options
    #   The NFS mount options that DataSync can use to mount your NFS share.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   The key-value pair that represents the tag that you want to add to the
    #   location. The value can be an empty string. We recommend using tags to
    #   name your resources.
    #
    # @return [Types::CreateLocationNfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationNfsResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_nfs({
    #     subdirectory: "NonEmptySubdirectory", # required
    #     server_hostname: "ServerHostname", # required
    #     on_prem_config: { # required
    #       agent_arns: ["AgentArn"], # required
    #     },
    #     mount_options: {
    #       version: "AUTOMATIC", # accepts AUTOMATIC, NFS3, NFS4_0, NFS4_1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationNfs AWS API Documentation
    #
    # @overload create_location_nfs(params = {})
    # @param [Hash] params ({})
    def create_location_nfs(params = {}, options = {})
      req = build_request(:create_location_nfs, params)
      req.send_request(options)
    end

    # Creates an endpoint for an Amazon S3 bucket.
    #
    # For AWS DataSync to access a destination S3 bucket, it needs an AWS
    # Identity and Access Management (IAM) role that has the required
    # permissions. You can set up the required permissions by creating an
    # IAM policy that grants the required permissions and attaching the
    # policy to the role. An example of such a policy is shown in the
    # examples section.
    #
    # For more information, see
    # "https://docs.aws.amazon.com/datasync/latest/userguide/working-with-locations.html#create-s3-location"
    # (Configuring Amazon S3 Location Settings) in the *AWS DataSync User
    # Guide*.
    #
    # @option params [String] :subdirectory
    #   A subdirectory in the Amazon S3 bucket. This subdirectory in Amazon S3
    #   is used to read data from the S3 source location or write data to the
    #   S3 destination.
    #
    # @option params [required, String] :s3_bucket_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket.
    #
    # @option params [required, Types::S3Config] :s3_config
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that is used to access an Amazon S3 bucket.
    #
    #   For detailed information about using such a role, see
    #   "https://docs.aws.amazon.com/datasync/latest/userguide/working-with-locations.html#create-s3-location"
    #   (Creating a Location for Amazon S3) in the *AWS DataSync User Guide*.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   The key-value pair that represents the tag that you want to add to the
    #   location. The value can be an empty string. We recommend using tags to
    #   name your resources.
    #
    # @return [Types::CreateLocationS3Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationS3Response#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_s3({
    #     subdirectory: "Subdirectory",
    #     s3_bucket_arn: "S3BucketArn", # required
    #     s3_config: { # required
    #       bucket_access_role_arn: "IamRoleArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationS3 AWS API Documentation
    #
    # @overload create_location_s3(params = {})
    # @param [Hash] params ({})
    def create_location_s3(params = {}, options = {})
      req = build_request(:create_location_s3, params)
      req.send_request(options)
    end

    # Creates a task. A task is a set of two locations (source and
    # destination) and a set of Options that you use to control the behavior
    # of a task. If you don't specify Options when you create a task, AWS
    # DataSync populates them with service defaults.
    #
    # When you create a task, it first enters the CREATING state. During
    # CREATING AWS DataSync attempts to mount the on-premises Network File
    # System (NFS) location. The task transitions to the AVAILABLE state
    # without waiting for the AWS location to become mounted. If required,
    # AWS DataSync mounts the AWS location before each task execution.
    #
    # If an agent that is associated with a source (NFS) location goes
    # offline, the task transitions to the UNAVAILABLE status. If the status
    # of the task remains in the CREATING status for more than a few
    # minutes, it means that your agent might be having trouble mounting the
    # source NFS file system. Check the task's ErrorCode and ErrorDetail.
    # Mount issues are often caused by either a misconfigured firewall or a
    # mistyped NFS server host name.
    #
    # @option params [required, String] :source_location_arn
    #   The Amazon Resource Name (ARN) of the source location for the task.
    #
    # @option params [required, String] :destination_location_arn
    #   The Amazon Resource Name (ARN) of an AWS storage resource's location.
    #
    # @option params [String] :cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
    #   is used to monitor and log events in the task.
    #
    #   For more information on these groups, see
    #   "https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html"
    #   (Working with Log Groups and Log Streams) in the *Amazon CloudWatch
    #   User Guide*.
    #
    #   For more information about how to useCloudWatchLogs with DataSync, see
    #   "https://docs.aws.amazon.com/datasync/latest/userguide/monitor-datasync.html"
    #   (Monitoring Your Task)
    #
    # @option params [String] :name
    #   The name of a task. This value is a text reference that is used to
    #   identify the task in the console.
    #
    # @option params [Types::Options] :options
    #   The set of configuration options that control the behavior of a single
    #   execution of the task that occurs when you call `StartTaskExecution`.
    #   You can configure these options to preserve metadata such as user ID
    #   (UID) and group ID (GID), file permissions, data integrity
    #   verification, and so on.
    #
    #   For each individual task execution, you can override these options by
    #   specifying the `OverrideOptions` before starting a the task execution.
    #   For more information, see the operation.
    #
    # @option params [Array<Types::FilterRule>] :excludes
    #   A filter that determines which files to exclude from a task based on
    #   the specified pattern. Transfers all files in the task’s subdirectory,
    #   except files that match the filter that is set.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   The key-value pair that represents the tag that you want to add to the
    #   resource. The value can be an empty string.
    #
    # @return [Types::CreateTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTaskResponse#task_arn #task_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_task({
    #     source_location_arn: "LocationArn", # required
    #     destination_location_arn: "LocationArn", # required
    #     cloud_watch_log_group_arn: "LogGroupArn",
    #     name: "TagValue",
    #     options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, NONE
    #       atime: "NONE", # accepts NONE, BEST_EFFORT
    #       mtime: "NONE", # accepts NONE, PRESERVE
    #       uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #       preserve_devices: "NONE", # accepts NONE, PRESERVE
    #       posix_permissions: "NONE", # accepts NONE, BEST_EFFORT, PRESERVE
    #       bytes_per_second: 1,
    #     },
    #     excludes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #         value: "FilterValue",
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.task_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateTask AWS API Documentation
    #
    # @overload create_task(params = {})
    # @param [Hash] params ({})
    def create_task(params = {}, options = {})
      req = build_request(:create_task, params)
      req.send_request(options)
    end

    # Deletes an agent. To specify which agent to delete, use the Amazon
    # Resource Name (ARN) of the agent in your request. The operation
    # disassociates the agent from your AWS account. However, it doesn't
    # delete the agent virtual machine (VM) from your on-premises
    # environment.
    #
    # @option params [required, String] :agent_arn
    #   The Amazon Resource Name (ARN) of the agent to delete. Use the
    #   `ListAgents` operation to return a list of agents for your account and
    #   AWS Region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent({
    #     agent_arn: "AgentArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteAgent AWS API Documentation
    #
    # @overload delete_agent(params = {})
    # @param [Hash] params ({})
    def delete_agent(params = {}, options = {})
      req = build_request(:delete_agent, params)
      req.send_request(options)
    end

    # Deletes the configuration of a location used by AWS DataSync.
    #
    # @option params [required, String] :location_arn
    #   The Amazon Resource Name (ARN) of the location to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_location({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteLocation AWS API Documentation
    #
    # @overload delete_location(params = {})
    # @param [Hash] params ({})
    def delete_location(params = {}, options = {})
      req = build_request(:delete_location, params)
      req.send_request(options)
    end

    # Deletes a task.
    #
    # @option params [required, String] :task_arn
    #   The Amazon Resource Name (ARN) of the task to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_task({
    #     task_arn: "TaskArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteTask AWS API Documentation
    #
    # @overload delete_task(params = {})
    # @param [Hash] params ({})
    def delete_task(params = {}, options = {})
      req = build_request(:delete_task, params)
      req.send_request(options)
    end

    # Returns metadata such as the name, the network interfaces, and the
    # status (that is, whether the agent is running or not) for an agent. To
    # specify which agent to describe, use the Amazon Resource Name (ARN) of
    # the agent in your request.
    #
    # @option params [required, String] :agent_arn
    #   The Amazon Resource Name (ARN) of the agent to describe.
    #
    # @return [Types::DescribeAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAgentResponse#agent_arn #agent_arn} => String
    #   * {Types::DescribeAgentResponse#name #name} => String
    #   * {Types::DescribeAgentResponse#status #status} => String
    #   * {Types::DescribeAgentResponse#last_connection_time #last_connection_time} => Time
    #   * {Types::DescribeAgentResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeAgentResponse#endpoint_options #endpoint_options} => Types::EndpointOptions
    #   * {Types::DescribeAgentResponse#private_link_config #private_link_config} => Types::PrivateLinkConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agent({
    #     agent_arn: "AgentArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ONLINE", "OFFLINE"
    #   resp.last_connection_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.endpoint_options.fips #=> Boolean
    #   resp.endpoint_options.private_link #=> Boolean
    #   resp.private_link_config.private_link_endpoint #=> String
    #   resp.private_link_config.subnet_arns #=> Array
    #   resp.private_link_config.subnet_arns[0] #=> String
    #   resp.private_link_config.security_group_arns #=> Array
    #   resp.private_link_config.security_group_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeAgent AWS API Documentation
    #
    # @overload describe_agent(params = {})
    # @param [Hash] params ({})
    def describe_agent(params = {}, options = {})
      req = build_request(:describe_agent, params)
      req.send_request(options)
    end

    # Returns metadata, such as the path information about an Amazon EFS
    # location.
    #
    # @option params [required, String] :location_arn
    #   The Amazon Resource Name (ARN) of the EFS location to describe.
    #
    # @return [Types::DescribeLocationEfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationEfsResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationEfsResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationEfsResponse#ec2_config #ec2_config} => Types::Ec2Config
    #   * {Types::DescribeLocationEfsResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_efs({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.ec2_config.subnet_arn #=> String
    #   resp.ec2_config.security_group_arns #=> Array
    #   resp.ec2_config.security_group_arns[0] #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationEfs AWS API Documentation
    #
    # @overload describe_location_efs(params = {})
    # @param [Hash] params ({})
    def describe_location_efs(params = {}, options = {})
      req = build_request(:describe_location_efs, params)
      req.send_request(options)
    end

    # Returns metadata, such as the path information, about a NFS location.
    #
    # @option params [required, String] :location_arn
    #   The Amazon resource Name (ARN) of the NFS location to describe.
    #
    # @return [Types::DescribeLocationNfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationNfsResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationNfsResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationNfsResponse#on_prem_config #on_prem_config} => Types::OnPremConfig
    #   * {Types::DescribeLocationNfsResponse#mount_options #mount_options} => Types::NfsMountOptions
    #   * {Types::DescribeLocationNfsResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_nfs({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.on_prem_config.agent_arns #=> Array
    #   resp.on_prem_config.agent_arns[0] #=> String
    #   resp.mount_options.version #=> String, one of "AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationNfs AWS API Documentation
    #
    # @overload describe_location_nfs(params = {})
    # @param [Hash] params ({})
    def describe_location_nfs(params = {}, options = {})
      req = build_request(:describe_location_nfs, params)
      req.send_request(options)
    end

    # Returns metadata, such as bucket name, about an Amazon S3 bucket
    # location.
    #
    # @option params [required, String] :location_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket location to
    #   describe.
    #
    # @return [Types::DescribeLocationS3Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationS3Response#location_arn #location_arn} => String
    #   * {Types::DescribeLocationS3Response#location_uri #location_uri} => String
    #   * {Types::DescribeLocationS3Response#s3_config #s3_config} => Types::S3Config
    #   * {Types::DescribeLocationS3Response#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_s3({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.s3_config.bucket_access_role_arn #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationS3 AWS API Documentation
    #
    # @overload describe_location_s3(params = {})
    # @param [Hash] params ({})
    def describe_location_s3(params = {}, options = {})
      req = build_request(:describe_location_s3, params)
      req.send_request(options)
    end

    # Returns metadata about a task.
    #
    # @option params [required, String] :task_arn
    #   The Amazon Resource Name (ARN) of the task to describe.
    #
    # @return [Types::DescribeTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTaskResponse#task_arn #task_arn} => String
    #   * {Types::DescribeTaskResponse#status #status} => String
    #   * {Types::DescribeTaskResponse#name #name} => String
    #   * {Types::DescribeTaskResponse#current_task_execution_arn #current_task_execution_arn} => String
    #   * {Types::DescribeTaskResponse#source_location_arn #source_location_arn} => String
    #   * {Types::DescribeTaskResponse#destination_location_arn #destination_location_arn} => String
    #   * {Types::DescribeTaskResponse#cloud_watch_log_group_arn #cloud_watch_log_group_arn} => String
    #   * {Types::DescribeTaskResponse#options #options} => Types::Options
    #   * {Types::DescribeTaskResponse#excludes #excludes} => Array&lt;Types::FilterRule&gt;
    #   * {Types::DescribeTaskResponse#error_code #error_code} => String
    #   * {Types::DescribeTaskResponse#error_detail #error_detail} => String
    #   * {Types::DescribeTaskResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task({
    #     task_arn: "TaskArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_arn #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "RUNNING", "UNAVAILABLE"
    #   resp.name #=> String
    #   resp.current_task_execution_arn #=> String
    #   resp.source_location_arn #=> String
    #   resp.destination_location_arn #=> String
    #   resp.cloud_watch_log_group_arn #=> String
    #   resp.options.verify_mode #=> String, one of "POINT_IN_TIME_CONSISTENT", "NONE"
    #   resp.options.atime #=> String, one of "NONE", "BEST_EFFORT"
    #   resp.options.mtime #=> String, one of "NONE", "PRESERVE"
    #   resp.options.uid #=> String, one of "NONE", "INT_VALUE", "NAME", "BOTH"
    #   resp.options.gid #=> String, one of "NONE", "INT_VALUE", "NAME", "BOTH"
    #   resp.options.preserve_deleted_files #=> String, one of "PRESERVE", "REMOVE"
    #   resp.options.preserve_devices #=> String, one of "NONE", "PRESERVE"
    #   resp.options.posix_permissions #=> String, one of "NONE", "BEST_EFFORT", "PRESERVE"
    #   resp.options.bytes_per_second #=> Integer
    #   resp.excludes #=> Array
    #   resp.excludes[0].filter_type #=> String, one of "SIMPLE_PATTERN"
    #   resp.excludes[0].value #=> String
    #   resp.error_code #=> String
    #   resp.error_detail #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTask AWS API Documentation
    #
    # @overload describe_task(params = {})
    # @param [Hash] params ({})
    def describe_task(params = {}, options = {})
      req = build_request(:describe_task, params)
      req.send_request(options)
    end

    # Returns detailed metadata about a task that is being executed.
    #
    # @option params [required, String] :task_execution_arn
    #   The Amazon Resource Name (ARN) of the task that is being executed.
    #
    # @return [Types::DescribeTaskExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTaskExecutionResponse#task_execution_arn #task_execution_arn} => String
    #   * {Types::DescribeTaskExecutionResponse#status #status} => String
    #   * {Types::DescribeTaskExecutionResponse#options #options} => Types::Options
    #   * {Types::DescribeTaskExecutionResponse#excludes #excludes} => Array&lt;Types::FilterRule&gt;
    #   * {Types::DescribeTaskExecutionResponse#includes #includes} => Array&lt;Types::FilterRule&gt;
    #   * {Types::DescribeTaskExecutionResponse#start_time #start_time} => Time
    #   * {Types::DescribeTaskExecutionResponse#estimated_files_to_transfer #estimated_files_to_transfer} => Integer
    #   * {Types::DescribeTaskExecutionResponse#estimated_bytes_to_transfer #estimated_bytes_to_transfer} => Integer
    #   * {Types::DescribeTaskExecutionResponse#files_transferred #files_transferred} => Integer
    #   * {Types::DescribeTaskExecutionResponse#bytes_written #bytes_written} => Integer
    #   * {Types::DescribeTaskExecutionResponse#bytes_transferred #bytes_transferred} => Integer
    #   * {Types::DescribeTaskExecutionResponse#result #result} => Types::TaskExecutionResultDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task_execution({
    #     task_execution_arn: "TaskExecutionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_execution_arn #=> String
    #   resp.status #=> String, one of "LAUNCHING", "PREPARING", "TRANSFERRING", "VERIFYING", "SUCCESS", "ERROR"
    #   resp.options.verify_mode #=> String, one of "POINT_IN_TIME_CONSISTENT", "NONE"
    #   resp.options.atime #=> String, one of "NONE", "BEST_EFFORT"
    #   resp.options.mtime #=> String, one of "NONE", "PRESERVE"
    #   resp.options.uid #=> String, one of "NONE", "INT_VALUE", "NAME", "BOTH"
    #   resp.options.gid #=> String, one of "NONE", "INT_VALUE", "NAME", "BOTH"
    #   resp.options.preserve_deleted_files #=> String, one of "PRESERVE", "REMOVE"
    #   resp.options.preserve_devices #=> String, one of "NONE", "PRESERVE"
    #   resp.options.posix_permissions #=> String, one of "NONE", "BEST_EFFORT", "PRESERVE"
    #   resp.options.bytes_per_second #=> Integer
    #   resp.excludes #=> Array
    #   resp.excludes[0].filter_type #=> String, one of "SIMPLE_PATTERN"
    #   resp.excludes[0].value #=> String
    #   resp.includes #=> Array
    #   resp.includes[0].filter_type #=> String, one of "SIMPLE_PATTERN"
    #   resp.includes[0].value #=> String
    #   resp.start_time #=> Time
    #   resp.estimated_files_to_transfer #=> Integer
    #   resp.estimated_bytes_to_transfer #=> Integer
    #   resp.files_transferred #=> Integer
    #   resp.bytes_written #=> Integer
    #   resp.bytes_transferred #=> Integer
    #   resp.result.prepare_duration #=> Integer
    #   resp.result.prepare_status #=> String, one of "PENDING", "SUCCESS", "ERROR"
    #   resp.result.transfer_duration #=> Integer
    #   resp.result.transfer_status #=> String, one of "PENDING", "SUCCESS", "ERROR"
    #   resp.result.verify_duration #=> Integer
    #   resp.result.verify_status #=> String, one of "PENDING", "SUCCESS", "ERROR"
    #   resp.result.error_code #=> String
    #   resp.result.error_detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskExecution AWS API Documentation
    #
    # @overload describe_task_execution(params = {})
    # @param [Hash] params ({})
    def describe_task_execution(params = {}, options = {})
      req = build_request(:describe_task_execution, params)
      req.send_request(options)
    end

    # Returns a list of agents owned by an AWS account in the AWS Region
    # specified in the request. The returned list is ordered by agent Amazon
    # Resource Name (ARN).
    #
    # By default, this operation returns a maximum of 100 agents. This
    # operation supports pagination that enables you to optionally reduce
    # the number of agents returned in a response.
    #
    # If you have more agents than are returned in a response (that is, the
    # response returns only a truncated list of your agents), the response
    # contains a marker that you can specify in your next request to fetch
    # the next page of agents.
    #
    # @option params [Integer] :max_results
    #   The maximum number of agents to list.
    #
    # @option params [String] :next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of agents.
    #
    # @return [Types::ListAgentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentsResponse#agents #agents} => Array&lt;Types::AgentListEntry&gt;
    #   * {Types::ListAgentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agents({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agents #=> Array
    #   resp.agents[0].agent_arn #=> String
    #   resp.agents[0].name #=> String
    #   resp.agents[0].status #=> String, one of "ONLINE", "OFFLINE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListAgents AWS API Documentation
    #
    # @overload list_agents(params = {})
    # @param [Hash] params ({})
    def list_agents(params = {}, options = {})
      req = build_request(:list_agents, params)
      req.send_request(options)
    end

    # Returns a lists of source and destination locations.
    #
    # If you have more locations than are returned in a response (that is,
    # the response returns only a truncated list of your agents), the
    # response contains a token that you can specify in your next request to
    # fetch the next page of locations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of locations to return.
    #
    # @option params [String] :next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of locations.
    #
    # @return [Types::ListLocationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLocationsResponse#locations #locations} => Array&lt;Types::LocationListEntry&gt;
    #   * {Types::ListLocationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_locations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.locations #=> Array
    #   resp.locations[0].location_arn #=> String
    #   resp.locations[0].location_uri #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListLocations AWS API Documentation
    #
    # @overload list_locations(params = {})
    # @param [Hash] params ({})
    def list_locations(params = {}, options = {})
      req = build_request(:list_locations, params)
      req.send_request(options)
    end

    # Returns all the tags associated with a specified resources.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of locations to return.
    #
    # @option params [String] :next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of locations.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::TagListEntry&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of executed tasks.
    #
    # @option params [String] :task_arn
    #   The Amazon Resource Name (ARN) of the task whose tasks you want to
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of executed tasks to list.
    #
    # @option params [String] :next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of the executed tasks.
    #
    # @return [Types::ListTaskExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaskExecutionsResponse#task_executions #task_executions} => Array&lt;Types::TaskExecutionListEntry&gt;
    #   * {Types::ListTaskExecutionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_executions({
    #     task_arn: "TaskArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_executions #=> Array
    #   resp.task_executions[0].task_execution_arn #=> String
    #   resp.task_executions[0].status #=> String, one of "LAUNCHING", "PREPARING", "TRANSFERRING", "VERIFYING", "SUCCESS", "ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTaskExecutions AWS API Documentation
    #
    # @overload list_task_executions(params = {})
    # @param [Hash] params ({})
    def list_task_executions(params = {}, options = {})
      req = build_request(:list_task_executions, params)
      req.send_request(options)
    end

    # Returns a list of all the tasks.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tasks to return.
    #
    # @option params [String] :next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of tasks.
    #
    # @return [Types::ListTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTasksResponse#tasks #tasks} => Array&lt;Types::TaskListEntry&gt;
    #   * {Types::ListTasksResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tasks({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].status #=> String, one of "AVAILABLE", "CREATING", "RUNNING", "UNAVAILABLE"
    #   resp.tasks[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTasks AWS API Documentation
    #
    # @overload list_tasks(params = {})
    # @param [Hash] params ({})
    def list_tasks(params = {}, options = {})
      req = build_request(:list_tasks, params)
      req.send_request(options)
    end

    # Starts a specific invocation of a task. A `TaskExecution` value
    # represents an individual run of a task. Each task can have at most one
    # `TaskExecution` at a time.
    #
    # `TaskExecution` has the following transition phases: INITIALIZING \|
    # PREPARING \| TRANSFERRING \| VERIFYING \| SUCCESS/FAILURE.
    #
    # For detailed information, see *Task Execution* in
    # "https://docs.aws.amazon.com/datasync/latest/userguide/how-datasync-works.html#terminology"
    # (Components and Terminology) in the *AWS DataSync User Guide*.
    #
    # @option params [required, String] :task_arn
    #   The Amazon Resource Name (ARN) of the task to start.
    #
    # @option params [Types::Options] :override_options
    #   Represents the options that are available to control the behavior of a
    #   StartTaskExecution operation. Behavior includes preserving metadata
    #   such as user ID (UID), group ID (GID), and file permissions, and also
    #   overwriting files in the destination, data integrity verification, and
    #   so on.
    #
    #   A task has a set of default options associated with it. If you don't
    #   specify an option in StartTaskExecution, the default value is used.
    #   You can override the defaults options on each task execution by
    #   specifying an overriding `Options` value to StartTaskExecution.
    #
    # @option params [Array<Types::FilterRule>] :includes
    #   A filter that determines which files to include in the transfer during
    #   a task execution based on the specified pattern in the filter. When
    #   multiple include filters are set, they are interpreted as an OR.
    #
    # @return [Types::StartTaskExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTaskExecutionResponse#task_execution_arn #task_execution_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_task_execution({
    #     task_arn: "TaskArn", # required
    #     override_options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, NONE
    #       atime: "NONE", # accepts NONE, BEST_EFFORT
    #       mtime: "NONE", # accepts NONE, PRESERVE
    #       uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #       preserve_devices: "NONE", # accepts NONE, PRESERVE
    #       posix_permissions: "NONE", # accepts NONE, BEST_EFFORT, PRESERVE
    #       bytes_per_second: 1,
    #     },
    #     includes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #         value: "FilterValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.task_execution_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartTaskExecution AWS API Documentation
    #
    # @overload start_task_execution(params = {})
    # @param [Hash] params ({})
    def start_task_execution(params = {}, options = {})
      req = build_request(:start_task_execution, params)
      req.send_request(options)
    end

    # Applies a key-value pair to an AWS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to apply the tag to.
    #
    # @option params [required, Array<Types::TagListEntry>] :tags
    #   The tags to apply.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from an AWS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove the tag from.
    #
    # @option params [required, Array<String>] :keys
    #   The keys in the key-value pair in the tag to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the name of an agent.
    #
    # @option params [required, String] :agent_arn
    #   The Amazon Resource Name (ARN) of the agent to update.
    #
    # @option params [String] :name
    #   The name that you want to use to configure the agent.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent({
    #     agent_arn: "AgentArn", # required
    #     name: "TagValue",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateAgent AWS API Documentation
    #
    # @overload update_agent(params = {})
    # @param [Hash] params ({})
    def update_agent(params = {}, options = {})
      req = build_request(:update_agent, params)
      req.send_request(options)
    end

    # Updates the metadata associated with a task.
    #
    # @option params [required, String] :task_arn
    #   The Amazon Resource Name (ARN) of the resource name of the task to
    #   update.
    #
    # @option params [Types::Options] :options
    #   Represents the options that are available to control the behavior of a
    #   StartTaskExecution operation. Behavior includes preserving metadata
    #   such as user ID (UID), group ID (GID), and file permissions, and also
    #   overwriting files in the destination, data integrity verification, and
    #   so on.
    #
    #   A task has a set of default options associated with it. If you don't
    #   specify an option in StartTaskExecution, the default value is used.
    #   You can override the defaults options on each task execution by
    #   specifying an overriding `Options` value to StartTaskExecution.
    #
    # @option params [Array<Types::FilterRule>] :excludes
    #   A filter that determines which files to exclude from a task based on
    #   the specified pattern in the filter. Transfers all files in the task’s
    #   subdirectory, except files that match the filter that is set.
    #
    # @option params [String] :name
    #   The name of the task to update.
    #
    # @option params [String] :cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the resource name of the CloudWatch
    #   LogGroup.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task({
    #     task_arn: "TaskArn", # required
    #     options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, NONE
    #       atime: "NONE", # accepts NONE, BEST_EFFORT
    #       mtime: "NONE", # accepts NONE, PRESERVE
    #       uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #       preserve_devices: "NONE", # accepts NONE, PRESERVE
    #       posix_permissions: "NONE", # accepts NONE, BEST_EFFORT, PRESERVE
    #       bytes_per_second: 1,
    #     },
    #     excludes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #         value: "FilterValue",
    #       },
    #     ],
    #     name: "TagValue",
    #     cloud_watch_log_group_arn: "LogGroupArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTask AWS API Documentation
    #
    # @overload update_task(params = {})
    # @param [Hash] params ({})
    def update_task(params = {}, options = {})
      req = build_request(:update_task, params)
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
      context[:gem_name] = 'aws-sdk-datasync'
      context[:gem_version] = '1.7.0'
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
