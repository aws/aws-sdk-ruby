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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:connect)

module Aws::Connect
  # An API client for Connect.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Connect::Client.new(
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

    @identifier = :connect

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
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Associates a set of queues with a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   The queues to associate with this routing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_configs: [ # required
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE", # required, accepts VOICE, CHAT
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateRoutingProfileQueues AWS API Documentation
    #
    # @overload associate_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def associate_routing_profile_queues(params = {}, options = {})
      req = build_request(:associate_routing_profile_queues, params)
      req.send_request(options)
    end

    # Creates a contact flow for the specified Amazon Connect instance.
    #
    # You can also create and update contact flows using the [Amazon Connect
    # Flow language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :name
    #   The name of the contact flow.
    #
    # @option params [required, String] :type
    #   The type of the contact flow. For descriptions of the available types,
    #   see [Choose a Contact Flow Type][1] in the *Amazon Connect
    #   Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types
    #
    # @option params [String] :description
    #   The description of the contact flow.
    #
    # @option params [required, String] :content
    #   The content of the contact flow.
    #
    # @option params [Hash<String,String>] :tags
    #   One or more tags.
    #
    # @return [Types::CreateContactFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactFlowResponse#contact_flow_id #contact_flow_id} => String
    #   * {Types::CreateContactFlowResponse#contact_flow_arn #contact_flow_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_flow({
    #     instance_id: "InstanceId", # required
    #     name: "ContactFlowName", # required
    #     type: "CONTACT_FLOW", # required, accepts CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER
    #     description: "ContactFlowDescription",
    #     content: "ContactFlowContent", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_id #=> String
    #   resp.contact_flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContactFlow AWS API Documentation
    #
    # @overload create_contact_flow(params = {})
    # @param [Hash] params ({})
    def create_contact_flow(params = {}, options = {})
      req = build_request(:create_contact_flow, params)
      req.send_request(options)
    end

    # Creates a new routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :name
    #   The name of the routing profile. Must not be more than 127 characters.
    #
    # @option params [required, String] :description
    #   Description of the routing profile. Must not be more than 250
    #   characters.
    #
    # @option params [required, String] :default_outbound_queue_id
    #   The default outbound queue for the routing profile.
    #
    # @option params [Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   The inbound queues associated with the routing profile. If no queue is
    #   added, the agent can only make outbound calls.
    #
    # @option params [required, Array<Types::MediaConcurrency>] :media_concurrencies
    #   The channels agents can handle in the Contact Control Panel (CCP) for
    #   this routing profile.
    #
    # @option params [Hash<String,String>] :tags
    #   One or more tags.
    #
    # @return [Types::CreateRoutingProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoutingProfileResponse#routing_profile_arn #routing_profile_arn} => String
    #   * {Types::CreateRoutingProfileResponse#routing_profile_id #routing_profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_routing_profile({
    #     instance_id: "InstanceId", # required
    #     name: "RoutingProfileName", # required
    #     description: "RoutingProfileDescription", # required
    #     default_outbound_queue_id: "QueueId", # required
    #     queue_configs: [
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE", # required, accepts VOICE, CHAT
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       },
    #     ],
    #     media_concurrencies: [ # required
    #       {
    #         channel: "VOICE", # required, accepts VOICE, CHAT
    #         concurrency: 1, # required
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profile_arn #=> String
    #   resp.routing_profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateRoutingProfile AWS API Documentation
    #
    # @overload create_routing_profile(params = {})
    # @param [Hash] params ({})
    def create_routing_profile(params = {}, options = {})
      req = build_request(:create_routing_profile, params)
      req.send_request(options)
    end

    # Creates a user account for the specified Amazon Connect instance.
    #
    # For information about how to create user accounts using the Amazon
    # Connect console, see [Add Users][1] in the *Amazon Connect
    # Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html
    #
    # @option params [required, String] :username
    #   The user name for the account. For instances not using SAML for
    #   identity management, the user name can include up to 20 characters. If
    #   you are using SAML for identity management, the user name can include
    #   up to 64 characters from \[a-zA-Z0-9\_-.\\@\]+.
    #
    # @option params [String] :password
    #   The password for the user account. A password is required if you are
    #   using Amazon Connect for identity management. Otherwise, it is an
    #   error to include a password.
    #
    # @option params [Types::UserIdentityInfo] :identity_info
    #   The information about the identity of the user.
    #
    # @option params [required, Types::UserPhoneConfig] :phone_config
    #   The phone settings for the user.
    #
    # @option params [String] :directory_user_id
    #   The identifier of the user account in the directory used for identity
    #   management. If Amazon Connect cannot access the directory, you can
    #   specify this identifier to authenticate users. If you include the
    #   identifier, we assume that Amazon Connect cannot access the directory.
    #   Otherwise, the identity information is used to authenticate users from
    #   your directory.
    #
    #   This parameter is required if you are using an existing directory for
    #   identity management in Amazon Connect when Amazon Connect cannot
    #   access your directory to authenticate users. If you are using SAML for
    #   identity management and include this parameter, an error is returned.
    #
    # @option params [required, Array<String>] :security_profile_ids
    #   The identifier of the security profile for the user.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile for the user.
    #
    # @option params [String] :hierarchy_group_id
    #   The identifier of the hierarchy group for the user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [Hash<String,String>] :tags
    #   One or more tags.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user_id #user_id} => String
    #   * {Types::CreateUserResponse#user_arn #user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     username: "AgentUsername", # required
    #     password: "Password",
    #     identity_info: {
    #       first_name: "AgentFirstName",
    #       last_name: "AgentLastName",
    #       email: "Email",
    #     },
    #     phone_config: { # required
    #       phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: "PhoneNumber",
    #     },
    #     directory_user_id: "DirectoryUserId",
    #     security_profile_ids: ["SecurityProfileId"], # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     hierarchy_group_id: "HierarchyGroupId",
    #     instance_id: "InstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes a user account from the specified Amazon Connect instance.
    #
    # For information about what happens to a user's data when their
    # account is deleted, see [Delete Users from Your Amazon Connect
    # Instance][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Describes the specified contact flow.
    #
    # You can also create and update contact flows using the [Amazon Connect
    # Flow language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the contact flow.
    #
    # @return [Types::DescribeContactFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContactFlowResponse#contact_flow #contact_flow} => Types::ContactFlow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact_flow({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow.arn #=> String
    #   resp.contact_flow.id #=> String
    #   resp.contact_flow.name #=> String
    #   resp.contact_flow.type #=> String, one of "CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"
    #   resp.contact_flow.description #=> String
    #   resp.contact_flow.content #=> String
    #   resp.contact_flow.tags #=> Hash
    #   resp.contact_flow.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlow AWS API Documentation
    #
    # @overload describe_contact_flow(params = {})
    # @param [Hash] params ({})
    def describe_contact_flow(params = {}, options = {})
      req = build_request(:describe_contact_flow, params)
      req.send_request(options)
    end

    # Describes the specified routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @return [Types::DescribeRoutingProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRoutingProfileResponse#routing_profile #routing_profile} => Types::RoutingProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_routing_profile({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profile.instance_id #=> String
    #   resp.routing_profile.name #=> String
    #   resp.routing_profile.routing_profile_arn #=> String
    #   resp.routing_profile.routing_profile_id #=> String
    #   resp.routing_profile.description #=> String
    #   resp.routing_profile.media_concurrencies #=> Array
    #   resp.routing_profile.media_concurrencies[0].channel #=> String, one of "VOICE", "CHAT"
    #   resp.routing_profile.media_concurrencies[0].concurrency #=> Integer
    #   resp.routing_profile.default_outbound_queue_id #=> String
    #   resp.routing_profile.tags #=> Hash
    #   resp.routing_profile.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeRoutingProfile AWS API Documentation
    #
    # @overload describe_routing_profile(params = {})
    # @param [Hash] params ({})
    def describe_routing_profile(params = {}, options = {})
      req = build_request(:describe_routing_profile, params)
      req.send_request(options)
    end

    # Describes the specified user account. You can find the instance ID in
    # the console (it’s the final part of the ARN). The console does not
    # display the user IDs. Instead, list the users and note the IDs
    # provided in the output.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.id #=> String
    #   resp.user.arn #=> String
    #   resp.user.username #=> String
    #   resp.user.identity_info.first_name #=> String
    #   resp.user.identity_info.last_name #=> String
    #   resp.user.identity_info.email #=> String
    #   resp.user.phone_config.phone_type #=> String, one of "SOFT_PHONE", "DESK_PHONE"
    #   resp.user.phone_config.auto_accept #=> Boolean
    #   resp.user.phone_config.after_contact_work_time_limit #=> Integer
    #   resp.user.phone_config.desk_phone_number #=> String
    #   resp.user.directory_user_id #=> String
    #   resp.user.security_profile_ids #=> Array
    #   resp.user.security_profile_ids[0] #=> String
    #   resp.user.routing_profile_id #=> String
    #   resp.user.hierarchy_group_id #=> String
    #   resp.user.tags #=> Hash
    #   resp.user.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Describes the specified hierarchy group.
    #
    # @option params [required, String] :hierarchy_group_id
    #   The identifier of the hierarchy group.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @return [Types::DescribeUserHierarchyGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserHierarchyGroupResponse#hierarchy_group #hierarchy_group} => Types::HierarchyGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_hierarchy_group({
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hierarchy_group.id #=> String
    #   resp.hierarchy_group.arn #=> String
    #   resp.hierarchy_group.name #=> String
    #   resp.hierarchy_group.level_id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyGroup AWS API Documentation
    #
    # @overload describe_user_hierarchy_group(params = {})
    # @param [Hash] params ({})
    def describe_user_hierarchy_group(params = {}, options = {})
      req = build_request(:describe_user_hierarchy_group, params)
      req.send_request(options)
    end

    # Describes the hierarchy structure of the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @return [Types::DescribeUserHierarchyStructureResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserHierarchyStructureResponse#hierarchy_structure #hierarchy_structure} => Types::HierarchyStructure
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_hierarchy_structure({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hierarchy_structure.level_one.id #=> String
    #   resp.hierarchy_structure.level_one.arn #=> String
    #   resp.hierarchy_structure.level_one.name #=> String
    #   resp.hierarchy_structure.level_two.id #=> String
    #   resp.hierarchy_structure.level_two.arn #=> String
    #   resp.hierarchy_structure.level_two.name #=> String
    #   resp.hierarchy_structure.level_three.id #=> String
    #   resp.hierarchy_structure.level_three.arn #=> String
    #   resp.hierarchy_structure.level_three.name #=> String
    #   resp.hierarchy_structure.level_four.id #=> String
    #   resp.hierarchy_structure.level_four.arn #=> String
    #   resp.hierarchy_structure.level_four.name #=> String
    #   resp.hierarchy_structure.level_five.id #=> String
    #   resp.hierarchy_structure.level_five.arn #=> String
    #   resp.hierarchy_structure.level_five.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyStructure AWS API Documentation
    #
    # @overload describe_user_hierarchy_structure(params = {})
    # @param [Hash] params ({})
    def describe_user_hierarchy_structure(params = {}, options = {})
      req = build_request(:describe_user_hierarchy_structure, params)
      req.send_request(options)
    end

    # Disassociates a set of queues from a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::RoutingProfileQueueReference>] :queue_references
    #   The queues to disassociate from this routing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_references: [ # required
    #       {
    #         queue_id: "QueueId", # required
    #         channel: "VOICE", # required, accepts VOICE, CHAT
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateRoutingProfileQueues AWS API Documentation
    #
    # @overload disassociate_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def disassociate_routing_profile_queues(params = {}, options = {})
      req = build_request(:disassociate_routing_profile_queues, params)
      req.send_request(options)
    end

    # Retrieves the contact attributes for the specified contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the initial contact.
    #
    # @return [Types::GetContactAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactAttributesResponse#attributes #attributes} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_attributes({
    #     instance_id: "InstanceId", # required
    #     initial_contact_id: "ContactId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Hash
    #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetContactAttributes AWS API Documentation
    #
    # @overload get_contact_attributes(params = {})
    # @param [Hash] params ({})
    def get_contact_attributes(params = {}, options = {})
      req = build_request(:get_contact_attributes, params)
      req.send_request(options)
    end

    # Gets the real-time metric data from the specified Amazon Connect
    # instance.
    #
    # For a description of each metric, see [Real-time Metrics
    # Definitions][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, Types::Filters] :filters
    #   The queues, up to 100, or channels, to use to filter the metrics
    #   returned. Metric data is retrieved only for the resources associated
    #   with the queues or channels included in the filter. You can include
    #   both queue IDs and queue ARNs in the same request. Both `VOICE` and
    #   `CHAT` channels are supported.
    #
    # @option params [Array<String>] :groupings
    #   The grouping applied to the metrics returned. For example, when
    #   grouped by `QUEUE`, the metrics returned apply to each queue rather
    #   than aggregated for all queues. If you group by `CHANNEL`, you should
    #   include a Channels filter. Both `VOICE` and `CHAT` channels are
    #   supported.
    #
    #   If no `Grouping` is included in the request, a summary of metrics is
    #   returned.
    #
    # @option params [required, Array<Types::CurrentMetric>] :current_metrics
    #   The metrics to retrieve. Specify the name and unit for each metric.
    #   The following metrics are available. For a description of all the
    #   metrics, see [Real-time Metrics Definitions][1] in the *Amazon Connect
    #   Administrator Guide*.
    #
    #   AGENTS\_AFTER\_CONTACT\_WORK
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [ACW][2]
    #
    #   AGENTS\_AVAILABLE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Available][3]
    #
    #   AGENTS\_ERROR
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Error][4]
    #
    #   AGENTS\_NON\_PRODUCTIVE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [NPT (Non-Productive Time)][5]
    #
    #   AGENTS\_ON\_CALL
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [On contact][6]
    #
    #   AGENTS\_ON\_CONTACT
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [On contact][6]
    #
    #   AGENTS\_ONLINE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Online][7]
    #
    #   AGENTS\_STAFFED
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Staffed][8]
    #
    #   CONTACTS\_IN\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [In queue][9]
    #
    #   CONTACTS\_SCHEDULED
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Scheduled][10]
    #
    #   OLDEST\_CONTACT\_AGE
    #
    #   : Unit: SECONDS
    #
    #     When you use groupings, Unit says SECONDS but the Value is returned
    #     in MILLISECONDS. For example, if you get a response like this:
    #
    #     `\{ "Metric": \{ "Name": "OLDEST_CONTACT_AGE", "Unit": "SECONDS" \},
    #     "Value": 24113.0 `\\}
    #
    #     The actual OLDEST\_CONTACT\_AGE is 24 seconds.
    #
    #     Name in real-time metrics report: [Oldest][11]
    #
    #   SLOTS\_ACTIVE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Active][12]
    #
    #   SLOTS\_AVAILABLE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Availability][13]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#aftercallwork-real-time
    #   [3]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#available-real-time
    #   [4]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#error-real-time
    #   [5]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#non-productive-time-real-time
    #   [6]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#on-call-real-time
    #   [7]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#online-real-time
    #   [8]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#staffed-real-time
    #   [9]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#in-queue-real-time
    #   [10]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#scheduled-real-time
    #   [11]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#oldest-real-time
    #   [12]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#active-real-time
    #   [13]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#availability-real-time
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   The token expires after 5 minutes from the time it is created.
    #   Subsequent requests that use the token must use the same request
    #   parameters as the request that generated the token.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::GetCurrentMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCurrentMetricDataResponse#next_token #next_token} => String
    #   * {Types::GetCurrentMetricDataResponse#metric_results #metric_results} => Array&lt;Types::CurrentMetricResult&gt;
    #   * {Types::GetCurrentMetricDataResponse#data_snapshot_time #data_snapshot_time} => Time
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_current_metric_data({
    #     instance_id: "InstanceId", # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       channels: ["VOICE"], # accepts VOICE, CHAT
    #     },
    #     groupings: ["QUEUE"], # accepts QUEUE, CHANNEL
    #     current_metrics: [ # required
    #       {
    #         name: "AGENTS_ONLINE", # accepts AGENTS_ONLINE, AGENTS_AVAILABLE, AGENTS_ON_CALL, AGENTS_NON_PRODUCTIVE, AGENTS_AFTER_CONTACT_WORK, AGENTS_ERROR, AGENTS_STAFFED, CONTACTS_IN_QUEUE, OLDEST_CONTACT_AGE, CONTACTS_SCHEDULED, AGENTS_ON_CONTACT, SLOTS_ACTIVE, SLOTS_AVAILABLE
    #         unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].dimensions.queue.id #=> String
    #   resp.metric_results[0].dimensions.queue.arn #=> String
    #   resp.metric_results[0].dimensions.channel #=> String, one of "VOICE", "CHAT"
    #   resp.metric_results[0].collections #=> Array
    #   resp.metric_results[0].collections[0].metric.name #=> String, one of "AGENTS_ONLINE", "AGENTS_AVAILABLE", "AGENTS_ON_CALL", "AGENTS_NON_PRODUCTIVE", "AGENTS_AFTER_CONTACT_WORK", "AGENTS_ERROR", "AGENTS_STAFFED", "CONTACTS_IN_QUEUE", "OLDEST_CONTACT_AGE", "CONTACTS_SCHEDULED", "AGENTS_ON_CONTACT", "SLOTS_ACTIVE", "SLOTS_AVAILABLE"
    #   resp.metric_results[0].collections[0].metric.unit #=> String, one of "SECONDS", "COUNT", "PERCENT"
    #   resp.metric_results[0].collections[0].value #=> Float
    #   resp.data_snapshot_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentMetricData AWS API Documentation
    #
    # @overload get_current_metric_data(params = {})
    # @param [Hash] params ({})
    def get_current_metric_data(params = {}, options = {})
      req = build_request(:get_current_metric_data, params)
      req.send_request(options)
    end

    # Retrieves a token for federation.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @return [Types::GetFederationTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFederationTokenResponse#credentials #credentials} => Types::Credentials
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_federation_token({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_token #=> String
    #   resp.credentials.access_token_expiration #=> Time
    #   resp.credentials.refresh_token #=> String
    #   resp.credentials.refresh_token_expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationToken AWS API Documentation
    #
    # @overload get_federation_token(params = {})
    # @param [Hash] params ({})
    def get_federation_token(params = {}, options = {})
      req = build_request(:get_federation_token, params)
      req.send_request(options)
    end

    # Gets historical metric data from the specified Amazon Connect
    # instance.
    #
    # For a description of each historical metric, see [Historical Metrics
    # Definitions][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp, in UNIX Epoch time format, at which to start the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be specified using a multiple of 5 minutes, such as 10:05,
    #   10:10, 10:15.
    #
    #   The start time cannot be earlier than 24 hours before the time of the
    #   request. Historical metrics are available only for 24 hours.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp, in UNIX Epoch time format, at which to end the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be specified using an interval of 5 minutes, such as 11:00,
    #   11:05, 11:10, and must be later than the start time timestamp.
    #
    #   The time range between the start and end time must be less than 24
    #   hours.
    #
    # @option params [required, Types::Filters] :filters
    #   The queues, up to 100, or channels, to use to filter the metrics
    #   returned. Metric data is retrieved only for the resources associated
    #   with the queues or channels included in the filter. You can include
    #   both queue IDs and queue ARNs in the same request. Both `VOICE` and
    #   `CHAT` channels are supported.
    #
    # @option params [Array<String>] :groupings
    #   The grouping applied to the metrics returned. For example, when
    #   results are grouped by queue, the metrics returned are grouped by
    #   queue. The values returned apply to the metrics for each queue rather
    #   than aggregated for all queues.
    #
    #   The only supported grouping is `QUEUE`.
    #
    #   If no grouping is specified, a summary of metrics for all queues is
    #   returned.
    #
    # @option params [required, Array<Types::HistoricalMetric>] :historical_metrics
    #   The metrics to retrieve. Specify the name, unit, and statistic for
    #   each metric. The following historical metrics are available. For a
    #   description of each metric, see [Historical Metrics Definitions][1] in
    #   the *Amazon Connect Administrator Guide*.
    #
    #   ABANDON\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   AFTER\_CONTACT\_WORK\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   API\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CALLBACK\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_ABANDONED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_AGENT\_HUNG\_UP\_FIRST
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_CONSULTED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HANDLED\_INCOMING
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HANDLED\_OUTBOUND
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HOLD\_ABANDONS
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_MISSED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_QUEUED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_IN
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_IN\_FROM\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_OUT
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_FROM\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   HANDLE\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   HOLD\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   INTERACTION\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   OCCUPANCY
    #
    #   : Unit: PERCENT
    #
    #     Statistic: AVG
    #
    #   QUEUE\_ANSWER\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   QUEUED\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: MAX
    #
    #   SERVICE\_LEVEL
    #
    #   : Unit: PERCENT
    #
    #     Statistic: AVG
    #
    #     Threshold: Only "Less than" comparisons are supported, with the
    #     following service level thresholds: 15, 20, 25, 30, 45, 60, 90, 120,
    #     180, 240, 300, 600
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::GetMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricDataResponse#next_token #next_token} => String
    #   * {Types::GetMetricDataResponse#metric_results #metric_results} => Array&lt;Types::HistoricalMetricResult&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_data({
    #     instance_id: "InstanceId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       channels: ["VOICE"], # accepts VOICE, CHAT
    #     },
    #     groupings: ["QUEUE"], # accepts QUEUE, CHANNEL
    #     historical_metrics: [ # required
    #       {
    #         name: "CONTACTS_QUEUED", # accepts CONTACTS_QUEUED, CONTACTS_HANDLED, CONTACTS_ABANDONED, CONTACTS_CONSULTED, CONTACTS_AGENT_HUNG_UP_FIRST, CONTACTS_HANDLED_INCOMING, CONTACTS_HANDLED_OUTBOUND, CONTACTS_HOLD_ABANDONS, CONTACTS_TRANSFERRED_IN, CONTACTS_TRANSFERRED_OUT, CONTACTS_TRANSFERRED_IN_FROM_QUEUE, CONTACTS_TRANSFERRED_OUT_FROM_QUEUE, CONTACTS_MISSED, CALLBACK_CONTACTS_HANDLED, API_CONTACTS_HANDLED, OCCUPANCY, HANDLE_TIME, AFTER_CONTACT_WORK_TIME, QUEUED_TIME, ABANDON_TIME, QUEUE_ANSWER_TIME, HOLD_TIME, INTERACTION_TIME, INTERACTION_AND_HOLD_TIME, SERVICE_LEVEL
    #         threshold: {
    #           comparison: "LT", # accepts LT
    #           threshold_value: 1.0,
    #         },
    #         statistic: "SUM", # accepts SUM, MAX, AVG
    #         unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].dimensions.queue.id #=> String
    #   resp.metric_results[0].dimensions.queue.arn #=> String
    #   resp.metric_results[0].dimensions.channel #=> String, one of "VOICE", "CHAT"
    #   resp.metric_results[0].collections #=> Array
    #   resp.metric_results[0].collections[0].metric.name #=> String, one of "CONTACTS_QUEUED", "CONTACTS_HANDLED", "CONTACTS_ABANDONED", "CONTACTS_CONSULTED", "CONTACTS_AGENT_HUNG_UP_FIRST", "CONTACTS_HANDLED_INCOMING", "CONTACTS_HANDLED_OUTBOUND", "CONTACTS_HOLD_ABANDONS", "CONTACTS_TRANSFERRED_IN", "CONTACTS_TRANSFERRED_OUT", "CONTACTS_TRANSFERRED_IN_FROM_QUEUE", "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE", "CONTACTS_MISSED", "CALLBACK_CONTACTS_HANDLED", "API_CONTACTS_HANDLED", "OCCUPANCY", "HANDLE_TIME", "AFTER_CONTACT_WORK_TIME", "QUEUED_TIME", "ABANDON_TIME", "QUEUE_ANSWER_TIME", "HOLD_TIME", "INTERACTION_TIME", "INTERACTION_AND_HOLD_TIME", "SERVICE_LEVEL"
    #   resp.metric_results[0].collections[0].metric.threshold.comparison #=> String, one of "LT"
    #   resp.metric_results[0].collections[0].metric.threshold.threshold_value #=> Float
    #   resp.metric_results[0].collections[0].metric.statistic #=> String, one of "SUM", "MAX", "AVG"
    #   resp.metric_results[0].collections[0].metric.unit #=> String, one of "SECONDS", "COUNT", "PERCENT"
    #   resp.metric_results[0].collections[0].value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetMetricData AWS API Documentation
    #
    # @overload get_metric_data(params = {})
    # @param [Hash] params ({})
    def get_metric_data(params = {}, options = {})
      req = build_request(:get_metric_data, params)
      req.send_request(options)
    end

    # Provides information about the contact flows for the specified Amazon
    # Connect instance.
    #
    # You can also create and update contact flows using the [Amazon Connect
    # Flow language][1].
    #
    # For more information about contact flows, see [Contact Flows][2] in
    # the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [Array<String>] :contact_flow_types
    #   The type of contact flow.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::ListContactFlowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactFlowsResponse#contact_flow_summary_list #contact_flow_summary_list} => Array&lt;Types::ContactFlowSummary&gt;
    #   * {Types::ListContactFlowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_flows({
    #     instance_id: "InstanceId", # required
    #     contact_flow_types: ["CONTACT_FLOW"], # accepts CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_summary_list #=> Array
    #   resp.contact_flow_summary_list[0].id #=> String
    #   resp.contact_flow_summary_list[0].arn #=> String
    #   resp.contact_flow_summary_list[0].name #=> String
    #   resp.contact_flow_summary_list[0].contact_flow_type #=> String, one of "CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactFlows AWS API Documentation
    #
    # @overload list_contact_flows(params = {})
    # @param [Hash] params ({})
    def list_contact_flows(params = {}, options = {})
      req = build_request(:list_contact_flows, params)
      req.send_request(options)
    end

    # Provides information about the hours of operation for the specified
    # Amazon Connect instance.
    #
    # For more information about hours of operation, see [Set the Hours of
    # Operation for a Queue][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::ListHoursOfOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHoursOfOperationsResponse#hours_of_operation_summary_list #hours_of_operation_summary_list} => Array&lt;Types::HoursOfOperationSummary&gt;
    #   * {Types::ListHoursOfOperationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hours_of_operations({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operation_summary_list #=> Array
    #   resp.hours_of_operation_summary_list[0].id #=> String
    #   resp.hours_of_operation_summary_list[0].arn #=> String
    #   resp.hours_of_operation_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListHoursOfOperations AWS API Documentation
    #
    # @overload list_hours_of_operations(params = {})
    # @param [Hash] params ({})
    def list_hours_of_operations(params = {}, options = {})
      req = build_request(:list_hours_of_operations, params)
      req.send_request(options)
    end

    # Provides information about the phone numbers for the specified Amazon
    # Connect instance.
    #
    # For more information about phone numbers, see [Set Up Phone Numbers
    # for Your Contact Center][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [Array<String>] :phone_number_types
    #   The type of phone number.
    #
    # @option params [Array<String>] :phone_number_country_codes
    #   The ISO country code.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::ListPhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumbersResponse#phone_number_summary_list #phone_number_summary_list} => Array&lt;Types::PhoneNumberSummary&gt;
    #   * {Types::ListPhoneNumbersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers({
    #     instance_id: "InstanceId", # required
    #     phone_number_types: ["TOLL_FREE"], # accepts TOLL_FREE, DID
    #     phone_number_country_codes: ["AF"], # accepts AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BA, BW, BR, IO, VG, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CK, CR, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, TL, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, CI, JM, JP, JE, JO, KZ, KE, KI, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, KP, MP, NO, OM, PK, PW, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, CG, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, KR, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TG, TK, TO, TT, TN, TR, TM, TC, TV, VI, UG, UA, AE, GB, US, UY, UZ, VU, VA, VE, VN, WF, EH, YE, ZM, ZW
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_summary_list #=> Array
    #   resp.phone_number_summary_list[0].id #=> String
    #   resp.phone_number_summary_list[0].arn #=> String
    #   resp.phone_number_summary_list[0].phone_number #=> String
    #   resp.phone_number_summary_list[0].phone_number_type #=> String, one of "TOLL_FREE", "DID"
    #   resp.phone_number_summary_list[0].phone_number_country_code #=> String, one of "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPhoneNumbers AWS API Documentation
    #
    # @overload list_phone_numbers(params = {})
    # @param [Hash] params ({})
    def list_phone_numbers(params = {}, options = {})
      req = build_request(:list_phone_numbers, params)
      req.send_request(options)
    end

    # Provides information about the prompts for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListPromptsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPromptsResponse#prompt_summary_list #prompt_summary_list} => Array&lt;Types::PromptSummary&gt;
    #   * {Types::ListPromptsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_prompts({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt_summary_list #=> Array
    #   resp.prompt_summary_list[0].id #=> String
    #   resp.prompt_summary_list[0].arn #=> String
    #   resp.prompt_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPrompts AWS API Documentation
    #
    # @overload list_prompts(params = {})
    # @param [Hash] params ({})
    def list_prompts(params = {}, options = {})
      req = build_request(:list_prompts, params)
      req.send_request(options)
    end

    # Provides information about the queues for the specified Amazon Connect
    # instance.
    #
    # For more information about queues, see [Queues: Standard and Agent][1]
    # in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [Array<String>] :queue_types
    #   The type of queue.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::ListQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueuesResponse#queue_summary_list #queue_summary_list} => Array&lt;Types::QueueSummary&gt;
    #   * {Types::ListQueuesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queues({
    #     instance_id: "InstanceId", # required
    #     queue_types: ["STANDARD"], # accepts STANDARD, AGENT
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_summary_list #=> Array
    #   resp.queue_summary_list[0].id #=> String
    #   resp.queue_summary_list[0].arn #=> String
    #   resp.queue_summary_list[0].name #=> String
    #   resp.queue_summary_list[0].queue_type #=> String, one of "STANDARD", "AGENT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQueues AWS API Documentation
    #
    # @overload list_queues(params = {})
    # @param [Hash] params ({})
    def list_queues(params = {}, options = {})
      req = build_request(:list_queues, params)
      req.send_request(options)
    end

    # List the queues associated with a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::ListRoutingProfileQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutingProfileQueuesResponse#next_token #next_token} => String
    #   * {Types::ListRoutingProfileQueuesResponse#routing_profile_queue_config_summary_list #routing_profile_queue_config_summary_list} => Array&lt;Types::RoutingProfileQueueConfigSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.routing_profile_queue_config_summary_list #=> Array
    #   resp.routing_profile_queue_config_summary_list[0].queue_id #=> String
    #   resp.routing_profile_queue_config_summary_list[0].queue_arn #=> String
    #   resp.routing_profile_queue_config_summary_list[0].queue_name #=> String
    #   resp.routing_profile_queue_config_summary_list[0].priority #=> Integer
    #   resp.routing_profile_queue_config_summary_list[0].delay #=> Integer
    #   resp.routing_profile_queue_config_summary_list[0].channel #=> String, one of "VOICE", "CHAT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfileQueues AWS API Documentation
    #
    # @overload list_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def list_routing_profile_queues(params = {}, options = {})
      req = build_request(:list_routing_profile_queues, params)
      req.send_request(options)
    end

    # Provides summary information about the routing profiles for the
    # specified Amazon Connect instance.
    #
    # For more information about routing profiles, see [Routing Profiles][1]
    # and [Create a Routing Profile][2] in the *Amazon Connect Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::ListRoutingProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutingProfilesResponse#routing_profile_summary_list #routing_profile_summary_list} => Array&lt;Types::RoutingProfileSummary&gt;
    #   * {Types::ListRoutingProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profile_summary_list #=> Array
    #   resp.routing_profile_summary_list[0].id #=> String
    #   resp.routing_profile_summary_list[0].arn #=> String
    #   resp.routing_profile_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfiles AWS API Documentation
    #
    # @overload list_routing_profiles(params = {})
    # @param [Hash] params ({})
    def list_routing_profiles(params = {}, options = {})
      req = build_request(:list_routing_profiles, params)
      req.send_request(options)
    end

    # Provides summary information about the security profiles for the
    # specified Amazon Connect instance.
    #
    # For more information about security profiles, see [Security
    # Profiles][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::ListSecurityProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityProfilesResponse#security_profile_summary_list #security_profile_summary_list} => Array&lt;Types::SecurityProfileSummary&gt;
    #   * {Types::ListSecurityProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_summary_list #=> Array
    #   resp.security_profile_summary_list[0].id #=> String
    #   resp.security_profile_summary_list[0].arn #=> String
    #   resp.security_profile_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfiles AWS API Documentation
    #
    # @overload list_security_profiles(params = {})
    # @param [Hash] params ({})
    def list_security_profiles(params = {}, options = {})
      req = build_request(:list_security_profiles, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # For sample policies that use tags, see [Amazon Connect Identity-Based
    # Policy Examples][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Provides summary information about the hierarchy groups for the
    # specified Amazon Connect instance.
    #
    # For more information about agent hierarchies, see [Set Up Agent
    # Hierarchies][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::ListUserHierarchyGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserHierarchyGroupsResponse#user_hierarchy_group_summary_list #user_hierarchy_group_summary_list} => Array&lt;Types::HierarchyGroupSummary&gt;
    #   * {Types::ListUserHierarchyGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_hierarchy_groups({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_hierarchy_group_summary_list #=> Array
    #   resp.user_hierarchy_group_summary_list[0].id #=> String
    #   resp.user_hierarchy_group_summary_list[0].arn #=> String
    #   resp.user_hierarchy_group_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserHierarchyGroups AWS API Documentation
    #
    # @overload list_user_hierarchy_groups(params = {})
    # @param [Hash] params ({})
    def list_user_hierarchy_groups(params = {}, options = {})
      req = build_request(:list_user_hierarchy_groups, params)
      req.send_request(options)
    end

    # Provides summary information about the users for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximimum number of results to return per page.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#user_summary_list #user_summary_list} => Array&lt;Types::UserSummary&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_summary_list #=> Array
    #   resp.user_summary_list[0].id #=> String
    #   resp.user_summary_list[0].arn #=> String
    #   resp.user_summary_list[0].username #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # When a contact is being recorded, and the recording has been suspended
    # using SuspendContactRecording, this API resumes recording the call.
    #
    # Only voice recordings are supported at this time.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResumeContactRecording AWS API Documentation
    #
    # @overload resume_contact_recording(params = {})
    # @param [Hash] params ({})
    def resume_contact_recording(params = {}, options = {})
      req = build_request(:resume_contact_recording, params)
      req.send_request(options)
    end

    # Initiates a contact flow to start a new chat for the customer.
    # Response of this API provides a token required to obtain credentials
    # from the [CreateParticipantConnection][1] API in the Amazon Connect
    # Participant Service.
    #
    # When a new chat contact is successfully created, clients need to
    # subscribe to the participant’s connection for the created chat within
    # 5 minutes. This is achieved by invoking
    # [CreateParticipantConnection][1] with WEBSOCKET and
    # CONNECTION\_CREDENTIALS.
    #
    # A 429 error occurs in two situations:
    #
    # * API rate limit is exceeded. API TPS throttling returns a
    #   `TooManyRequests` exception from the API Gateway.
    #
    # * The [quota for concurrent active chats][2] is exceeded. Active chat
    #   throttling returns a `LimitExceededException`.
    #
    # For more information about how chat works, see [Chat][3] in the
    # *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/chat.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the contact flow for initiating the chat. To see the
    #   ContactFlowId in the Amazon Connect console user interface, on the
    #   navigation menu go to **Routing**, **Contact Flows**. Choose the
    #   contact flow. On the contact flow page, under the name of the contact
    #   flow, choose **Show additional flow information**. The ContactFlowId
    #   is the last part of the ARN, shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in contact
    #   flows just like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @option params [required, Types::ParticipantDetails] :participant_details
    #   Information identifying the participant.
    #
    # @option params [Types::ChatMessage] :initial_message
    #   The initial message to be sent to the newly created chat.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartChatContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartChatContactResponse#contact_id #contact_id} => String
    #   * {Types::StartChatContactResponse#participant_id #participant_id} => String
    #   * {Types::StartChatContactResponse#participant_token #participant_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_chat_contact({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     participant_details: { # required
    #       display_name: "DisplayName", # required
    #     },
    #     initial_message: {
    #       content_type: "ChatContentType", # required
    #       content: "ChatContent", # required
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #   resp.participant_id #=> String
    #   resp.participant_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartChatContact AWS API Documentation
    #
    # @overload start_chat_contact(params = {})
    # @param [Hash] params ({})
    def start_chat_contact(params = {}, options = {})
      req = build_request(:start_chat_contact, params)
      req.send_request(options)
    end

    # This API starts recording the contact when the agent joins the call.
    # StartContactRecording is a one-time action. For example, if you use
    # StopContactRecording to stop recording an ongoing call, you can't use
    # StartContactRecording to restart it. For scenarios where the recording
    # has started and you want to suspend and resume it, such as when
    # collecting sensitive information (for example, a credit card number),
    # use SuspendContactRecording and ResumeContactRecording.
    #
    # You can use this API to override the recording behavior configured in
    # the [Set recording behavior][1] block.
    #
    # Only voice recordings are supported at this time.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [required, Types::VoiceRecordingConfiguration] :voice_recording_configuration
    #   Who is being recorded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #     voice_recording_configuration: { # required
    #       voice_recording_track: "FROM_AGENT", # accepts FROM_AGENT, TO_AGENT, ALL
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactRecording AWS API Documentation
    #
    # @overload start_contact_recording(params = {})
    # @param [Hash] params ({})
    def start_contact_recording(params = {}, options = {})
      req = build_request(:start_contact_recording, params)
      req.send_request(options)
    end

    # This API places an outbound call to a contact, and then initiates the
    # contact flow. It performs the actions in the contact flow that's
    # specified (in `ContactFlowId`).
    #
    # Agents are not involved in initiating the outbound API (that is,
    # dialing the contact). If the contact flow places an outbound call to a
    # contact, and then puts the contact in queue, that's when the call is
    # routed to the agent, like any other inbound case.
    #
    # There is a 60 second dialing timeout for this operation. If the call
    # is not connected after 60 seconds, it fails.
    #
    # <note markdown="1"> UK numbers with a 447 prefix are not allowed by default. Before you
    # can dial these UK mobile numbers, you must submit a service quota
    # increase request. For more information, see [Amazon Connect Service
    # Quotas][1] in the *Amazon Connect Administrator Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    #
    # @option params [required, String] :destination_phone_number
    #   The phone number of the customer, in E.164 format.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the contact flow for the outbound call. To see the
    #   ContactFlowId in the Amazon Connect console user interface, on the
    #   navigation menu go to **Routing**, **Contact Flows**. Choose the
    #   contact flow. On the contact flow page, under the name of the contact
    #   flow, choose **Show additional flow information**. The ContactFlowId
    #   is the last part of the ARN, shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. The token is valid for 7 days after
    #   creation. If a contact is already started, the contact ID is returned.
    #   If the contact is disconnected, a new contact is started.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :source_phone_number
    #   The phone number associated with the Amazon Connect instance, in E.164
    #   format. If you do not specify a source phone number, you must specify
    #   a queue.
    #
    # @option params [String] :queue_id
    #   The queue for the call. If you specify a queue, the phone displayed
    #   for caller ID is the phone number specified in the queue. If you do
    #   not specify a queue, the queue defined in the contact flow is used. If
    #   you do not specify a queue, you must specify a source phone number.
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in contact
    #   flows just like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @return [Types::StartOutboundVoiceContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOutboundVoiceContactResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_outbound_voice_contact({
    #     destination_phone_number: "PhoneNumber", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken",
    #     source_phone_number: "PhoneNumber",
    #     queue_id: "QueueId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContact AWS API Documentation
    #
    # @overload start_outbound_voice_contact(params = {})
    # @param [Hash] params ({})
    def start_outbound_voice_contact(params = {}, options = {})
      req = build_request(:start_outbound_voice_contact, params)
      req.send_request(options)
    end

    # Ends the specified contact.
    #
    # @option params [required, String] :contact_id
    #   The ID of the contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact({
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContact AWS API Documentation
    #
    # @overload stop_contact(params = {})
    # @param [Hash] params ({})
    def stop_contact(params = {}, options = {})
      req = build_request(:stop_contact, params)
      req.send_request(options)
    end

    # When a contact is being recorded, this API stops recording the call.
    # StopContactRecording is a one-time action. If you use
    # StopContactRecording to stop recording an ongoing call, you can't use
    # StartContactRecording to restart it. For scenarios where the recording
    # has started and you want to suspend it for sensitive information (for
    # example, to collect a credit card number), and then restart it, use
    # SuspendContactRecording and ResumeContactRecording.
    #
    # Only voice recordings are supported at this time.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactRecording AWS API Documentation
    #
    # @overload stop_contact_recording(params = {})
    # @param [Hash] params ({})
    def stop_contact_recording(params = {}, options = {})
      req = build_request(:stop_contact_recording, params)
      req.send_request(options)
    end

    # When a contact is being recorded, this API suspends recording the
    # call. For example, you might suspend the call recording while
    # collecting sensitive information, such as a credit card number. Then
    # use ResumeContactRecording to restart recording.
    #
    # The period of time that the recording is suspended is filled with
    # silence in the final recording.
    #
    # Only voice recordings are supported at this time.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SuspendContactRecording AWS API Documentation
    #
    # @overload suspend_contact_recording(params = {})
    # @param [Hash] params ({})
    def suspend_contact_recording(params = {}, options = {})
      req = build_request(:suspend_contact_recording, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # The supported resource types are users, routing profiles, and contact
    # flows.
    #
    # For sample policies that use tags, see [Amazon Connect Identity-Based
    # Policy Examples][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   One or more tags. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Creates or updates the contact attributes associated with the
    # specified contact.
    #
    # You can add or update attributes for both ongoing and completed
    # contacts. For example, you can update the customer's name or the
    # reason the customer called while the call is active, or add notes
    # about steps that the agent took during the call that are displayed to
    # the next agent that takes the call. You can also update attributes for
    # a contact using data from your CRM application and save the data with
    # the contact in Amazon Connect. You could also flag calls for
    # additional analysis, such as legal review or identifying abusive
    # callers.
    #
    # Contact attributes are available in Amazon Connect for 24 months, and
    # are then deleted.
    #
    # This operation is also available in the Amazon Connect Flow language.
    # See [UpdateContactAttributes][1].
    #
    # **Important:** You cannot use the operation to update attributes for
    # contacts that occurred prior to the release of the API, September 12,
    # 2018. You can update attributes only for contacts that started after
    # the release of the API. If you attempt to update attributes for a
    # contact that occurred prior to the release of the API, a 400 error is
    # returned. This applies also to queued callbacks that were initiated
    # prior to the release of the API but are still active in your instance.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-actions-updatecontactattributes.html
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, Hash<String,String>] :attributes
    #   The Amazon Connect attributes. These attributes can be accessed in
    #   contact flows just like any other contact attributes.
    #
    #   You can have up to 32,768 UTF-8 bytes across all attributes for a
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_attributes({
    #     initial_contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     attributes: { # required
    #       "AttributeName" => "AttributeValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactAttributes AWS API Documentation
    #
    # @overload update_contact_attributes(params = {})
    # @param [Hash] params ({})
    def update_contact_attributes(params = {}, options = {})
      req = build_request(:update_contact_attributes, params)
      req.send_request(options)
    end

    # Updates the specified contact flow.
    #
    # You can also create and update contact flows using the [Amazon Connect
    # Flow language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the contact flow.
    #
    # @option params [required, String] :content
    #   The JSON string that represents contact flow’s content. For an
    #   example, see [Example contact flow in Amazon Connect Flow language][1]
    #   in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/flow-language-example.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_content({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     content: "ContactFlowContent", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowContent AWS API Documentation
    #
    # @overload update_contact_flow_content(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_content(params = {}, options = {})
      req = build_request(:update_contact_flow_content, params)
      req.send_request(options)
    end

    # The name of the contact flow.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the contact flow.
    #
    # @option params [String] :name
    #   The name of the contact flow.
    #
    # @option params [String] :description
    #   The description of the contact flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_name({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     name: "ContactFlowName",
    #     description: "ContactFlowDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowName AWS API Documentation
    #
    # @overload update_contact_flow_name(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_name(params = {}, options = {})
      req = build_request(:update_contact_flow_name, params)
      req.send_request(options)
    end

    # Updates the channels that agents can handle in the Contact Control
    # Panel (CCP) for a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::MediaConcurrency>] :media_concurrencies
    #   The channels agents can handle in the Contact Control Panel (CCP).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_concurrency({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     media_concurrencies: [ # required
    #       {
    #         channel: "VOICE", # required, accepts VOICE, CHAT
    #         concurrency: 1, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileConcurrency AWS API Documentation
    #
    # @overload update_routing_profile_concurrency(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_concurrency(params = {}, options = {})
      req = build_request(:update_routing_profile_concurrency, params)
      req.send_request(options)
    end

    # Updates the default outbound queue of a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, String] :default_outbound_queue_id
    #   The identifier for the default outbound queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_default_outbound_queue({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     default_outbound_queue_id: "QueueId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileDefaultOutboundQueue AWS API Documentation
    #
    # @overload update_routing_profile_default_outbound_queue(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_default_outbound_queue(params = {}, options = {})
      req = build_request(:update_routing_profile_default_outbound_queue, params)
      req.send_request(options)
    end

    # Updates the name and description of a routing profile. The request
    # accepts the following data in JSON format. At least `Name` or
    # `Description` must be provided.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [String] :name
    #   The name of the routing profile. Must not be more than 127 characters.
    #
    # @option params [String] :description
    #   The description of the routing profile. Must not be more than 250
    #   characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_name({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     name: "RoutingProfileName",
    #     description: "RoutingProfileDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileName AWS API Documentation
    #
    # @overload update_routing_profile_name(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_name(params = {}, options = {})
      req = build_request(:update_routing_profile_name, params)
      req.send_request(options)
    end

    # Updates the properties associated with a set of queues for a routing
    # profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   The queues to be updated for this routing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_configs: [ # required
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE", # required, accepts VOICE, CHAT
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileQueues AWS API Documentation
    #
    # @overload update_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_queues(params = {}, options = {})
      req = build_request(:update_routing_profile_queues, params)
      req.send_request(options)
    end

    # Assigns the specified hierarchy group to the specified user.
    #
    # @option params [String] :hierarchy_group_id
    #   The identifier of the hierarchy group.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy({
    #     hierarchy_group_id: "HierarchyGroupId",
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchy AWS API Documentation
    #
    # @overload update_user_hierarchy(params = {})
    # @param [Hash] params ({})
    def update_user_hierarchy(params = {}, options = {})
      req = build_request(:update_user_hierarchy, params)
      req.send_request(options)
    end

    # Updates the identity information for the specified user.
    #
    # Someone with the ability to invoke `UpdateUserIndentityInfo` can
    # change the login credentials of other users by changing their email
    # address. This poses a security risk to your organization. They can
    # change the email address of a user to the attacker's email address,
    # and then reset the password through email. We strongly recommend
    # limiting who has the ability to invoke `UpdateUserIndentityInfo`. For
    # more information, see [Best Practices for Security Profiles][1] in the
    # *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html
    #
    # @option params [required, Types::UserIdentityInfo] :identity_info
    #   The identity information for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_identity_info({
    #     identity_info: { # required
    #       first_name: "AgentFirstName",
    #       last_name: "AgentLastName",
    #       email: "Email",
    #     },
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserIdentityInfo AWS API Documentation
    #
    # @overload update_user_identity_info(params = {})
    # @param [Hash] params ({})
    def update_user_identity_info(params = {}, options = {})
      req = build_request(:update_user_identity_info, params)
      req.send_request(options)
    end

    # Updates the phone configuration settings for the specified user.
    #
    # @option params [required, Types::UserPhoneConfig] :phone_config
    #   Information about phone configuration settings for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_phone_config({
    #     phone_config: { # required
    #       phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: "PhoneNumber",
    #     },
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserPhoneConfig AWS API Documentation
    #
    # @overload update_user_phone_config(params = {})
    # @param [Hash] params ({})
    def update_user_phone_config(params = {}, options = {})
      req = build_request(:update_user_phone_config, params)
      req.send_request(options)
    end

    # Assigns the specified routing profile to the specified user.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_routing_profile({
    #     routing_profile_id: "RoutingProfileId", # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserRoutingProfile AWS API Documentation
    #
    # @overload update_user_routing_profile(params = {})
    # @param [Hash] params ({})
    def update_user_routing_profile(params = {}, options = {})
      req = build_request(:update_user_routing_profile, params)
      req.send_request(options)
    end

    # Assigns the specified security profiles to the specified user.
    #
    # @option params [required, Array<String>] :security_profile_ids
    #   The identifiers of the security profiles for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_security_profiles({
    #     security_profile_ids: ["SecurityProfileId"], # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserSecurityProfiles AWS API Documentation
    #
    # @overload update_user_security_profiles(params = {})
    # @param [Hash] params ({})
    def update_user_security_profiles(params = {}, options = {})
      req = build_request(:update_user_security_profiles, params)
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
      context[:gem_name] = 'aws-sdk-connect'
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
