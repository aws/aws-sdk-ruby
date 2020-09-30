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

Aws::Plugins::GlobalConfiguration.add_identifier(:directoryservice)

module Aws::DirectoryService
  # An API client for DirectoryService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DirectoryService::Client.new(
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

    @identifier = :directoryservice

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

    # Accepts a directory sharing request that was sent from the directory
    # owner account.
    #
    # @option params [required, String] :shared_directory_id
    #   Identifier of the shared directory in the directory consumer account.
    #   This identifier is different for each directory owner account.
    #
    # @return [Types::AcceptSharedDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptSharedDirectoryResult#shared_directory #shared_directory} => Types::SharedDirectory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_shared_directory({
    #     shared_directory_id: "DirectoryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.shared_directory.owner_account_id #=> String
    #   resp.shared_directory.owner_directory_id #=> String
    #   resp.shared_directory.share_method #=> String, one of "ORGANIZATIONS", "HANDSHAKE"
    #   resp.shared_directory.shared_account_id #=> String
    #   resp.shared_directory.shared_directory_id #=> String
    #   resp.shared_directory.share_status #=> String, one of "Shared", "PendingAcceptance", "Rejected", "Rejecting", "RejectFailed", "Sharing", "ShareFailed", "Deleted", "Deleting"
    #   resp.shared_directory.share_notes #=> String
    #   resp.shared_directory.created_date_time #=> Time
    #   resp.shared_directory.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AcceptSharedDirectory AWS API Documentation
    #
    # @overload accept_shared_directory(params = {})
    # @param [Hash] params ({})
    def accept_shared_directory(params = {}, options = {})
      req = build_request(:accept_shared_directory, params)
      req.send_request(options)
    end

    # If the DNS server for your on-premises domain uses a publicly
    # addressable IP address, you must add a CIDR address block to correctly
    # route traffic to and from your Microsoft AD on Amazon Web Services.
    # *AddIpRoutes* adds this address block. You can also use *AddIpRoutes*
    # to facilitate routing traffic that uses public IP ranges from your
    # Microsoft AD on AWS to a peer VPC.
    #
    # Before you call *AddIpRoutes*, ensure that all of the required
    # permissions have been explicitly granted through a policy. For details
    # about what permissions are required to run the *AddIpRoutes*
    # operation, see [AWS Directory Service API Permissions: Actions,
    # Resources, and Conditions Reference][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html
    #
    # @option params [required, String] :directory_id
    #   Identifier (ID) of the directory to which to add the address block.
    #
    # @option params [required, Array<Types::IpRoute>] :ip_routes
    #   IP address blocks, using CIDR format, of the traffic to route. This is
    #   often the IP address block of the DNS server used for your on-premises
    #   domain.
    #
    # @option params [Boolean] :update_security_group_for_directory_controllers
    #   If set to true, updates the inbound and outbound rules of the security
    #   group that has the description: "AWS created security group for
    #   *directory ID* directory controllers." Following are the new rules:
    #
    #   Inbound:
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: 0.0.0.0/0
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: 0.0.0.0/0
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: 0.0.0.0/0
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: 0.0.0.0/0
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: 0.0.0.0/0
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: 0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: 0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: 0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: 0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: 0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: 0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source:
    #     0.0.0.0/0
    #
    #   * Type: DNS (UDP), Protocol: UDP, Range: 53, Source: 0.0.0.0/0
    #
    #   * Type: DNS (TCP), Protocol: TCP, Range: 53, Source: 0.0.0.0/0
    #
    #   * Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0
    #
    #   * Type: All ICMP, Protocol: All, Range: N/A, Source: 0.0.0.0/0
    #
    #
    #
    #   Outbound:
    #
    #   * Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0
    #
    #   ^
    #
    #   These security rules impact an internal network interface that is not
    #   exposed publicly.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_ip_routes({
    #     directory_id: "DirectoryId", # required
    #     ip_routes: [ # required
    #       {
    #         cidr_ip: "CidrIp",
    #         description: "Description",
    #       },
    #     ],
    #     update_security_group_for_directory_controllers: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddIpRoutes AWS API Documentation
    #
    # @overload add_ip_routes(params = {})
    # @param [Hash] params ({})
    def add_ip_routes(params = {}, options = {})
      req = build_request(:add_ip_routes, params)
      req.send_request(options)
    end

    # Adds or overwrites one or more tags for the specified directory. Each
    # directory can have a maximum of 50 tags. Each tag consists of a key
    # and optional value. Tag keys must be unique to each resource.
    #
    # @option params [required, String] :resource_id
    #   Identifier (ID) for the directory to which to add the tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the directory.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource({
    #     resource_id: "ResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddTagsToResource AWS API Documentation
    #
    # @overload add_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_tags_to_resource(params = {}, options = {})
      req = build_request(:add_tags_to_resource, params)
      req.send_request(options)
    end

    # Cancels an in-progress schema extension to a Microsoft AD directory.
    # Once a schema extension has started replicating to all domain
    # controllers, the task can no longer be canceled. A schema extension
    # can be canceled during any of the following states; `Initializing`,
    # `CreatingSnapshot`, and `UpdatingSchema`.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory whose schema extension will be
    #   canceled.
    #
    # @option params [required, String] :schema_extension_id
    #   The identifier of the schema extension that will be canceled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_schema_extension({
    #     directory_id: "DirectoryId", # required
    #     schema_extension_id: "SchemaExtensionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CancelSchemaExtension AWS API Documentation
    #
    # @overload cancel_schema_extension(params = {})
    # @param [Hash] params ({})
    def cancel_schema_extension(params = {}, options = {})
      req = build_request(:cancel_schema_extension, params)
      req.send_request(options)
    end

    # Creates an AD Connector to connect to an on-premises directory.
    #
    # Before you call `ConnectDirectory`, ensure that all of the required
    # permissions have been explicitly granted through a policy. For details
    # about what permissions are required to run the `ConnectDirectory`
    # operation, see [AWS Directory Service API Permissions: Actions,
    # Resources, and Conditions Reference][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html
    #
    # @option params [required, String] :name
    #   The fully qualified name of the on-premises directory, such as
    #   `corp.example.com`.
    #
    # @option params [String] :short_name
    #   The NetBIOS name of the on-premises directory, such as `CORP`.
    #
    # @option params [required, String] :password
    #   The password for the on-premises user account.
    #
    # @option params [String] :description
    #   A description for the directory.
    #
    # @option params [required, String] :size
    #   The size of the directory.
    #
    # @option params [required, Types::DirectoryConnectSettings] :connect_settings
    #   A DirectoryConnectSettings object that contains additional information
    #   for the operation.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to AD Connector.
    #
    # @return [Types::ConnectDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConnectDirectoryResult#directory_id #directory_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.connect_directory({
    #     name: "DirectoryName", # required
    #     short_name: "DirectoryShortName",
    #     password: "ConnectPassword", # required
    #     description: "Description",
    #     size: "Small", # required, accepts Small, Large
    #     connect_settings: { # required
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #       customer_dns_ips: ["IpAddr"], # required
    #       customer_user_name: "UserName", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ConnectDirectory AWS API Documentation
    #
    # @overload connect_directory(params = {})
    # @param [Hash] params ({})
    def connect_directory(params = {}, options = {})
      req = build_request(:connect_directory, params)
      req.send_request(options)
    end

    # Creates an alias for a directory and assigns the alias to the
    # directory. The alias is used to construct the access URL for the
    # directory, such as `http://<alias>.awsapps.com`.
    #
    # After an alias has been created, it cannot be deleted or reused, so
    # this operation should only be used when absolutely necessary.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory for which to create the alias.
    #
    # @option params [required, String] :alias
    #   The requested alias.
    #
    #   The alias must be unique amongst all aliases in AWS. This operation
    #   throws an `EntityAlreadyExistsException` error if the alias already
    #   exists.
    #
    # @return [Types::CreateAliasResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAliasResult#directory_id #directory_id} => String
    #   * {Types::CreateAliasResult#alias #alias} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     directory_id: "DirectoryId", # required
    #     alias: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.alias #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Creates a computer account in the specified directory, and joins the
    # computer to the directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory in which to create the computer
    #   account.
    #
    # @option params [required, String] :computer_name
    #   The name of the computer account.
    #
    # @option params [required, String] :password
    #   A one-time password that is used to join the computer to the
    #   directory. You should generate a random, strong password to use for
    #   this parameter.
    #
    # @option params [String] :organizational_unit_distinguished_name
    #   The fully-qualified distinguished name of the organizational unit to
    #   place the computer account in.
    #
    # @option params [Array<Types::Attribute>] :computer_attributes
    #   An array of Attribute objects that contain any LDAP attributes to
    #   apply to the computer account.
    #
    # @return [Types::CreateComputerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComputerResult#computer #computer} => Types::Computer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_computer({
    #     directory_id: "DirectoryId", # required
    #     computer_name: "ComputerName", # required
    #     password: "ComputerPassword", # required
    #     organizational_unit_distinguished_name: "OrganizationalUnitDN",
    #     computer_attributes: [
    #       {
    #         name: "AttributeName",
    #         value: "AttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.computer.computer_id #=> String
    #   resp.computer.computer_name #=> String
    #   resp.computer.computer_attributes #=> Array
    #   resp.computer.computer_attributes[0].name #=> String
    #   resp.computer.computer_attributes[0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateComputer AWS API Documentation
    #
    # @overload create_computer(params = {})
    # @param [Hash] params ({})
    def create_computer(params = {}, options = {})
      req = build_request(:create_computer, params)
      req.send_request(options)
    end

    # Creates a conditional forwarder associated with your AWS directory.
    # Conditional forwarders are required in order to set up a trust
    # relationship with another domain. The conditional forwarder points to
    # the trusted domain.
    #
    # @option params [required, String] :directory_id
    #   The directory ID of the AWS directory for which you are creating the
    #   conditional forwarder.
    #
    # @option params [required, String] :remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domain with which
    #   you will set up a trust relationship.
    #
    # @option params [required, Array<String>] :dns_ip_addrs
    #   The IP addresses of the remote DNS server associated with
    #   RemoteDomainName.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_conditional_forwarder({
    #     directory_id: "DirectoryId", # required
    #     remote_domain_name: "RemoteDomainName", # required
    #     dns_ip_addrs: ["IpAddr"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateConditionalForwarder AWS API Documentation
    #
    # @overload create_conditional_forwarder(params = {})
    # @param [Hash] params ({})
    def create_conditional_forwarder(params = {}, options = {})
      req = build_request(:create_conditional_forwarder, params)
      req.send_request(options)
    end

    # Creates a Simple AD directory. For more information, see [Simple
    # Active Directory][1] in the *AWS Directory Service Admin Guide*.
    #
    # Before you call `CreateDirectory`, ensure that all of the required
    # permissions have been explicitly granted through a policy. For details
    # about what permissions are required to run the `CreateDirectory`
    # operation, see [AWS Directory Service API Permissions: Actions,
    # Resources, and Conditions Reference][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html
    # [2]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html
    #
    # @option params [required, String] :name
    #   The fully qualified name for the directory, such as
    #   `corp.example.com`.
    #
    # @option params [String] :short_name
    #   The NetBIOS name of the directory, such as `CORP`.
    #
    # @option params [required, String] :password
    #   The password for the directory administrator. The directory creation
    #   process creates a directory administrator account with the user name
    #   `Administrator` and this password.
    #
    #   If you need to change the password for the administrator account, you
    #   can use the ResetUserPassword API call.
    #
    # @option params [String] :description
    #   A description for the directory.
    #
    # @option params [required, String] :size
    #   The size of the directory.
    #
    # @option params [Types::DirectoryVpcSettings] :vpc_settings
    #   A DirectoryVpcSettings object that contains additional information for
    #   the operation.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the Simple AD directory.
    #
    # @return [Types::CreateDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDirectoryResult#directory_id #directory_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_directory({
    #     name: "DirectoryName", # required
    #     short_name: "DirectoryShortName",
    #     password: "Password", # required
    #     description: "Description",
    #     size: "Small", # required, accepts Small, Large
    #     vpc_settings: {
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateDirectory AWS API Documentation
    #
    # @overload create_directory(params = {})
    # @param [Hash] params ({})
    def create_directory(params = {}, options = {})
      req = build_request(:create_directory, params)
      req.send_request(options)
    end

    # Creates a subscription to forward real-time Directory Service domain
    # controller security logs to the specified Amazon CloudWatch log group
    # in your AWS account.
    #
    # @option params [required, String] :directory_id
    #   Identifier of the directory to which you want to subscribe and receive
    #   real-time logs to your specified CloudWatch log group.
    #
    # @option params [required, String] :log_group_name
    #   The name of the CloudWatch log group where the real-time domain
    #   controller logs are forwarded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_subscription({
    #     directory_id: "DirectoryId", # required
    #     log_group_name: "LogGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateLogSubscription AWS API Documentation
    #
    # @overload create_log_subscription(params = {})
    # @param [Hash] params ({})
    def create_log_subscription(params = {}, options = {})
      req = build_request(:create_log_subscription, params)
      req.send_request(options)
    end

    # Creates a Microsoft AD directory in the AWS Cloud. For more
    # information, see [AWS Managed Microsoft AD][1] in the *AWS Directory
    # Service Admin Guide*.
    #
    # Before you call *CreateMicrosoftAD*, ensure that all of the required
    # permissions have been explicitly granted through a policy. For details
    # about what permissions are required to run the *CreateMicrosoftAD*
    # operation, see [AWS Directory Service API Permissions: Actions,
    # Resources, and Conditions Reference][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html
    # [2]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html
    #
    # @option params [required, String] :name
    #   The fully qualified domain name for the AWS Managed Microsoft AD
    #   directory, such as `corp.example.com`. This name will resolve inside
    #   your VPC only. It does not need to be publicly resolvable.
    #
    # @option params [String] :short_name
    #   The NetBIOS name for your domain, such as `CORP`. If you don't
    #   specify a NetBIOS name, it will default to the first part of your
    #   directory DNS. For example, `CORP` for the directory DNS
    #   `corp.example.com`.
    #
    # @option params [required, String] :password
    #   The password for the default administrative user named `Admin`.
    #
    #   If you need to change the password for the administrator account, you
    #   can use the ResetUserPassword API call.
    #
    # @option params [String] :description
    #   A description for the directory. This label will appear on the AWS
    #   console `Directory Details` page after the directory is created.
    #
    # @option params [required, Types::DirectoryVpcSettings] :vpc_settings
    #   Contains VPC information for the CreateDirectory or CreateMicrosoftAD
    #   operation.
    #
    # @option params [String] :edition
    #   AWS Managed Microsoft AD is available in two editions: `Standard` and
    #   `Enterprise`. `Enterprise` is the default.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the AWS Managed Microsoft AD directory.
    #
    # @return [Types::CreateMicrosoftADResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMicrosoftADResult#directory_id #directory_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_microsoft_ad({
    #     name: "DirectoryName", # required
    #     short_name: "DirectoryShortName",
    #     password: "Password", # required
    #     description: "Description",
    #     vpc_settings: { # required
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #     },
    #     edition: "Enterprise", # accepts Enterprise, Standard
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateMicrosoftAD AWS API Documentation
    #
    # @overload create_microsoft_ad(params = {})
    # @param [Hash] params ({})
    def create_microsoft_ad(params = {}, options = {})
      req = build_request(:create_microsoft_ad, params)
      req.send_request(options)
    end

    # Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS
    # cloud.
    #
    # <note markdown="1"> You cannot take snapshots of AD Connector directories.
    #
    #  </note>
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory of which to take a snapshot.
    #
    # @option params [String] :name
    #   The descriptive name to apply to the snapshot.
    #
    # @return [Types::CreateSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotResult#snapshot_id #snapshot_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot({
    #     directory_id: "DirectoryId", # required
    #     name: "SnapshotName",
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateSnapshot AWS API Documentation
    #
    # @overload create_snapshot(params = {})
    # @param [Hash] params ({})
    def create_snapshot(params = {}, options = {})
      req = build_request(:create_snapshot, params)
      req.send_request(options)
    end

    # AWS Directory Service for Microsoft Active Directory allows you to
    # configure trust relationships. For example, you can establish a trust
    # between your AWS Managed Microsoft AD directory, and your existing
    # on-premises Microsoft Active Directory. This would allow you to
    # provide users and groups access to resources in either domain, with a
    # single set of credentials.
    #
    # This action initiates the creation of the AWS side of a trust
    # relationship between an AWS Managed Microsoft AD directory and an
    # external domain. You can create either a forest trust or an external
    # trust.
    #
    # @option params [required, String] :directory_id
    #   The Directory ID of the AWS Managed Microsoft AD directory for which
    #   to establish the trust relationship.
    #
    # @option params [required, String] :remote_domain_name
    #   The Fully Qualified Domain Name (FQDN) of the external domain for
    #   which to create the trust relationship.
    #
    # @option params [required, String] :trust_password
    #   The trust password. The must be the same password that was used when
    #   creating the trust relationship on the external domain.
    #
    # @option params [required, String] :trust_direction
    #   The direction of the trust relationship.
    #
    # @option params [String] :trust_type
    #   The trust relationship type. `Forest` is the default.
    #
    # @option params [Array<String>] :conditional_forwarder_ip_addrs
    #   The IP addresses of the remote DNS server associated with
    #   RemoteDomainName.
    #
    # @option params [String] :selective_auth
    #   Optional parameter to enable selective authentication for the trust.
    #
    # @return [Types::CreateTrustResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrustResult#trust_id #trust_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trust({
    #     directory_id: "DirectoryId", # required
    #     remote_domain_name: "RemoteDomainName", # required
    #     trust_password: "TrustPassword", # required
    #     trust_direction: "One-Way: Outgoing", # required, accepts One-Way: Outgoing, One-Way: Incoming, Two-Way
    #     trust_type: "Forest", # accepts Forest, External
    #     conditional_forwarder_ip_addrs: ["IpAddr"],
    #     selective_auth: "Enabled", # accepts Enabled, Disabled
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateTrust AWS API Documentation
    #
    # @overload create_trust(params = {})
    # @param [Hash] params ({})
    def create_trust(params = {}, options = {})
      req = build_request(:create_trust, params)
      req.send_request(options)
    end

    # Deletes a conditional forwarder that has been set up for your AWS
    # directory.
    #
    # @option params [required, String] :directory_id
    #   The directory ID for which you are deleting the conditional forwarder.
    #
    # @option params [required, String] :remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domain with which
    #   you are deleting the conditional forwarder.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_conditional_forwarder({
    #     directory_id: "DirectoryId", # required
    #     remote_domain_name: "RemoteDomainName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteConditionalForwarder AWS API Documentation
    #
    # @overload delete_conditional_forwarder(params = {})
    # @param [Hash] params ({})
    def delete_conditional_forwarder(params = {}, options = {})
      req = build_request(:delete_conditional_forwarder, params)
      req.send_request(options)
    end

    # Deletes an AWS Directory Service directory.
    #
    # Before you call `DeleteDirectory`, ensure that all of the required
    # permissions have been explicitly granted through a policy. For details
    # about what permissions are required to run the `DeleteDirectory`
    # operation, see [AWS Directory Service API Permissions: Actions,
    # Resources, and Conditions Reference][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory to delete.
    #
    # @return [Types::DeleteDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDirectoryResult#directory_id #directory_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_directory({
    #     directory_id: "DirectoryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteDirectory AWS API Documentation
    #
    # @overload delete_directory(params = {})
    # @param [Hash] params ({})
    def delete_directory(params = {}, options = {})
      req = build_request(:delete_directory, params)
      req.send_request(options)
    end

    # Deletes the specified log subscription.
    #
    # @option params [required, String] :directory_id
    #   Identifier of the directory whose log subscription you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_subscription({
    #     directory_id: "DirectoryId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteLogSubscription AWS API Documentation
    #
    # @overload delete_log_subscription(params = {})
    # @param [Hash] params ({})
    def delete_log_subscription(params = {}, options = {})
      req = build_request(:delete_log_subscription, params)
      req.send_request(options)
    end

    # Deletes a directory snapshot.
    #
    # @option params [required, String] :snapshot_id
    #   The identifier of the directory snapshot to be deleted.
    #
    # @return [Types::DeleteSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSnapshotResult#snapshot_id #snapshot_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot({
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteSnapshot AWS API Documentation
    #
    # @overload delete_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_snapshot(params = {}, options = {})
      req = build_request(:delete_snapshot, params)
      req.send_request(options)
    end

    # Deletes an existing trust relationship between your AWS Managed
    # Microsoft AD directory and an external domain.
    #
    # @option params [required, String] :trust_id
    #   The Trust ID of the trust relationship to be deleted.
    #
    # @option params [Boolean] :delete_associated_conditional_forwarder
    #   Delete a conditional forwarder as part of a DeleteTrustRequest.
    #
    # @return [Types::DeleteTrustResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTrustResult#trust_id #trust_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trust({
    #     trust_id: "TrustId", # required
    #     delete_associated_conditional_forwarder: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteTrust AWS API Documentation
    #
    # @overload delete_trust(params = {})
    # @param [Hash] params ({})
    def delete_trust(params = {}, options = {})
      req = build_request(:delete_trust, params)
      req.send_request(options)
    end

    # Deletes from the system the certificate that was registered for a
    # secured LDAP connection.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [required, String] :certificate_id
    #   The identifier of the certificate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_certificate({
    #     directory_id: "DirectoryId", # required
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterCertificate AWS API Documentation
    #
    # @overload deregister_certificate(params = {})
    # @param [Hash] params ({})
    def deregister_certificate(params = {}, options = {})
      req = build_request(:deregister_certificate, params)
      req.send_request(options)
    end

    # Removes the specified directory as a publisher to the specified SNS
    # topic.
    #
    # @option params [required, String] :directory_id
    #   The Directory ID to remove as a publisher. This directory will no
    #   longer send messages to the specified SNS topic.
    #
    # @option params [required, String] :topic_name
    #   The name of the SNS topic from which to remove the directory as a
    #   publisher.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_event_topic({
    #     directory_id: "DirectoryId", # required
    #     topic_name: "TopicName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterEventTopic AWS API Documentation
    #
    # @overload deregister_event_topic(params = {})
    # @param [Hash] params ({})
    def deregister_event_topic(params = {}, options = {})
      req = build_request(:deregister_event_topic, params)
      req.send_request(options)
    end

    # Displays information about the certificate registered for a secured
    # LDAP connection.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [required, String] :certificate_id
    #   The identifier of the certificate.
    #
    # @return [Types::DescribeCertificateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificateResult#certificate #certificate} => Types::Certificate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate({
    #     directory_id: "DirectoryId", # required
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate.certificate_id #=> String
    #   resp.certificate.state #=> String, one of "Registering", "Registered", "RegisterFailed", "Deregistering", "Deregistered", "DeregisterFailed"
    #   resp.certificate.state_reason #=> String
    #   resp.certificate.common_name #=> String
    #   resp.certificate.registered_date_time #=> Time
    #   resp.certificate.expiry_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeCertificate AWS API Documentation
    #
    # @overload describe_certificate(params = {})
    # @param [Hash] params ({})
    def describe_certificate(params = {}, options = {})
      req = build_request(:describe_certificate, params)
      req.send_request(options)
    end

    # Obtains information about the conditional forwarders for this account.
    #
    # If no input parameters are provided for RemoteDomainNames, this
    # request describes all conditional forwarders for the specified
    # directory ID.
    #
    # @option params [required, String] :directory_id
    #   The directory ID for which to get the list of associated conditional
    #   forwarders.
    #
    # @option params [Array<String>] :remote_domain_names
    #   The fully qualified domain names (FQDN) of the remote domains for
    #   which to get the list of associated conditional forwarders. If this
    #   member is null, all conditional forwarders are returned.
    #
    # @return [Types::DescribeConditionalForwardersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConditionalForwardersResult#conditional_forwarders #conditional_forwarders} => Array&lt;Types::ConditionalForwarder&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_conditional_forwarders({
    #     directory_id: "DirectoryId", # required
    #     remote_domain_names: ["RemoteDomainName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.conditional_forwarders #=> Array
    #   resp.conditional_forwarders[0].remote_domain_name #=> String
    #   resp.conditional_forwarders[0].dns_ip_addrs #=> Array
    #   resp.conditional_forwarders[0].dns_ip_addrs[0] #=> String
    #   resp.conditional_forwarders[0].replication_scope #=> String, one of "Domain"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeConditionalForwarders AWS API Documentation
    #
    # @overload describe_conditional_forwarders(params = {})
    # @param [Hash] params ({})
    def describe_conditional_forwarders(params = {}, options = {})
      req = build_request(:describe_conditional_forwarders, params)
      req.send_request(options)
    end

    # Obtains information about the directories that belong to this account.
    #
    # You can retrieve information about specific directories by passing the
    # directory identifiers in the `DirectoryIds` parameter. Otherwise, all
    # directories that belong to the current account are returned.
    #
    # This operation supports pagination with the use of the `NextToken`
    # request and response parameters. If more results are available, the
    # `DescribeDirectoriesResult.NextToken` member contains a token that you
    # pass in the next call to DescribeDirectories to retrieve the next set
    # of items.
    #
    # You can also specify a maximum number of return results with the
    # `Limit` parameter.
    #
    # @option params [Array<String>] :directory_ids
    #   A list of identifiers of the directories for which to obtain the
    #   information. If this member is null, all directories that belong to
    #   the current account are returned.
    #
    #   An empty list results in an `InvalidParameterException` being thrown.
    #
    # @option params [String] :next_token
    #   The `DescribeDirectoriesResult.NextToken` value from a previous call
    #   to DescribeDirectories. Pass null if this is the first call.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return. If this value is zero, the
    #   maximum number of items is specified by the limitations of the
    #   operation.
    #
    # @return [Types::DescribeDirectoriesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDirectoriesResult#directory_descriptions #directory_descriptions} => Array&lt;Types::DirectoryDescription&gt;
    #   * {Types::DescribeDirectoriesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_directories({
    #     directory_ids: ["DirectoryId"],
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_descriptions #=> Array
    #   resp.directory_descriptions[0].directory_id #=> String
    #   resp.directory_descriptions[0].name #=> String
    #   resp.directory_descriptions[0].short_name #=> String
    #   resp.directory_descriptions[0].size #=> String, one of "Small", "Large"
    #   resp.directory_descriptions[0].edition #=> String, one of "Enterprise", "Standard"
    #   resp.directory_descriptions[0].alias #=> String
    #   resp.directory_descriptions[0].access_url #=> String
    #   resp.directory_descriptions[0].description #=> String
    #   resp.directory_descriptions[0].dns_ip_addrs #=> Array
    #   resp.directory_descriptions[0].dns_ip_addrs[0] #=> String
    #   resp.directory_descriptions[0].stage #=> String, one of "Requested", "Creating", "Created", "Active", "Inoperable", "Impaired", "Restoring", "RestoreFailed", "Deleting", "Deleted", "Failed"
    #   resp.directory_descriptions[0].share_status #=> String, one of "Shared", "PendingAcceptance", "Rejected", "Rejecting", "RejectFailed", "Sharing", "ShareFailed", "Deleted", "Deleting"
    #   resp.directory_descriptions[0].share_method #=> String, one of "ORGANIZATIONS", "HANDSHAKE"
    #   resp.directory_descriptions[0].share_notes #=> String
    #   resp.directory_descriptions[0].launch_time #=> Time
    #   resp.directory_descriptions[0].stage_last_updated_date_time #=> Time
    #   resp.directory_descriptions[0].type #=> String, one of "SimpleAD", "ADConnector", "MicrosoftAD", "SharedMicrosoftAD"
    #   resp.directory_descriptions[0].vpc_settings.vpc_id #=> String
    #   resp.directory_descriptions[0].vpc_settings.subnet_ids #=> Array
    #   resp.directory_descriptions[0].vpc_settings.subnet_ids[0] #=> String
    #   resp.directory_descriptions[0].vpc_settings.security_group_id #=> String
    #   resp.directory_descriptions[0].vpc_settings.availability_zones #=> Array
    #   resp.directory_descriptions[0].vpc_settings.availability_zones[0] #=> String
    #   resp.directory_descriptions[0].connect_settings.vpc_id #=> String
    #   resp.directory_descriptions[0].connect_settings.subnet_ids #=> Array
    #   resp.directory_descriptions[0].connect_settings.subnet_ids[0] #=> String
    #   resp.directory_descriptions[0].connect_settings.customer_user_name #=> String
    #   resp.directory_descriptions[0].connect_settings.security_group_id #=> String
    #   resp.directory_descriptions[0].connect_settings.availability_zones #=> Array
    #   resp.directory_descriptions[0].connect_settings.availability_zones[0] #=> String
    #   resp.directory_descriptions[0].connect_settings.connect_ips #=> Array
    #   resp.directory_descriptions[0].connect_settings.connect_ips[0] #=> String
    #   resp.directory_descriptions[0].radius_settings.radius_servers #=> Array
    #   resp.directory_descriptions[0].radius_settings.radius_servers[0] #=> String
    #   resp.directory_descriptions[0].radius_settings.radius_port #=> Integer
    #   resp.directory_descriptions[0].radius_settings.radius_timeout #=> Integer
    #   resp.directory_descriptions[0].radius_settings.radius_retries #=> Integer
    #   resp.directory_descriptions[0].radius_settings.shared_secret #=> String
    #   resp.directory_descriptions[0].radius_settings.authentication_protocol #=> String, one of "PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"
    #   resp.directory_descriptions[0].radius_settings.display_label #=> String
    #   resp.directory_descriptions[0].radius_settings.use_same_username #=> Boolean
    #   resp.directory_descriptions[0].radius_status #=> String, one of "Creating", "Completed", "Failed"
    #   resp.directory_descriptions[0].stage_reason #=> String
    #   resp.directory_descriptions[0].sso_enabled #=> Boolean
    #   resp.directory_descriptions[0].desired_number_of_domain_controllers #=> Integer
    #   resp.directory_descriptions[0].owner_directory_description.directory_id #=> String
    #   resp.directory_descriptions[0].owner_directory_description.account_id #=> String
    #   resp.directory_descriptions[0].owner_directory_description.dns_ip_addrs #=> Array
    #   resp.directory_descriptions[0].owner_directory_description.dns_ip_addrs[0] #=> String
    #   resp.directory_descriptions[0].owner_directory_description.vpc_settings.vpc_id #=> String
    #   resp.directory_descriptions[0].owner_directory_description.vpc_settings.subnet_ids #=> Array
    #   resp.directory_descriptions[0].owner_directory_description.vpc_settings.subnet_ids[0] #=> String
    #   resp.directory_descriptions[0].owner_directory_description.vpc_settings.security_group_id #=> String
    #   resp.directory_descriptions[0].owner_directory_description.vpc_settings.availability_zones #=> Array
    #   resp.directory_descriptions[0].owner_directory_description.vpc_settings.availability_zones[0] #=> String
    #   resp.directory_descriptions[0].owner_directory_description.radius_settings.radius_servers #=> Array
    #   resp.directory_descriptions[0].owner_directory_description.radius_settings.radius_servers[0] #=> String
    #   resp.directory_descriptions[0].owner_directory_description.radius_settings.radius_port #=> Integer
    #   resp.directory_descriptions[0].owner_directory_description.radius_settings.radius_timeout #=> Integer
    #   resp.directory_descriptions[0].owner_directory_description.radius_settings.radius_retries #=> Integer
    #   resp.directory_descriptions[0].owner_directory_description.radius_settings.shared_secret #=> String
    #   resp.directory_descriptions[0].owner_directory_description.radius_settings.authentication_protocol #=> String, one of "PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"
    #   resp.directory_descriptions[0].owner_directory_description.radius_settings.display_label #=> String
    #   resp.directory_descriptions[0].owner_directory_description.radius_settings.use_same_username #=> Boolean
    #   resp.directory_descriptions[0].owner_directory_description.radius_status #=> String, one of "Creating", "Completed", "Failed"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDirectories AWS API Documentation
    #
    # @overload describe_directories(params = {})
    # @param [Hash] params ({})
    def describe_directories(params = {}, options = {})
      req = build_request(:describe_directories, params)
      req.send_request(options)
    end

    # Provides information about any domain controllers in your directory.
    #
    # @option params [required, String] :directory_id
    #   Identifier of the directory for which to retrieve the domain
    #   controller information.
    #
    # @option params [Array<String>] :domain_controller_ids
    #   A list of identifiers for the domain controllers whose information
    #   will be provided.
    #
    # @option params [String] :next_token
    #   The *DescribeDomainControllers.NextToken* value from a previous call
    #   to DescribeDomainControllers. Pass null if this is the first call.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return.
    #
    # @return [Types::DescribeDomainControllersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainControllersResult#domain_controllers #domain_controllers} => Array&lt;Types::DomainController&gt;
    #   * {Types::DescribeDomainControllersResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_controllers({
    #     directory_id: "DirectoryId", # required
    #     domain_controller_ids: ["DomainControllerId"],
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_controllers #=> Array
    #   resp.domain_controllers[0].directory_id #=> String
    #   resp.domain_controllers[0].domain_controller_id #=> String
    #   resp.domain_controllers[0].dns_ip_addr #=> String
    #   resp.domain_controllers[0].vpc_id #=> String
    #   resp.domain_controllers[0].subnet_id #=> String
    #   resp.domain_controllers[0].availability_zone #=> String
    #   resp.domain_controllers[0].status #=> String, one of "Creating", "Active", "Impaired", "Restoring", "Deleting", "Deleted", "Failed"
    #   resp.domain_controllers[0].status_reason #=> String
    #   resp.domain_controllers[0].launch_time #=> Time
    #   resp.domain_controllers[0].status_last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDomainControllers AWS API Documentation
    #
    # @overload describe_domain_controllers(params = {})
    # @param [Hash] params ({})
    def describe_domain_controllers(params = {}, options = {})
      req = build_request(:describe_domain_controllers, params)
      req.send_request(options)
    end

    # Obtains information about which SNS topics receive status messages
    # from the specified directory.
    #
    # If no input parameters are provided, such as DirectoryId or TopicName,
    # this request describes all of the associations in the account.
    #
    # @option params [String] :directory_id
    #   The Directory ID for which to get the list of associated SNS topics.
    #   If this member is null, associations for all Directory IDs are
    #   returned.
    #
    # @option params [Array<String>] :topic_names
    #   A list of SNS topic names for which to obtain the information. If this
    #   member is null, all associations for the specified Directory ID are
    #   returned.
    #
    #   An empty list results in an `InvalidParameterException` being thrown.
    #
    # @return [Types::DescribeEventTopicsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventTopicsResult#event_topics #event_topics} => Array&lt;Types::EventTopic&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_topics({
    #     directory_id: "DirectoryId",
    #     topic_names: ["TopicName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_topics #=> Array
    #   resp.event_topics[0].directory_id #=> String
    #   resp.event_topics[0].topic_name #=> String
    #   resp.event_topics[0].topic_arn #=> String
    #   resp.event_topics[0].created_date_time #=> Time
    #   resp.event_topics[0].status #=> String, one of "Registered", "Topic not found", "Failed", "Deleted"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeEventTopics AWS API Documentation
    #
    # @overload describe_event_topics(params = {})
    # @param [Hash] params ({})
    def describe_event_topics(params = {}, options = {})
      req = build_request(:describe_event_topics, params)
      req.send_request(options)
    end

    # Describes the status of LDAP security for the specified directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [String] :type
    #   The type of LDAP security to enable. Currently only the value `Client`
    #   is supported.
    #
    # @option params [String] :next_token
    #   The type of next token used for pagination.
    #
    # @option params [Integer] :limit
    #   Specifies the number of items that should be displayed on one page.
    #
    # @return [Types::DescribeLDAPSSettingsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLDAPSSettingsResult#ldaps_settings_info #ldaps_settings_info} => Array&lt;Types::LDAPSSettingInfo&gt;
    #   * {Types::DescribeLDAPSSettingsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ldaps_settings({
    #     directory_id: "DirectoryId", # required
    #     type: "Client", # accepts Client
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ldaps_settings_info #=> Array
    #   resp.ldaps_settings_info[0].ldaps_status #=> String, one of "Enabling", "Enabled", "EnableFailed", "Disabled"
    #   resp.ldaps_settings_info[0].ldaps_status_reason #=> String
    #   resp.ldaps_settings_info[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeLDAPSSettings AWS API Documentation
    #
    # @overload describe_ldaps_settings(params = {})
    # @param [Hash] params ({})
    def describe_ldaps_settings(params = {}, options = {})
      req = build_request(:describe_ldaps_settings, params)
      req.send_request(options)
    end

    # Returns the shared directories in your account.
    #
    # @option params [required, String] :owner_directory_id
    #   Returns the identifier of the directory in the directory owner
    #   account.
    #
    # @option params [Array<String>] :shared_directory_ids
    #   A list of identifiers of all shared directories in your account.
    #
    # @option params [String] :next_token
    #   The `DescribeSharedDirectoriesResult.NextToken` value from a previous
    #   call to DescribeSharedDirectories. Pass null if this is the first
    #   call.
    #
    # @option params [Integer] :limit
    #   The number of shared directories to return in the response object.
    #
    # @return [Types::DescribeSharedDirectoriesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSharedDirectoriesResult#shared_directories #shared_directories} => Array&lt;Types::SharedDirectory&gt;
    #   * {Types::DescribeSharedDirectoriesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_shared_directories({
    #     owner_directory_id: "DirectoryId", # required
    #     shared_directory_ids: ["DirectoryId"],
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.shared_directories #=> Array
    #   resp.shared_directories[0].owner_account_id #=> String
    #   resp.shared_directories[0].owner_directory_id #=> String
    #   resp.shared_directories[0].share_method #=> String, one of "ORGANIZATIONS", "HANDSHAKE"
    #   resp.shared_directories[0].shared_account_id #=> String
    #   resp.shared_directories[0].shared_directory_id #=> String
    #   resp.shared_directories[0].share_status #=> String, one of "Shared", "PendingAcceptance", "Rejected", "Rejecting", "RejectFailed", "Sharing", "ShareFailed", "Deleted", "Deleting"
    #   resp.shared_directories[0].share_notes #=> String
    #   resp.shared_directories[0].created_date_time #=> Time
    #   resp.shared_directories[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSharedDirectories AWS API Documentation
    #
    # @overload describe_shared_directories(params = {})
    # @param [Hash] params ({})
    def describe_shared_directories(params = {}, options = {})
      req = build_request(:describe_shared_directories, params)
      req.send_request(options)
    end

    # Obtains information about the directory snapshots that belong to this
    # account.
    #
    # This operation supports pagination with the use of the *NextToken*
    # request and response parameters. If more results are available, the
    # *DescribeSnapshots.NextToken* member contains a token that you pass in
    # the next call to DescribeSnapshots to retrieve the next set of items.
    #
    # You can also specify a maximum number of return results with the
    # *Limit* parameter.
    #
    # @option params [String] :directory_id
    #   The identifier of the directory for which to retrieve snapshot
    #   information.
    #
    # @option params [Array<String>] :snapshot_ids
    #   A list of identifiers of the snapshots to obtain the information for.
    #   If this member is null or empty, all snapshots are returned using the
    #   *Limit* and *NextToken* members.
    #
    # @option params [String] :next_token
    #   The *DescribeSnapshotsResult.NextToken* value from a previous call to
    #   DescribeSnapshots. Pass null if this is the first call.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects to return.
    #
    # @return [Types::DescribeSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSnapshotsResult#snapshots #snapshots} => Array&lt;Types::Snapshot&gt;
    #   * {Types::DescribeSnapshotsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshots({
    #     directory_id: "DirectoryId",
    #     snapshot_ids: ["SnapshotId"],
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].directory_id #=> String
    #   resp.snapshots[0].snapshot_id #=> String
    #   resp.snapshots[0].type #=> String, one of "Auto", "Manual"
    #   resp.snapshots[0].name #=> String
    #   resp.snapshots[0].status #=> String, one of "Creating", "Completed", "Failed"
    #   resp.snapshots[0].start_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSnapshots AWS API Documentation
    #
    # @overload describe_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_snapshots(params = {}, options = {})
      req = build_request(:describe_snapshots, params)
      req.send_request(options)
    end

    # Obtains information about the trust relationships for this account.
    #
    # If no input parameters are provided, such as DirectoryId or TrustIds,
    # this request describes all the trust relationships belonging to the
    # account.
    #
    # @option params [String] :directory_id
    #   The Directory ID of the AWS directory that is a part of the requested
    #   trust relationship.
    #
    # @option params [Array<String>] :trust_ids
    #   A list of identifiers of the trust relationships for which to obtain
    #   the information. If this member is null, all trust relationships that
    #   belong to the current account are returned.
    #
    #   An empty list results in an `InvalidParameterException` being thrown.
    #
    # @option params [String] :next_token
    #   The *DescribeTrustsResult.NextToken* value from a previous call to
    #   DescribeTrusts. Pass null if this is the first call.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects to return.
    #
    # @return [Types::DescribeTrustsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrustsResult#trusts #trusts} => Array&lt;Types::Trust&gt;
    #   * {Types::DescribeTrustsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusts({
    #     directory_id: "DirectoryId",
    #     trust_ids: ["TrustId"],
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.trusts #=> Array
    #   resp.trusts[0].directory_id #=> String
    #   resp.trusts[0].trust_id #=> String
    #   resp.trusts[0].remote_domain_name #=> String
    #   resp.trusts[0].trust_type #=> String, one of "Forest", "External"
    #   resp.trusts[0].trust_direction #=> String, one of "One-Way: Outgoing", "One-Way: Incoming", "Two-Way"
    #   resp.trusts[0].trust_state #=> String, one of "Creating", "Created", "Verifying", "VerifyFailed", "Verified", "Updating", "UpdateFailed", "Updated", "Deleting", "Deleted", "Failed"
    #   resp.trusts[0].created_date_time #=> Time
    #   resp.trusts[0].last_updated_date_time #=> Time
    #   resp.trusts[0].state_last_updated_date_time #=> Time
    #   resp.trusts[0].trust_state_reason #=> String
    #   resp.trusts[0].selective_auth #=> String, one of "Enabled", "Disabled"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeTrusts AWS API Documentation
    #
    # @overload describe_trusts(params = {})
    # @param [Hash] params ({})
    def describe_trusts(params = {}, options = {})
      req = build_request(:describe_trusts, params)
      req.send_request(options)
    end

    # Deactivates LDAP secure calls for the specified directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [required, String] :type
    #   The type of LDAP security to enable. Currently only the value `Client`
    #   is supported.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_ldaps({
    #     directory_id: "DirectoryId", # required
    #     type: "Client", # required, accepts Client
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableLDAPS AWS API Documentation
    #
    # @overload disable_ldaps(params = {})
    # @param [Hash] params ({})
    def disable_ldaps(params = {}, options = {})
      req = build_request(:disable_ldaps, params)
      req.send_request(options)
    end

    # Disables multi-factor authentication (MFA) with the Remote
    # Authentication Dial In User Service (RADIUS) server for an AD
    # Connector or Microsoft AD directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory for which to disable MFA.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_radius({
    #     directory_id: "DirectoryId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableRadius AWS API Documentation
    #
    # @overload disable_radius(params = {})
    # @param [Hash] params ({})
    def disable_radius(params = {}, options = {})
      req = build_request(:disable_radius, params)
      req.send_request(options)
    end

    # Disables single-sign on for a directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory for which to disable single-sign on.
    #
    # @option params [String] :user_name
    #   The username of an alternate account to use to disable single-sign on.
    #   This is only used for AD Connector directories. This account must have
    #   privileges to remove a service principal name.
    #
    #   If the AD Connector service account does not have privileges to remove
    #   a service principal name, you can specify an alternate account with
    #   the *UserName* and *Password* parameters. These credentials are only
    #   used to disable single sign-on and are not stored by the service. The
    #   AD Connector service account is not changed.
    #
    # @option params [String] :password
    #   The password of an alternate account to use to disable single-sign on.
    #   This is only used for AD Connector directories. For more information,
    #   see the *UserName* parameter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_sso({
    #     directory_id: "DirectoryId", # required
    #     user_name: "UserName",
    #     password: "ConnectPassword",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableSso AWS API Documentation
    #
    # @overload disable_sso(params = {})
    # @param [Hash] params ({})
    def disable_sso(params = {}, options = {})
      req = build_request(:disable_sso, params)
      req.send_request(options)
    end

    # Activates the switch for the specific directory to always use LDAP
    # secure calls.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [required, String] :type
    #   The type of LDAP security to enable. Currently only the value `Client`
    #   is supported.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_ldaps({
    #     directory_id: "DirectoryId", # required
    #     type: "Client", # required, accepts Client
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableLDAPS AWS API Documentation
    #
    # @overload enable_ldaps(params = {})
    # @param [Hash] params ({})
    def enable_ldaps(params = {}, options = {})
      req = build_request(:enable_ldaps, params)
      req.send_request(options)
    end

    # Enables multi-factor authentication (MFA) with the Remote
    # Authentication Dial In User Service (RADIUS) server for an AD
    # Connector or Microsoft AD directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory for which to enable MFA.
    #
    # @option params [required, Types::RadiusSettings] :radius_settings
    #   A RadiusSettings object that contains information about the RADIUS
    #   server.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_radius({
    #     directory_id: "DirectoryId", # required
    #     radius_settings: { # required
    #       radius_servers: ["Server"],
    #       radius_port: 1,
    #       radius_timeout: 1,
    #       radius_retries: 1,
    #       shared_secret: "RadiusSharedSecret",
    #       authentication_protocol: "PAP", # accepts PAP, CHAP, MS-CHAPv1, MS-CHAPv2
    #       display_label: "RadiusDisplayLabel",
    #       use_same_username: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableRadius AWS API Documentation
    #
    # @overload enable_radius(params = {})
    # @param [Hash] params ({})
    def enable_radius(params = {}, options = {})
      req = build_request(:enable_radius, params)
      req.send_request(options)
    end

    # Enables single sign-on for a directory. Single sign-on allows users in
    # your directory to access certain AWS services from a computer joined
    # to the directory without having to enter their credentials separately.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory for which to enable single-sign on.
    #
    # @option params [String] :user_name
    #   The username of an alternate account to use to enable single-sign on.
    #   This is only used for AD Connector directories. This account must have
    #   privileges to add a service principal name.
    #
    #   If the AD Connector service account does not have privileges to add a
    #   service principal name, you can specify an alternate account with the
    #   *UserName* and *Password* parameters. These credentials are only used
    #   to enable single sign-on and are not stored by the service. The AD
    #   Connector service account is not changed.
    #
    # @option params [String] :password
    #   The password of an alternate account to use to enable single-sign on.
    #   This is only used for AD Connector directories. For more information,
    #   see the *UserName* parameter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_sso({
    #     directory_id: "DirectoryId", # required
    #     user_name: "UserName",
    #     password: "ConnectPassword",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableSso AWS API Documentation
    #
    # @overload enable_sso(params = {})
    # @param [Hash] params ({})
    def enable_sso(params = {}, options = {})
      req = build_request(:enable_sso, params)
      req.send_request(options)
    end

    # Obtains directory limit information for the current Region.
    #
    # @return [Types::GetDirectoryLimitsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDirectoryLimitsResult#directory_limits #directory_limits} => Types::DirectoryLimits
    #
    # @example Response structure
    #
    #   resp.directory_limits.cloud_only_directories_limit #=> Integer
    #   resp.directory_limits.cloud_only_directories_current_count #=> Integer
    #   resp.directory_limits.cloud_only_directories_limit_reached #=> Boolean
    #   resp.directory_limits.cloud_only_microsoft_ad_limit #=> Integer
    #   resp.directory_limits.cloud_only_microsoft_ad_current_count #=> Integer
    #   resp.directory_limits.cloud_only_microsoft_ad_limit_reached #=> Boolean
    #   resp.directory_limits.connected_directories_limit #=> Integer
    #   resp.directory_limits.connected_directories_current_count #=> Integer
    #   resp.directory_limits.connected_directories_limit_reached #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetDirectoryLimits AWS API Documentation
    #
    # @overload get_directory_limits(params = {})
    # @param [Hash] params ({})
    def get_directory_limits(params = {}, options = {})
      req = build_request(:get_directory_limits, params)
      req.send_request(options)
    end

    # Obtains the manual snapshot limits for a directory.
    #
    # @option params [required, String] :directory_id
    #   Contains the identifier of the directory to obtain the limits for.
    #
    # @return [Types::GetSnapshotLimitsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSnapshotLimitsResult#snapshot_limits #snapshot_limits} => Types::SnapshotLimits
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_snapshot_limits({
    #     directory_id: "DirectoryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_limits.manual_snapshots_limit #=> Integer
    #   resp.snapshot_limits.manual_snapshots_current_count #=> Integer
    #   resp.snapshot_limits.manual_snapshots_limit_reached #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetSnapshotLimits AWS API Documentation
    #
    # @overload get_snapshot_limits(params = {})
    # @param [Hash] params ({})
    def get_snapshot_limits(params = {}, options = {})
      req = build_request(:get_snapshot_limits, params)
      req.send_request(options)
    end

    # For the specified directory, lists all the certificates registered for
    # a secured LDAP connection.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [String] :next_token
    #   A token for requesting another page of certificates if the `NextToken`
    #   response element indicates that more certificates are available. Use
    #   the value of the returned `NextToken` element in your request until
    #   the token comes back as `null`. Pass `null` if this is the first call.
    #
    # @option params [Integer] :limit
    #   The number of items that should show up on one page
    #
    # @return [Types::ListCertificatesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCertificatesResult#next_token #next_token} => String
    #   * {Types::ListCertificatesResult#certificates_info #certificates_info} => Array&lt;Types::CertificateInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates({
    #     directory_id: "DirectoryId", # required
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.certificates_info #=> Array
    #   resp.certificates_info[0].certificate_id #=> String
    #   resp.certificates_info[0].common_name #=> String
    #   resp.certificates_info[0].state #=> String, one of "Registering", "Registered", "RegisterFailed", "Deregistering", "Deregistered", "DeregisterFailed"
    #   resp.certificates_info[0].expiry_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListCertificates AWS API Documentation
    #
    # @overload list_certificates(params = {})
    # @param [Hash] params ({})
    def list_certificates(params = {}, options = {})
      req = build_request(:list_certificates, params)
      req.send_request(options)
    end

    # Lists the address blocks that you have added to a directory.
    #
    # @option params [required, String] :directory_id
    #   Identifier (ID) of the directory for which you want to retrieve the IP
    #   addresses.
    #
    # @option params [String] :next_token
    #   The *ListIpRoutes.NextToken* value from a previous call to
    #   ListIpRoutes. Pass null if this is the first call.
    #
    # @option params [Integer] :limit
    #   Maximum number of items to return. If this value is zero, the maximum
    #   number of items is specified by the limitations of the operation.
    #
    # @return [Types::ListIpRoutesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIpRoutesResult#ip_routes_info #ip_routes_info} => Array&lt;Types::IpRouteInfo&gt;
    #   * {Types::ListIpRoutesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ip_routes({
    #     directory_id: "DirectoryId", # required
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_routes_info #=> Array
    #   resp.ip_routes_info[0].directory_id #=> String
    #   resp.ip_routes_info[0].cidr_ip #=> String
    #   resp.ip_routes_info[0].ip_route_status_msg #=> String, one of "Adding", "Added", "Removing", "Removed", "AddFailed", "RemoveFailed"
    #   resp.ip_routes_info[0].added_date_time #=> Time
    #   resp.ip_routes_info[0].ip_route_status_reason #=> String
    #   resp.ip_routes_info[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListIpRoutes AWS API Documentation
    #
    # @overload list_ip_routes(params = {})
    # @param [Hash] params ({})
    def list_ip_routes(params = {}, options = {})
      req = build_request(:list_ip_routes, params)
      req.send_request(options)
    end

    # Lists the active log subscriptions for the AWS account.
    #
    # @option params [String] :directory_id
    #   If a *DirectoryID* is provided, lists only the log subscription
    #   associated with that directory. If no *DirectoryId* is provided, lists
    #   all log subscriptions associated with your AWS account. If there are
    #   no log subscriptions for the AWS account or the directory, an empty
    #   list will be returned.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return.
    #
    # @option params [Integer] :limit
    #   The maximum number of items returned.
    #
    # @return [Types::ListLogSubscriptionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLogSubscriptionsResult#log_subscriptions #log_subscriptions} => Array&lt;Types::LogSubscription&gt;
    #   * {Types::ListLogSubscriptionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_subscriptions({
    #     directory_id: "DirectoryId",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_subscriptions #=> Array
    #   resp.log_subscriptions[0].directory_id #=> String
    #   resp.log_subscriptions[0].log_group_name #=> String
    #   resp.log_subscriptions[0].subscription_created_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListLogSubscriptions AWS API Documentation
    #
    # @overload list_log_subscriptions(params = {})
    # @param [Hash] params ({})
    def list_log_subscriptions(params = {}, options = {})
      req = build_request(:list_log_subscriptions, params)
      req.send_request(options)
    end

    # Lists all schema extensions applied to a Microsoft AD Directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory from which to retrieve the schema
    #   extension information.
    #
    # @option params [String] :next_token
    #   The `ListSchemaExtensions.NextToken` value from a previous call to
    #   `ListSchemaExtensions`. Pass null if this is the first call.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return.
    #
    # @return [Types::ListSchemaExtensionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemaExtensionsResult#schema_extensions_info #schema_extensions_info} => Array&lt;Types::SchemaExtensionInfo&gt;
    #   * {Types::ListSchemaExtensionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schema_extensions({
    #     directory_id: "DirectoryId", # required
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_extensions_info #=> Array
    #   resp.schema_extensions_info[0].directory_id #=> String
    #   resp.schema_extensions_info[0].schema_extension_id #=> String
    #   resp.schema_extensions_info[0].description #=> String
    #   resp.schema_extensions_info[0].schema_extension_status #=> String, one of "Initializing", "CreatingSnapshot", "UpdatingSchema", "Replicating", "CancelInProgress", "RollbackInProgress", "Cancelled", "Failed", "Completed"
    #   resp.schema_extensions_info[0].schema_extension_status_reason #=> String
    #   resp.schema_extensions_info[0].start_date_time #=> Time
    #   resp.schema_extensions_info[0].end_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListSchemaExtensions AWS API Documentation
    #
    # @overload list_schema_extensions(params = {})
    # @param [Hash] params ({})
    def list_schema_extensions(params = {}, options = {})
      req = build_request(:list_schema_extensions, params)
      req.send_request(options)
    end

    # Lists all tags on a directory.
    #
    # @option params [required, String] :resource_id
    #   Identifier (ID) of the directory for which you want to retrieve tags.
    #
    # @option params [String] :next_token
    #   Reserved for future use.
    #
    # @option params [Integer] :limit
    #   Reserved for future use.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_id: "ResourceId", # required
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Registers a certificate for secured LDAP connection.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [required, String] :certificate_data
    #   The certificate PEM string that needs to be registered.
    #
    # @return [Types::RegisterCertificateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterCertificateResult#certificate_id #certificate_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_certificate({
    #     directory_id: "DirectoryId", # required
    #     certificate_data: "CertificateData", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterCertificate AWS API Documentation
    #
    # @overload register_certificate(params = {})
    # @param [Hash] params ({})
    def register_certificate(params = {}, options = {})
      req = build_request(:register_certificate, params)
      req.send_request(options)
    end

    # Associates a directory with an SNS topic. This establishes the
    # directory as a publisher to the specified SNS topic. You can then
    # receive email or text (SMS) messages when the status of your directory
    # changes. You get notified if your directory goes from an Active status
    # to an Impaired or Inoperable status. You also receive a notification
    # when the directory returns to an Active status.
    #
    # @option params [required, String] :directory_id
    #   The Directory ID that will publish status messages to the SNS topic.
    #
    # @option params [required, String] :topic_name
    #   The SNS topic name to which the directory will publish status
    #   messages. This SNS topic must be in the same region as the specified
    #   Directory ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_event_topic({
    #     directory_id: "DirectoryId", # required
    #     topic_name: "TopicName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterEventTopic AWS API Documentation
    #
    # @overload register_event_topic(params = {})
    # @param [Hash] params ({})
    def register_event_topic(params = {}, options = {})
      req = build_request(:register_event_topic, params)
      req.send_request(options)
    end

    # Rejects a directory sharing request that was sent from the directory
    # owner account.
    #
    # @option params [required, String] :shared_directory_id
    #   Identifier of the shared directory in the directory consumer account.
    #   This identifier is different for each directory owner account.
    #
    # @return [Types::RejectSharedDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectSharedDirectoryResult#shared_directory_id #shared_directory_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_shared_directory({
    #     shared_directory_id: "DirectoryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.shared_directory_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RejectSharedDirectory AWS API Documentation
    #
    # @overload reject_shared_directory(params = {})
    # @param [Hash] params ({})
    def reject_shared_directory(params = {}, options = {})
      req = build_request(:reject_shared_directory, params)
      req.send_request(options)
    end

    # Removes IP address blocks from a directory.
    #
    # @option params [required, String] :directory_id
    #   Identifier (ID) of the directory from which you want to remove the IP
    #   addresses.
    #
    # @option params [required, Array<String>] :cidr_ips
    #   IP address blocks that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_ip_routes({
    #     directory_id: "DirectoryId", # required
    #     cidr_ips: ["CidrIp"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveIpRoutes AWS API Documentation
    #
    # @overload remove_ip_routes(params = {})
    # @param [Hash] params ({})
    def remove_ip_routes(params = {}, options = {})
      req = build_request(:remove_ip_routes, params)
      req.send_request(options)
    end

    # Removes tags from a directory.
    #
    # @option params [required, String] :resource_id
    #   Identifier (ID) of the directory from which to remove the tag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key (name) of the tag to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_id: "ResourceId", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveTagsFromResource AWS API Documentation
    #
    # @overload remove_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_tags_from_resource, params)
      req.send_request(options)
    end

    # Resets the password for any user in your AWS Managed Microsoft AD or
    # Simple AD directory.
    #
    # You can reset the password for any user in your directory with the
    # following exceptions:
    #
    # * For Simple AD, you cannot reset the password for any user that is a
    #   member of either the **Domain Admins** or **Enterprise Admins**
    #   group except for the administrator user.
    #
    # * For AWS Managed Microsoft AD, you can only reset the password for a
    #   user that is in an OU based off of the NetBIOS name that you typed
    #   when you created your directory. For example, you cannot reset the
    #   password for a user in the **AWS Reserved** OU. For more information
    #   about the OU structure for an AWS Managed Microsoft AD directory,
    #   see [What Gets Created][1] in the *AWS Directory Service
    #   Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html
    #
    # @option params [required, String] :directory_id
    #   Identifier of the AWS Managed Microsoft AD or Simple AD directory in
    #   which the user resides.
    #
    # @option params [required, String] :user_name
    #   The user name of the user whose password will be reset.
    #
    # @option params [required, String] :new_password
    #   The new password that will be reset.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_user_password({
    #     directory_id: "DirectoryId", # required
    #     user_name: "CustomerUserName", # required
    #     new_password: "UserPassword", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ResetUserPassword AWS API Documentation
    #
    # @overload reset_user_password(params = {})
    # @param [Hash] params ({})
    def reset_user_password(params = {}, options = {})
      req = build_request(:reset_user_password, params)
      req.send_request(options)
    end

    # Restores a directory using an existing directory snapshot.
    #
    # When you restore a directory from a snapshot, any changes made to the
    # directory after the snapshot date are overwritten.
    #
    # This action returns as soon as the restore operation is initiated. You
    # can monitor the progress of the restore operation by calling the
    # DescribeDirectories operation with the directory identifier. When the
    # **DirectoryDescription.Stage** value changes to `Active`, the restore
    # operation is complete.
    #
    # @option params [required, String] :snapshot_id
    #   The identifier of the snapshot to restore from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_from_snapshot({
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RestoreFromSnapshot AWS API Documentation
    #
    # @overload restore_from_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_from_snapshot(params = {}, options = {})
      req = build_request(:restore_from_snapshot, params)
      req.send_request(options)
    end

    # Shares a specified directory (`DirectoryId`) in your AWS account
    # (directory owner) with another AWS account (directory consumer). With
    # this operation you can use your directory from any AWS account and
    # from any Amazon VPC within an AWS Region.
    #
    # When you share your AWS Managed Microsoft AD directory, AWS Directory
    # Service creates a shared directory in the directory consumer account.
    # This shared directory contains the metadata to provide access to the
    # directory within the directory owner account. The shared directory is
    # visible in all VPCs in the directory consumer account.
    #
    # The `ShareMethod` parameter determines whether the specified directory
    # can be shared between AWS accounts inside the same AWS organization
    # (`ORGANIZATIONS`). It also determines whether you can share the
    # directory with any other AWS account either inside or outside of the
    # organization (`HANDSHAKE`).
    #
    # The `ShareNotes` parameter is only used when `HANDSHAKE` is called,
    # which sends a directory sharing request to the directory consumer.
    #
    # @option params [required, String] :directory_id
    #   Identifier of the AWS Managed Microsoft AD directory that you want to
    #   share with other AWS accounts.
    #
    # @option params [String] :share_notes
    #   A directory share request that is sent by the directory owner to the
    #   directory consumer. The request includes a typed message to help the
    #   directory consumer administrator determine whether to approve or
    #   reject the share invitation.
    #
    # @option params [required, Types::ShareTarget] :share_target
    #   Identifier for the directory consumer account with whom the directory
    #   is to be shared.
    #
    # @option params [required, String] :share_method
    #   The method used when sharing a directory to determine whether the
    #   directory should be shared within your AWS organization
    #   (`ORGANIZATIONS`) or with any AWS account by sending a directory
    #   sharing request (`HANDSHAKE`).
    #
    # @return [Types::ShareDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ShareDirectoryResult#shared_directory_id #shared_directory_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.share_directory({
    #     directory_id: "DirectoryId", # required
    #     share_notes: "Notes",
    #     share_target: { # required
    #       id: "TargetId", # required
    #       type: "ACCOUNT", # required, accepts ACCOUNT
    #     },
    #     share_method: "ORGANIZATIONS", # required, accepts ORGANIZATIONS, HANDSHAKE
    #   })
    #
    # @example Response structure
    #
    #   resp.shared_directory_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ShareDirectory AWS API Documentation
    #
    # @overload share_directory(params = {})
    # @param [Hash] params ({})
    def share_directory(params = {}, options = {})
      req = build_request(:share_directory, params)
      req.send_request(options)
    end

    # Applies a schema extension to a Microsoft AD directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory for which the schema extension will be
    #   applied to.
    #
    # @option params [required, Boolean] :create_snapshot_before_schema_extension
    #   If true, creates a snapshot of the directory before applying the
    #   schema extension.
    #
    # @option params [required, String] :ldif_content
    #   The LDIF file represented as a string. To construct the LdifContent
    #   string, precede each line as it would be formatted in an ldif file
    #   with \\n. See the example request below for more details. The file
    #   size can be no larger than 1MB.
    #
    # @option params [required, String] :description
    #   A description of the schema extension.
    #
    # @return [Types::StartSchemaExtensionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSchemaExtensionResult#schema_extension_id #schema_extension_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_schema_extension({
    #     directory_id: "DirectoryId", # required
    #     create_snapshot_before_schema_extension: false, # required
    #     ldif_content: "LdifContent", # required
    #     description: "Description", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_extension_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/StartSchemaExtension AWS API Documentation
    #
    # @overload start_schema_extension(params = {})
    # @param [Hash] params ({})
    def start_schema_extension(params = {}, options = {})
      req = build_request(:start_schema_extension, params)
      req.send_request(options)
    end

    # Stops the directory sharing between the directory owner and consumer
    # accounts.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the AWS Managed Microsoft AD directory that you want
    #   to stop sharing.
    #
    # @option params [required, Types::UnshareTarget] :unshare_target
    #   Identifier for the directory consumer account with whom the directory
    #   has to be unshared.
    #
    # @return [Types::UnshareDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UnshareDirectoryResult#shared_directory_id #shared_directory_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unshare_directory({
    #     directory_id: "DirectoryId", # required
    #     unshare_target: { # required
    #       id: "TargetId", # required
    #       type: "ACCOUNT", # required, accepts ACCOUNT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.shared_directory_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UnshareDirectory AWS API Documentation
    #
    # @overload unshare_directory(params = {})
    # @param [Hash] params ({})
    def unshare_directory(params = {}, options = {})
      req = build_request(:unshare_directory, params)
      req.send_request(options)
    end

    # Updates a conditional forwarder that has been set up for your AWS
    # directory.
    #
    # @option params [required, String] :directory_id
    #   The directory ID of the AWS directory for which to update the
    #   conditional forwarder.
    #
    # @option params [required, String] :remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domain with which
    #   you will set up a trust relationship.
    #
    # @option params [required, Array<String>] :dns_ip_addrs
    #   The updated IP addresses of the remote DNS server associated with the
    #   conditional forwarder.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_conditional_forwarder({
    #     directory_id: "DirectoryId", # required
    #     remote_domain_name: "RemoteDomainName", # required
    #     dns_ip_addrs: ["IpAddr"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateConditionalForwarder AWS API Documentation
    #
    # @overload update_conditional_forwarder(params = {})
    # @param [Hash] params ({})
    def update_conditional_forwarder(params = {}, options = {})
      req = build_request(:update_conditional_forwarder, params)
      req.send_request(options)
    end

    # Adds or removes domain controllers to or from the directory. Based on
    # the difference between current value and new value (provided through
    # this API call), domain controllers will be added or removed. It may
    # take up to 45 minutes for any new domain controllers to become fully
    # active once the requested number of domain controllers is updated.
    # During this time, you cannot make another update request.
    #
    # @option params [required, String] :directory_id
    #   Identifier of the directory to which the domain controllers will be
    #   added or removed.
    #
    # @option params [required, Integer] :desired_number
    #   The number of domain controllers desired in the directory.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_number_of_domain_controllers({
    #     directory_id: "DirectoryId", # required
    #     desired_number: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateNumberOfDomainControllers AWS API Documentation
    #
    # @overload update_number_of_domain_controllers(params = {})
    # @param [Hash] params ({})
    def update_number_of_domain_controllers(params = {}, options = {})
      req = build_request(:update_number_of_domain_controllers, params)
      req.send_request(options)
    end

    # Updates the Remote Authentication Dial In User Service (RADIUS) server
    # information for an AD Connector or Microsoft AD directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory for which to update the RADIUS server
    #   information.
    #
    # @option params [required, Types::RadiusSettings] :radius_settings
    #   A RadiusSettings object that contains information about the RADIUS
    #   server.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_radius({
    #     directory_id: "DirectoryId", # required
    #     radius_settings: { # required
    #       radius_servers: ["Server"],
    #       radius_port: 1,
    #       radius_timeout: 1,
    #       radius_retries: 1,
    #       shared_secret: "RadiusSharedSecret",
    #       authentication_protocol: "PAP", # accepts PAP, CHAP, MS-CHAPv1, MS-CHAPv2
    #       display_label: "RadiusDisplayLabel",
    #       use_same_username: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateRadius AWS API Documentation
    #
    # @overload update_radius(params = {})
    # @param [Hash] params ({})
    def update_radius(params = {}, options = {})
      req = build_request(:update_radius, params)
      req.send_request(options)
    end

    # Updates the trust that has been set up between your AWS Managed
    # Microsoft AD directory and an on-premises Active Directory.
    #
    # @option params [required, String] :trust_id
    #   Identifier of the trust relationship.
    #
    # @option params [String] :selective_auth
    #   Updates selective authentication for the trust.
    #
    # @return [Types::UpdateTrustResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTrustResult#request_id #request_id} => String
    #   * {Types::UpdateTrustResult#trust_id #trust_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trust({
    #     trust_id: "TrustId", # required
    #     selective_auth: "Enabled", # accepts Enabled, Disabled
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.trust_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateTrust AWS API Documentation
    #
    # @overload update_trust(params = {})
    # @param [Hash] params ({})
    def update_trust(params = {}, options = {})
      req = build_request(:update_trust, params)
      req.send_request(options)
    end

    # AWS Directory Service for Microsoft Active Directory allows you to
    # configure and verify trust relationships.
    #
    # This action verifies a trust relationship between your AWS Managed
    # Microsoft AD directory and an external domain.
    #
    # @option params [required, String] :trust_id
    #   The unique Trust ID of the trust relationship to verify.
    #
    # @return [Types::VerifyTrustResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyTrustResult#trust_id #trust_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_trust({
    #     trust_id: "TrustId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trust_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/VerifyTrust AWS API Documentation
    #
    # @overload verify_trust(params = {})
    # @param [Hash] params ({})
    def verify_trust(params = {}, options = {})
      req = build_request(:verify_trust, params)
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
      context[:gem_name] = 'aws-sdk-directoryservice'
      context[:gem_version] = '1.34.0'
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
