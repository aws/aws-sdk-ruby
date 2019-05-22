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

Aws::Plugins::GlobalConfiguration.add_identifier(:workspaces)

module Aws::WorkSpaces
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
    #   and IP access control groups.
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
    #   resp.pending_requests[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"
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
    #   and IP access control groups.
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
    # must first delete any bundles that are associated with the image.
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

    # Retrieves a list that describes the configuration of bring your own
    # license (BYOL) for the specified account.
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
    # bring your own license (BYOL) for the specified account.
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
    #   and IP access control groups.
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
    #   resp.bundles[0].root_storage.capacity #=> String
    #   resp.bundles[0].user_storage.capacity #=> String
    #   resp.bundles[0].compute_type.name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO"
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

    # Describes the available AWS Directory Service directories that are
    # registered with Amazon WorkSpaces.
    #
    # @option params [Array<String>] :directory_ids
    #   The identifiers of the directories. If the value is null, all
    #   directories are retrieved.
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_directories({
    #     directory_ids: ["DirectoryId"],
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
    #   resp.directories[0].ip_group_ids #=> Array
    #   resp.directories[0].ip_group_ids[0] #=> String
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

    # Retrieves a list that describes one or more specified images, if the
    # image identifiers are provided. Otherwise, all images in the account
    # are described.
    #
    # @option params [Array<String>] :image_ids
    #   The identifier of the image.
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
    #   resp.workspaces[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"
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

    # Imports the specified Windows 7 or Windows 10 bring your own license
    # (BYOL) image into Amazon WorkSpaces. The image must be an already
    # licensed EC2 image that is in your AWS account, and you must own the
    # image.
    #
    # @option params [required, String] :ec2_image_id
    #   The identifier of the EC2 image.
    #
    # @option params [required, String] :ingestion_process
    #   The ingestion process to be used when importing the image.
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
    # bring your own license (BYOL).
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

    # Modifies the configuration of bring your own license (BYOL) for the
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

    # Modifies the specified WorkSpace properties.
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
    # to requests to reboot, stop, start, or rebuild. An AutoStop WorkSpace
    # in this state is not stopped. Users can log into a WorkSpace in the
    # `ADMIN_MAINTENANCE` state.
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
    # `ERROR`, or `UNHEALTHY`.
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
    # @option params [String] :additional_info
    #   Reserved.
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
    #     additional_info: "AdditionalInfo",
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
    # contact Amazon Web Services before terminating the WorkSpace.
    #
    # You can terminate a WorkSpace that is in any state except `SUSPENDED`.
    #
    # This operation is asynchronous and returns before the WorkSpaces have
    # been completely terminated.
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
      context[:gem_version] = '1.22.0'
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
