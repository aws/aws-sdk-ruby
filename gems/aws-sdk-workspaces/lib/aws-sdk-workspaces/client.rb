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

Aws::Plugins::GlobalConfiguration.add_identifier(:workspaces)

module Aws::WorkSpaces
  # An API client for WorkSpaces.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::WorkSpaces::Client.new(
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

    @identifier = :workspaces

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

    # Associates the specified connection alias with the specified directory
    # to enable cross-Region redirection. For more information, see [
    # Cross-Region Redirection for Amazon WorkSpaces][1].
    #
    # <note markdown="1"> Before performing this operation, call [ DescribeConnectionAliases][2]
    # to make sure that the current state of the connection alias is
    # `CREATED`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    # [2]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html
    #
    # @option params [required, String] :alias_id
    #   The identifier of the connection alias.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the directory to associate the connection alias
    #   with.
    #
    # @return [Types::AssociateConnectionAliasResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateConnectionAliasResult#connection_identifier #connection_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_connection_alias({
    #     alias_id: "ConnectionAliasId", # required
    #     resource_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateConnectionAlias AWS API Documentation
    #
    # @overload associate_connection_alias(params = {})
    # @param [Hash] params ({})
    def associate_connection_alias(params = {}, options = {})
      req = build_request(:associate_connection_alias, params)
      req.send_request(options)
    end

    # Associates the specified IP access control group with the specified
    # directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [required, Array<String>] :group_ids
    #   The identifiers of one or more IP access control groups.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_ip_groups({
    #     directory_id: "DirectoryId", # required
    #     group_ids: ["IpGroupId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateIpGroups AWS API Documentation
    #
    # @overload associate_ip_groups(params = {})
    # @param [Hash] params ({})
    def associate_ip_groups(params = {}, options = {})
      req = build_request(:associate_ip_groups, params)
      req.send_request(options)
    end

    # Adds one or more rules to the specified IP access control group.
    #
    # This action gives users permission to access their WorkSpaces from the
    # CIDR address ranges specified in the rules.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group.
    #
    # @option params [required, Array<Types::IpRuleItem>] :user_rules
    #   The rules to add to the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_ip_rules({
    #     group_id: "IpGroupId", # required
    #     user_rules: [ # required
    #       {
    #         ip_rule: "IpRule",
    #         rule_desc: "IpRuleDesc",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AuthorizeIpRules AWS API Documentation
    #
    # @overload authorize_ip_rules(params = {})
    # @param [Hash] params ({})
    def authorize_ip_rules(params = {}, options = {})
      req = build_request(:authorize_ip_rules, params)
      req.send_request(options)
    end

    # Copies the specified image from the specified Region to the current
    # Region. For more information about copying images, see [ Copy a Custom
    # WorkSpaces Image][1].
    #
    # Before copying a shared image, be sure to verify that it has been
    # shared from the correct AWS account. To determine if an image has been
    # shared and to see the AWS account ID that owns an image, use the
    # [DescribeWorkSpaceImages][2] and
    # [DescribeWorkspaceImagePermissions][3] API operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html
    # [2]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html
    # [3]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImagePermissions.html
    #
    # @option params [required, String] :name
    #   The name of the image.
    #
    # @option params [String] :description
    #   A description of the image.
    #
    # @option params [required, String] :source_image_id
    #   The identifier of the source image.
    #
    # @option params [required, String] :source_region
    #   The identifier of the source Region.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the image.
    #
    # @return [Types::CopyWorkspaceImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyWorkspaceImageResult#image_id #image_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_workspace_image({
    #     name: "WorkspaceImageName", # required
    #     description: "WorkspaceImageDescription",
    #     source_image_id: "WorkspaceImageId", # required
    #     source_region: "Region", # required
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
    #   resp.image_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CopyWorkspaceImage AWS API Documentation
    #
    # @overload copy_workspace_image(params = {})
    # @param [Hash] params ({})
    def copy_workspace_image(params = {}, options = {})
      req = build_request(:copy_workspace_image, params)
      req.send_request(options)
    end

    # Creates the specified connection alias for use with cross-Region
    # redirection. For more information, see [ Cross-Region Redirection for
    # Amazon WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    #
    # @option params [required, String] :connection_string
    #   A connection string in the form of a fully qualified domain name
    #   (FQDN), such as `www.example.com`.
    #
    #   After you create a connection string, it is always associated to your
    #   AWS account. You cannot recreate the same connection string with a
    #   different account, even if you delete all instances of it from the
    #   original account. The connection string is globally reserved for your
    #   account.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to associate with the connection alias.
    #
    # @return [Types::CreateConnectionAliasResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectionAliasResult#alias_id #alias_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection_alias({
    #     connection_string: "ConnectionString", # required
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
    #   resp.alias_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateConnectionAlias AWS API Documentation
    #
    # @overload create_connection_alias(params = {})
    # @param [Hash] params ({})
    def create_connection_alias(params = {}, options = {})
      req = build_request(:create_connection_alias, params)
      req.send_request(options)
    end

    # Creates an IP access control group.
    #
    # An IP access control group provides you with the ability to control
    # the IP addresses from which users are allowed to access their
    # WorkSpaces. To specify the CIDR address ranges, add rules to your IP
    # access control group and then associate the group with your directory.
    # You can add rules when you create the group or at any time using
    # AuthorizeIpRules.
    #
    # There is a default IP access control group associated with your
    # directory. If you don't associate an IP access control group with
    # your directory, the default group is used. The default group includes
    # a default rule that allows users to access their WorkSpaces from
    # anywhere. You cannot modify the default IP access control group for
    # your directory.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [String] :group_desc
    #   The description of the group.
    #
    # @option params [Array<Types::IpRuleItem>] :user_rules
    #   The rules to add to the group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags. Each WorkSpaces resource can have a maximum of 50 tags.
    #
    # @return [Types::CreateIpGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIpGroupResult#group_id #group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_group({
    #     group_name: "IpGroupName", # required
    #     group_desc: "IpGroupDesc",
    #     user_rules: [
    #       {
    #         ip_rule: "IpRule",
    #         rule_desc: "IpRuleDesc",
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
    #   resp.group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateIpGroup AWS API Documentation
    #
    # @overload create_ip_group(params = {})
    # @param [Hash] params ({})
    def create_ip_group(params = {}, options = {})
      req = build_request(:create_ip_group, params)
      req.send_request(options)
    end

    # Creates the specified tags for the specified WorkSpaces resource.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the WorkSpaces resource. The supported resource
    #   types are WorkSpaces, registered directories, images, custom bundles,
    #   IP access control groups, and connection aliases.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags. Each WorkSpaces resource can have a maximum of 50 tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags({
    #     resource_id: "NonEmptyString", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateTags AWS API Documentation
    #
    # @overload create_tags(params = {})
    # @param [Hash] params ({})
    def create_tags(params = {}, options = {})
      req = build_request(:create_tags, params)
      req.send_request(options)
    end

    # Creates one or more WorkSpaces.
    #
    # This operation is asynchronous and returns before the WorkSpaces are
    # created.
    #
    # @option params [required, Array<Types::WorkspaceRequest>] :workspaces
    #   The WorkSpaces to create. You can specify up to 25 WorkSpaces.
    #
    # @return [Types::CreateWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedCreateWorkspaceRequest&gt;
    #   * {Types::CreateWorkspacesResult#pending_requests #pending_requests} => Array&lt;Types::Workspace&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspaces({
    #     workspaces: [ # required
    #       {
    #         directory_id: "DirectoryId", # required
    #         user_name: "UserName", # required
    #         bundle_id: "BundleId", # required
    #         volume_encryption_key: "VolumeEncryptionKey",
    #         user_volume_encryption_enabled: false,
    #         root_volume_encryption_enabled: false,
    #         workspace_properties: {
    #           running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #           running_mode_auto_stop_timeout_in_minutes: 1,
    #           root_volume_size_gib: 1,
    #           user_volume_size_gib: 1,
    #           compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_request.directory_id #=> String
    #   resp.failed_requests[0].workspace_request.user_name #=> String
    #   resp.failed_requests[0].workspace_request.bundle_id #=> String
    #   resp.failed_requests[0].workspace_request.volume_encryption_key #=> String
    #   resp.failed_requests[0].workspace_request.user_volume_encryption_enabled #=> Boolean
    #   resp.failed_requests[0].workspace_request.root_volume_encryption_enabled #=> Boolean
    #   resp.failed_requests[0].workspace_request.workspace_properties.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON"
    #   resp.failed_requests[0].workspace_request.workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #   resp.failed_requests[0].workspace_request.workspace_properties.root_volume_size_gib #=> Integer
    #   resp.failed_requests[0].workspace_request.workspace_properties.user_volume_size_gib #=> Integer
    #   resp.failed_requests[0].workspace_request.workspace_properties.compute_type_name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO"
    #   resp.failed_requests[0].workspace_request.tags #=> Array
    #   resp.failed_requests[0].workspace_request.tags[0].key #=> String
    #   resp.failed_requests[0].workspace_request.tags[0].value #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #   resp.pending_requests #=> Array
    #   resp.pending_requests[0].workspace_id #=> String
    #   resp.pending_requests[0].directory_id #=> String
    #   resp.pending_requests[0].user_name #=> String
    #   resp.pending_requests[0].ip_address #=> String
    #   resp.pending_requests[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"
    #   resp.pending_requests[0].bundle_id #=> String
    #   resp.pending_requests[0].subnet_id #=> String
    #   resp.pending_requests[0].error_message #=> String
    #   resp.pending_requests[0].error_code #=> String
    #   resp.pending_requests[0].computer_name #=> String
    #   resp.pending_requests[0].volume_encryption_key #=> String
    #   resp.pending_requests[0].user_volume_encryption_enabled #=> Boolean
    #   resp.pending_requests[0].root_volume_encryption_enabled #=> Boolean
    #   resp.pending_requests[0].workspace_properties.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON"
    #   resp.pending_requests[0].workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #   resp.pending_requests[0].workspace_properties.root_volume_size_gib #=> Integer
    #   resp.pending_requests[0].workspace_properties.user_volume_size_gib #=> Integer
    #   resp.pending_requests[0].workspace_properties.compute_type_name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO"
    #   resp.pending_requests[0].modification_states #=> Array
    #   resp.pending_requests[0].modification_states[0].resource #=> String, one of "ROOT_VOLUME", "USER_VOLUME", "COMPUTE_TYPE"
    #   resp.pending_requests[0].modification_states[0].state #=> String, one of "UPDATE_INITIATED", "UPDATE_IN_PROGRESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspaces AWS API Documentation
    #
    # @overload create_workspaces(params = {})
    # @param [Hash] params ({})
    def create_workspaces(params = {}, options = {})
      req = build_request(:create_workspaces, params)
      req.send_request(options)
    end

    # Deletes the specified connection alias. For more information, see [
    # Cross-Region Redirection for Amazon WorkSpaces][1].
    #
    # **If you will no longer be using a fully qualified domain name (FQDN)
    # as the registration code for your WorkSpaces users, you must take
    # certain precautions to prevent potential security issues.** For more
    # information, see [ Security Considerations if You Stop Using
    # Cross-Region Redirection][2].
    #
    # <note markdown="1"> To delete a connection alias that has been shared, the shared account
    # must first disassociate the connection alias from any directories it
    # has been associated with. Then you must unshare the connection alias
    # from the account it has been shared with. You can delete a connection
    # alias only after it is no longer shared with any accounts or
    # associated with any directories.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    # [2]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations
    #
    # @option params [required, String] :alias_id
    #   The identifier of the connection alias to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection_alias({
    #     alias_id: "ConnectionAliasId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteConnectionAlias AWS API Documentation
    #
    # @overload delete_connection_alias(params = {})
    # @param [Hash] params ({})
    def delete_connection_alias(params = {}, options = {})
      req = build_request(:delete_connection_alias, params)
      req.send_request(options)
    end

    # Deletes the specified IP access control group.
    #
    # You cannot delete an IP access control group that is associated with a
    # directory.
    #
    # @option params [required, String] :group_id
    #   The identifier of the IP access control group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_group({
    #     group_id: "IpGroupId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteIpGroup AWS API Documentation
    #
    # @overload delete_ip_group(params = {})
    # @param [Hash] params ({})
    def delete_ip_group(params = {}, options = {})
      req = build_request(:delete_ip_group, params)
      req.send_request(options)
    end

    # Deletes the specified tags from the specified WorkSpaces resource.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the WorkSpaces resource. The supported resource
    #   types are WorkSpaces, registered directories, images, custom bundles,
    #   IP access control groups, and connection aliases.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     resource_id: "NonEmptyString", # required
    #     tag_keys: ["NonEmptyString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Deletes the specified image from your account. To delete an image, you
    # must first delete any bundles that are associated with the image and
    # unshare the image if it is shared with other accounts.
    #
    # @option params [required, String] :image_id
    #   The identifier of the image.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace_image({
    #     image_id: "WorkspaceImageId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteWorkspaceImage AWS API Documentation
    #
    # @overload delete_workspace_image(params = {})
    # @param [Hash] params ({})
    def delete_workspace_image(params = {}, options = {})
      req = build_request(:delete_workspace_image, params)
      req.send_request(options)
    end

    # Deregisters the specified directory. This operation is asynchronous
    # and returns before the WorkSpace directory is deregistered. If any
    # WorkSpaces are registered to this directory, you must remove them
    # before you can deregister the directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory. If any WorkSpaces are registered to
    #   this directory, you must remove them before you deregister the
    #   directory, or you will receive an OperationNotSupportedException
    #   error.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_workspace_directory({
    #     directory_id: "DirectoryId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeregisterWorkspaceDirectory AWS API Documentation
    #
    # @overload deregister_workspace_directory(params = {})
    # @param [Hash] params ({})
    def deregister_workspace_directory(params = {}, options = {})
      req = build_request(:deregister_workspace_directory, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the configuration of Bring Your Own
    # License (BYOL) for the specified account.
    #
    # @return [Types::DescribeAccountResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountResult#dedicated_tenancy_support #dedicated_tenancy_support} => String
    #   * {Types::DescribeAccountResult#dedicated_tenancy_management_cidr_range #dedicated_tenancy_management_cidr_range} => String
    #
    # @example Response structure
    #
    #   resp.dedicated_tenancy_support #=> String, one of "ENABLED", "DISABLED"
    #   resp.dedicated_tenancy_management_cidr_range #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeAccount AWS API Documentation
    #
    # @overload describe_account(params = {})
    # @param [Hash] params ({})
    def describe_account(params = {}, options = {})
      req = build_request(:describe_account, params)
      req.send_request(options)
    end

    # Retrieves a list that describes modifications to the configuration of
    # Bring Your Own License (BYOL) for the specified account.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeAccountModificationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountModificationsResult#account_modifications #account_modifications} => Array&lt;Types::AccountModification&gt;
    #   * {Types::DescribeAccountModificationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_modifications({
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_modifications #=> Array
    #   resp.account_modifications[0].modification_state #=> String, one of "PENDING", "COMPLETED", "FAILED"
    #   resp.account_modifications[0].dedicated_tenancy_support #=> String, one of "ENABLED", "DISABLED"
    #   resp.account_modifications[0].dedicated_tenancy_management_cidr_range #=> String
    #   resp.account_modifications[0].start_time #=> Time
    #   resp.account_modifications[0].error_code #=> String
    #   resp.account_modifications[0].error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeAccountModifications AWS API Documentation
    #
    # @overload describe_account_modifications(params = {})
    # @param [Hash] params ({})
    def describe_account_modifications(params = {}, options = {})
      req = build_request(:describe_account_modifications, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified Amazon
    # WorkSpaces clients.
    #
    # @option params [required, Array<String>] :resource_ids
    #   The resource identifier, in the form of directory IDs.
    #
    # @return [Types::DescribeClientPropertiesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClientPropertiesResult#client_properties_list #client_properties_list} => Array&lt;Types::ClientPropertiesResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_client_properties({
    #     resource_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_properties_list #=> Array
    #   resp.client_properties_list[0].resource_id #=> String
    #   resp.client_properties_list[0].client_properties.reconnect_enabled #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeClientProperties AWS API Documentation
    #
    # @overload describe_client_properties(params = {})
    # @param [Hash] params ({})
    def describe_client_properties(params = {}, options = {})
      req = build_request(:describe_client_properties, params)
      req.send_request(options)
    end

    # Describes the permissions that the owner of a connection alias has
    # granted to another AWS account for the specified connection alias. For
    # more information, see [ Cross-Region Redirection for Amazon
    # WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    #
    # @option params [required, String] :alias_id
    #   The identifier of the connection alias.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::DescribeConnectionAliasPermissionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectionAliasPermissionsResult#alias_id #alias_id} => String
    #   * {Types::DescribeConnectionAliasPermissionsResult#connection_alias_permissions #connection_alias_permissions} => Array&lt;Types::ConnectionAliasPermission&gt;
    #   * {Types::DescribeConnectionAliasPermissionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection_alias_permissions({
    #     alias_id: "ConnectionAliasId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_id #=> String
    #   resp.connection_alias_permissions #=> Array
    #   resp.connection_alias_permissions[0].shared_account_id #=> String
    #   resp.connection_alias_permissions[0].allow_association #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeConnectionAliasPermissions AWS API Documentation
    #
    # @overload describe_connection_alias_permissions(params = {})
    # @param [Hash] params ({})
    def describe_connection_alias_permissions(params = {}, options = {})
      req = build_request(:describe_connection_alias_permissions, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the connection aliases used for
    # cross-Region redirection. For more information, see [ Cross-Region
    # Redirection for Amazon WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    #
    # @option params [Array<String>] :alias_ids
    #   The identifiers of the connection aliases to describe.
    #
    # @option params [String] :resource_id
    #   The identifier of the directory associated with the connection alias.
    #
    # @option params [Integer] :limit
    #   The maximum number of connection aliases to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeConnectionAliasesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectionAliasesResult#connection_aliases #connection_aliases} => Array&lt;Types::ConnectionAlias&gt;
    #   * {Types::DescribeConnectionAliasesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection_aliases({
    #     alias_ids: ["ConnectionAliasId"],
    #     resource_id: "NonEmptyString",
    #     limit: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_aliases #=> Array
    #   resp.connection_aliases[0].connection_string #=> String
    #   resp.connection_aliases[0].alias_id #=> String
    #   resp.connection_aliases[0].state #=> String, one of "CREATING", "CREATED", "DELETING"
    #   resp.connection_aliases[0].owner_account_id #=> String
    #   resp.connection_aliases[0].associations #=> Array
    #   resp.connection_aliases[0].associations[0].association_status #=> String, one of "NOT_ASSOCIATED", "ASSOCIATED_WITH_OWNER_ACCOUNT", "ASSOCIATED_WITH_SHARED_ACCOUNT", "PENDING_ASSOCIATION", "PENDING_DISASSOCIATION"
    #   resp.connection_aliases[0].associations[0].associated_account_id #=> String
    #   resp.connection_aliases[0].associations[0].resource_id #=> String
    #   resp.connection_aliases[0].associations[0].connection_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeConnectionAliases AWS API Documentation
    #
    # @overload describe_connection_aliases(params = {})
    # @param [Hash] params ({})
    def describe_connection_aliases(params = {}, options = {})
      req = build_request(:describe_connection_aliases, params)
      req.send_request(options)
    end

    # Describes one or more of your IP access control groups.
    #
    # @option params [Array<String>] :group_ids
    #   The identifiers of one or more IP access control groups.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return.
    #
    # @return [Types::DescribeIpGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIpGroupsResult#result #result} => Array&lt;Types::WorkspacesIpGroup&gt;
    #   * {Types::DescribeIpGroupsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ip_groups({
    #     group_ids: ["IpGroupId"],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.result #=> Array
    #   resp.result[0].group_id #=> String
    #   resp.result[0].group_name #=> String
    #   resp.result[0].group_desc #=> String
    #   resp.result[0].user_rules #=> Array
    #   resp.result[0].user_rules[0].ip_rule #=> String
    #   resp.result[0].user_rules[0].rule_desc #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeIpGroups AWS API Documentation
    #
    # @overload describe_ip_groups(params = {})
    # @param [Hash] params ({})
    def describe_ip_groups(params = {}, options = {})
      req = build_request(:describe_ip_groups, params)
      req.send_request(options)
    end

    # Describes the specified tags for the specified WorkSpaces resource.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the WorkSpaces resource. The supported resource
    #   types are WorkSpaces, registered directories, images, custom bundles,
    #   IP access control groups, and connection aliases.
    #
    # @return [Types::DescribeTagsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsResult#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     resource_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the available WorkSpace bundles.
    #
    # You can filter the results using either bundle ID or owner, but not
    # both.
    #
    # @option params [Array<String>] :bundle_ids
    #   The identifiers of the bundles. You cannot combine this parameter with
    #   any other filter.
    #
    # @option params [String] :owner
    #   The owner of the bundles. You cannot combine this parameter with any
    #   other filter.
    #
    #   Specify `AMAZON` to describe the bundles provided by AWS or null to
    #   describe the bundles that belong to your account.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. (You received this token from a
    #   previous call.)
    #
    # @return [Types::DescribeWorkspaceBundlesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceBundlesResult#bundles #bundles} => Array&lt;Types::WorkspaceBundle&gt;
    #   * {Types::DescribeWorkspaceBundlesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_bundles({
    #     bundle_ids: ["BundleId"],
    #     owner: "BundleOwner",
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bundles #=> Array
    #   resp.bundles[0].bundle_id #=> String
    #   resp.bundles[0].name #=> String
    #   resp.bundles[0].owner #=> String
    #   resp.bundles[0].description #=> String
    #   resp.bundles[0].image_id #=> String
    #   resp.bundles[0].root_storage.capacity #=> String
    #   resp.bundles[0].user_storage.capacity #=> String
    #   resp.bundles[0].compute_type.name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO"
    #   resp.bundles[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceBundles AWS API Documentation
    #
    # @overload describe_workspace_bundles(params = {})
    # @param [Hash] params ({})
    def describe_workspace_bundles(params = {}, options = {})
      req = build_request(:describe_workspace_bundles, params)
      req.send_request(options)
    end

    # Describes the available directories that are registered with Amazon
    # WorkSpaces.
    #
    # @option params [Array<String>] :directory_ids
    #   The identifiers of the directories. If the value is null, all
    #   directories are retrieved.
    #
    # @option params [Integer] :limit
    #   The maximum number of directories to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeWorkspaceDirectoriesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceDirectoriesResult#directories #directories} => Array&lt;Types::WorkspaceDirectory&gt;
    #   * {Types::DescribeWorkspaceDirectoriesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_directories({
    #     directory_ids: ["DirectoryId"],
    #     limit: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.directories #=> Array
    #   resp.directories[0].directory_id #=> String
    #   resp.directories[0].alias #=> String
    #   resp.directories[0].directory_name #=> String
    #   resp.directories[0].registration_code #=> String
    #   resp.directories[0].subnet_ids #=> Array
    #   resp.directories[0].subnet_ids[0] #=> String
    #   resp.directories[0].dns_ip_addresses #=> Array
    #   resp.directories[0].dns_ip_addresses[0] #=> String
    #   resp.directories[0].customer_user_name #=> String
    #   resp.directories[0].iam_role_id #=> String
    #   resp.directories[0].directory_type #=> String, one of "SIMPLE_AD", "AD_CONNECTOR"
    #   resp.directories[0].workspace_security_group_id #=> String
    #   resp.directories[0].state #=> String, one of "REGISTERING", "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ERROR"
    #   resp.directories[0].workspace_creation_properties.enable_work_docs #=> Boolean
    #   resp.directories[0].workspace_creation_properties.enable_internet_access #=> Boolean
    #   resp.directories[0].workspace_creation_properties.default_ou #=> String
    #   resp.directories[0].workspace_creation_properties.custom_security_group_id #=> String
    #   resp.directories[0].workspace_creation_properties.user_enabled_as_local_administrator #=> Boolean
    #   resp.directories[0].workspace_creation_properties.enable_maintenance_mode #=> Boolean
    #   resp.directories[0].ip_group_ids #=> Array
    #   resp.directories[0].ip_group_ids[0] #=> String
    #   resp.directories[0].workspace_access_properties.device_type_windows #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_osx #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_web #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_ios #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_android #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_chrome_os #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_zero_client #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].tenancy #=> String, one of "DEDICATED", "SHARED"
    #   resp.directories[0].selfservice_permissions.restart_workspace #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].selfservice_permissions.increase_volume_size #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].selfservice_permissions.change_compute_type #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].selfservice_permissions.switch_running_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].selfservice_permissions.rebuild_workspace #=> String, one of "ENABLED", "DISABLED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceDirectories AWS API Documentation
    #
    # @overload describe_workspace_directories(params = {})
    # @param [Hash] params ({})
    def describe_workspace_directories(params = {}, options = {})
      req = build_request(:describe_workspace_directories, params)
      req.send_request(options)
    end

    # Describes the permissions that the owner of an image has granted to
    # other AWS accounts for an image.
    #
    # @option params [required, String] :image_id
    #   The identifier of the image.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return.
    #
    # @return [Types::DescribeWorkspaceImagePermissionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceImagePermissionsResult#image_id #image_id} => String
    #   * {Types::DescribeWorkspaceImagePermissionsResult#image_permissions #image_permissions} => Array&lt;Types::ImagePermission&gt;
    #   * {Types::DescribeWorkspaceImagePermissionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_image_permissions({
    #     image_id: "WorkspaceImageId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #   resp.image_permissions #=> Array
    #   resp.image_permissions[0].shared_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceImagePermissions AWS API Documentation
    #
    # @overload describe_workspace_image_permissions(params = {})
    # @param [Hash] params ({})
    def describe_workspace_image_permissions(params = {}, options = {})
      req = build_request(:describe_workspace_image_permissions, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified images, if the
    # image identifiers are provided. Otherwise, all images in the account
    # are described.
    #
    # @option params [Array<String>] :image_ids
    #   The identifier of the image.
    #
    # @option params [String] :image_type
    #   The type (owned or shared) of the image.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return.
    #
    # @return [Types::DescribeWorkspaceImagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceImagesResult#images #images} => Array&lt;Types::WorkspaceImage&gt;
    #   * {Types::DescribeWorkspaceImagesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_images({
    #     image_ids: ["WorkspaceImageId"],
    #     image_type: "OWNED", # accepts OWNED, SHARED
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.images #=> Array
    #   resp.images[0].image_id #=> String
    #   resp.images[0].name #=> String
    #   resp.images[0].description #=> String
    #   resp.images[0].operating_system.type #=> String, one of "WINDOWS", "LINUX"
    #   resp.images[0].state #=> String, one of "AVAILABLE", "PENDING", "ERROR"
    #   resp.images[0].required_tenancy #=> String, one of "DEFAULT", "DEDICATED"
    #   resp.images[0].error_code #=> String
    #   resp.images[0].error_message #=> String
    #   resp.images[0].created #=> Time
    #   resp.images[0].owner_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceImages AWS API Documentation
    #
    # @overload describe_workspace_images(params = {})
    # @param [Hash] params ({})
    def describe_workspace_images(params = {}, options = {})
      req = build_request(:describe_workspace_images, params)
      req.send_request(options)
    end

    # Describes the snapshots for the specified WorkSpace.
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @return [Types::DescribeWorkspaceSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceSnapshotsResult#rebuild_snapshots #rebuild_snapshots} => Array&lt;Types::Snapshot&gt;
    #   * {Types::DescribeWorkspaceSnapshotsResult#restore_snapshots #restore_snapshots} => Array&lt;Types::Snapshot&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_snapshots({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rebuild_snapshots #=> Array
    #   resp.rebuild_snapshots[0].snapshot_time #=> Time
    #   resp.restore_snapshots #=> Array
    #   resp.restore_snapshots[0].snapshot_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceSnapshots AWS API Documentation
    #
    # @overload describe_workspace_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_workspace_snapshots(params = {}, options = {})
      req = build_request(:describe_workspace_snapshots, params)
      req.send_request(options)
    end

    # Describes the specified WorkSpaces.
    #
    # You can filter the results by using the bundle identifier, directory
    # identifier, or owner, but you can specify only one filter at a time.
    #
    # @option params [Array<String>] :workspace_ids
    #   The identifiers of the WorkSpaces. You cannot combine this parameter
    #   with any other filter.
    #
    #   Because the CreateWorkspaces operation is asynchronous, the identifier
    #   it returns is not immediately available. If you immediately call
    #   DescribeWorkspaces with this identifier, no information is returned.
    #
    # @option params [String] :directory_id
    #   The identifier of the directory. In addition, you can optionally
    #   specify a specific directory user (see `UserName`). You cannot combine
    #   this parameter with any other filter.
    #
    # @option params [String] :user_name
    #   The name of the directory user. You must specify this parameter with
    #   `DirectoryId`.
    #
    # @option params [String] :bundle_id
    #   The identifier of the bundle. All WorkSpaces that are created from
    #   this bundle are retrieved. You cannot combine this parameter with any
    #   other filter.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspacesResult#workspaces #workspaces} => Array&lt;Types::Workspace&gt;
    #   * {Types::DescribeWorkspacesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspaces({
    #     workspace_ids: ["WorkspaceId"],
    #     directory_id: "DirectoryId",
    #     user_name: "UserName",
    #     bundle_id: "BundleId",
    #     limit: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workspaces #=> Array
    #   resp.workspaces[0].workspace_id #=> String
    #   resp.workspaces[0].directory_id #=> String
    #   resp.workspaces[0].user_name #=> String
    #   resp.workspaces[0].ip_address #=> String
    #   resp.workspaces[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"
    #   resp.workspaces[0].bundle_id #=> String
    #   resp.workspaces[0].subnet_id #=> String
    #   resp.workspaces[0].error_message #=> String
    #   resp.workspaces[0].error_code #=> String
    #   resp.workspaces[0].computer_name #=> String
    #   resp.workspaces[0].volume_encryption_key #=> String
    #   resp.workspaces[0].user_volume_encryption_enabled #=> Boolean
    #   resp.workspaces[0].root_volume_encryption_enabled #=> Boolean
    #   resp.workspaces[0].workspace_properties.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON"
    #   resp.workspaces[0].workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #   resp.workspaces[0].workspace_properties.root_volume_size_gib #=> Integer
    #   resp.workspaces[0].workspace_properties.user_volume_size_gib #=> Integer
    #   resp.workspaces[0].workspace_properties.compute_type_name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO"
    #   resp.workspaces[0].modification_states #=> Array
    #   resp.workspaces[0].modification_states[0].resource #=> String, one of "ROOT_VOLUME", "USER_VOLUME", "COMPUTE_TYPE"
    #   resp.workspaces[0].modification_states[0].state #=> String, one of "UPDATE_INITIATED", "UPDATE_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaces AWS API Documentation
    #
    # @overload describe_workspaces(params = {})
    # @param [Hash] params ({})
    def describe_workspaces(params = {}, options = {})
      req = build_request(:describe_workspaces, params)
      req.send_request(options)
    end

    # Describes the connection status of the specified WorkSpaces.
    #
    # @option params [Array<String>] :workspace_ids
    #   The identifiers of the WorkSpaces. You can specify up to 25
    #   WorkSpaces.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeWorkspacesConnectionStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspacesConnectionStatusResult#workspaces_connection_status #workspaces_connection_status} => Array&lt;Types::WorkspaceConnectionStatus&gt;
    #   * {Types::DescribeWorkspacesConnectionStatusResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspaces_connection_status({
    #     workspace_ids: ["WorkspaceId"],
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workspaces_connection_status #=> Array
    #   resp.workspaces_connection_status[0].workspace_id #=> String
    #   resp.workspaces_connection_status[0].connection_state #=> String, one of "CONNECTED", "DISCONNECTED", "UNKNOWN"
    #   resp.workspaces_connection_status[0].connection_state_check_timestamp #=> Time
    #   resp.workspaces_connection_status[0].last_known_user_connection_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesConnectionStatus AWS API Documentation
    #
    # @overload describe_workspaces_connection_status(params = {})
    # @param [Hash] params ({})
    def describe_workspaces_connection_status(params = {}, options = {})
      req = build_request(:describe_workspaces_connection_status, params)
      req.send_request(options)
    end

    # Disassociates a connection alias from a directory. Disassociating a
    # connection alias disables cross-Region redirection between two
    # directories in different AWS Regions. For more information, see [
    # Cross-Region Redirection for Amazon WorkSpaces][1].
    #
    # <note markdown="1"> Before performing this operation, call [ DescribeConnectionAliases][2]
    # to make sure that the current state of the connection alias is
    # `CREATED`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    # [2]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html
    #
    # @option params [required, String] :alias_id
    #   The identifier of the connection alias to disassociate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connection_alias({
    #     alias_id: "ConnectionAliasId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateConnectionAlias AWS API Documentation
    #
    # @overload disassociate_connection_alias(params = {})
    # @param [Hash] params ({})
    def disassociate_connection_alias(params = {}, options = {})
      req = build_request(:disassociate_connection_alias, params)
      req.send_request(options)
    end

    # Disassociates the specified IP access control group from the specified
    # directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [required, Array<String>] :group_ids
    #   The identifiers of one or more IP access control groups.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_ip_groups({
    #     directory_id: "DirectoryId", # required
    #     group_ids: ["IpGroupId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateIpGroups AWS API Documentation
    #
    # @overload disassociate_ip_groups(params = {})
    # @param [Hash] params ({})
    def disassociate_ip_groups(params = {}, options = {})
      req = build_request(:disassociate_ip_groups, params)
      req.send_request(options)
    end

    # Imports the specified Windows 10 Bring Your Own License (BYOL) image
    # into Amazon WorkSpaces. The image must be an already licensed Amazon
    # EC2 image that is in your AWS account, and you must own the image. For
    # more information about creating BYOL images, see [ Bring Your Own
    # Windows Desktop Licenses][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #
    # @option params [required, String] :ec2_image_id
    #   The identifier of the EC2 image.
    #
    # @option params [required, String] :ingestion_process
    #   The ingestion process to be used when importing the image. For
    #   non-GPU-enabled bundles (bundles other than Graphics or GraphicsPro),
    #   specify `BYOL_REGULAR`.
    #
    # @option params [required, String] :image_name
    #   The name of the WorkSpace image.
    #
    # @option params [required, String] :image_description
    #   The description of the WorkSpace image.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags. Each WorkSpaces resource can have a maximum of 50 tags.
    #
    # @option params [Array<String>] :applications
    #   If specified, the version of Microsoft Office to subscribe to. Valid
    #   only for Windows 10 BYOL images. For more information about
    #   subscribing to Office for BYOL images, see [ Bring Your Own Windows
    #   Desktop Licenses][1].
    #
    #   <note markdown="1"> Although this parameter is an array, only one item is allowed at this
    #   time.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #
    # @return [Types::ImportWorkspaceImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportWorkspaceImageResult#image_id #image_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_workspace_image({
    #     ec2_image_id: "Ec2ImageId", # required
    #     ingestion_process: "BYOL_REGULAR", # required, accepts BYOL_REGULAR, BYOL_GRAPHICS, BYOL_GRAPHICSPRO
    #     image_name: "WorkspaceImageName", # required
    #     image_description: "WorkspaceImageDescription", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     applications: ["Microsoft_Office_2016"], # accepts Microsoft_Office_2016, Microsoft_Office_2019
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ImportWorkspaceImage AWS API Documentation
    #
    # @overload import_workspace_image(params = {})
    # @param [Hash] params ({})
    def import_workspace_image(params = {}, options = {})
      req = build_request(:import_workspace_image, params)
      req.send_request(options)
    end

    # Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks,
    # that you can use for the network management interface when you enable
    # Bring Your Own License (BYOL).
    #
    # This operation can be run only by AWS accounts that are enabled for
    # BYOL. If your account isn't enabled for BYOL, you'll receive an
    # `AccessDeniedException` error.
    #
    # The management network interface is connected to a secure Amazon
    # WorkSpaces management network. It is used for interactive streaming of
    # the WorkSpace desktop to Amazon WorkSpaces clients, and to allow
    # Amazon WorkSpaces to manage the WorkSpace.
    #
    # @option params [required, String] :management_cidr_range_constraint
    #   The IP address range to search. Specify an IP address range that is
    #   compatible with your network and in CIDR notation (that is, specify
    #   the range as an IPv4 CIDR block).
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::ListAvailableManagementCidrRangesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAvailableManagementCidrRangesResult#management_cidr_ranges #management_cidr_ranges} => Array&lt;String&gt;
    #   * {Types::ListAvailableManagementCidrRangesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_management_cidr_ranges({
    #     management_cidr_range_constraint: "ManagementCidrRangeConstraint", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.management_cidr_ranges #=> Array
    #   resp.management_cidr_ranges[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ListAvailableManagementCidrRanges AWS API Documentation
    #
    # @overload list_available_management_cidr_ranges(params = {})
    # @param [Hash] params ({})
    def list_available_management_cidr_ranges(params = {}, options = {})
      req = build_request(:list_available_management_cidr_ranges, params)
      req.send_request(options)
    end

    # Migrates a WorkSpace from one operating system or bundle type to
    # another, while retaining the data on the user volume.
    #
    # The migration process recreates the WorkSpace by using a new root
    # volume from the target bundle image and the user volume from the last
    # available snapshot of the original WorkSpace. During migration, the
    # original `D:\Users\%USERNAME%` user profile folder is renamed to
    # `D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated`. A new
    # `D:\Users\%USERNAME%` folder is generated by the new OS. Certain
    # files in the old user profile are moved to the new user profile.
    #
    # For available migration scenarios, details about what happens during
    # migration, and best practices, see [Migrate a WorkSpace][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html
    #
    # @option params [required, String] :source_workspace_id
    #   The identifier of the WorkSpace to migrate from.
    #
    # @option params [required, String] :bundle_id
    #   The identifier of the target bundle type to migrate the WorkSpace to.
    #
    # @return [Types::MigrateWorkspaceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MigrateWorkspaceResult#source_workspace_id #source_workspace_id} => String
    #   * {Types::MigrateWorkspaceResult#target_workspace_id #target_workspace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.migrate_workspace({
    #     source_workspace_id: "WorkspaceId", # required
    #     bundle_id: "BundleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.source_workspace_id #=> String
    #   resp.target_workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/MigrateWorkspace AWS API Documentation
    #
    # @overload migrate_workspace(params = {})
    # @param [Hash] params ({})
    def migrate_workspace(params = {}, options = {})
      req = build_request(:migrate_workspace, params)
      req.send_request(options)
    end

    # Modifies the configuration of Bring Your Own License (BYOL) for the
    # specified account.
    #
    # @option params [String] :dedicated_tenancy_support
    #   The status of BYOL.
    #
    # @option params [String] :dedicated_tenancy_management_cidr_range
    #   The IP address range, specified as an IPv4 CIDR block, for the
    #   management network interface. Specify an IP address range that is
    #   compatible with your network and in CIDR notation (that is, specify
    #   the range as an IPv4 CIDR block). The CIDR block size must be /16 (for
    #   example, 203.0.113.25/16). It must also be specified as available by
    #   the `ListAvailableManagementCidrRanges` operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_account({
    #     dedicated_tenancy_support: "ENABLED", # accepts ENABLED
    #     dedicated_tenancy_management_cidr_range: "DedicatedTenancyManagementCidrRange",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyAccount AWS API Documentation
    #
    # @overload modify_account(params = {})
    # @param [Hash] params ({})
    def modify_account(params = {}, options = {})
      req = build_request(:modify_account, params)
      req.send_request(options)
    end

    # Modifies the properties of the specified Amazon WorkSpaces clients.
    #
    # @option params [required, String] :resource_id
    #   The resource identifiers, in the form of directory IDs.
    #
    # @option params [required, Types::ClientProperties] :client_properties
    #   Information about the Amazon WorkSpaces client.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_client_properties({
    #     resource_id: "NonEmptyString", # required
    #     client_properties: { # required
    #       reconnect_enabled: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyClientProperties AWS API Documentation
    #
    # @overload modify_client_properties(params = {})
    # @param [Hash] params ({})
    def modify_client_properties(params = {}, options = {})
      req = build_request(:modify_client_properties, params)
      req.send_request(options)
    end

    # Modifies the self-service WorkSpace management capabilities for your
    # users. For more information, see [Enable Self-Service WorkSpace
    # Management Capabilities for Your Users][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html
    #
    # @option params [required, String] :resource_id
    #   The identifier of the directory.
    #
    # @option params [required, Types::SelfservicePermissions] :selfservice_permissions
    #   The permissions to enable or disable self-service capabilities.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_selfservice_permissions({
    #     resource_id: "DirectoryId", # required
    #     selfservice_permissions: { # required
    #       restart_workspace: "ENABLED", # accepts ENABLED, DISABLED
    #       increase_volume_size: "ENABLED", # accepts ENABLED, DISABLED
    #       change_compute_type: "ENABLED", # accepts ENABLED, DISABLED
    #       switch_running_mode: "ENABLED", # accepts ENABLED, DISABLED
    #       rebuild_workspace: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifySelfservicePermissions AWS API Documentation
    #
    # @overload modify_selfservice_permissions(params = {})
    # @param [Hash] params ({})
    def modify_selfservice_permissions(params = {}, options = {})
      req = build_request(:modify_selfservice_permissions, params)
      req.send_request(options)
    end

    # Specifies which devices and operating systems users can use to access
    # their WorkSpaces. For more information, see [ Control Device
    # Access][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access
    #
    # @option params [required, String] :resource_id
    #   The identifier of the directory.
    #
    # @option params [required, Types::WorkspaceAccessProperties] :workspace_access_properties
    #   The device types and operating systems to enable or disable for
    #   access.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_access_properties({
    #     resource_id: "DirectoryId", # required
    #     workspace_access_properties: { # required
    #       device_type_windows: "ALLOW", # accepts ALLOW, DENY
    #       device_type_osx: "ALLOW", # accepts ALLOW, DENY
    #       device_type_web: "ALLOW", # accepts ALLOW, DENY
    #       device_type_ios: "ALLOW", # accepts ALLOW, DENY
    #       device_type_android: "ALLOW", # accepts ALLOW, DENY
    #       device_type_chrome_os: "ALLOW", # accepts ALLOW, DENY
    #       device_type_zero_client: "ALLOW", # accepts ALLOW, DENY
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceAccessProperties AWS API Documentation
    #
    # @overload modify_workspace_access_properties(params = {})
    # @param [Hash] params ({})
    def modify_workspace_access_properties(params = {}, options = {})
      req = build_request(:modify_workspace_access_properties, params)
      req.send_request(options)
    end

    # Modify the default properties used to create WorkSpaces.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the directory.
    #
    # @option params [required, Types::WorkspaceCreationProperties] :workspace_creation_properties
    #   The default properties for creating WorkSpaces.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_creation_properties({
    #     resource_id: "DirectoryId", # required
    #     workspace_creation_properties: { # required
    #       enable_work_docs: false,
    #       enable_internet_access: false,
    #       default_ou: "DefaultOu",
    #       custom_security_group_id: "SecurityGroupId",
    #       user_enabled_as_local_administrator: false,
    #       enable_maintenance_mode: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceCreationProperties AWS API Documentation
    #
    # @overload modify_workspace_creation_properties(params = {})
    # @param [Hash] params ({})
    def modify_workspace_creation_properties(params = {}, options = {})
      req = build_request(:modify_workspace_creation_properties, params)
      req.send_request(options)
    end

    # Modifies the specified WorkSpace properties. For important information
    # about how to modify the size of the root and user volumes, see [
    # Modify a WorkSpace][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @option params [required, Types::WorkspaceProperties] :workspace_properties
    #   The properties of the WorkSpace.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_properties({
    #     workspace_id: "WorkspaceId", # required
    #     workspace_properties: { # required
    #       running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #       running_mode_auto_stop_timeout_in_minutes: 1,
    #       root_volume_size_gib: 1,
    #       user_volume_size_gib: 1,
    #       compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceProperties AWS API Documentation
    #
    # @overload modify_workspace_properties(params = {})
    # @param [Hash] params ({})
    def modify_workspace_properties(params = {}, options = {})
      req = build_request(:modify_workspace_properties, params)
      req.send_request(options)
    end

    # Sets the state of the specified WorkSpace.
    #
    # To maintain a WorkSpace without being interrupted, set the WorkSpace
    # state to `ADMIN_MAINTENANCE`. WorkSpaces in this state do not respond
    # to requests to reboot, stop, start, rebuild, or restore. An AutoStop
    # WorkSpace in this state is not stopped. Users cannot log into a
    # WorkSpace in the `ADMIN_MAINTENANCE` state.
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @option params [required, String] :workspace_state
    #   The WorkSpace state.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_state({
    #     workspace_id: "WorkspaceId", # required
    #     workspace_state: "AVAILABLE", # required, accepts AVAILABLE, ADMIN_MAINTENANCE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceState AWS API Documentation
    #
    # @overload modify_workspace_state(params = {})
    # @param [Hash] params ({})
    def modify_workspace_state(params = {}, options = {})
      req = build_request(:modify_workspace_state, params)
      req.send_request(options)
    end

    # Reboots the specified WorkSpaces.
    #
    # You cannot reboot a WorkSpace unless its state is `AVAILABLE` or
    # `UNHEALTHY`.
    #
    # This operation is asynchronous and returns before the WorkSpaces have
    # rebooted.
    #
    # @option params [required, Array<Types::RebootRequest>] :reboot_workspace_requests
    #   The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.
    #
    # @return [Types::RebootWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_workspaces({
    #     reboot_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootWorkspaces AWS API Documentation
    #
    # @overload reboot_workspaces(params = {})
    # @param [Hash] params ({})
    def reboot_workspaces(params = {}, options = {})
      req = build_request(:reboot_workspaces, params)
      req.send_request(options)
    end

    # Rebuilds the specified WorkSpace.
    #
    # You cannot rebuild a WorkSpace unless its state is `AVAILABLE`,
    # `ERROR`, `UNHEALTHY`, `STOPPED`, or `REBOOTING`.
    #
    # Rebuilding a WorkSpace is a potentially destructive action that can
    # result in the loss of data. For more information, see [Rebuild a
    # WorkSpace][1].
    #
    # This operation is asynchronous and returns before the WorkSpaces have
    # been completely rebuilt.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html
    #
    # @option params [required, Array<Types::RebuildRequest>] :rebuild_workspace_requests
    #   The WorkSpace to rebuild. You can specify a single WorkSpace.
    #
    # @return [Types::RebuildWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebuildWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rebuild_workspaces({
    #     rebuild_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildWorkspaces AWS API Documentation
    #
    # @overload rebuild_workspaces(params = {})
    # @param [Hash] params ({})
    def rebuild_workspaces(params = {}, options = {})
      req = build_request(:rebuild_workspaces, params)
      req.send_request(options)
    end

    # Registers the specified directory. This operation is asynchronous and
    # returns before the WorkSpace directory is registered. If this is the
    # first time you are registering a directory, you will need to create
    # the workspaces\_DefaultRole role before you can register a directory.
    # For more information, see [ Creating the workspaces\_DefaultRole
    # Role][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory. You cannot register a directory if it
    #   does not have a status of Active. If the directory does not have a
    #   status of Active, you will receive an InvalidResourceStateException
    #   error. If you have already registered the maximum number of
    #   directories that you can register with Amazon WorkSpaces, you will
    #   receive a ResourceLimitExceededException error. Deregister directories
    #   that you are not using for WorkSpaces, and try again.
    #
    # @option params [Array<String>] :subnet_ids
    #   The identifiers of the subnets for your virtual private cloud (VPC).
    #   Make sure that the subnets are in supported Availability Zones. The
    #   subnets must also be in separate Availability Zones. If these
    #   conditions are not met, you will receive an
    #   OperationNotSupportedException error.
    #
    # @option params [required, Boolean] :enable_work_docs
    #   Indicates whether Amazon WorkDocs is enabled or disabled. If you have
    #   enabled this parameter and WorkDocs is not available in the Region,
    #   you will receive an OperationNotSupportedException error. Set
    #   `EnableWorkDocs` to disabled, and try again.
    #
    # @option params [Boolean] :enable_self_service
    #   Indicates whether self-service capabilities are enabled or disabled.
    #
    # @option params [String] :tenancy
    #   Indicates whether your WorkSpace directory is dedicated or shared. To
    #   use Bring Your Own License (BYOL) images, this value must be set to
    #   `DEDICATED` and your AWS account must be enabled for BYOL. If your
    #   account has not been enabled for BYOL, you will receive an
    #   InvalidParameterValuesException error. For more information about BYOL
    #   images, see [Bring Your Own Windows Desktop Images][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the directory.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_workspace_directory({
    #     directory_id: "DirectoryId", # required
    #     subnet_ids: ["SubnetId"],
    #     enable_work_docs: false, # required
    #     enable_self_service: false,
    #     tenancy: "DEDICATED", # accepts DEDICATED, SHARED
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RegisterWorkspaceDirectory AWS API Documentation
    #
    # @overload register_workspace_directory(params = {})
    # @param [Hash] params ({})
    def register_workspace_directory(params = {}, options = {})
      req = build_request(:register_workspace_directory, params)
      req.send_request(options)
    end

    # Restores the specified WorkSpace to its last known healthy state.
    #
    # You cannot restore a WorkSpace unless its state is ` AVAILABLE`,
    # `ERROR`, `UNHEALTHY`, or `STOPPED`.
    #
    # Restoring a WorkSpace is a potentially destructive action that can
    # result in the loss of data. For more information, see [Restore a
    # WorkSpace][1].
    #
    # This operation is asynchronous and returns before the WorkSpace is
    # completely restored.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_workspace({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RestoreWorkspace AWS API Documentation
    #
    # @overload restore_workspace(params = {})
    # @param [Hash] params ({})
    def restore_workspace(params = {}, options = {})
      req = build_request(:restore_workspace, params)
      req.send_request(options)
    end

    # Removes one or more rules from the specified IP access control group.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group.
    #
    # @option params [required, Array<String>] :user_rules
    #   The rules to remove from the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_ip_rules({
    #     group_id: "IpGroupId", # required
    #     user_rules: ["IpRule"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RevokeIpRules AWS API Documentation
    #
    # @overload revoke_ip_rules(params = {})
    # @param [Hash] params ({})
    def revoke_ip_rules(params = {}, options = {})
      req = build_request(:revoke_ip_rules, params)
      req.send_request(options)
    end

    # Starts the specified WorkSpaces.
    #
    # You cannot start a WorkSpace unless it has a running mode of
    # `AutoStop` and a state of `STOPPED`.
    #
    # @option params [required, Array<Types::StartRequest>] :start_workspace_requests
    #   The WorkSpaces to start. You can specify up to 25 WorkSpaces.
    #
    # @return [Types::StartWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workspaces({
    #     start_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartWorkspaces AWS API Documentation
    #
    # @overload start_workspaces(params = {})
    # @param [Hash] params ({})
    def start_workspaces(params = {}, options = {})
      req = build_request(:start_workspaces, params)
      req.send_request(options)
    end

    # Stops the specified WorkSpaces.
    #
    # You cannot stop a WorkSpace unless it has a running mode of `AutoStop`
    # and a state of `AVAILABLE`, `IMPAIRED`, `UNHEALTHY`, or `ERROR`.
    #
    # @option params [required, Array<Types::StopRequest>] :stop_workspace_requests
    #   The WorkSpaces to stop. You can specify up to 25 WorkSpaces.
    #
    # @return [Types::StopWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_workspaces({
    #     stop_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopWorkspaces AWS API Documentation
    #
    # @overload stop_workspaces(params = {})
    # @param [Hash] params ({})
    def stop_workspaces(params = {}, options = {})
      req = build_request(:stop_workspaces, params)
      req.send_request(options)
    end

    # Terminates the specified WorkSpaces.
    #
    # Terminating a WorkSpace is a permanent action and cannot be undone.
    # The user's data is destroyed. If you need to archive any user data,
    # contact AWS Support before terminating the WorkSpace.
    #
    # You can terminate a WorkSpace that is in any state except `SUSPENDED`.
    #
    # This operation is asynchronous and returns before the WorkSpaces have
    # been completely terminated. After a WorkSpace is terminated, the
    # `TERMINATED` state is returned only briefly before the WorkSpace
    # directory metadata is cleaned up, so this state is rarely returned. To
    # confirm that a WorkSpace is terminated, check for the WorkSpace ID by
    # using [ DescribeWorkSpaces][1]. If the WorkSpace ID isn't returned,
    # then the WorkSpace has been successfully terminated.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html
    #
    # @option params [required, Array<Types::TerminateRequest>] :terminate_workspace_requests
    #   The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.
    #
    # @return [Types::TerminateWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_workspaces({
    #     terminate_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspaces AWS API Documentation
    #
    # @overload terminate_workspaces(params = {})
    # @param [Hash] params ({})
    def terminate_workspaces(params = {}, options = {})
      req = build_request(:terminate_workspaces, params)
      req.send_request(options)
    end

    # Shares or unshares a connection alias with one account by specifying
    # whether that account has permission to associate the connection alias
    # with a directory. If the association permission is granted, the
    # connection alias is shared with that account. If the association
    # permission is revoked, the connection alias is unshared with the
    # account. For more information, see [ Cross-Region Redirection for
    # Amazon WorkSpaces][1].
    #
    # <note markdown="1"> * Before performing this operation, call [
    #   DescribeConnectionAliases][2] to make sure that the current state of
    #   the connection alias is `CREATED`.
    #
    # * To delete a connection alias that has been shared, the shared
    #   account must first disassociate the connection alias from any
    #   directories it has been associated with. Then you must unshare the
    #   connection alias from the account it has been shared with. You can
    #   delete a connection alias only after it is no longer shared with any
    #   accounts or associated with any directories.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    # [2]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html
    #
    # @option params [required, String] :alias_id
    #   The identifier of the connection alias that you want to update
    #   permissions for.
    #
    # @option params [required, Types::ConnectionAliasPermission] :connection_alias_permission
    #   Indicates whether to share or unshare the connection alias with the
    #   specified AWS account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection_alias_permission({
    #     alias_id: "ConnectionAliasId", # required
    #     connection_alias_permission: { # required
    #       shared_account_id: "AwsAccount", # required
    #       allow_association: false, # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateConnectionAliasPermission AWS API Documentation
    #
    # @overload update_connection_alias_permission(params = {})
    # @param [Hash] params ({})
    def update_connection_alias_permission(params = {}, options = {})
      req = build_request(:update_connection_alias_permission, params)
      req.send_request(options)
    end

    # Replaces the current rules of the specified IP access control group
    # with the specified rules.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group.
    #
    # @option params [required, Array<Types::IpRuleItem>] :user_rules
    #   One or more rules.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rules_of_ip_group({
    #     group_id: "IpGroupId", # required
    #     user_rules: [ # required
    #       {
    #         ip_rule: "IpRule",
    #         rule_desc: "IpRuleDesc",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateRulesOfIpGroup AWS API Documentation
    #
    # @overload update_rules_of_ip_group(params = {})
    # @param [Hash] params ({})
    def update_rules_of_ip_group(params = {}, options = {})
      req = build_request(:update_rules_of_ip_group, params)
      req.send_request(options)
    end

    # Shares or unshares an image with one account by specifying whether
    # that account has permission to copy the image. If the copy image
    # permission is granted, the image is shared with that account. If the
    # copy image permission is revoked, the image is unshared with the
    # account. For more information about sharing images, see [ Share or
    # Unshare a Custom WorkSpaces Image][1].
    #
    # <note markdown="1"> * To delete an image that has been shared, you must unshare the image
    #   before you delete it.
    #
    # * Sharing Bring Your Own License (BYOL) images across AWS accounts
    #   isn't supported at this time in the AWS GovCloud (US-West) Region.
    #   To share BYOL images across accounts in the AWS GovCloud (US-West)
    #   Region, contact AWS Support.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html
    #
    # @option params [required, String] :image_id
    #   The identifier of the image.
    #
    # @option params [required, Boolean] :allow_copy_image
    #   The permission to copy the image. This permission can be revoked only
    #   after an image has been shared.
    #
    # @option params [required, String] :shared_account_id
    #   The identifier of the AWS account to share or unshare the image with.
    #
    #   Before sharing the image, confirm that you are sharing to the correct
    #   AWS account ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_image_permission({
    #     image_id: "WorkspaceImageId", # required
    #     allow_copy_image: false, # required
    #     shared_account_id: "AwsAccount", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateWorkspaceImagePermission AWS API Documentation
    #
    # @overload update_workspace_image_permission(params = {})
    # @param [Hash] params ({})
    def update_workspace_image_permission(params = {}, options = {})
      req = build_request(:update_workspace_image_permission, params)
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
      context[:gem_name] = 'aws-sdk-workspaces'
      context[:gem_version] = '1.48.0'
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
