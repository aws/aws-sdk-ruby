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

Aws::Plugins::GlobalConfiguration.add_identifier(:resourcegroups)

module Aws::ResourceGroups
  # An API client for ResourceGroups.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ResourceGroups::Client.new(
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

    @identifier = :resourcegroups

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

    # Creates a resource group with the specified name and description. You
    # can optionally include a resource query, or a service configuration.
    #
    # @option params [required, String] :name
    #   The name of the group, which is the identifier of the group in other
    #   operations. You can't change the name of a resource group after you
    #   create it. A resource group name can consist of letters, numbers,
    #   hyphens, periods, and underscores. The name cannot start with `AWS` or
    #   `aws`; these are reserved. A resource group name must be unique within
    #   each AWS Region in your AWS account.
    #
    # @option params [String] :description
    #   The description of the resource group. Descriptions can consist of
    #   letters, numbers, hyphens, underscores, periods, and spaces.
    #
    # @option params [Types::ResourceQuery] :resource_query
    #   The resource query that determines which AWS resources are members of
    #   this group.
    #
    #   <note markdown="1"> You can specify either a `ResourceQuery` or a `Configuration`, but not
    #   both.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the group. A tag is key-value pair string.
    #
    # @option params [Array<Types::GroupConfigurationItem>] :configuration
    #   A configuration associates the resource group with an AWS service and
    #   specifies how the service can interact with the resources in the
    #   group. A configuration is an array of GroupConfigurationItem elements.
    #
    #   <note markdown="1"> You can specify either a `Configuration` or a `ResourceQuery` in a
    #   group, but not both.
    #
    #    </note>
    #
    # @return [Types::CreateGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupOutput#group #group} => Types::Group
    #   * {Types::CreateGroupOutput#resource_query #resource_query} => Types::ResourceQuery
    #   * {Types::CreateGroupOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateGroupOutput#group_configuration #group_configuration} => Types::GroupConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     name: "GroupName", # required
    #     description: "Description",
    #     resource_query: {
    #       type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #       query: "Query", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     configuration: [
    #       {
    #         type: "GroupConfigurationType", # required
    #         parameters: [
    #           {
    #             name: "GroupConfigurationParameterName", # required
    #             values: ["GroupConfigurationParameterValue"],
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #   resp.resource_query.type #=> String, one of "TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"
    #   resp.resource_query.query #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.group_configuration.configuration #=> Array
    #   resp.group_configuration.configuration[0].type #=> String
    #   resp.group_configuration.configuration[0].parameters #=> Array
    #   resp.group_configuration.configuration[0].parameters[0].name #=> String
    #   resp.group_configuration.configuration[0].parameters[0].values #=> Array
    #   resp.group_configuration.configuration[0].parameters[0].values[0] #=> String
    #   resp.group_configuration.proposed_configuration #=> Array
    #   resp.group_configuration.proposed_configuration[0].type #=> String
    #   resp.group_configuration.proposed_configuration[0].parameters #=> Array
    #   resp.group_configuration.proposed_configuration[0].parameters[0].name #=> String
    #   resp.group_configuration.proposed_configuration[0].parameters[0].values #=> Array
    #   resp.group_configuration.proposed_configuration[0].parameters[0].values[0] #=> String
    #   resp.group_configuration.status #=> String, one of "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.group_configuration.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Deletes the specified resource group. Deleting a resource group does
    # not delete any resources that are members of the group; it only
    # deletes the group structure.
    #
    # @option params [String] :group_name
    #   Don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group to delete.
    #
    # @return [Types::DeleteGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupOutput#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Returns information about a specified resource group.
    #
    # @option params [String] :group_name
    #   Don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group to retrieve.
    #
    # @return [Types::GetGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupOutput#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Returns the service configuration associated with the specified
    # resource group. AWS Resource Groups supports configurations for the
    # following resource group types:
    #
    # * `AWS::EC2::CapacityReservationPool` - Amazon EC2 capacity
    #   reservation pools. For more information, see [Working with capacity
    #   reservation groups][1] in the *EC2 Users Guide*.
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html#create-cr-group
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group.
    #
    # @return [Types::GetGroupConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupConfigurationOutput#group_configuration #group_configuration} => Types::GroupConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_configuration({
    #     group: "GroupString",
    #   })
    #
    # @example Response structure
    #
    #   resp.group_configuration.configuration #=> Array
    #   resp.group_configuration.configuration[0].type #=> String
    #   resp.group_configuration.configuration[0].parameters #=> Array
    #   resp.group_configuration.configuration[0].parameters[0].name #=> String
    #   resp.group_configuration.configuration[0].parameters[0].values #=> Array
    #   resp.group_configuration.configuration[0].parameters[0].values[0] #=> String
    #   resp.group_configuration.proposed_configuration #=> Array
    #   resp.group_configuration.proposed_configuration[0].type #=> String
    #   resp.group_configuration.proposed_configuration[0].parameters #=> Array
    #   resp.group_configuration.proposed_configuration[0].parameters[0].name #=> String
    #   resp.group_configuration.proposed_configuration[0].parameters[0].values #=> Array
    #   resp.group_configuration.proposed_configuration[0].parameters[0].values[0] #=> String
    #   resp.group_configuration.status #=> String, one of "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.group_configuration.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupConfiguration AWS API Documentation
    #
    # @overload get_group_configuration(params = {})
    # @param [Hash] params ({})
    def get_group_configuration(params = {}, options = {})
      req = build_request(:get_group_configuration, params)
      req.send_request(options)
    end

    # Retrieves the resource query associated with the specified resource
    # group.
    #
    # @option params [String] :group_name
    #   Don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group to query.
    #
    # @return [Types::GetGroupQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupQueryOutput#group_query #group_query} => Types::GroupQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_query({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #   })
    #
    # @example Response structure
    #
    #   resp.group_query.group_name #=> String
    #   resp.group_query.resource_query.type #=> String, one of "TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"
    #   resp.group_query.resource_query.query #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupQuery AWS API Documentation
    #
    # @overload get_group_query(params = {})
    # @param [Hash] params ({})
    def get_group_query(params = {}, options = {})
      req = build_request(:get_group_query, params)
      req.send_request(options)
    end

    # Returns a list of tags that are associated with a resource group,
    # specified by an ARN.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource group whose tags you want to retrieve.
    #
    # @return [Types::GetTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagsOutput#arn #arn} => String
    #   * {Types::GetTagsOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags({
    #     arn: "GroupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetTags AWS API Documentation
    #
    # @overload get_tags(params = {})
    # @param [Hash] params ({})
    def get_tags(params = {}, options = {})
      req = build_request(:get_tags, params)
      req.send_request(options)
    end

    # Adds the specified resources to the specified group.
    #
    # @option params [required, String] :group
    #   The name or the ARN of the resource group to add resources to.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The list of ARNs for resources to be added to the group.
    #
    # @return [Types::GroupResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GroupResourcesOutput#succeeded #succeeded} => Array&lt;String&gt;
    #   * {Types::GroupResourcesOutput#failed #failed} => Array&lt;Types::FailedResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.group_resources({
    #     group: "GroupString", # required
    #     resource_arns: ["ResourceArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.succeeded #=> Array
    #   resp.succeeded[0] #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].resource_arn #=> String
    #   resp.failed[0].error_message #=> String
    #   resp.failed[0].error_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GroupResources AWS API Documentation
    #
    # @overload group_resources(params = {})
    # @param [Hash] params ({})
    def group_resources(params = {}, options = {})
      req = build_request(:group_resources, params)
      req.send_request(options)
    end

    # Returns a list of ARNs of the resources that are members of a
    # specified resource group.
    #
    # @option params [String] :group_name
    #   Don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group
    #
    # @option params [Array<Types::ResourceFilter>] :filters
    #   Filters, formatted as ResourceFilter objects, that you want to apply
    #   to a `ListGroupResources` operation. Filters the results to include
    #   only those of the specified resource types.
    #
    #   * `resource-type` - Filter resources by their type. Specify up to five
    #     resource types in the format `AWS::ServiceCode::ResourceType`. For
    #     example, `AWS::EC2::Instance`, or `AWS::S3::Bucket`.
    #
    #   ^
    #
    #   When you specify a `resource-type` filter for `ListGroupResources`,
    #   AWS Resource Groups validates your filter resource types against the
    #   types that are defined in the query associated with the group. For
    #   example, if a group contains only S3 buckets because its query
    #   specifies only that resource type, but your `resource-type` filter
    #   includes EC2 instances, AWS Resource Groups does not filter for EC2
    #   instances. In this case, a `ListGroupResources` request returns a
    #   `BadRequestException` error with a message similar to the following:
    #
    #   `The resource types specified as filters in the request are not
    #   valid.`
    #
    #   The error includes a list of resource types that failed the validation
    #   because they are not part of the query associated with the group. This
    #   validation doesn't occur when the group query specifies
    #   `AWS::AllSupported`, because a group based on such a query can contain
    #   any of the allowed resource types for the query type (tag-based or AWS
    #   CloudFormation stack-based queries).
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that the service might return fewer results
    #   than the maximum even when there are more results available. You
    #   should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value provided by a previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @return [Types::ListGroupResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupResourcesOutput#resource_identifiers #resource_identifiers} => Array&lt;Types::ResourceIdentifier&gt;
    #   * {Types::ListGroupResourcesOutput#next_token #next_token} => String
    #   * {Types::ListGroupResourcesOutput#query_errors #query_errors} => Array&lt;Types::QueryError&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_resources({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #     filters: [
    #       {
    #         name: "resource-type", # required, accepts resource-type
    #         values: ["ResourceFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_identifiers #=> Array
    #   resp.resource_identifiers[0].resource_arn #=> String
    #   resp.resource_identifiers[0].resource_type #=> String
    #   resp.next_token #=> String
    #   resp.query_errors #=> Array
    #   resp.query_errors[0].error_code #=> String, one of "CLOUDFORMATION_STACK_INACTIVE", "CLOUDFORMATION_STACK_NOT_EXISTING"
    #   resp.query_errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupResources AWS API Documentation
    #
    # @overload list_group_resources(params = {})
    # @param [Hash] params ({})
    def list_group_resources(params = {}, options = {})
      req = build_request(:list_group_resources, params)
      req.send_request(options)
    end

    # Returns a list of existing resource groups in your account.
    #
    # @option params [Array<Types::GroupFilter>] :filters
    #   Filters, formatted as GroupFilter objects, that you want to apply to a
    #   `ListGroups` operation.
    #
    #   * `resource-type` - Filter the results to include only those of the
    #     specified resource types. Specify up to five resource types in the
    #     format `AWS::ServiceCode::ResourceType `. For example,
    #     `AWS::EC2::Instance`, or `AWS::S3::Bucket`.
    #
    #   * `configuration-type` - Filter the results to include only those
    #     groups that have the specified configuration types attached. The
    #     current supported values are:
    #
    #     * AWS:EC2::CapacityReservationPool
    #
    #     ^
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that the service might return fewer results
    #   than the maximum even when there are more results available. You
    #   should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value provided by a previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @return [Types::ListGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsOutput#group_identifiers #group_identifiers} => Array&lt;Types::GroupIdentifier&gt;
    #   * {Types::ListGroupsOutput#groups #groups} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     filters: [
    #       {
    #         name: "resource-type", # required, accepts resource-type, configuration-type
    #         values: ["GroupFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.group_identifiers #=> Array
    #   resp.group_identifiers[0].group_name #=> String
    #   resp.group_identifiers[0].group_arn #=> String
    #   resp.groups #=> Array
    #   resp.groups[0].group_arn #=> String
    #   resp.groups[0].name #=> String
    #   resp.groups[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Returns a list of AWS resource identifiers that matches the specified
    # query. The query uses the same format as a resource query in a
    # CreateGroup or UpdateGroupQuery operation.
    #
    # @option params [required, Types::ResourceQuery] :resource_query
    #   The search query, using the same formats that are supported for
    #   resource group definition. For more information, see CreateGroup.
    #
    # @option params [Integer] :max_results
    #   The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value
    #   that is specific to the operation. If additional items exist beyond
    #   the maximum you specify, the `NextToken` response element is present
    #   and has a value (is not null). Include that value as the `NextToken`
    #   request parameter in the next call to the operation to get the next
    #   part of the results. Note that the service might return fewer results
    #   than the maximum even when there are more results available. You
    #   should check `NextToken` after every operation to ensure that you
    #   receive all of the results.
    #
    # @option params [String] :next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value provided by a previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @return [Types::SearchResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchResourcesOutput#resource_identifiers #resource_identifiers} => Array&lt;Types::ResourceIdentifier&gt;
    #   * {Types::SearchResourcesOutput#next_token #next_token} => String
    #   * {Types::SearchResourcesOutput#query_errors #query_errors} => Array&lt;Types::QueryError&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_resources({
    #     resource_query: { # required
    #       type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #       query: "Query", # required
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_identifiers #=> Array
    #   resp.resource_identifiers[0].resource_arn #=> String
    #   resp.resource_identifiers[0].resource_type #=> String
    #   resp.next_token #=> String
    #   resp.query_errors #=> Array
    #   resp.query_errors[0].error_code #=> String, one of "CLOUDFORMATION_STACK_INACTIVE", "CLOUDFORMATION_STACK_NOT_EXISTING"
    #   resp.query_errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/SearchResources AWS API Documentation
    #
    # @overload search_resources(params = {})
    # @param [Hash] params ({})
    def search_resources(params = {}, options = {})
      req = build_request(:search_resources, params)
      req.send_request(options)
    end

    # Adds tags to a resource group with the specified ARN. Existing tags on
    # a resource group are not changed if they are not specified in the
    # request parameters.
    #
    # Do not store personally identifiable information (PII) or other
    # confidential or sensitive information in tags. We use tags to provide
    # you with billing and administration services. Tags are not intended to
    # be used for private or sensitive data.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource group to which to add tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the specified resource group. A tag is a
    #   string-to-string map of key-value pairs.
    #
    # @return [Types::TagOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagOutput#arn #arn} => String
    #   * {Types::TagOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag({
    #     arn: "GroupArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/Tag AWS API Documentation
    #
    # @overload tag(params = {})
    # @param [Hash] params ({})
    def tag(params = {}, options = {})
      req = build_request(:tag, params)
      req.send_request(options)
    end

    # Removes the specified resources from the specified group.
    #
    # @option params [required, String] :group
    #   The name or the ARN of the resource group from which to remove the
    #   resources.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The ARNs of the resources to be removed from the group.
    #
    # @return [Types::UngroupResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UngroupResourcesOutput#succeeded #succeeded} => Array&lt;String&gt;
    #   * {Types::UngroupResourcesOutput#failed #failed} => Array&lt;Types::FailedResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.ungroup_resources({
    #     group: "GroupString", # required
    #     resource_arns: ["ResourceArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.succeeded #=> Array
    #   resp.succeeded[0] #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].resource_arn #=> String
    #   resp.failed[0].error_message #=> String
    #   resp.failed[0].error_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UngroupResources AWS API Documentation
    #
    # @overload ungroup_resources(params = {})
    # @param [Hash] params ({})
    def ungroup_resources(params = {}, options = {})
      req = build_request(:ungroup_resources, params)
      req.send_request(options)
    end

    # Deletes tags from a specified resource group.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource group from which to remove tags. The command
    #   removed both the specified keys and any values associated with those
    #   keys.
    #
    # @option params [required, Array<String>] :keys
    #   The keys of the tags to be removed.
    #
    # @return [Types::UntagOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagOutput#arn #arn} => String
    #   * {Types::UntagOutput#keys #keys} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag({
    #     arn: "GroupArn", # required
    #     keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.keys #=> Array
    #   resp.keys[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/Untag AWS API Documentation
    #
    # @overload untag(params = {})
    # @param [Hash] params ({})
    def untag(params = {}, options = {})
      req = build_request(:untag, params)
      req.send_request(options)
    end

    # Updates the description for an existing group. You cannot update the
    # name of a resource group.
    #
    # @option params [String] :group_name
    #   Don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group to modify.
    #
    # @option params [String] :description
    #   The new description that you want to update the resource group with.
    #   Descriptions can contain letters, numbers, hyphens, underscores,
    #   periods, and spaces.
    #
    # @return [Types::UpdateGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupOutput#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates the resource query of a group.
    #
    # @option params [String] :group_name
    #   Don't use this parameter. Use `Group` instead.
    #
    # @option params [String] :group
    #   The name or the ARN of the resource group to query.
    #
    # @option params [required, Types::ResourceQuery] :resource_query
    #   The resource query to determine which AWS resources are members of
    #   this resource group.
    #
    # @return [Types::UpdateGroupQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupQueryOutput#group_query #group_query} => Types::GroupQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group_query({
    #     group_name: "GroupName",
    #     group: "GroupString",
    #     resource_query: { # required
    #       type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0
    #       query: "Query", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.group_query.group_name #=> String
    #   resp.group_query.resource_query.type #=> String, one of "TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"
    #   resp.group_query.resource_query.query #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupQuery AWS API Documentation
    #
    # @overload update_group_query(params = {})
    # @param [Hash] params ({})
    def update_group_query(params = {}, options = {})
      req = build_request(:update_group_query, params)
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
      context[:gem_name] = 'aws-sdk-resourcegroups'
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
