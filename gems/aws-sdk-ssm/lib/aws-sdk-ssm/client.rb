# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:ssm)

module Aws::SSM
  # An API client for SSM.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SSM::Client.new(
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

    @identifier = :ssm

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
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::SSM::Plugins::Endpoints)

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
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::SSM::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SSM::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
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
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
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

    # Adds or overwrites one or more tags for the specified resource. *Tags*
    # are metadata that you can assign to your automations, documents,
    # managed nodes, maintenance windows, Parameter Store parameters, and
    # patch baselines. Tags enable you to categorize your resources in
    # different ways, for example, by purpose, owner, or environment. Each
    # tag consists of a key and an optional value, both of which you define.
    # For example, you could define a set of tags for your account's
    # managed nodes that helps you track each node's owner and stack level.
    # For example:
    #
    # * `Key=Owner,Value=DbAdmin`
    #
    # * `Key=Owner,Value=SysAdmin`
    #
    # * `Key=Owner,Value=Dev`
    #
    # * `Key=Stack,Value=Production`
    #
    # * `Key=Stack,Value=Pre-Production`
    #
    # * `Key=Stack,Value=Test`
    #
    # Most resources can have a maximum of 50 tags. Automations can have a
    # maximum of 5 tags.
    #
    # We recommend that you devise a set of tag keys that meets your needs
    # for each resource type. Using a consistent set of tag keys makes it
    # easier for you to manage your resources. You can search and filter the
    # resources based on the tags you add. Tags don't have any semantic
    # meaning to and are interpreted strictly as a string of characters.
    #
    # For more information about using tags with Amazon Elastic Compute
    # Cloud (Amazon EC2) instances, see [Tagging your Amazon EC2
    # resources][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html
    #
    # @option params [required, String] :resource_type
    #   Specifies the type of resource you are tagging.
    #
    #   <note markdown="1"> The `ManagedInstance` type for this API operation is for on-premises
    #   managed nodes. You must specify the name of the managed node in the
    #   following format: `mi-ID_number `. For example, `mi-1a2b3c4d5e6f`.
    #
    #    </note>
    #
    # @option params [required, String] :resource_id
    #   The resource ID you want to tag.
    #
    #   Use the ID of the resource. Here are some examples:
    #
    #   `MaintenanceWindow`: `mw-012345abcde`
    #
    #   `PatchBaseline`: `pb-012345abcde`
    #
    #   `Automation`: `example-c160-4567-8519-012345abcde`
    #
    #   `OpsMetadata` object: `ResourceID` for tagging is created from the
    #   Amazon Resource Name (ARN) for the object. Specifically, `ResourceID`
    #   is created from the strings that come after the word `opsmetadata` in
    #   the ARN. For example, an OpsMetadata object with an ARN of
    #   `arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager`
    #   has a `ResourceID` of either `aws/ssm/MyGroup/appmanager` or
    #   `/aws/ssm/MyGroup/appmanager`.
    #
    #   For the `Document` and `Parameter` values, use the name of the
    #   resource.
    #
    #   `ManagedInstance`: `mi-012345abcde`
    #
    #   <note markdown="1"> The `ManagedInstance` type for this API operation is only for
    #   on-premises managed nodes. You must specify the name of the managed
    #   node in the following format: `mi-ID_number `. For example,
    #   `mi-1a2b3c4d5e6f`.
    #
    #    </note>
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags. The value parameter is required.
    #
    #   Don't enter personally identifiable information in this field.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource({
    #     resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline, OpsItem, OpsMetadata, Automation, Association
    #     resource_id: "ResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AddTagsToResource AWS API Documentation
    #
    # @overload add_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_tags_to_resource(params = {}, options = {})
      req = build_request(:add_tags_to_resource, params)
      req.send_request(options)
    end

    # Associates a related item to a Systems Manager OpsCenter OpsItem. For
    # example, you can associate an Incident Manager incident or analysis
    # with an OpsItem. Incident Manager and OpsCenter are capabilities of
    # Amazon Web Services Systems Manager.
    #
    # @option params [required, String] :ops_item_id
    #   The ID of the OpsItem to which you want to associate a resource as a
    #   related item.
    #
    # @option params [required, String] :association_type
    #   The type of association that you want to create between an OpsItem and
    #   a resource. OpsCenter supports `IsParentOf` and `RelatesTo`
    #   association types.
    #
    # @option params [required, String] :resource_type
    #   The type of resource that you want to associate with an OpsItem.
    #   OpsCenter supports the following types:
    #
    #   `AWS::SSMIncidents::IncidentRecord`: an Incident Manager incident.
    #
    #   `AWS::SSM::Document`: a Systems Manager (SSM) document.
    #
    # @option params [required, String] :resource_uri
    #   The Amazon Resource Name (ARN) of the Amazon Web Services resource
    #   that you want to associate with the OpsItem.
    #
    # @return [Types::AssociateOpsItemRelatedItemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateOpsItemRelatedItemResponse#association_id #association_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_ops_item_related_item({
    #     ops_item_id: "OpsItemId", # required
    #     association_type: "OpsItemRelatedItemAssociationType", # required
    #     resource_type: "OpsItemRelatedItemAssociationResourceType", # required
    #     resource_uri: "OpsItemRelatedItemAssociationResourceUri", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.association_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociateOpsItemRelatedItem AWS API Documentation
    #
    # @overload associate_ops_item_related_item(params = {})
    # @param [Hash] params ({})
    def associate_ops_item_related_item(params = {}, options = {})
      req = build_request(:associate_ops_item_related_item, params)
      req.send_request(options)
    end

    # Attempts to cancel the command specified by the Command ID. There is
    # no guarantee that the command will be terminated and the underlying
    # process stopped.
    #
    # @option params [required, String] :command_id
    #   The ID of the command you want to cancel.
    #
    # @option params [Array<String>] :instance_ids
    #   (Optional) A list of managed node IDs on which you want to cancel the
    #   command. If not provided, the command is canceled on every node on
    #   which it was requested.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_command({
    #     command_id: "CommandId", # required
    #     instance_ids: ["InstanceId"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelCommand AWS API Documentation
    #
    # @overload cancel_command(params = {})
    # @param [Hash] params ({})
    def cancel_command(params = {}, options = {})
      req = build_request(:cancel_command, params)
      req.send_request(options)
    end

    # Stops a maintenance window execution that is already in progress and
    # cancels any tasks in the window that haven't already starting
    # running. Tasks already in progress will continue to completion.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the maintenance window execution to stop.
    #
    # @return [Types::CancelMaintenanceWindowExecutionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelMaintenanceWindowExecutionResult#window_execution_id #window_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_maintenance_window_execution({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelMaintenanceWindowExecution AWS API Documentation
    #
    # @overload cancel_maintenance_window_execution(params = {})
    # @param [Hash] params ({})
    def cancel_maintenance_window_execution(params = {}, options = {})
      req = build_request(:cancel_maintenance_window_execution, params)
      req.send_request(options)
    end

    # Generates an activation code and activation ID you can use to register
    # your on-premises servers, edge devices, or virtual machine (VM) with
    # Amazon Web Services Systems Manager. Registering these machines with
    # Systems Manager makes it possible to manage them using Systems Manager
    # capabilities. You use the activation code and ID when installing SSM
    # Agent on machines in your hybrid environment. For more information
    # about requirements for managing on-premises machines using Systems
    # Manager, see [Setting up Amazon Web Services Systems Manager for
    # hybrid environments][1] in the *Amazon Web Services Systems Manager
    # User Guide*.
    #
    # <note markdown="1"> Amazon Elastic Compute Cloud (Amazon EC2) instances, edge devices, and
    # on-premises servers and VMs that are configured for Systems Manager
    # are all called *managed nodes*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html
    #
    # @option params [String] :description
    #   A user-defined description of the resource that you want to register
    #   with Systems Manager.
    #
    #   Don't enter personally identifiable information in this field.
    #
    # @option params [String] :default_instance_name
    #   The name of the registered, managed node as it will appear in the
    #   Amazon Web Services Systems Manager console or when you use the Amazon
    #   Web Services command line tools to list Systems Manager resources.
    #
    #   Don't enter personally identifiable information in this field.
    #
    # @option params [required, String] :iam_role
    #   The name of the Identity and Access Management (IAM) role that you
    #   want to assign to the managed node. This IAM role must provide
    #   AssumeRole permissions for the Amazon Web Services Systems Manager
    #   service principal `ssm.amazonaws.com`. For more information, see
    #   [Create an IAM service role for a hybrid environment][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #   <note markdown="1"> You can't specify an IAM service-linked role for this parameter. You
    #   must create a unique role.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html
    #
    # @option params [Integer] :registration_limit
    #   Specify the maximum number of managed nodes you want to register. The
    #   default value is `1`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expiration_date
    #   The date by which this activation request should expire, in timestamp
    #   format, such as "2021-07-07T00:00:00". You can specify a date up to
    #   30 days in advance. If you don't provide an expiration date, the
    #   activation code expires in 24 hours.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment. For example, you might want to tag an activation to
    #   identify which servers or virtual machines (VMs) in your on-premises
    #   environment you intend to activate. In this case, you could specify
    #   the following key-value pairs:
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=Environment,Value=Production`
    #
    #   When you install SSM Agent on your on-premises servers and VMs, you
    #   specify an activation ID and code. When you specify the activation ID
    #   and code, tags assigned to the activation are automatically applied to
    #   the on-premises servers or VMs.
    #
    #   You can't add tags to or delete tags from an existing activation. You
    #   can tag your on-premises servers, edge devices, and VMs after they
    #   connect to Systems Manager for the first time and are assigned a
    #   managed node ID. This means they are listed in the Amazon Web Services
    #   Systems Manager console with an ID that is prefixed with "mi-". For
    #   information about how to add tags to your managed nodes, see
    #   AddTagsToResource. For information about how to remove tags from your
    #   managed nodes, see RemoveTagsFromResource.
    #
    # @option params [Array<Types::RegistrationMetadataItem>] :registration_metadata
    #   Reserved for internal use.
    #
    # @return [Types::CreateActivationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateActivationResult#activation_id #activation_id} => String
    #   * {Types::CreateActivationResult#activation_code #activation_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_activation({
    #     description: "ActivationDescription",
    #     default_instance_name: "DefaultInstanceName",
    #     iam_role: "IamRole", # required
    #     registration_limit: 1,
    #     expiration_date: Time.now,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     registration_metadata: [
    #       {
    #         key: "RegistrationMetadataKey", # required
    #         value: "RegistrationMetadataValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.activation_id #=> String
    #   resp.activation_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateActivation AWS API Documentation
    #
    # @overload create_activation(params = {})
    # @param [Hash] params ({})
    def create_activation(params = {}, options = {})
      req = build_request(:create_activation, params)
      req.send_request(options)
    end

    # A State Manager association defines the state that you want to
    # maintain on your managed nodes. For example, an association can
    # specify that anti-virus software must be installed and running on your
    # managed nodes, or that certain ports must be closed. For static
    # targets, the association specifies a schedule for when the
    # configuration is reapplied. For dynamic targets, such as an Amazon Web
    # Services resource group or an Amazon Web Services autoscaling group,
    # State Manager, a capability of Amazon Web Services Systems Manager
    # applies the configuration when new managed nodes are added to the
    # group. The association also specifies actions to take when applying
    # the configuration. For example, an association for anti-virus software
    # might run once a day. If the software isn't installed, then State
    # Manager installs it. If the software is installed, but the service
    # isn't running, then the association might instruct State Manager to
    # start the service.
    #
    # @option params [required, String] :name
    #   The name of the SSM Command document or Automation runbook that
    #   contains the configuration information for the managed node.
    #
    #   You can specify Amazon Web Services-predefined documents, documents
    #   you created, or a document that is shared with you from another Amazon
    #   Web Services account.
    #
    #   For Systems Manager documents (SSM documents) that are shared with you
    #   from other Amazon Web Services accounts, you must specify the complete
    #   SSM document ARN, in the following format:
    #
    #   `arn:partition:ssm:region:account-id:document/document-name `
    #
    #   For example:
    #
    #   `arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document`
    #
    #   For Amazon Web Services-predefined documents and SSM documents you
    #   created in your account, you only need to specify the document name.
    #   For example, `AWS-ApplyPatchBaseline` or `My-Document`.
    #
    # @option params [String] :document_version
    #   The document version you want to associate with the target(s). Can be
    #   a specific version or the default version.
    #
    #   State Manager doesn't support running associations that use a new
    #   version of a document if that document is shared from another account.
    #   State Manager always runs the `default` version of a document if
    #   shared from another account, even though the Systems Manager console
    #   shows that a new version was processed. If you want to run an
    #   association using a new version of a document shared form another
    #   account, you must set the document version to `default`.
    #
    # @option params [String] :instance_id
    #   The managed node ID.
    #
    #   <note markdown="1"> `InstanceId` has been deprecated. To specify a managed node ID for an
    #   association, use the `Targets` parameter. Requests that include the
    #   parameter `InstanceID` with Systems Manager documents (SSM documents)
    #   that use schema version 2.0 or later will fail. In addition, if you
    #   use the parameter `InstanceId`, you can't use the parameters
    #   `AssociationName`, `DocumentVersion`, `MaxErrors`, `MaxConcurrency`,
    #   `OutputLocation`, or `ScheduleExpression`. To use these parameters,
    #   you must use the `Targets` parameter.
    #
    #    </note>
    #
    # @option params [Hash<String,Array>] :parameters
    #   The parameters for the runtime configuration of the document.
    #
    # @option params [Array<Types::Target>] :targets
    #   The targets for the association. You can target managed nodes by using
    #   tags, Amazon Web Services resource groups, all managed nodes in an
    #   Amazon Web Services account, or individual managed node IDs. You can
    #   target all managed nodes in an Amazon Web Services account by
    #   specifying the `InstanceIds` key with a value of `*`. For more
    #   information about choosing targets for an association, see [Using
    #   targets and rate controls with State Manager associations][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html
    #
    # @option params [String] :schedule_expression
    #   A cron expression when the association will be applied to the
    #   target(s).
    #
    # @option params [Types::InstanceAssociationOutputLocation] :output_location
    #   An Amazon Simple Storage Service (Amazon S3) bucket where you want to
    #   store the output details of the request.
    #
    # @option params [String] :association_name
    #   Specify a descriptive name for the association.
    #
    # @option params [String] :automation_target_parameter_name
    #   Choose the parameter that will define how your automation will branch
    #   out. This target is required for associations that use an Automation
    #   runbook and target resources by using rate controls. Automation is a
    #   capability of Amazon Web Services Systems Manager.
    #
    # @option params [String] :max_errors
    #   The number of errors that are allowed before the system stops sending
    #   requests to run the association on additional targets. You can specify
    #   either an absolute number of errors, for example 10, or a percentage
    #   of the target set, for example 10%. If you specify 3, for example, the
    #   system stops sending requests when the fourth error is received. If
    #   you specify 0, then the system stops sending requests after the first
    #   error is returned. If you run an association on 50 managed nodes and
    #   set `MaxError` to 10%, then the system stops sending the request when
    #   the sixth error is received.
    #
    #   Executions that are already running an association when `MaxErrors` is
    #   reached are allowed to complete, but some of these executions may fail
    #   as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set `MaxConcurrency` to 1 so that
    #   executions proceed one at a time.
    #
    # @option params [String] :max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new managed node starts and attempts to run an association while
    #   Systems Manager is running `MaxConcurrency` associations, the
    #   association is allowed to run. During the next association interval,
    #   the new managed node will process its association within the limit
    #   specified for `MaxConcurrency`.
    #
    # @option params [String] :compliance_severity
    #   The severity level to assign to the association.
    #
    # @option params [String] :sync_compliance
    #   The mode for generating association compliance. You can specify `AUTO`
    #   or `MANUAL`. In `AUTO` mode, the system uses the status of the
    #   association execution to determine the compliance status. If the
    #   association execution runs successfully, then the association is
    #   `COMPLIANT`. If the association execution doesn't run successfully,
    #   the association is `NON-COMPLIANT`.
    #
    #   In `MANUAL` mode, you must specify the `AssociationId` as a parameter
    #   for the PutComplianceItems API operation. In this case, compliance
    #   data isn't managed by State Manager. It is managed by your direct
    #   call to the PutComplianceItems API operation.
    #
    #   By default, all associations use `AUTO` mode.
    #
    # @option params [Boolean] :apply_only_at_cron_interval
    #   By default, when you create a new association, the system runs it
    #   immediately after it is created and then according to the schedule you
    #   specified. Specify this option if you don't want an association to
    #   run immediately after you create it. This parameter isn't supported
    #   for rate expressions.
    #
    # @option params [Array<String>] :calendar_names
    #   The names or Amazon Resource Names (ARNs) of the Change Calendar type
    #   documents you want to gate your associations under. The associations
    #   only run when that change calendar is open. For more information, see
    #   [Amazon Web Services Systems Manager Change Calendar][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar
    #
    # @option params [Array<Types::TargetLocation>] :target_locations
    #   A location is a combination of Amazon Web Services Regions and Amazon
    #   Web Services accounts where you want to run the association. Use this
    #   action to create an association in multiple Regions and multiple
    #   accounts.
    #
    # @option params [Integer] :schedule_offset
    #   Number of days to wait after the scheduled day to run an association.
    #   For example, if you specified a cron schedule of `cron(0 0 ? * THU#2
    #   *)`, you could specify an offset of 3 to run the association each
    #   Sunday after the second Thursday of the month. For more information
    #   about cron schedules for associations, see [Reference: Cron and rate
    #   expressions for Systems Manager][1] in the *Amazon Web Services
    #   Systems Manager User Guide*.
    #
    #   <note markdown="1"> To use offsets, you must specify the `ApplyOnlyAtCronInterval`
    #   parameter. This option tells the system not to run an association
    #   immediately after you create it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html
    #
    # @option params [Array<Hash>] :target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps can't be specified together.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Adds or overwrites one or more tags for a State Manager association.
    #   *Tags* are metadata that you can assign to your Amazon Web Services
    #   resources. Tags enable you to categorize your resources in different
    #   ways, for example, by purpose, owner, or environment. Each tag
    #   consists of a key and an optional value, both of which you define.
    #
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   The details for the CloudWatch alarm you want to apply to an
    #   automation or command.
    #
    # @return [Types::CreateAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssociationResult#association_description #association_description} => Types::AssociationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_association({
    #     name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     instance_id: "InstanceId",
    #     parameters: {
    #       "ParameterName" => ["ParameterValue"],
    #     },
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     schedule_expression: "ScheduleExpression",
    #     output_location: {
    #       s3_location: {
    #         output_s3_region: "S3Region",
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #       },
    #     },
    #     association_name: "AssociationName",
    #     automation_target_parameter_name: "AutomationTargetParameterName",
    #     max_errors: "MaxErrors",
    #     max_concurrency: "MaxConcurrency",
    #     compliance_severity: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, UNSPECIFIED
    #     sync_compliance: "AUTO", # accepts AUTO, MANUAL
    #     apply_only_at_cron_interval: false,
    #     calendar_names: ["CalendarNameOrARN"],
    #     target_locations: [
    #       {
    #         accounts: ["Account"],
    #         regions: ["Region"],
    #         target_location_max_concurrency: "MaxConcurrency",
    #         target_location_max_errors: "MaxErrors",
    #         execution_role_name: "ExecutionRoleName",
    #         target_location_alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     schedule_offset: 1,
    #     target_maps: [
    #       {
    #         "TargetMapKey" => ["TargetMapValue"],
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.association_description.name #=> String
    #   resp.association_description.instance_id #=> String
    #   resp.association_description.association_version #=> String
    #   resp.association_description.date #=> Time
    #   resp.association_description.last_update_association_date #=> Time
    #   resp.association_description.status.date #=> Time
    #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
    #   resp.association_description.status.message #=> String
    #   resp.association_description.status.additional_info #=> String
    #   resp.association_description.overview.status #=> String
    #   resp.association_description.overview.detailed_status #=> String
    #   resp.association_description.overview.association_status_aggregated_count #=> Hash
    #   resp.association_description.overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.association_description.document_version #=> String
    #   resp.association_description.automation_target_parameter_name #=> String
    #   resp.association_description.parameters #=> Hash
    #   resp.association_description.parameters["ParameterName"] #=> Array
    #   resp.association_description.parameters["ParameterName"][0] #=> String
    #   resp.association_description.association_id #=> String
    #   resp.association_description.targets #=> Array
    #   resp.association_description.targets[0].key #=> String
    #   resp.association_description.targets[0].values #=> Array
    #   resp.association_description.targets[0].values[0] #=> String
    #   resp.association_description.schedule_expression #=> String
    #   resp.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.association_description.last_execution_date #=> Time
    #   resp.association_description.last_successful_execution_date #=> Time
    #   resp.association_description.association_name #=> String
    #   resp.association_description.max_errors #=> String
    #   resp.association_description.max_concurrency #=> String
    #   resp.association_description.compliance_severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"
    #   resp.association_description.sync_compliance #=> String, one of "AUTO", "MANUAL"
    #   resp.association_description.apply_only_at_cron_interval #=> Boolean
    #   resp.association_description.calendar_names #=> Array
    #   resp.association_description.calendar_names[0] #=> String
    #   resp.association_description.target_locations #=> Array
    #   resp.association_description.target_locations[0].accounts #=> Array
    #   resp.association_description.target_locations[0].accounts[0] #=> String
    #   resp.association_description.target_locations[0].regions #=> Array
    #   resp.association_description.target_locations[0].regions[0] #=> String
    #   resp.association_description.target_locations[0].target_location_max_concurrency #=> String
    #   resp.association_description.target_locations[0].target_location_max_errors #=> String
    #   resp.association_description.target_locations[0].execution_role_name #=> String
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.alarms #=> Array
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.association_description.schedule_offset #=> Integer
    #   resp.association_description.target_maps #=> Array
    #   resp.association_description.target_maps[0] #=> Hash
    #   resp.association_description.target_maps[0]["TargetMapKey"] #=> Array
    #   resp.association_description.target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.association_description.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.association_description.alarm_configuration.alarms #=> Array
    #   resp.association_description.alarm_configuration.alarms[0].name #=> String
    #   resp.association_description.triggered_alarms #=> Array
    #   resp.association_description.triggered_alarms[0].name #=> String
    #   resp.association_description.triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociation AWS API Documentation
    #
    # @overload create_association(params = {})
    # @param [Hash] params ({})
    def create_association(params = {}, options = {})
      req = build_request(:create_association, params)
      req.send_request(options)
    end

    # Associates the specified Amazon Web Services Systems Manager document
    # (SSM document) with the specified managed nodes or targets.
    #
    # When you associate a document with one or more managed nodes using IDs
    # or tags, Amazon Web Services Systems Manager Agent (SSM Agent) running
    # on the managed node processes the document and configures the node as
    # specified.
    #
    # If you associate a document with a managed node that already has an
    # associated document, the system returns the AssociationAlreadyExists
    # exception.
    #
    # @option params [required, Array<Types::CreateAssociationBatchRequestEntry>] :entries
    #   One or more associations.
    #
    # @return [Types::CreateAssociationBatchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssociationBatchResult#successful #successful} => Array&lt;Types::AssociationDescription&gt;
    #   * {Types::CreateAssociationBatchResult#failed #failed} => Array&lt;Types::FailedCreateAssociation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_association_batch({
    #     entries: [ # required
    #       {
    #         name: "DocumentARN", # required
    #         instance_id: "InstanceId",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         automation_target_parameter_name: "AutomationTargetParameterName",
    #         document_version: "DocumentVersion",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         schedule_expression: "ScheduleExpression",
    #         output_location: {
    #           s3_location: {
    #             output_s3_region: "S3Region",
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix",
    #           },
    #         },
    #         association_name: "AssociationName",
    #         max_errors: "MaxErrors",
    #         max_concurrency: "MaxConcurrency",
    #         compliance_severity: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, UNSPECIFIED
    #         sync_compliance: "AUTO", # accepts AUTO, MANUAL
    #         apply_only_at_cron_interval: false,
    #         calendar_names: ["CalendarNameOrARN"],
    #         target_locations: [
    #           {
    #             accounts: ["Account"],
    #             regions: ["Region"],
    #             target_location_max_concurrency: "MaxConcurrency",
    #             target_location_max_errors: "MaxErrors",
    #             execution_role_name: "ExecutionRoleName",
    #             target_location_alarm_configuration: {
    #               ignore_poll_alarm_failure: false,
    #               alarms: [ # required
    #                 {
    #                   name: "AlarmName", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         schedule_offset: 1,
    #         target_maps: [
    #           {
    #             "TargetMapKey" => ["TargetMapValue"],
    #           },
    #         ],
    #         alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful #=> Array
    #   resp.successful[0].name #=> String
    #   resp.successful[0].instance_id #=> String
    #   resp.successful[0].association_version #=> String
    #   resp.successful[0].date #=> Time
    #   resp.successful[0].last_update_association_date #=> Time
    #   resp.successful[0].status.date #=> Time
    #   resp.successful[0].status.name #=> String, one of "Pending", "Success", "Failed"
    #   resp.successful[0].status.message #=> String
    #   resp.successful[0].status.additional_info #=> String
    #   resp.successful[0].overview.status #=> String
    #   resp.successful[0].overview.detailed_status #=> String
    #   resp.successful[0].overview.association_status_aggregated_count #=> Hash
    #   resp.successful[0].overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.successful[0].document_version #=> String
    #   resp.successful[0].automation_target_parameter_name #=> String
    #   resp.successful[0].parameters #=> Hash
    #   resp.successful[0].parameters["ParameterName"] #=> Array
    #   resp.successful[0].parameters["ParameterName"][0] #=> String
    #   resp.successful[0].association_id #=> String
    #   resp.successful[0].targets #=> Array
    #   resp.successful[0].targets[0].key #=> String
    #   resp.successful[0].targets[0].values #=> Array
    #   resp.successful[0].targets[0].values[0] #=> String
    #   resp.successful[0].schedule_expression #=> String
    #   resp.successful[0].output_location.s3_location.output_s3_region #=> String
    #   resp.successful[0].output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.successful[0].output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.successful[0].last_execution_date #=> Time
    #   resp.successful[0].last_successful_execution_date #=> Time
    #   resp.successful[0].association_name #=> String
    #   resp.successful[0].max_errors #=> String
    #   resp.successful[0].max_concurrency #=> String
    #   resp.successful[0].compliance_severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"
    #   resp.successful[0].sync_compliance #=> String, one of "AUTO", "MANUAL"
    #   resp.successful[0].apply_only_at_cron_interval #=> Boolean
    #   resp.successful[0].calendar_names #=> Array
    #   resp.successful[0].calendar_names[0] #=> String
    #   resp.successful[0].target_locations #=> Array
    #   resp.successful[0].target_locations[0].accounts #=> Array
    #   resp.successful[0].target_locations[0].accounts[0] #=> String
    #   resp.successful[0].target_locations[0].regions #=> Array
    #   resp.successful[0].target_locations[0].regions[0] #=> String
    #   resp.successful[0].target_locations[0].target_location_max_concurrency #=> String
    #   resp.successful[0].target_locations[0].target_location_max_errors #=> String
    #   resp.successful[0].target_locations[0].execution_role_name #=> String
    #   resp.successful[0].target_locations[0].target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.successful[0].target_locations[0].target_location_alarm_configuration.alarms #=> Array
    #   resp.successful[0].target_locations[0].target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.successful[0].schedule_offset #=> Integer
    #   resp.successful[0].target_maps #=> Array
    #   resp.successful[0].target_maps[0] #=> Hash
    #   resp.successful[0].target_maps[0]["TargetMapKey"] #=> Array
    #   resp.successful[0].target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.successful[0].alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.successful[0].alarm_configuration.alarms #=> Array
    #   resp.successful[0].alarm_configuration.alarms[0].name #=> String
    #   resp.successful[0].triggered_alarms #=> Array
    #   resp.successful[0].triggered_alarms[0].name #=> String
    #   resp.successful[0].triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #   resp.failed #=> Array
    #   resp.failed[0].entry.name #=> String
    #   resp.failed[0].entry.instance_id #=> String
    #   resp.failed[0].entry.parameters #=> Hash
    #   resp.failed[0].entry.parameters["ParameterName"] #=> Array
    #   resp.failed[0].entry.parameters["ParameterName"][0] #=> String
    #   resp.failed[0].entry.automation_target_parameter_name #=> String
    #   resp.failed[0].entry.document_version #=> String
    #   resp.failed[0].entry.targets #=> Array
    #   resp.failed[0].entry.targets[0].key #=> String
    #   resp.failed[0].entry.targets[0].values #=> Array
    #   resp.failed[0].entry.targets[0].values[0] #=> String
    #   resp.failed[0].entry.schedule_expression #=> String
    #   resp.failed[0].entry.output_location.s3_location.output_s3_region #=> String
    #   resp.failed[0].entry.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.failed[0].entry.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.failed[0].entry.association_name #=> String
    #   resp.failed[0].entry.max_errors #=> String
    #   resp.failed[0].entry.max_concurrency #=> String
    #   resp.failed[0].entry.compliance_severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"
    #   resp.failed[0].entry.sync_compliance #=> String, one of "AUTO", "MANUAL"
    #   resp.failed[0].entry.apply_only_at_cron_interval #=> Boolean
    #   resp.failed[0].entry.calendar_names #=> Array
    #   resp.failed[0].entry.calendar_names[0] #=> String
    #   resp.failed[0].entry.target_locations #=> Array
    #   resp.failed[0].entry.target_locations[0].accounts #=> Array
    #   resp.failed[0].entry.target_locations[0].accounts[0] #=> String
    #   resp.failed[0].entry.target_locations[0].regions #=> Array
    #   resp.failed[0].entry.target_locations[0].regions[0] #=> String
    #   resp.failed[0].entry.target_locations[0].target_location_max_concurrency #=> String
    #   resp.failed[0].entry.target_locations[0].target_location_max_errors #=> String
    #   resp.failed[0].entry.target_locations[0].execution_role_name #=> String
    #   resp.failed[0].entry.target_locations[0].target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.failed[0].entry.target_locations[0].target_location_alarm_configuration.alarms #=> Array
    #   resp.failed[0].entry.target_locations[0].target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.failed[0].entry.schedule_offset #=> Integer
    #   resp.failed[0].entry.target_maps #=> Array
    #   resp.failed[0].entry.target_maps[0] #=> Hash
    #   resp.failed[0].entry.target_maps[0]["TargetMapKey"] #=> Array
    #   resp.failed[0].entry.target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.failed[0].entry.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.failed[0].entry.alarm_configuration.alarms #=> Array
    #   resp.failed[0].entry.alarm_configuration.alarms[0].name #=> String
    #   resp.failed[0].message #=> String
    #   resp.failed[0].fault #=> String, one of "Client", "Server", "Unknown"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociationBatch AWS API Documentation
    #
    # @overload create_association_batch(params = {})
    # @param [Hash] params ({})
    def create_association_batch(params = {}, options = {})
      req = build_request(:create_association_batch, params)
      req.send_request(options)
    end

    # Creates a Amazon Web Services Systems Manager (SSM document). An SSM
    # document defines the actions that Systems Manager performs on your
    # managed nodes. For more information about SSM documents, including
    # information about supported schemas, features, and syntax, see [Amazon
    # Web Services Systems Manager Documents][1] in the *Amazon Web Services
    # Systems Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-ssm-docs.html
    #
    # @option params [required, String] :content
    #   The content for the new SSM document in JSON or YAML format. The
    #   content of the document must not exceed 64KB. This quota also includes
    #   the content specified for input parameters at runtime. We recommend
    #   storing the contents for your new document in an external JSON or YAML
    #   file and referencing the file in a command.
    #
    #   For examples, see the following topics in the *Amazon Web Services
    #   Systems Manager User Guide*.
    #
    #   * [Create an SSM document (Amazon Web Services API)][1]
    #
    #   * [Create an SSM document (Amazon Web Services CLI)][2]
    #
    #   * [Create an SSM document (API)][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-cli.html
    #
    # @option params [Array<Types::DocumentRequires>] :requires
    #   A list of SSM documents required by a document. This parameter is used
    #   exclusively by AppConfig. When a user creates an AppConfig
    #   configuration in an SSM document, the user must also specify a
    #   required document for validation purposes. In this case, an
    #   `ApplicationConfiguration` document requires an
    #   `ApplicationConfigurationSchema` document for validation purposes. For
    #   more information, see [What is AppConfig?][1] in the *AppConfig User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html
    #
    # @option params [Array<Types::AttachmentsSource>] :attachments
    #   A list of key-value pairs that describe attachments to a version of a
    #   document.
    #
    # @option params [required, String] :name
    #   A name for the SSM document.
    #
    #   You can't use the following strings as document name prefixes. These
    #   are reserved by Amazon Web Services for use as document name prefixes:
    #
    #    * `aws`
    #
    #   * `amazon`
    #
    #   * `amzn`
    #
    # @option params [String] :display_name
    #   An optional field where you can specify a friendly name for the SSM
    #   document. This value can differ for each version of the document. You
    #   can update this value at a later time using the UpdateDocument
    #   operation.
    #
    # @option params [String] :version_name
    #   An optional field specifying the version of the artifact you are
    #   creating with the document. For example, `Release12.1`. This value is
    #   unique across all versions of a document, and can't be changed.
    #
    # @option params [String] :document_type
    #   The type of document to create.
    #
    #   <note markdown="1"> The `DeploymentStrategy` document type is an internal-use-only
    #   document type reserved for AppConfig.
    #
    #    </note>
    #
    # @option params [String] :document_format
    #   Specify the document format for the request. The document format can
    #   be JSON, YAML, or TEXT. JSON is the default format.
    #
    # @option params [String] :target_type
    #   Specify a target type to define the kinds of resources the document
    #   can run on. For example, to run a document on EC2 instances, specify
    #   the following value: `/AWS::EC2::Instance`. If you specify a value of
    #   '/' the document can run on all types of resources. If you don't
    #   specify a value, the document can't run on any resources. For a list
    #   of valid resource types, see [Amazon Web Services resource and
    #   property types reference][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment. For example, you might want to tag an SSM document to
    #   identify the types of targets or the environment where it will run. In
    #   this case, you could specify the following key-value pairs:
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=Environment,Value=Production`
    #
    #   <note markdown="1"> To add tags to an existing SSM document, use the AddTagsToResource
    #   operation.
    #
    #    </note>
    #
    # @return [Types::CreateDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDocumentResult#document_description #document_description} => Types::DocumentDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_document({
    #     content: "DocumentContent", # required
    #     requires: [
    #       {
    #         name: "DocumentARN", # required
    #         version: "DocumentVersion",
    #         require_type: "RequireType",
    #         version_name: "DocumentVersionName",
    #       },
    #     ],
    #     attachments: [
    #       {
    #         key: "SourceUrl", # accepts SourceUrl, S3FileUrl, AttachmentReference
    #         values: ["AttachmentsSourceValue"],
    #         name: "AttachmentIdentifier",
    #       },
    #     ],
    #     name: "DocumentName", # required
    #     display_name: "DocumentDisplayName",
    #     version_name: "DocumentVersionName",
    #     document_type: "Command", # accepts Command, Policy, Automation, Session, Package, ApplicationConfiguration, ApplicationConfigurationSchema, DeploymentStrategy, ChangeCalendar, Automation.ChangeTemplate, ProblemAnalysis, ProblemAnalysisTemplate, CloudFormation, ConformancePackTemplate, QuickSetup
    #     document_format: "YAML", # accepts YAML, JSON, TEXT
    #     target_type: "TargetType",
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
    #   resp.document_description.sha_1 #=> String
    #   resp.document_description.hash #=> String
    #   resp.document_description.hash_type #=> String, one of "Sha256", "Sha1"
    #   resp.document_description.name #=> String
    #   resp.document_description.display_name #=> String
    #   resp.document_description.version_name #=> String
    #   resp.document_description.owner #=> String
    #   resp.document_description.created_date #=> Time
    #   resp.document_description.status #=> String, one of "Creating", "Active", "Updating", "Deleting", "Failed"
    #   resp.document_description.status_information #=> String
    #   resp.document_description.document_version #=> String
    #   resp.document_description.description #=> String
    #   resp.document_description.parameters #=> Array
    #   resp.document_description.parameters[0].name #=> String
    #   resp.document_description.parameters[0].type #=> String, one of "String", "StringList"
    #   resp.document_description.parameters[0].description #=> String
    #   resp.document_description.parameters[0].default_value #=> String
    #   resp.document_description.platform_types #=> Array
    #   resp.document_description.platform_types[0] #=> String, one of "Windows", "Linux", "MacOS"
    #   resp.document_description.document_type #=> String, one of "Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup"
    #   resp.document_description.schema_version #=> String
    #   resp.document_description.latest_version #=> String
    #   resp.document_description.default_version #=> String
    #   resp.document_description.document_format #=> String, one of "YAML", "JSON", "TEXT"
    #   resp.document_description.target_type #=> String
    #   resp.document_description.tags #=> Array
    #   resp.document_description.tags[0].key #=> String
    #   resp.document_description.tags[0].value #=> String
    #   resp.document_description.attachments_information #=> Array
    #   resp.document_description.attachments_information[0].name #=> String
    #   resp.document_description.requires #=> Array
    #   resp.document_description.requires[0].name #=> String
    #   resp.document_description.requires[0].version #=> String
    #   resp.document_description.requires[0].require_type #=> String
    #   resp.document_description.requires[0].version_name #=> String
    #   resp.document_description.author #=> String
    #   resp.document_description.review_information #=> Array
    #   resp.document_description.review_information[0].reviewed_time #=> Time
    #   resp.document_description.review_information[0].status #=> String, one of "APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"
    #   resp.document_description.review_information[0].reviewer #=> String
    #   resp.document_description.approved_version #=> String
    #   resp.document_description.pending_review_version #=> String
    #   resp.document_description.review_status #=> String, one of "APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"
    #   resp.document_description.category #=> Array
    #   resp.document_description.category[0] #=> String
    #   resp.document_description.category_enum #=> Array
    #   resp.document_description.category_enum[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateDocument AWS API Documentation
    #
    # @overload create_document(params = {})
    # @param [Hash] params ({})
    def create_document(params = {}, options = {})
      req = build_request(:create_document, params)
      req.send_request(options)
    end

    # Creates a new maintenance window.
    #
    # <note markdown="1"> The value you specify for `Duration` determines the specific end time
    # for the maintenance window based on the time it begins. No maintenance
    # window tasks are permitted to start after the resulting endtime minus
    # the number of hours you specify for `Cutoff`. For example, if the
    # maintenance window starts at 3 PM, the duration is three hours, and
    # the value you specify for `Cutoff` is one hour, no maintenance window
    # tasks can start after 5 PM.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the maintenance window.
    #
    # @option params [String] :description
    #   An optional description for the maintenance window. We recommend
    #   specifying a description to help you organize your maintenance
    #   windows.
    #
    # @option params [String] :start_date
    #   The date and time, in ISO-8601 Extended format, for when you want the
    #   maintenance window to become active. `StartDate` allows you to delay
    #   activation of the maintenance window until the specified future date.
    #
    # @option params [String] :end_date
    #   The date and time, in ISO-8601 Extended format, for when you want the
    #   maintenance window to become inactive. `EndDate` allows you to set a
    #   date and time in the future when the maintenance window will no longer
    #   run.
    #
    # @option params [required, String] :schedule
    #   The schedule of the maintenance window in the form of a cron or rate
    #   expression.
    #
    # @option params [String] :schedule_timezone
    #   The time zone that the scheduled maintenance window executions are
    #   based on, in Internet Assigned Numbers Authority (IANA) format. For
    #   example: "America/Los\_Angeles", "UTC", or "Asia/Seoul". For
    #   more information, see the [Time Zone Database][1] on the IANA website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #
    # @option params [Integer] :schedule_offset
    #   The number of days to wait after the date and time specified by a cron
    #   expression before running the maintenance window.
    #
    #   For example, the following cron expression schedules a maintenance
    #   window to run on the third Tuesday of every month at 11:30 PM.
    #
    #   `cron(30 23 ? * TUE#3 *)`
    #
    #   If the schedule offset is `2`, the maintenance window won't run until
    #   two days later.
    #
    # @option params [required, Integer] :duration
    #   The duration of the maintenance window in hours.
    #
    # @option params [required, Integer] :cutoff
    #   The number of hours before the end of the maintenance window that
    #   Amazon Web Services Systems Manager stops scheduling new tasks for
    #   execution.
    #
    # @option params [required, Boolean] :allow_unassociated_targets
    #   Enables a maintenance window task to run on managed nodes, even if you
    #   haven't registered those nodes as targets. If enabled, then you must
    #   specify the unregistered managed nodes (by node ID) when you register
    #   a task with the maintenance window.
    #
    #   If you don't enable this option, then you must specify
    #   previously-registered targets when you register a task with the
    #   maintenance window.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment. For example, you might want to tag a maintenance window
    #   to identify the type of tasks it will run, the types of targets, and
    #   the environment it will run in. In this case, you could specify the
    #   following key-value pairs:
    #
    #   * `Key=TaskType,Value=AgentUpdate`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=Environment,Value=Production`
    #
    #   <note markdown="1"> To add tags to an existing maintenance window, use the
    #   AddTagsToResource operation.
    #
    #    </note>
    #
    # @return [Types::CreateMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMaintenanceWindowResult#window_id #window_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_maintenance_window({
    #     name: "MaintenanceWindowName", # required
    #     description: "MaintenanceWindowDescription",
    #     start_date: "MaintenanceWindowStringDateTime",
    #     end_date: "MaintenanceWindowStringDateTime",
    #     schedule: "MaintenanceWindowSchedule", # required
    #     schedule_timezone: "MaintenanceWindowTimezone",
    #     schedule_offset: 1,
    #     duration: 1, # required
    #     cutoff: 1, # required
    #     allow_unassociated_targets: false, # required
    #     client_token: "ClientToken",
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
    #   resp.window_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateMaintenanceWindow AWS API Documentation
    #
    # @overload create_maintenance_window(params = {})
    # @param [Hash] params ({})
    def create_maintenance_window(params = {}, options = {})
      req = build_request(:create_maintenance_window, params)
      req.send_request(options)
    end

    # Creates a new OpsItem. You must have permission in Identity and Access
    # Management (IAM) to create a new OpsItem. For more information, see
    # [Getting started with OpsCenter][1] in the *Amazon Web Services
    # Systems Manager User Guide*.
    #
    # Operations engineers and IT professionals use Amazon Web Services
    # Systems Manager OpsCenter to view, investigate, and remediate
    # operational issues impacting the performance and health of their
    # Amazon Web Services resources. For more information, see [Amazon Web
    # Services Systems Manager OpsCenter][2] in the *Amazon Web Services
    # Systems Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html
    # [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html
    #
    # @option params [required, String] :description
    #   Information about the OpsItem.
    #
    # @option params [String] :ops_item_type
    #   The type of OpsItem to create. Systems Manager supports the following
    #   types of OpsItems:
    #
    #   * `/aws/issue`
    #
    #     This type of OpsItem is used for default OpsItems created by
    #     OpsCenter.
    #
    #   * `/aws/changerequest`
    #
    #     This type of OpsItem is used by Change Manager for reviewing and
    #     approving or rejecting change requests.
    #
    #   * `/aws/insights`
    #
    #     This type of OpsItem is used by OpsCenter for aggregating and
    #     reporting on duplicate OpsItems.
    #
    # @option params [Hash<String,Types::OpsItemDataValue>] :operational_data
    #   Operational data is custom data that provides useful reference details
    #   about the OpsItem. For example, you can specify log files, error
    #   strings, license keys, troubleshooting tips, or other relevant data.
    #   You enter operational data as key-value pairs. The key has a maximum
    #   length of 128 characters. The value has a maximum size of 20 KB.
    #
    #   Operational data keys *can't* begin with the following: `amazon`,
    #   `aws`, `amzn`, `ssm`, `/amazon`, `/aws`, `/amzn`, `/ssm`.
    #
    #   You can choose to make the data searchable by other users in the
    #   account or you can restrict search access. Searchable data means that
    #   all users with access to the OpsItem Overview page (as provided by the
    #   DescribeOpsItems API operation) can view and search on the specified
    #   data. Operational data that isn't searchable is only viewable by
    #   users who have access to the OpsItem (as provided by the GetOpsItem
    #   API operation).
    #
    #   Use the `/aws/resources` key in OperationalData to specify a related
    #   resource in the request. Use the `/aws/automations` key in
    #   OperationalData to associate an Automation runbook with the OpsItem.
    #   To view Amazon Web Services CLI example commands that use these keys,
    #   see [Creating OpsItems manually][1] in the *Amazon Web Services
    #   Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems
    #
    # @option params [Array<Types::OpsItemNotification>] :notifications
    #   The Amazon Resource Name (ARN) of an SNS topic where notifications are
    #   sent when this OpsItem is edited or changed.
    #
    # @option params [Integer] :priority
    #   The importance of this OpsItem in relation to other OpsItems in the
    #   system.
    #
    # @option params [Array<Types::RelatedOpsItem>] :related_ops_items
    #   One or more OpsItems that share something in common with the current
    #   OpsItems. For example, related OpsItems can include OpsItems with
    #   similar error messages, impacted resources, or statuses for the
    #   impacted resource.
    #
    # @option params [required, String] :source
    #   The origin of the OpsItem, such as Amazon EC2 or Systems Manager.
    #
    #   <note markdown="1"> The source name can't contain the following strings: `aws`, `amazon`,
    #   and `amzn`.
    #
    #    </note>
    #
    # @option params [required, String] :title
    #   A short heading that describes the nature of the OpsItem and the
    #   impacted resource.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata that you assign to a resource. You can restrict
    #   access to OpsItems by using an inline IAM policy that specifies tags.
    #   For more information, see [Getting started with OpsCenter][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #   Tags use a key-value pair. For example:
    #
    #   `Key=Department,Value=Finance`
    #
    #   To add tags to a new OpsItem, a user must have IAM permissions for
    #   both the `ssm:CreateOpsItems` operation and the
    #   `ssm:AddTagsToResource` operation. To add tags to an existing OpsItem,
    #   use the AddTagsToResource operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html#OpsCenter-getting-started-user-permissions
    #
    # @option params [String] :category
    #   Specify a category to assign to an OpsItem.
    #
    # @option params [String] :severity
    #   Specify a severity to assign to an OpsItem.
    #
    # @option params [Time,DateTime,Date,Integer,String] :actual_start_time
    #   The time a runbook workflow started. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :actual_end_time
    #   The time a runbook workflow ended. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :planned_start_time
    #   The time specified in a change request for a runbook workflow to
    #   start. Currently supported only for the OpsItem type
    #   `/aws/changerequest`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :planned_end_time
    #   The time specified in a change request for a runbook workflow to end.
    #   Currently supported only for the OpsItem type `/aws/changerequest`.
    #
    # @option params [String] :account_id
    #   The target Amazon Web Services account where you want to create an
    #   OpsItem. To make this call, your account must be configured to work
    #   with OpsItems across accounts. For more information, see [Setting up
    #   OpsCenter to work with OpsItems across accounts][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-OpsCenter-multiple-accounts.html
    #
    # @return [Types::CreateOpsItemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOpsItemResponse#ops_item_id #ops_item_id} => String
    #   * {Types::CreateOpsItemResponse#ops_item_arn #ops_item_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ops_item({
    #     description: "OpsItemDescription", # required
    #     ops_item_type: "OpsItemType",
    #     operational_data: {
    #       "OpsItemDataKey" => {
    #         value: "OpsItemDataValueString",
    #         type: "SearchableString", # accepts SearchableString, String
    #       },
    #     },
    #     notifications: [
    #       {
    #         arn: "String",
    #       },
    #     ],
    #     priority: 1,
    #     related_ops_items: [
    #       {
    #         ops_item_id: "String", # required
    #       },
    #     ],
    #     source: "OpsItemSource", # required
    #     title: "OpsItemTitle", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     category: "OpsItemCategory",
    #     severity: "OpsItemSeverity",
    #     actual_start_time: Time.now,
    #     actual_end_time: Time.now,
    #     planned_start_time: Time.now,
    #     planned_end_time: Time.now,
    #     account_id: "OpsItemAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.ops_item_id #=> String
    #   resp.ops_item_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateOpsItem AWS API Documentation
    #
    # @overload create_ops_item(params = {})
    # @param [Hash] params ({})
    def create_ops_item(params = {}, options = {})
      req = build_request(:create_ops_item, params)
      req.send_request(options)
    end

    # If you create a new application in Application Manager, Amazon Web
    # Services Systems Manager calls this API operation to specify
    # information about the new application, including the application type.
    #
    # @option params [required, String] :resource_id
    #   A resource ID for a new Application Manager application.
    #
    # @option params [Hash<String,Types::MetadataValue>] :metadata
    #   Metadata for a new Application Manager application.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata that you assign to a resource. You can specify a
    #   maximum of five tags for an OpsMetadata object. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment. For example, you might want to tag an OpsMetadata object
    #   to identify an environment or target Amazon Web Services Region. In
    #   this case, you could specify the following key-value pairs:
    #
    #   * `Key=Environment,Value=Production`
    #
    #   * `Key=Region,Value=us-east-2`
    #
    # @return [Types::CreateOpsMetadataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOpsMetadataResult#ops_metadata_arn #ops_metadata_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ops_metadata({
    #     resource_id: "OpsMetadataResourceId", # required
    #     metadata: {
    #       "MetadataKey" => {
    #         value: "MetadataValueString",
    #       },
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
    #   resp.ops_metadata_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateOpsMetadata AWS API Documentation
    #
    # @overload create_ops_metadata(params = {})
    # @param [Hash] params ({})
    def create_ops_metadata(params = {}, options = {})
      req = build_request(:create_ops_metadata, params)
      req.send_request(options)
    end

    # Creates a patch baseline.
    #
    # <note markdown="1"> For information about valid key-value pairs in `PatchFilters` for each
    # supported operating system type, see PatchFilter.
    #
    #  </note>
    #
    # @option params [String] :operating_system
    #   Defines the operating system the patch baseline applies to. The
    #   default value is `WINDOWS`.
    #
    # @option params [required, String] :name
    #   The name of the patch baseline.
    #
    # @option params [Types::PatchFilterGroup] :global_filters
    #   A set of global filters used to include patches in the baseline.
    #
    # @option params [Types::PatchRuleGroup] :approval_rules
    #   A set of rules used to include patches in the baseline.
    #
    # @option params [Array<String>] :approved_patches
    #   A list of explicitly approved patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [About package name formats for approved and
    #   rejected patch lists][1] in the *Amazon Web Services Systems Manager
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #
    # @option params [String] :approved_patches_compliance_level
    #   Defines the compliance level for approved patches. When an approved
    #   patch is reported as missing, this value describes the severity of the
    #   compliance violation. The default value is `UNSPECIFIED`.
    #
    # @option params [Boolean] :approved_patches_enable_non_security
    #   Indicates whether the list of approved patches includes non-security
    #   updates that should be applied to the managed nodes. The default value
    #   is `false`. Applies to Linux managed nodes only.
    #
    # @option params [Array<String>] :rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [About package name formats for approved and
    #   rejected patch lists][1] in the *Amazon Web Services Systems Manager
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #
    # @option params [String] :rejected_patches_action
    #   The action for Patch Manager to take on patches included in the
    #   `RejectedPackages` list.
    #
    #   * <b> <code>ALLOW_AS_DEPENDENCY</code> </b>: A package in the
    #     `Rejected` patches list is installed only if it is a dependency of
    #     another package. It is considered compliant with the patch baseline,
    #     and its status is reported as `InstalledOther`. This is the default
    #     action if no option is specified.
    #
    #   * <b> <code>BLOCK</code> </b>: Packages in the `RejectedPatches` list,
    #     and packages that include them as dependencies, aren't installed
    #     under any circumstances. If a package was installed before it was
    #     added to the Rejected patches list, it is considered non-compliant
    #     with the patch baseline, and its status is reported as
    #     `InstalledRejected`.
    #
    # @option params [String] :description
    #   A description of the patch baseline.
    #
    # @option params [Array<Types::PatchSource>] :sources
    #   Information about the patches to use to update the managed nodes,
    #   including target operating systems and source repositories. Applies to
    #   Linux managed nodes only.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment. For example, you might want to tag a patch baseline to
    #   identify the severity level of patches it specifies and the operating
    #   system family it applies to. In this case, you could specify the
    #   following key-value pairs:
    #
    #   * `Key=PatchSeverity,Value=Critical`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   <note markdown="1"> To add tags to an existing patch baseline, use the AddTagsToResource
    #   operation.
    #
    #    </note>
    #
    # @return [Types::CreatePatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePatchBaselineResult#baseline_id #baseline_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_patch_baseline({
    #     operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, AMAZON_LINUX_2022, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN, MACOS, RASPBIAN, ROCKY_LINUX, ALMA_LINUX, AMAZON_LINUX_2023
    #     name: "BaselineName", # required
    #     global_filters: {
    #       patch_filters: [ # required
    #         {
    #           key: "ARCH", # required, accepts ARCH, ADVISORY_ID, BUGZILLA_ID, PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, CVE_ID, EPOCH, MSRC_SEVERITY, NAME, PATCH_ID, SECTION, PRIORITY, REPOSITORY, RELEASE, SEVERITY, SECURITY, VERSION
    #           values: ["PatchFilterValue"], # required
    #         },
    #       ],
    #     },
    #     approval_rules: {
    #       patch_rules: [ # required
    #         {
    #           patch_filter_group: { # required
    #             patch_filters: [ # required
    #               {
    #                 key: "ARCH", # required, accepts ARCH, ADVISORY_ID, BUGZILLA_ID, PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, CVE_ID, EPOCH, MSRC_SEVERITY, NAME, PATCH_ID, SECTION, PRIORITY, REPOSITORY, RELEASE, SEVERITY, SECURITY, VERSION
    #                 values: ["PatchFilterValue"], # required
    #               },
    #             ],
    #           },
    #           compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #           approve_after_days: 1,
    #           approve_until_date: "PatchStringDateTime",
    #           enable_non_security: false,
    #         },
    #       ],
    #     },
    #     approved_patches: ["PatchId"],
    #     approved_patches_compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #     approved_patches_enable_non_security: false,
    #     rejected_patches: ["PatchId"],
    #     rejected_patches_action: "ALLOW_AS_DEPENDENCY", # accepts ALLOW_AS_DEPENDENCY, BLOCK
    #     description: "BaselineDescription",
    #     sources: [
    #       {
    #         name: "PatchSourceName", # required
    #         products: ["PatchSourceProduct"], # required
    #         configuration: "PatchSourceConfiguration", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
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
    #   resp.baseline_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreatePatchBaseline AWS API Documentation
    #
    # @overload create_patch_baseline(params = {})
    # @param [Hash] params ({})
    def create_patch_baseline(params = {}, options = {})
      req = build_request(:create_patch_baseline, params)
      req.send_request(options)
    end

    # A resource data sync helps you view data from multiple sources in a
    # single location. Amazon Web Services Systems Manager offers two types
    # of resource data sync: `SyncToDestination` and `SyncFromSource`.
    #
    # You can configure Systems Manager Inventory to use the
    # `SyncToDestination` type to synchronize Inventory data from multiple
    # Amazon Web Services Regions to a single Amazon Simple Storage Service
    # (Amazon S3) bucket. For more information, see [Configuring resource
    # data sync for Inventory][1] in the *Amazon Web Services Systems
    # Manager User Guide*.
    #
    # You can configure Systems Manager Explorer to use the `SyncFromSource`
    # type to synchronize operational work items (OpsItems) and operational
    # data (OpsData) from multiple Amazon Web Services Regions to a single
    # Amazon S3 bucket. This type can synchronize OpsItems and OpsData from
    # multiple Amazon Web Services accounts and Amazon Web Services Regions
    # or `EntireOrganization` by using Organizations. For more information,
    # see [Setting up Systems Manager Explorer to display data from multiple
    # accounts and Regions][2] in the *Amazon Web Services Systems Manager
    # User Guide*.
    #
    # A resource data sync is an asynchronous operation that returns
    # immediately. After a successful initial sync is completed, the system
    # continuously syncs data. To check the status of a sync, use the
    # ListResourceDataSync.
    #
    # <note markdown="1"> By default, data isn't encrypted in Amazon S3. We strongly recommend
    # that you enable encryption in Amazon S3 to ensure secure data storage.
    # We also recommend that you secure access to the Amazon S3 bucket by
    # creating a restrictive bucket policy.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-datasync.html
    # [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resource-data-sync.html
    #
    # @option params [required, String] :sync_name
    #   A name for the configuration.
    #
    # @option params [Types::ResourceDataSyncS3Destination] :s3_destination
    #   Amazon S3 configuration details for the sync. This parameter is
    #   required if the `SyncType` value is SyncToDestination.
    #
    # @option params [String] :sync_type
    #   Specify `SyncToDestination` to create a resource data sync that
    #   synchronizes data to an S3 bucket for Inventory. If you specify
    #   `SyncToDestination`, you must provide a value for `S3Destination`.
    #   Specify `SyncFromSource` to synchronize data from a single account and
    #   multiple Regions, or multiple Amazon Web Services accounts and Amazon
    #   Web Services Regions, as listed in Organizations for Explorer. If you
    #   specify `SyncFromSource`, you must provide a value for `SyncSource`.
    #   The default value is `SyncToDestination`.
    #
    # @option params [Types::ResourceDataSyncSource] :sync_source
    #   Specify information about the data sources to synchronize. This
    #   parameter is required if the `SyncType` value is SyncFromSource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_data_sync({
    #     sync_name: "ResourceDataSyncName", # required
    #     s3_destination: {
    #       bucket_name: "ResourceDataSyncS3BucketName", # required
    #       prefix: "ResourceDataSyncS3Prefix",
    #       sync_format: "JsonSerDe", # required, accepts JsonSerDe
    #       region: "ResourceDataSyncS3Region", # required
    #       awskms_key_arn: "ResourceDataSyncAWSKMSKeyARN",
    #       destination_data_sharing: {
    #         destination_data_sharing_type: "ResourceDataSyncDestinationDataSharingType",
    #       },
    #     },
    #     sync_type: "ResourceDataSyncType",
    #     sync_source: {
    #       source_type: "ResourceDataSyncSourceType", # required
    #       aws_organizations_source: {
    #         organization_source_type: "ResourceDataSyncOrganizationSourceType", # required
    #         organizational_units: [
    #           {
    #             organizational_unit_id: "ResourceDataSyncOrganizationalUnitId",
    #           },
    #         ],
    #       },
    #       source_regions: ["ResourceDataSyncSourceRegion"], # required
    #       include_future_regions: false,
    #       enable_all_ops_data_sources: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateResourceDataSync AWS API Documentation
    #
    # @overload create_resource_data_sync(params = {})
    # @param [Hash] params ({})
    def create_resource_data_sync(params = {}, options = {})
      req = build_request(:create_resource_data_sync, params)
      req.send_request(options)
    end

    # Deletes an activation. You aren't required to delete an activation.
    # If you delete an activation, you can no longer use it to register
    # additional managed nodes. Deleting an activation doesn't de-register
    # managed nodes. You must manually de-register managed nodes.
    #
    # @option params [required, String] :activation_id
    #   The ID of the activation that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_activation({
    #     activation_id: "ActivationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteActivation AWS API Documentation
    #
    # @overload delete_activation(params = {})
    # @param [Hash] params ({})
    def delete_activation(params = {}, options = {})
      req = build_request(:delete_activation, params)
      req.send_request(options)
    end

    # Disassociates the specified Amazon Web Services Systems Manager
    # document (SSM document) from the specified managed node. If you
    # created the association by using the `Targets` parameter, then you
    # must delete the association by using the association ID.
    #
    # When you disassociate a document from a managed node, it doesn't
    # change the configuration of the node. To change the configuration
    # state of a managed node after you disassociate a document, you must
    # create a new document with the desired configuration and associate it
    # with the node.
    #
    # @option params [String] :name
    #   The name of the SSM document.
    #
    # @option params [String] :instance_id
    #   The managed node ID.
    #
    #   <note markdown="1"> `InstanceId` has been deprecated. To specify a managed node ID for an
    #   association, use the `Targets` parameter. Requests that include the
    #   parameter `InstanceID` with Systems Manager documents (SSM documents)
    #   that use schema version 2.0 or later will fail. In addition, if you
    #   use the parameter `InstanceId`, you can't use the parameters
    #   `AssociationName`, `DocumentVersion`, `MaxErrors`, `MaxConcurrency`,
    #   `OutputLocation`, or `ScheduleExpression`. To use these parameters,
    #   you must use the `Targets` parameter.
    #
    #    </note>
    #
    # @option params [String] :association_id
    #   The association ID that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_association({
    #     name: "DocumentARN",
    #     instance_id: "InstanceId",
    #     association_id: "AssociationId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteAssociation AWS API Documentation
    #
    # @overload delete_association(params = {})
    # @param [Hash] params ({})
    def delete_association(params = {}, options = {})
      req = build_request(:delete_association, params)
      req.send_request(options)
    end

    # Deletes the Amazon Web Services Systems Manager document (SSM
    # document) and all managed node associations to the document.
    #
    # Before you delete the document, we recommend that you use
    # DeleteAssociation to disassociate all managed nodes that are
    # associated with the document.
    #
    # @option params [required, String] :name
    #   The name of the document.
    #
    # @option params [String] :document_version
    #   The version of the document that you want to delete. If not provided,
    #   all versions of the document are deleted.
    #
    # @option params [String] :version_name
    #   The version name of the document that you want to delete. If not
    #   provided, all versions of the document are deleted.
    #
    # @option params [Boolean] :force
    #   Some SSM document types require that you specify a `Force` flag before
    #   you can delete the document. For example, you must specify a `Force`
    #   flag to delete a document of type `ApplicationConfigurationSchema`.
    #   You can restrict access to the `Force` flag in an Identity and Access
    #   Management (IAM) policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_document({
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersion",
    #     version_name: "DocumentVersionName",
    #     force: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteDocument AWS API Documentation
    #
    # @overload delete_document(params = {})
    # @param [Hash] params ({})
    def delete_document(params = {}, options = {})
      req = build_request(:delete_document, params)
      req.send_request(options)
    end

    # Delete a custom inventory type or the data associated with a custom
    # Inventory type. Deleting a custom inventory type is also referred to
    # as deleting a custom inventory schema.
    #
    # @option params [required, String] :type_name
    #   The name of the custom inventory type for which you want to delete
    #   either all previously collected data or the inventory type itself.
    #
    # @option params [String] :schema_delete_option
    #   Use the `SchemaDeleteOption` to delete a custom inventory type
    #   (schema). If you don't choose this option, the system only deletes
    #   existing inventory data associated with the custom inventory type.
    #   Choose one of the following options:
    #
    #   DisableSchema: If you choose this option, the system ignores all
    #   inventory data for the specified version, and any earlier versions. To
    #   enable this schema again, you must call the `PutInventory` operation
    #   for a version greater than the disabled version.
    #
    #   DeleteSchema: This option deletes the specified custom type from the
    #   Inventory service. You can recreate the schema later, if you want.
    #
    # @option params [Boolean] :dry_run
    #   Use this option to view a summary of the deletion request without
    #   deleting any data or the data type. This option is useful when you
    #   only want to understand what will be deleted. Once you validate that
    #   the data to be deleted is what you intend to delete, you can run the
    #   same command without specifying the `DryRun` option.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteInventoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInventoryResult#deletion_id #deletion_id} => String
    #   * {Types::DeleteInventoryResult#type_name #type_name} => String
    #   * {Types::DeleteInventoryResult#deletion_summary #deletion_summary} => Types::InventoryDeletionSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inventory({
    #     type_name: "InventoryItemTypeName", # required
    #     schema_delete_option: "DisableSchema", # accepts DisableSchema, DeleteSchema
    #     dry_run: false,
    #     client_token: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.deletion_id #=> String
    #   resp.type_name #=> String
    #   resp.deletion_summary.total_count #=> Integer
    #   resp.deletion_summary.remaining_count #=> Integer
    #   resp.deletion_summary.summary_items #=> Array
    #   resp.deletion_summary.summary_items[0].version #=> String
    #   resp.deletion_summary.summary_items[0].count #=> Integer
    #   resp.deletion_summary.summary_items[0].remaining_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteInventory AWS API Documentation
    #
    # @overload delete_inventory(params = {})
    # @param [Hash] params ({})
    def delete_inventory(params = {}, options = {})
      req = build_request(:delete_inventory, params)
      req.send_request(options)
    end

    # Deletes a maintenance window.
    #
    # @option params [required, String] :window_id
    #   The ID of the maintenance window to delete.
    #
    # @return [Types::DeleteMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMaintenanceWindowResult#window_id #window_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteMaintenanceWindow AWS API Documentation
    #
    # @overload delete_maintenance_window(params = {})
    # @param [Hash] params ({})
    def delete_maintenance_window(params = {}, options = {})
      req = build_request(:delete_maintenance_window, params)
      req.send_request(options)
    end

    # Delete OpsMetadata related to an application.
    #
    # @option params [required, String] :ops_metadata_arn
    #   The Amazon Resource Name (ARN) of an OpsMetadata Object to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ops_metadata({
    #     ops_metadata_arn: "OpsMetadataArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteOpsMetadata AWS API Documentation
    #
    # @overload delete_ops_metadata(params = {})
    # @param [Hash] params ({})
    def delete_ops_metadata(params = {}, options = {})
      req = build_request(:delete_ops_metadata, params)
      req.send_request(options)
    end

    # Delete a parameter from the system. After deleting a parameter, wait
    # for at least 30 seconds to create a parameter with the same name.
    #
    # @option params [required, String] :name
    #   The name of the parameter to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parameter({
    #     name: "PSParameterName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParameter AWS API Documentation
    #
    # @overload delete_parameter(params = {})
    # @param [Hash] params ({})
    def delete_parameter(params = {}, options = {})
      req = build_request(:delete_parameter, params)
      req.send_request(options)
    end

    # Delete a list of parameters. After deleting a parameter, wait for at
    # least 30 seconds to create a parameter with the same name.
    #
    # @option params [required, Array<String>] :names
    #   The names of the parameters to delete. After deleting a parameter,
    #   wait for at least 30 seconds to create a parameter with the same name.
    #
    # @return [Types::DeleteParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteParametersResult#deleted_parameters #deleted_parameters} => Array&lt;String&gt;
    #   * {Types::DeleteParametersResult#invalid_parameters #invalid_parameters} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parameters({
    #     names: ["PSParameterName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deleted_parameters #=> Array
    #   resp.deleted_parameters[0] #=> String
    #   resp.invalid_parameters #=> Array
    #   resp.invalid_parameters[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParameters AWS API Documentation
    #
    # @overload delete_parameters(params = {})
    # @param [Hash] params ({})
    def delete_parameters(params = {}, options = {})
      req = build_request(:delete_parameters, params)
      req.send_request(options)
    end

    # Deletes a patch baseline.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to delete.
    #
    # @return [Types::DeletePatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePatchBaselineResult#baseline_id #baseline_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_patch_baseline({
    #     baseline_id: "BaselineId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeletePatchBaseline AWS API Documentation
    #
    # @overload delete_patch_baseline(params = {})
    # @param [Hash] params ({})
    def delete_patch_baseline(params = {}, options = {})
      req = build_request(:delete_patch_baseline, params)
      req.send_request(options)
    end

    # Deletes a resource data sync configuration. After the configuration is
    # deleted, changes to data on managed nodes are no longer synced to or
    # from the target. Deleting a sync configuration doesn't delete data.
    #
    # @option params [required, String] :sync_name
    #   The name of the configuration to delete.
    #
    # @option params [String] :sync_type
    #   Specify the type of resource data sync to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_data_sync({
    #     sync_name: "ResourceDataSyncName", # required
    #     sync_type: "ResourceDataSyncType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteResourceDataSync AWS API Documentation
    #
    # @overload delete_resource_data_sync(params = {})
    # @param [Hash] params ({})
    def delete_resource_data_sync(params = {}, options = {})
      req = build_request(:delete_resource_data_sync, params)
      req.send_request(options)
    end

    # Deletes a Systems Manager resource policy. A resource policy helps you
    # to define the IAM entity (for example, an Amazon Web Services account)
    # that can manage your Systems Manager resources. Currently,
    # `OpsItemGroup` is the only resource that supports Systems Manager
    # resource policies. The resource policy for `OpsItemGroup` enables
    # Amazon Web Services accounts to view and interact with OpsCenter
    # operational work items (OpsItems).
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the resource to which the policies are
    #   attached.
    #
    # @option params [required, String] :policy_id
    #   The policy ID.
    #
    # @option params [required, String] :policy_hash
    #   ID of the current policy version. The hash helps to prevent multiple
    #   calls from attempting to overwrite a policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "ResourceArnString", # required
    #     policy_id: "PolicyId", # required
    #     policy_hash: "PolicyHash", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Removes the server or virtual machine from the list of registered
    # servers. You can reregister the node again at any time. If you don't
    # plan to use Run Command on the server, we suggest uninstalling SSM
    # Agent first.
    #
    # @option params [required, String] :instance_id
    #   The ID assigned to the managed node when you registered it using the
    #   activation process.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_managed_instance({
    #     instance_id: "ManagedInstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterManagedInstance AWS API Documentation
    #
    # @overload deregister_managed_instance(params = {})
    # @param [Hash] params ({})
    def deregister_managed_instance(params = {}, options = {})
      req = build_request(:deregister_managed_instance, params)
      req.send_request(options)
    end

    # Removes a patch group from a patch baseline.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to deregister the patch group from.
    #
    # @option params [required, String] :patch_group
    #   The name of the patch group that should be deregistered from the patch
    #   baseline.
    #
    # @return [Types::DeregisterPatchBaselineForPatchGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterPatchBaselineForPatchGroupResult#baseline_id #baseline_id} => String
    #   * {Types::DeregisterPatchBaselineForPatchGroupResult#patch_group #patch_group} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_patch_baseline_for_patch_group({
    #     baseline_id: "BaselineId", # required
    #     patch_group: "PatchGroup", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.patch_group #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterPatchBaselineForPatchGroup AWS API Documentation
    #
    # @overload deregister_patch_baseline_for_patch_group(params = {})
    # @param [Hash] params ({})
    def deregister_patch_baseline_for_patch_group(params = {}, options = {})
      req = build_request(:deregister_patch_baseline_for_patch_group, params)
      req.send_request(options)
    end

    # Removes a target from a maintenance window.
    #
    # @option params [required, String] :window_id
    #   The ID of the maintenance window the target should be removed from.
    #
    # @option params [required, String] :window_target_id
    #   The ID of the target definition to remove.
    #
    # @option params [Boolean] :safe
    #   The system checks if the target is being referenced by a task. If the
    #   target is being referenced, the system returns an error and doesn't
    #   deregister the target from the maintenance window.
    #
    # @return [Types::DeregisterTargetFromMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterTargetFromMaintenanceWindowResult#window_id #window_id} => String
    #   * {Types::DeregisterTargetFromMaintenanceWindowResult#window_target_id #window_target_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_target_from_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #     window_target_id: "MaintenanceWindowTargetId", # required
    #     safe: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.window_target_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTargetFromMaintenanceWindow AWS API Documentation
    #
    # @overload deregister_target_from_maintenance_window(params = {})
    # @param [Hash] params ({})
    def deregister_target_from_maintenance_window(params = {}, options = {})
      req = build_request(:deregister_target_from_maintenance_window, params)
      req.send_request(options)
    end

    # Removes a task from a maintenance window.
    #
    # @option params [required, String] :window_id
    #   The ID of the maintenance window the task should be removed from.
    #
    # @option params [required, String] :window_task_id
    #   The ID of the task to remove from the maintenance window.
    #
    # @return [Types::DeregisterTaskFromMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterTaskFromMaintenanceWindowResult#window_id #window_id} => String
    #   * {Types::DeregisterTaskFromMaintenanceWindowResult#window_task_id #window_task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_task_from_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #     window_task_id: "MaintenanceWindowTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.window_task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTaskFromMaintenanceWindow AWS API Documentation
    #
    # @overload deregister_task_from_maintenance_window(params = {})
    # @param [Hash] params ({})
    def deregister_task_from_maintenance_window(params = {}, options = {})
      req = build_request(:deregister_task_from_maintenance_window, params)
      req.send_request(options)
    end

    # Describes details about the activation, such as the date and time the
    # activation was created, its expiration date, the Identity and Access
    # Management (IAM) role assigned to the managed nodes in the activation,
    # and the number of nodes registered by using this activation.
    #
    # @option params [Array<Types::DescribeActivationsFilter>] :filters
    #   A filter to view information about your activations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::DescribeActivationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeActivationsResult#activation_list #activation_list} => Array&lt;Types::Activation&gt;
    #   * {Types::DescribeActivationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_activations({
    #     filters: [
    #       {
    #         filter_key: "ActivationIds", # accepts ActivationIds, DefaultInstanceName, IamRole
    #         filter_values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.activation_list #=> Array
    #   resp.activation_list[0].activation_id #=> String
    #   resp.activation_list[0].description #=> String
    #   resp.activation_list[0].default_instance_name #=> String
    #   resp.activation_list[0].iam_role #=> String
    #   resp.activation_list[0].registration_limit #=> Integer
    #   resp.activation_list[0].registrations_count #=> Integer
    #   resp.activation_list[0].expiration_date #=> Time
    #   resp.activation_list[0].expired #=> Boolean
    #   resp.activation_list[0].created_date #=> Time
    #   resp.activation_list[0].tags #=> Array
    #   resp.activation_list[0].tags[0].key #=> String
    #   resp.activation_list[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeActivations AWS API Documentation
    #
    # @overload describe_activations(params = {})
    # @param [Hash] params ({})
    def describe_activations(params = {}, options = {})
      req = build_request(:describe_activations, params)
      req.send_request(options)
    end

    # Describes the association for the specified target or managed node. If
    # you created the association by using the `Targets` parameter, then you
    # must retrieve the association by using the association ID.
    #
    # @option params [String] :name
    #   The name of the SSM document.
    #
    # @option params [String] :instance_id
    #   The managed node ID.
    #
    # @option params [String] :association_id
    #   The association ID for which you want information.
    #
    # @option params [String] :association_version
    #   Specify the association version to retrieve. To view the latest
    #   version, either specify `$LATEST` for this parameter, or omit this
    #   parameter. To view a list of all associations for a managed node, use
    #   ListAssociations. To get a list of versions for a specific
    #   association, use ListAssociationVersions.
    #
    # @return [Types::DescribeAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssociationResult#association_description #association_description} => Types::AssociationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_association({
    #     name: "DocumentARN",
    #     instance_id: "InstanceId",
    #     association_id: "AssociationId",
    #     association_version: "AssociationVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_description.name #=> String
    #   resp.association_description.instance_id #=> String
    #   resp.association_description.association_version #=> String
    #   resp.association_description.date #=> Time
    #   resp.association_description.last_update_association_date #=> Time
    #   resp.association_description.status.date #=> Time
    #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
    #   resp.association_description.status.message #=> String
    #   resp.association_description.status.additional_info #=> String
    #   resp.association_description.overview.status #=> String
    #   resp.association_description.overview.detailed_status #=> String
    #   resp.association_description.overview.association_status_aggregated_count #=> Hash
    #   resp.association_description.overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.association_description.document_version #=> String
    #   resp.association_description.automation_target_parameter_name #=> String
    #   resp.association_description.parameters #=> Hash
    #   resp.association_description.parameters["ParameterName"] #=> Array
    #   resp.association_description.parameters["ParameterName"][0] #=> String
    #   resp.association_description.association_id #=> String
    #   resp.association_description.targets #=> Array
    #   resp.association_description.targets[0].key #=> String
    #   resp.association_description.targets[0].values #=> Array
    #   resp.association_description.targets[0].values[0] #=> String
    #   resp.association_description.schedule_expression #=> String
    #   resp.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.association_description.last_execution_date #=> Time
    #   resp.association_description.last_successful_execution_date #=> Time
    #   resp.association_description.association_name #=> String
    #   resp.association_description.max_errors #=> String
    #   resp.association_description.max_concurrency #=> String
    #   resp.association_description.compliance_severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"
    #   resp.association_description.sync_compliance #=> String, one of "AUTO", "MANUAL"
    #   resp.association_description.apply_only_at_cron_interval #=> Boolean
    #   resp.association_description.calendar_names #=> Array
    #   resp.association_description.calendar_names[0] #=> String
    #   resp.association_description.target_locations #=> Array
    #   resp.association_description.target_locations[0].accounts #=> Array
    #   resp.association_description.target_locations[0].accounts[0] #=> String
    #   resp.association_description.target_locations[0].regions #=> Array
    #   resp.association_description.target_locations[0].regions[0] #=> String
    #   resp.association_description.target_locations[0].target_location_max_concurrency #=> String
    #   resp.association_description.target_locations[0].target_location_max_errors #=> String
    #   resp.association_description.target_locations[0].execution_role_name #=> String
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.alarms #=> Array
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.association_description.schedule_offset #=> Integer
    #   resp.association_description.target_maps #=> Array
    #   resp.association_description.target_maps[0] #=> Hash
    #   resp.association_description.target_maps[0]["TargetMapKey"] #=> Array
    #   resp.association_description.target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.association_description.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.association_description.alarm_configuration.alarms #=> Array
    #   resp.association_description.alarm_configuration.alarms[0].name #=> String
    #   resp.association_description.triggered_alarms #=> Array
    #   resp.association_description.triggered_alarms[0].name #=> String
    #   resp.association_description.triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociation AWS API Documentation
    #
    # @overload describe_association(params = {})
    # @param [Hash] params ({})
    def describe_association(params = {}, options = {})
      req = build_request(:describe_association, params)
      req.send_request(options)
    end

    # Views information about a specific execution of a specific
    # association.
    #
    # @option params [required, String] :association_id
    #   The association ID that includes the execution for which you want to
    #   view details.
    #
    # @option params [required, String] :execution_id
    #   The execution ID for which you want to view details.
    #
    # @option params [Array<Types::AssociationExecutionTargetsFilter>] :filters
    #   Filters for the request. You can specify the following filters and
    #   values.
    #
    #   Status (EQUAL)
    #
    #   ResourceId (EQUAL)
    #
    #   ResourceType (EQUAL)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::DescribeAssociationExecutionTargetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssociationExecutionTargetsResult#association_execution_targets #association_execution_targets} => Array&lt;Types::AssociationExecutionTarget&gt;
    #   * {Types::DescribeAssociationExecutionTargetsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_association_execution_targets({
    #     association_id: "AssociationId", # required
    #     execution_id: "AssociationExecutionId", # required
    #     filters: [
    #       {
    #         key: "Status", # required, accepts Status, ResourceId, ResourceType
    #         value: "AssociationExecutionTargetsFilterValue", # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_execution_targets #=> Array
    #   resp.association_execution_targets[0].association_id #=> String
    #   resp.association_execution_targets[0].association_version #=> String
    #   resp.association_execution_targets[0].execution_id #=> String
    #   resp.association_execution_targets[0].resource_id #=> String
    #   resp.association_execution_targets[0].resource_type #=> String
    #   resp.association_execution_targets[0].status #=> String
    #   resp.association_execution_targets[0].detailed_status #=> String
    #   resp.association_execution_targets[0].last_execution_date #=> Time
    #   resp.association_execution_targets[0].output_source.output_source_id #=> String
    #   resp.association_execution_targets[0].output_source.output_source_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationExecutionTargets AWS API Documentation
    #
    # @overload describe_association_execution_targets(params = {})
    # @param [Hash] params ({})
    def describe_association_execution_targets(params = {}, options = {})
      req = build_request(:describe_association_execution_targets, params)
      req.send_request(options)
    end

    # Views all executions for a specific association ID.
    #
    # @option params [required, String] :association_id
    #   The association ID for which you want to view execution history
    #   details.
    #
    # @option params [Array<Types::AssociationExecutionFilter>] :filters
    #   Filters for the request. You can specify the following filters and
    #   values.
    #
    #   ExecutionId (EQUAL)
    #
    #   Status (EQUAL)
    #
    #   CreatedTime (EQUAL, GREATER\_THAN, LESS\_THAN)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::DescribeAssociationExecutionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssociationExecutionsResult#association_executions #association_executions} => Array&lt;Types::AssociationExecution&gt;
    #   * {Types::DescribeAssociationExecutionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_association_executions({
    #     association_id: "AssociationId", # required
    #     filters: [
    #       {
    #         key: "ExecutionId", # required, accepts ExecutionId, Status, CreatedTime
    #         value: "AssociationExecutionFilterValue", # required
    #         type: "EQUAL", # required, accepts EQUAL, LESS_THAN, GREATER_THAN
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_executions #=> Array
    #   resp.association_executions[0].association_id #=> String
    #   resp.association_executions[0].association_version #=> String
    #   resp.association_executions[0].execution_id #=> String
    #   resp.association_executions[0].status #=> String
    #   resp.association_executions[0].detailed_status #=> String
    #   resp.association_executions[0].created_time #=> Time
    #   resp.association_executions[0].last_execution_date #=> Time
    #   resp.association_executions[0].resource_count_by_status #=> String
    #   resp.association_executions[0].alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.association_executions[0].alarm_configuration.alarms #=> Array
    #   resp.association_executions[0].alarm_configuration.alarms[0].name #=> String
    #   resp.association_executions[0].triggered_alarms #=> Array
    #   resp.association_executions[0].triggered_alarms[0].name #=> String
    #   resp.association_executions[0].triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationExecutions AWS API Documentation
    #
    # @overload describe_association_executions(params = {})
    # @param [Hash] params ({})
    def describe_association_executions(params = {}, options = {})
      req = build_request(:describe_association_executions, params)
      req.send_request(options)
    end

    # Provides details about all active and terminated Automation
    # executions.
    #
    # @option params [Array<Types::AutomationExecutionFilter>] :filters
    #   Filters used to limit the scope of executions that are requested.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeAutomationExecutionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAutomationExecutionsResult#automation_execution_metadata_list #automation_execution_metadata_list} => Array&lt;Types::AutomationExecutionMetadata&gt;
    #   * {Types::DescribeAutomationExecutionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_automation_executions({
    #     filters: [
    #       {
    #         key: "DocumentNamePrefix", # required, accepts DocumentNamePrefix, ExecutionStatus, ExecutionId, ParentExecutionId, CurrentAction, StartTimeBefore, StartTimeAfter, AutomationType, TagKey, TargetResourceGroup, AutomationSubtype, OpsItemId
    #         values: ["AutomationExecutionFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_execution_metadata_list #=> Array
    #   resp.automation_execution_metadata_list[0].automation_execution_id #=> String
    #   resp.automation_execution_metadata_list[0].document_name #=> String
    #   resp.automation_execution_metadata_list[0].document_version #=> String
    #   resp.automation_execution_metadata_list[0].automation_execution_status #=> String, one of "Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"
    #   resp.automation_execution_metadata_list[0].execution_start_time #=> Time
    #   resp.automation_execution_metadata_list[0].execution_end_time #=> Time
    #   resp.automation_execution_metadata_list[0].executed_by #=> String
    #   resp.automation_execution_metadata_list[0].log_file #=> String
    #   resp.automation_execution_metadata_list[0].outputs #=> Hash
    #   resp.automation_execution_metadata_list[0].outputs["AutomationParameterKey"] #=> Array
    #   resp.automation_execution_metadata_list[0].outputs["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution_metadata_list[0].mode #=> String, one of "Auto", "Interactive"
    #   resp.automation_execution_metadata_list[0].parent_automation_execution_id #=> String
    #   resp.automation_execution_metadata_list[0].current_step_name #=> String
    #   resp.automation_execution_metadata_list[0].current_action #=> String
    #   resp.automation_execution_metadata_list[0].failure_message #=> String
    #   resp.automation_execution_metadata_list[0].target_parameter_name #=> String
    #   resp.automation_execution_metadata_list[0].targets #=> Array
    #   resp.automation_execution_metadata_list[0].targets[0].key #=> String
    #   resp.automation_execution_metadata_list[0].targets[0].values #=> Array
    #   resp.automation_execution_metadata_list[0].targets[0].values[0] #=> String
    #   resp.automation_execution_metadata_list[0].target_maps #=> Array
    #   resp.automation_execution_metadata_list[0].target_maps[0] #=> Hash
    #   resp.automation_execution_metadata_list[0].target_maps[0]["TargetMapKey"] #=> Array
    #   resp.automation_execution_metadata_list[0].target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.automation_execution_metadata_list[0].resolved_targets.parameter_values #=> Array
    #   resp.automation_execution_metadata_list[0].resolved_targets.parameter_values[0] #=> String
    #   resp.automation_execution_metadata_list[0].resolved_targets.truncated #=> Boolean
    #   resp.automation_execution_metadata_list[0].max_concurrency #=> String
    #   resp.automation_execution_metadata_list[0].max_errors #=> String
    #   resp.automation_execution_metadata_list[0].target #=> String
    #   resp.automation_execution_metadata_list[0].automation_type #=> String, one of "CrossAccount", "Local"
    #   resp.automation_execution_metadata_list[0].alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.automation_execution_metadata_list[0].alarm_configuration.alarms #=> Array
    #   resp.automation_execution_metadata_list[0].alarm_configuration.alarms[0].name #=> String
    #   resp.automation_execution_metadata_list[0].triggered_alarms #=> Array
    #   resp.automation_execution_metadata_list[0].triggered_alarms[0].name #=> String
    #   resp.automation_execution_metadata_list[0].triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #   resp.automation_execution_metadata_list[0].automation_subtype #=> String, one of "ChangeRequest"
    #   resp.automation_execution_metadata_list[0].scheduled_time #=> Time
    #   resp.automation_execution_metadata_list[0].runbooks #=> Array
    #   resp.automation_execution_metadata_list[0].runbooks[0].document_name #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].document_version #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].parameters #=> Hash
    #   resp.automation_execution_metadata_list[0].runbooks[0].parameters["AutomationParameterKey"] #=> Array
    #   resp.automation_execution_metadata_list[0].runbooks[0].parameters["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_parameter_name #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].targets #=> Array
    #   resp.automation_execution_metadata_list[0].runbooks[0].targets[0].key #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].targets[0].values #=> Array
    #   resp.automation_execution_metadata_list[0].runbooks[0].targets[0].values[0] #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_maps #=> Array
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_maps[0] #=> Hash
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_maps[0]["TargetMapKey"] #=> Array
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].max_concurrency #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].max_errors #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations #=> Array
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations[0].accounts #=> Array
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations[0].accounts[0] #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations[0].regions #=> Array
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations[0].regions[0] #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations[0].target_location_max_concurrency #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations[0].target_location_max_errors #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations[0].execution_role_name #=> String
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations[0].target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations[0].target_location_alarm_configuration.alarms #=> Array
    #   resp.automation_execution_metadata_list[0].runbooks[0].target_locations[0].target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.automation_execution_metadata_list[0].ops_item_id #=> String
    #   resp.automation_execution_metadata_list[0].association_id #=> String
    #   resp.automation_execution_metadata_list[0].change_request_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAutomationExecutions AWS API Documentation
    #
    # @overload describe_automation_executions(params = {})
    # @param [Hash] params ({})
    def describe_automation_executions(params = {}, options = {})
      req = build_request(:describe_automation_executions, params)
      req.send_request(options)
    end

    # Information about all active and terminated step executions in an
    # Automation workflow.
    #
    # @option params [required, String] :automation_execution_id
    #   The Automation execution ID for which you want step execution
    #   descriptions.
    #
    # @option params [Array<Types::StepExecutionFilter>] :filters
    #   One or more filters to limit the number of step executions returned by
    #   the request.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [Boolean] :reverse_order
    #   Indicates whether to list step executions in reverse order by start
    #   time. The default value is 'false'.
    #
    # @return [Types::DescribeAutomationStepExecutionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAutomationStepExecutionsResult#step_executions #step_executions} => Array&lt;Types::StepExecution&gt;
    #   * {Types::DescribeAutomationStepExecutionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_automation_step_executions({
    #     automation_execution_id: "AutomationExecutionId", # required
    #     filters: [
    #       {
    #         key: "StartTimeBefore", # required, accepts StartTimeBefore, StartTimeAfter, StepExecutionStatus, StepExecutionId, StepName, Action
    #         values: ["StepExecutionFilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     reverse_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.step_executions #=> Array
    #   resp.step_executions[0].step_name #=> String
    #   resp.step_executions[0].action #=> String
    #   resp.step_executions[0].timeout_seconds #=> Integer
    #   resp.step_executions[0].on_failure #=> String
    #   resp.step_executions[0].max_attempts #=> Integer
    #   resp.step_executions[0].execution_start_time #=> Time
    #   resp.step_executions[0].execution_end_time #=> Time
    #   resp.step_executions[0].step_status #=> String, one of "Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"
    #   resp.step_executions[0].response_code #=> String
    #   resp.step_executions[0].inputs #=> Hash
    #   resp.step_executions[0].inputs["String"] #=> String
    #   resp.step_executions[0].outputs #=> Hash
    #   resp.step_executions[0].outputs["AutomationParameterKey"] #=> Array
    #   resp.step_executions[0].outputs["AutomationParameterKey"][0] #=> String
    #   resp.step_executions[0].response #=> String
    #   resp.step_executions[0].failure_message #=> String
    #   resp.step_executions[0].failure_details.failure_stage #=> String
    #   resp.step_executions[0].failure_details.failure_type #=> String
    #   resp.step_executions[0].failure_details.details #=> Hash
    #   resp.step_executions[0].failure_details.details["AutomationParameterKey"] #=> Array
    #   resp.step_executions[0].failure_details.details["AutomationParameterKey"][0] #=> String
    #   resp.step_executions[0].step_execution_id #=> String
    #   resp.step_executions[0].overridden_parameters #=> Hash
    #   resp.step_executions[0].overridden_parameters["AutomationParameterKey"] #=> Array
    #   resp.step_executions[0].overridden_parameters["AutomationParameterKey"][0] #=> String
    #   resp.step_executions[0].is_end #=> Boolean
    #   resp.step_executions[0].next_step #=> String
    #   resp.step_executions[0].is_critical #=> Boolean
    #   resp.step_executions[0].valid_next_steps #=> Array
    #   resp.step_executions[0].valid_next_steps[0] #=> String
    #   resp.step_executions[0].targets #=> Array
    #   resp.step_executions[0].targets[0].key #=> String
    #   resp.step_executions[0].targets[0].values #=> Array
    #   resp.step_executions[0].targets[0].values[0] #=> String
    #   resp.step_executions[0].target_location.accounts #=> Array
    #   resp.step_executions[0].target_location.accounts[0] #=> String
    #   resp.step_executions[0].target_location.regions #=> Array
    #   resp.step_executions[0].target_location.regions[0] #=> String
    #   resp.step_executions[0].target_location.target_location_max_concurrency #=> String
    #   resp.step_executions[0].target_location.target_location_max_errors #=> String
    #   resp.step_executions[0].target_location.execution_role_name #=> String
    #   resp.step_executions[0].target_location.target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.step_executions[0].target_location.target_location_alarm_configuration.alarms #=> Array
    #   resp.step_executions[0].target_location.target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.step_executions[0].triggered_alarms #=> Array
    #   resp.step_executions[0].triggered_alarms[0].name #=> String
    #   resp.step_executions[0].triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAutomationStepExecutions AWS API Documentation
    #
    # @overload describe_automation_step_executions(params = {})
    # @param [Hash] params ({})
    def describe_automation_step_executions(params = {}, options = {})
      req = build_request(:describe_automation_step_executions, params)
      req.send_request(options)
    end

    # Lists all patches eligible to be included in a patch baseline.
    #
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   Each element in the array is a structure containing a key-value pair.
    #
    #   **Windows Server**
    #
    #   Supported keys for Windows Server managed node patches include the
    #   following:
    #
    #   * <b> <code>PATCH_SET</code> </b>
    #
    #     Sample values: `OS` \| `APPLICATION`
    #
    #   * <b> <code>PRODUCT</code> </b>
    #
    #     Sample values: `WindowsServer2012` \| `Office 2010` \|
    #     `MicrosoftDefenderAntivirus`
    #
    #   * <b> <code>PRODUCT_FAMILY</code> </b>
    #
    #     Sample values: `Windows` \| `Office`
    #
    #   * <b> <code>MSRC_SEVERITY</code> </b>
    #
    #     Sample values: `ServicePacks` \| `Important` \| `Moderate`
    #
    #   * <b> <code>CLASSIFICATION</code> </b>
    #
    #     Sample values: `ServicePacks` \| `SecurityUpdates` \|
    #     `DefinitionUpdates`
    #
    #   * <b> <code>PATCH_ID</code> </b>
    #
    #     Sample values: `KB123456` \| `KB4516046`
    #
    #   **Linux**
    #
    #   When specifying filters for Linux patches, you must specify a key-pair
    #   for `PRODUCT`. For example, using the Command Line Interface (CLI),
    #   the following command fails:
    #
    #    `aws ssm describe-available-patches --filters
    #   Key=CVE_ID,Values=CVE-2018-3615`
    #
    #    However, the following command succeeds:
    #
    #    `aws ssm describe-available-patches --filters
    #   Key=PRODUCT,Values=AmazonLinux2018.03 Key=CVE_ID,Values=CVE-2018-3615`
    #
    #   Supported keys for Linux managed node patches include the following:
    #
    #   * <b> <code>PRODUCT</code> </b>
    #
    #     Sample values: `AmazonLinux2018.03` \| `AmazonLinux2.0`
    #
    #   * <b> <code>NAME</code> </b>
    #
    #     Sample values: `kernel-headers` \| `samba-python` \| `php`
    #
    #   * <b> <code>SEVERITY</code> </b>
    #
    #     Sample values: `Critical` \| `Important` \| `Medium` \| `Low`
    #
    #   * <b> <code>EPOCH</code> </b>
    #
    #     Sample values: `0` \| `1`
    #
    #   * <b> <code>VERSION</code> </b>
    #
    #     Sample values: `78.6.1` \| `4.10.16`
    #
    #   * <b> <code>RELEASE</code> </b>
    #
    #     Sample values: `9.56.amzn1` \| `1.amzn2`
    #
    #   * <b> <code>ARCH</code> </b>
    #
    #     Sample values: `i686` \| `x86_64`
    #
    #   * <b> <code>REPOSITORY</code> </b>
    #
    #     Sample values: `Core` \| `Updates`
    #
    #   * <b> <code>ADVISORY_ID</code> </b>
    #
    #     Sample values: `ALAS-2018-1058` \| `ALAS2-2021-1594`
    #
    #   * <b> <code>CVE_ID</code> </b>
    #
    #     Sample values: `CVE-2018-3615` \| `CVE-2020-1472`
    #
    #   * <b> <code>BUGZILLA_ID</code> </b>
    #
    #     Sample values: `1463241`
    #
    # @option params [Integer] :max_results
    #   The maximum number of patches to return (per page).
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeAvailablePatchesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAvailablePatchesResult#patches #patches} => Array&lt;Types::Patch&gt;
    #   * {Types::DescribeAvailablePatchesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_available_patches({
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.patches #=> Array
    #   resp.patches[0].id #=> String
    #   resp.patches[0].release_date #=> Time
    #   resp.patches[0].title #=> String
    #   resp.patches[0].description #=> String
    #   resp.patches[0].content_url #=> String
    #   resp.patches[0].vendor #=> String
    #   resp.patches[0].product_family #=> String
    #   resp.patches[0].product #=> String
    #   resp.patches[0].classification #=> String
    #   resp.patches[0].msrc_severity #=> String
    #   resp.patches[0].kb_number #=> String
    #   resp.patches[0].msrc_number #=> String
    #   resp.patches[0].language #=> String
    #   resp.patches[0].advisory_ids #=> Array
    #   resp.patches[0].advisory_ids[0] #=> String
    #   resp.patches[0].bugzilla_ids #=> Array
    #   resp.patches[0].bugzilla_ids[0] #=> String
    #   resp.patches[0].cve_ids #=> Array
    #   resp.patches[0].cve_ids[0] #=> String
    #   resp.patches[0].name #=> String
    #   resp.patches[0].epoch #=> Integer
    #   resp.patches[0].version #=> String
    #   resp.patches[0].release #=> String
    #   resp.patches[0].arch #=> String
    #   resp.patches[0].severity #=> String
    #   resp.patches[0].repository #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAvailablePatches AWS API Documentation
    #
    # @overload describe_available_patches(params = {})
    # @param [Hash] params ({})
    def describe_available_patches(params = {}, options = {})
      req = build_request(:describe_available_patches, params)
      req.send_request(options)
    end

    # Describes the specified Amazon Web Services Systems Manager document
    # (SSM document).
    #
    # @option params [required, String] :name
    #   The name of the SSM document.
    #
    # @option params [String] :document_version
    #   The document version for which you want information. Can be a specific
    #   version or the default version.
    #
    # @option params [String] :version_name
    #   An optional field specifying the version of the artifact associated
    #   with the document. For example, "Release 12, Update 6". This value
    #   is unique across all versions of a document, and can't be changed.
    #
    # @return [Types::DescribeDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDocumentResult#document #document} => Types::DocumentDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document({
    #     name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     version_name: "DocumentVersionName",
    #   })
    #
    # @example Response structure
    #
    #   resp.document.sha_1 #=> String
    #   resp.document.hash #=> String
    #   resp.document.hash_type #=> String, one of "Sha256", "Sha1"
    #   resp.document.name #=> String
    #   resp.document.display_name #=> String
    #   resp.document.version_name #=> String
    #   resp.document.owner #=> String
    #   resp.document.created_date #=> Time
    #   resp.document.status #=> String, one of "Creating", "Active", "Updating", "Deleting", "Failed"
    #   resp.document.status_information #=> String
    #   resp.document.document_version #=> String
    #   resp.document.description #=> String
    #   resp.document.parameters #=> Array
    #   resp.document.parameters[0].name #=> String
    #   resp.document.parameters[0].type #=> String, one of "String", "StringList"
    #   resp.document.parameters[0].description #=> String
    #   resp.document.parameters[0].default_value #=> String
    #   resp.document.platform_types #=> Array
    #   resp.document.platform_types[0] #=> String, one of "Windows", "Linux", "MacOS"
    #   resp.document.document_type #=> String, one of "Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup"
    #   resp.document.schema_version #=> String
    #   resp.document.latest_version #=> String
    #   resp.document.default_version #=> String
    #   resp.document.document_format #=> String, one of "YAML", "JSON", "TEXT"
    #   resp.document.target_type #=> String
    #   resp.document.tags #=> Array
    #   resp.document.tags[0].key #=> String
    #   resp.document.tags[0].value #=> String
    #   resp.document.attachments_information #=> Array
    #   resp.document.attachments_information[0].name #=> String
    #   resp.document.requires #=> Array
    #   resp.document.requires[0].name #=> String
    #   resp.document.requires[0].version #=> String
    #   resp.document.requires[0].require_type #=> String
    #   resp.document.requires[0].version_name #=> String
    #   resp.document.author #=> String
    #   resp.document.review_information #=> Array
    #   resp.document.review_information[0].reviewed_time #=> Time
    #   resp.document.review_information[0].status #=> String, one of "APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"
    #   resp.document.review_information[0].reviewer #=> String
    #   resp.document.approved_version #=> String
    #   resp.document.pending_review_version #=> String
    #   resp.document.review_status #=> String, one of "APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"
    #   resp.document.category #=> Array
    #   resp.document.category[0] #=> String
    #   resp.document.category_enum #=> Array
    #   resp.document.category_enum[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocument AWS API Documentation
    #
    # @overload describe_document(params = {})
    # @param [Hash] params ({})
    def describe_document(params = {}, options = {})
      req = build_request(:describe_document, params)
      req.send_request(options)
    end

    # Describes the permissions for a Amazon Web Services Systems Manager
    # document (SSM document). If you created the document, you are the
    # owner. If a document is shared, it can either be shared privately (by
    # specifying a user's Amazon Web Services account ID) or publicly
    # (*All*).
    #
    # @option params [required, String] :name
    #   The name of the document for which you are the owner.
    #
    # @option params [required, String] :permission_type
    #   The permission type for the document. The permission type can be
    #   *Share*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeDocumentPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDocumentPermissionResponse#account_ids #account_ids} => Array&lt;String&gt;
    #   * {Types::DescribeDocumentPermissionResponse#account_sharing_info_list #account_sharing_info_list} => Array&lt;Types::AccountSharingInfo&gt;
    #   * {Types::DescribeDocumentPermissionResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_permission({
    #     name: "DocumentName", # required
    #     permission_type: "Share", # required, accepts Share
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0] #=> String
    #   resp.account_sharing_info_list #=> Array
    #   resp.account_sharing_info_list[0].account_id #=> String
    #   resp.account_sharing_info_list[0].shared_document_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentPermission AWS API Documentation
    #
    # @overload describe_document_permission(params = {})
    # @param [Hash] params ({})
    def describe_document_permission(params = {}, options = {})
      req = build_request(:describe_document_permission, params)
      req.send_request(options)
    end

    # All associations for the managed node(s).
    #
    # @option params [required, String] :instance_id
    #   The managed node ID for which you want to view all associations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeEffectiveInstanceAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEffectiveInstanceAssociationsResult#associations #associations} => Array&lt;Types::InstanceAssociation&gt;
    #   * {Types::DescribeEffectiveInstanceAssociationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_effective_instance_associations({
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].association_id #=> String
    #   resp.associations[0].instance_id #=> String
    #   resp.associations[0].content #=> String
    #   resp.associations[0].association_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeEffectiveInstanceAssociations AWS API Documentation
    #
    # @overload describe_effective_instance_associations(params = {})
    # @param [Hash] params ({})
    def describe_effective_instance_associations(params = {}, options = {})
      req = build_request(:describe_effective_instance_associations, params)
      req.send_request(options)
    end

    # Retrieves the current effective patches (the patch and the approval
    # state) for the specified patch baseline. Applies to patch baselines
    # for Windows only.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to retrieve the effective patches for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of patches to return (per page).
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeEffectivePatchesForPatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEffectivePatchesForPatchBaselineResult#effective_patches #effective_patches} => Array&lt;Types::EffectivePatch&gt;
    #   * {Types::DescribeEffectivePatchesForPatchBaselineResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_effective_patches_for_patch_baseline({
    #     baseline_id: "BaselineId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.effective_patches #=> Array
    #   resp.effective_patches[0].patch.id #=> String
    #   resp.effective_patches[0].patch.release_date #=> Time
    #   resp.effective_patches[0].patch.title #=> String
    #   resp.effective_patches[0].patch.description #=> String
    #   resp.effective_patches[0].patch.content_url #=> String
    #   resp.effective_patches[0].patch.vendor #=> String
    #   resp.effective_patches[0].patch.product_family #=> String
    #   resp.effective_patches[0].patch.product #=> String
    #   resp.effective_patches[0].patch.classification #=> String
    #   resp.effective_patches[0].patch.msrc_severity #=> String
    #   resp.effective_patches[0].patch.kb_number #=> String
    #   resp.effective_patches[0].patch.msrc_number #=> String
    #   resp.effective_patches[0].patch.language #=> String
    #   resp.effective_patches[0].patch.advisory_ids #=> Array
    #   resp.effective_patches[0].patch.advisory_ids[0] #=> String
    #   resp.effective_patches[0].patch.bugzilla_ids #=> Array
    #   resp.effective_patches[0].patch.bugzilla_ids[0] #=> String
    #   resp.effective_patches[0].patch.cve_ids #=> Array
    #   resp.effective_patches[0].patch.cve_ids[0] #=> String
    #   resp.effective_patches[0].patch.name #=> String
    #   resp.effective_patches[0].patch.epoch #=> Integer
    #   resp.effective_patches[0].patch.version #=> String
    #   resp.effective_patches[0].patch.release #=> String
    #   resp.effective_patches[0].patch.arch #=> String
    #   resp.effective_patches[0].patch.severity #=> String
    #   resp.effective_patches[0].patch.repository #=> String
    #   resp.effective_patches[0].patch_status.deployment_status #=> String, one of "APPROVED", "PENDING_APPROVAL", "EXPLICIT_APPROVED", "EXPLICIT_REJECTED"
    #   resp.effective_patches[0].patch_status.compliance_level #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.effective_patches[0].patch_status.approval_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeEffectivePatchesForPatchBaseline AWS API Documentation
    #
    # @overload describe_effective_patches_for_patch_baseline(params = {})
    # @param [Hash] params ({})
    def describe_effective_patches_for_patch_baseline(params = {}, options = {})
      req = build_request(:describe_effective_patches_for_patch_baseline, params)
      req.send_request(options)
    end

    # The status of the associations for the managed node(s).
    #
    # @option params [required, String] :instance_id
    #   The managed node IDs for which you want association status
    #   information.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeInstanceAssociationsStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceAssociationsStatusResult#instance_association_status_infos #instance_association_status_infos} => Array&lt;Types::InstanceAssociationStatusInfo&gt;
    #   * {Types::DescribeInstanceAssociationsStatusResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_associations_status({
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_association_status_infos #=> Array
    #   resp.instance_association_status_infos[0].association_id #=> String
    #   resp.instance_association_status_infos[0].name #=> String
    #   resp.instance_association_status_infos[0].document_version #=> String
    #   resp.instance_association_status_infos[0].association_version #=> String
    #   resp.instance_association_status_infos[0].instance_id #=> String
    #   resp.instance_association_status_infos[0].execution_date #=> Time
    #   resp.instance_association_status_infos[0].status #=> String
    #   resp.instance_association_status_infos[0].detailed_status #=> String
    #   resp.instance_association_status_infos[0].execution_summary #=> String
    #   resp.instance_association_status_infos[0].error_code #=> String
    #   resp.instance_association_status_infos[0].output_url.s3_output_url.output_url #=> String
    #   resp.instance_association_status_infos[0].association_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstanceAssociationsStatus AWS API Documentation
    #
    # @overload describe_instance_associations_status(params = {})
    # @param [Hash] params ({})
    def describe_instance_associations_status(params = {}, options = {})
      req = build_request(:describe_instance_associations_status, params)
      req.send_request(options)
    end

    # Describes one or more of your managed nodes, including information
    # about the operating system platform, the version of SSM Agent
    # installed on the managed node, node status, and so on.
    #
    # If you specify one or more managed node IDs, it returns information
    # for those managed nodes. If you don't specify node IDs, it returns
    # information for all your managed nodes. If you specify a node ID that
    # isn't valid or a node that you don't own, you receive an error.
    #
    # <note markdown="1"> The `IamRole` field for this API operation is the Identity and Access
    # Management (IAM) role assigned to on-premises managed nodes. This call
    # doesn't return the IAM role for EC2 instances.
    #
    #  </note>
    #
    # @option params [Array<Types::InstanceInformationFilter>] :instance_information_filter_list
    #   This is a legacy method. We recommend that you don't use this method.
    #   Instead, use the `Filters` data type. `Filters` enables you to return
    #   node information by filtering based on tags applied to managed nodes.
    #
    #   <note markdown="1"> Attempting to use `InstanceInformationFilterList` and `Filters` leads
    #   to an exception error.
    #
    #    </note>
    #
    # @option params [Array<Types::InstanceInformationStringFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   managed nodes. You can filter based on tags applied to your managed
    #   nodes. Use this `Filters` data type instead of
    #   `InstanceInformationFilterList`, which is deprecated.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeInstanceInformationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceInformationResult#instance_information_list #instance_information_list} => Array&lt;Types::InstanceInformation&gt;
    #   * {Types::DescribeInstanceInformationResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_information({
    #     instance_information_filter_list: [
    #       {
    #         key: "InstanceIds", # required, accepts InstanceIds, AgentVersion, PingStatus, PlatformTypes, ActivationIds, IamRole, ResourceType, AssociationStatus
    #         value_set: ["InstanceInformationFilterValue"], # required
    #       },
    #     ],
    #     filters: [
    #       {
    #         key: "InstanceInformationStringFilterKey", # required
    #         values: ["InstanceInformationFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_information_list #=> Array
    #   resp.instance_information_list[0].instance_id #=> String
    #   resp.instance_information_list[0].ping_status #=> String, one of "Online", "ConnectionLost", "Inactive"
    #   resp.instance_information_list[0].last_ping_date_time #=> Time
    #   resp.instance_information_list[0].agent_version #=> String
    #   resp.instance_information_list[0].is_latest_version #=> Boolean
    #   resp.instance_information_list[0].platform_type #=> String, one of "Windows", "Linux", "MacOS"
    #   resp.instance_information_list[0].platform_name #=> String
    #   resp.instance_information_list[0].platform_version #=> String
    #   resp.instance_information_list[0].activation_id #=> String
    #   resp.instance_information_list[0].iam_role #=> String
    #   resp.instance_information_list[0].registration_date #=> Time
    #   resp.instance_information_list[0].resource_type #=> String, one of "ManagedInstance", "Document", "EC2Instance"
    #   resp.instance_information_list[0].name #=> String
    #   resp.instance_information_list[0].ip_address #=> String
    #   resp.instance_information_list[0].computer_name #=> String
    #   resp.instance_information_list[0].association_status #=> String
    #   resp.instance_information_list[0].last_association_execution_date #=> Time
    #   resp.instance_information_list[0].last_successful_association_execution_date #=> Time
    #   resp.instance_information_list[0].association_overview.detailed_status #=> String
    #   resp.instance_information_list[0].association_overview.instance_association_status_aggregated_count #=> Hash
    #   resp.instance_information_list[0].association_overview.instance_association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.instance_information_list[0].source_id #=> String
    #   resp.instance_information_list[0].source_type #=> String, one of "AWS::EC2::Instance", "AWS::IoT::Thing", "AWS::SSM::ManagedInstance"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstanceInformation AWS API Documentation
    #
    # @overload describe_instance_information(params = {})
    # @param [Hash] params ({})
    def describe_instance_information(params = {}, options = {})
      req = build_request(:describe_instance_information, params)
      req.send_request(options)
    end

    # Retrieves the high-level patch state of one or more managed nodes.
    #
    # @option params [required, Array<String>] :instance_ids
    #   The ID of the managed node for which patch state information should be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of managed nodes to return (per page).
    #
    # @return [Types::DescribeInstancePatchStatesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancePatchStatesResult#instance_patch_states #instance_patch_states} => Array&lt;Types::InstancePatchState&gt;
    #   * {Types::DescribeInstancePatchStatesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_patch_states({
    #     instance_ids: ["InstanceId"], # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_patch_states #=> Array
    #   resp.instance_patch_states[0].instance_id #=> String
    #   resp.instance_patch_states[0].patch_group #=> String
    #   resp.instance_patch_states[0].baseline_id #=> String
    #   resp.instance_patch_states[0].snapshot_id #=> String
    #   resp.instance_patch_states[0].install_override_list #=> String
    #   resp.instance_patch_states[0].owner_information #=> String
    #   resp.instance_patch_states[0].installed_count #=> Integer
    #   resp.instance_patch_states[0].installed_other_count #=> Integer
    #   resp.instance_patch_states[0].installed_pending_reboot_count #=> Integer
    #   resp.instance_patch_states[0].installed_rejected_count #=> Integer
    #   resp.instance_patch_states[0].missing_count #=> Integer
    #   resp.instance_patch_states[0].failed_count #=> Integer
    #   resp.instance_patch_states[0].unreported_not_applicable_count #=> Integer
    #   resp.instance_patch_states[0].not_applicable_count #=> Integer
    #   resp.instance_patch_states[0].operation_start_time #=> Time
    #   resp.instance_patch_states[0].operation_end_time #=> Time
    #   resp.instance_patch_states[0].operation #=> String, one of "Scan", "Install"
    #   resp.instance_patch_states[0].last_no_reboot_install_operation_time #=> Time
    #   resp.instance_patch_states[0].reboot_option #=> String, one of "RebootIfNeeded", "NoReboot"
    #   resp.instance_patch_states[0].critical_non_compliant_count #=> Integer
    #   resp.instance_patch_states[0].security_non_compliant_count #=> Integer
    #   resp.instance_patch_states[0].other_non_compliant_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStates AWS API Documentation
    #
    # @overload describe_instance_patch_states(params = {})
    # @param [Hash] params ({})
    def describe_instance_patch_states(params = {}, options = {})
      req = build_request(:describe_instance_patch_states, params)
      req.send_request(options)
    end

    # Retrieves the high-level patch state for the managed nodes in the
    # specified patch group.
    #
    # @option params [required, String] :patch_group
    #   The name of the patch group for which the patch state information
    #   should be retrieved.
    #
    # @option params [Array<Types::InstancePatchStateFilter>] :filters
    #   Each entry in the array is a structure containing:
    #
    #   * Key (string between 1 and 200 characters)
    #
    #   * Values (array containing a single string)
    #
    #   * Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of patches to return (per page).
    #
    # @return [Types::DescribeInstancePatchStatesForPatchGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancePatchStatesForPatchGroupResult#instance_patch_states #instance_patch_states} => Array&lt;Types::InstancePatchState&gt;
    #   * {Types::DescribeInstancePatchStatesForPatchGroupResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_patch_states_for_patch_group({
    #     patch_group: "PatchGroup", # required
    #     filters: [
    #       {
    #         key: "InstancePatchStateFilterKey", # required
    #         values: ["InstancePatchStateFilterValue"], # required
    #         type: "Equal", # required, accepts Equal, NotEqual, LessThan, GreaterThan
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_patch_states #=> Array
    #   resp.instance_patch_states[0].instance_id #=> String
    #   resp.instance_patch_states[0].patch_group #=> String
    #   resp.instance_patch_states[0].baseline_id #=> String
    #   resp.instance_patch_states[0].snapshot_id #=> String
    #   resp.instance_patch_states[0].install_override_list #=> String
    #   resp.instance_patch_states[0].owner_information #=> String
    #   resp.instance_patch_states[0].installed_count #=> Integer
    #   resp.instance_patch_states[0].installed_other_count #=> Integer
    #   resp.instance_patch_states[0].installed_pending_reboot_count #=> Integer
    #   resp.instance_patch_states[0].installed_rejected_count #=> Integer
    #   resp.instance_patch_states[0].missing_count #=> Integer
    #   resp.instance_patch_states[0].failed_count #=> Integer
    #   resp.instance_patch_states[0].unreported_not_applicable_count #=> Integer
    #   resp.instance_patch_states[0].not_applicable_count #=> Integer
    #   resp.instance_patch_states[0].operation_start_time #=> Time
    #   resp.instance_patch_states[0].operation_end_time #=> Time
    #   resp.instance_patch_states[0].operation #=> String, one of "Scan", "Install"
    #   resp.instance_patch_states[0].last_no_reboot_install_operation_time #=> Time
    #   resp.instance_patch_states[0].reboot_option #=> String, one of "RebootIfNeeded", "NoReboot"
    #   resp.instance_patch_states[0].critical_non_compliant_count #=> Integer
    #   resp.instance_patch_states[0].security_non_compliant_count #=> Integer
    #   resp.instance_patch_states[0].other_non_compliant_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStatesForPatchGroup AWS API Documentation
    #
    # @overload describe_instance_patch_states_for_patch_group(params = {})
    # @param [Hash] params ({})
    def describe_instance_patch_states_for_patch_group(params = {}, options = {})
      req = build_request(:describe_instance_patch_states_for_patch_group, params)
      req.send_request(options)
    end

    # Retrieves information about the patches on the specified managed node
    # and their state relative to the patch baseline being used for the
    # node.
    #
    # @option params [required, String] :instance_id
    #   The ID of the managed node whose patch state information should be
    #   retrieved.
    #
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   Each element in the array is a structure containing a key-value pair.
    #
    #   Supported keys for `DescribeInstancePatches`include the following:
    #
    #   * <b> <code>Classification</code> </b>
    #
    #     Sample values: `Security` \| `SecurityUpdates`
    #
    #   * <b> <code>KBId</code> </b>
    #
    #     Sample values: `KB4480056` \| `java-1.7.0-openjdk.x86_64`
    #
    #   * <b> <code>Severity</code> </b>
    #
    #     Sample values: `Important` \| `Medium` \| `Low`
    #
    #   * <b> <code>State</code> </b>
    #
    #     Sample values: `Installed` \| `InstalledOther` \|
    #     `InstalledPendingReboot`
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of patches to return (per page).
    #
    # @return [Types::DescribeInstancePatchesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancePatchesResult#patches #patches} => Array&lt;Types::PatchComplianceData&gt;
    #   * {Types::DescribeInstancePatchesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_patches({
    #     instance_id: "InstanceId", # required
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"],
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.patches #=> Array
    #   resp.patches[0].title #=> String
    #   resp.patches[0].kb_id #=> String
    #   resp.patches[0].classification #=> String
    #   resp.patches[0].severity #=> String
    #   resp.patches[0].state #=> String, one of "INSTALLED", "INSTALLED_OTHER", "INSTALLED_PENDING_REBOOT", "INSTALLED_REJECTED", "MISSING", "NOT_APPLICABLE", "FAILED"
    #   resp.patches[0].installed_time #=> Time
    #   resp.patches[0].cve_ids #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatches AWS API Documentation
    #
    # @overload describe_instance_patches(params = {})
    # @param [Hash] params ({})
    def describe_instance_patches(params = {}, options = {})
      req = build_request(:describe_instance_patches, params)
      req.send_request(options)
    end

    # Describes a specific delete inventory operation.
    #
    # @option params [String] :deletion_id
    #   Specify the delete inventory ID for which you want information. This
    #   ID was returned by the `DeleteInventory` operation.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::DescribeInventoryDeletionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInventoryDeletionsResult#inventory_deletions #inventory_deletions} => Array&lt;Types::InventoryDeletionStatusItem&gt;
    #   * {Types::DescribeInventoryDeletionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inventory_deletions({
    #     deletion_id: "UUID",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.inventory_deletions #=> Array
    #   resp.inventory_deletions[0].deletion_id #=> String
    #   resp.inventory_deletions[0].type_name #=> String
    #   resp.inventory_deletions[0].deletion_start_time #=> Time
    #   resp.inventory_deletions[0].last_status #=> String, one of "InProgress", "Complete"
    #   resp.inventory_deletions[0].last_status_message #=> String
    #   resp.inventory_deletions[0].deletion_summary.total_count #=> Integer
    #   resp.inventory_deletions[0].deletion_summary.remaining_count #=> Integer
    #   resp.inventory_deletions[0].deletion_summary.summary_items #=> Array
    #   resp.inventory_deletions[0].deletion_summary.summary_items[0].version #=> String
    #   resp.inventory_deletions[0].deletion_summary.summary_items[0].count #=> Integer
    #   resp.inventory_deletions[0].deletion_summary.summary_items[0].remaining_count #=> Integer
    #   resp.inventory_deletions[0].last_status_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInventoryDeletions AWS API Documentation
    #
    # @overload describe_inventory_deletions(params = {})
    # @param [Hash] params ({})
    def describe_inventory_deletions(params = {}, options = {})
      req = build_request(:describe_inventory_deletions, params)
      req.send_request(options)
    end

    # Retrieves the individual task executions (one per target) for a
    # particular task run as part of a maintenance window execution.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the maintenance window execution the task is part of.
    #
    # @option params [required, String] :task_id
    #   The ID of the specific task in the maintenance window task that should
    #   be retrieved.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Optional filters used to scope down the returned task invocations. The
    #   supported filter key is `STATUS` with the corresponding values
    #   `PENDING`, `IN_PROGRESS`, `SUCCESS`, `FAILED`, `TIMED_OUT`,
    #   `CANCELLING`, and `CANCELLED`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowExecutionTaskInvocationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowExecutionTaskInvocationsResult#window_execution_task_invocation_identities #window_execution_task_invocation_identities} => Array&lt;Types::MaintenanceWindowExecutionTaskInvocationIdentity&gt;
    #   * {Types::DescribeMaintenanceWindowExecutionTaskInvocationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_execution_task_invocations({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     task_id: "MaintenanceWindowExecutionTaskId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_task_invocation_identities #=> Array
    #   resp.window_execution_task_invocation_identities[0].window_execution_id #=> String
    #   resp.window_execution_task_invocation_identities[0].task_execution_id #=> String
    #   resp.window_execution_task_invocation_identities[0].invocation_id #=> String
    #   resp.window_execution_task_invocation_identities[0].execution_id #=> String
    #   resp.window_execution_task_invocation_identities[0].task_type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.window_execution_task_invocation_identities[0].parameters #=> String
    #   resp.window_execution_task_invocation_identities[0].status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.window_execution_task_invocation_identities[0].status_details #=> String
    #   resp.window_execution_task_invocation_identities[0].start_time #=> Time
    #   resp.window_execution_task_invocation_identities[0].end_time #=> Time
    #   resp.window_execution_task_invocation_identities[0].owner_information #=> String
    #   resp.window_execution_task_invocation_identities[0].window_target_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionTaskInvocations AWS API Documentation
    #
    # @overload describe_maintenance_window_execution_task_invocations(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_execution_task_invocations(params = {}, options = {})
      req = build_request(:describe_maintenance_window_execution_task_invocations, params)
      req.send_request(options)
    end

    # For a given maintenance window execution, lists the tasks that were
    # run.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the maintenance window execution whose task executions
    #   should be retrieved.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Optional filters used to scope down the returned tasks. The supported
    #   filter key is `STATUS` with the corresponding values `PENDING`,
    #   `IN_PROGRESS`, `SUCCESS`, `FAILED`, `TIMED_OUT`, `CANCELLING`, and
    #   `CANCELLED`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowExecutionTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowExecutionTasksResult#window_execution_task_identities #window_execution_task_identities} => Array&lt;Types::MaintenanceWindowExecutionTaskIdentity&gt;
    #   * {Types::DescribeMaintenanceWindowExecutionTasksResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_execution_tasks({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_task_identities #=> Array
    #   resp.window_execution_task_identities[0].window_execution_id #=> String
    #   resp.window_execution_task_identities[0].task_execution_id #=> String
    #   resp.window_execution_task_identities[0].status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.window_execution_task_identities[0].status_details #=> String
    #   resp.window_execution_task_identities[0].start_time #=> Time
    #   resp.window_execution_task_identities[0].end_time #=> Time
    #   resp.window_execution_task_identities[0].task_arn #=> String
    #   resp.window_execution_task_identities[0].task_type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.window_execution_task_identities[0].alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.window_execution_task_identities[0].alarm_configuration.alarms #=> Array
    #   resp.window_execution_task_identities[0].alarm_configuration.alarms[0].name #=> String
    #   resp.window_execution_task_identities[0].triggered_alarms #=> Array
    #   resp.window_execution_task_identities[0].triggered_alarms[0].name #=> String
    #   resp.window_execution_task_identities[0].triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionTasks AWS API Documentation
    #
    # @overload describe_maintenance_window_execution_tasks(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_execution_tasks(params = {}, options = {})
      req = build_request(:describe_maintenance_window_execution_tasks, params)
      req.send_request(options)
    end

    # Lists the executions of a maintenance window. This includes
    # information about when the maintenance window was scheduled to be
    # active, and information about tasks registered and run with the
    # maintenance window.
    #
    # @option params [required, String] :window_id
    #   The ID of the maintenance window whose executions should be retrieved.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Each entry in the array is a structure containing:
    #
    #   * Key. A string between 1 and 128 characters. Supported keys include
    #     `ExecutedBefore` and `ExecutedAfter`.
    #
    #   * Values. An array of strings, each between 1 and 256 characters.
    #     Supported values are date/time strings in a valid ISO 8601 date/time
    #     format, such as `2021-11-04T05:00:00Z`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowExecutionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowExecutionsResult#window_executions #window_executions} => Array&lt;Types::MaintenanceWindowExecution&gt;
    #   * {Types::DescribeMaintenanceWindowExecutionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_executions({
    #     window_id: "MaintenanceWindowId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_executions #=> Array
    #   resp.window_executions[0].window_id #=> String
    #   resp.window_executions[0].window_execution_id #=> String
    #   resp.window_executions[0].status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.window_executions[0].status_details #=> String
    #   resp.window_executions[0].start_time #=> Time
    #   resp.window_executions[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutions AWS API Documentation
    #
    # @overload describe_maintenance_window_executions(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_executions(params = {}, options = {})
      req = build_request(:describe_maintenance_window_executions, params)
      req.send_request(options)
    end

    # Retrieves information about upcoming executions of a maintenance
    # window.
    #
    # @option params [String] :window_id
    #   The ID of the maintenance window to retrieve information about.
    #
    # @option params [Array<Types::Target>] :targets
    #   The managed node ID or key-value pair to retrieve information about.
    #
    # @option params [String] :resource_type
    #   The type of resource you want to retrieve information about. For
    #   example, `INSTANCE`.
    #
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   Filters used to limit the range of results. For example, you can limit
    #   maintenance window executions to only those scheduled before or after
    #   a certain date and time.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowScheduleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowScheduleResult#scheduled_window_executions #scheduled_window_executions} => Array&lt;Types::ScheduledWindowExecution&gt;
    #   * {Types::DescribeMaintenanceWindowScheduleResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_schedule({
    #     window_id: "MaintenanceWindowId",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     resource_type: "INSTANCE", # accepts INSTANCE, RESOURCE_GROUP
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_window_executions #=> Array
    #   resp.scheduled_window_executions[0].window_id #=> String
    #   resp.scheduled_window_executions[0].name #=> String
    #   resp.scheduled_window_executions[0].execution_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowSchedule AWS API Documentation
    #
    # @overload describe_maintenance_window_schedule(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_schedule(params = {}, options = {})
      req = build_request(:describe_maintenance_window_schedule, params)
      req.send_request(options)
    end

    # Lists the targets registered with the maintenance window.
    #
    # @option params [required, String] :window_id
    #   The ID of the maintenance window whose targets should be retrieved.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Optional filters that can be used to narrow down the scope of the
    #   returned window targets. The supported filter keys are `Type`,
    #   `WindowTargetId`, and `OwnerInformation`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowTargetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowTargetsResult#targets #targets} => Array&lt;Types::MaintenanceWindowTarget&gt;
    #   * {Types::DescribeMaintenanceWindowTargetsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_targets({
    #     window_id: "MaintenanceWindowId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.targets #=> Array
    #   resp.targets[0].window_id #=> String
    #   resp.targets[0].window_target_id #=> String
    #   resp.targets[0].resource_type #=> String, one of "INSTANCE", "RESOURCE_GROUP"
    #   resp.targets[0].targets #=> Array
    #   resp.targets[0].targets[0].key #=> String
    #   resp.targets[0].targets[0].values #=> Array
    #   resp.targets[0].targets[0].values[0] #=> String
    #   resp.targets[0].owner_information #=> String
    #   resp.targets[0].name #=> String
    #   resp.targets[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowTargets AWS API Documentation
    #
    # @overload describe_maintenance_window_targets(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_targets(params = {}, options = {})
      req = build_request(:describe_maintenance_window_targets, params)
      req.send_request(options)
    end

    # Lists the tasks in a maintenance window.
    #
    # <note markdown="1"> For maintenance window tasks without a specified target, you can't
    # supply values for `--max-errors` and `--max-concurrency`. Instead, the
    # system inserts a placeholder value of `1`, which may be reported in
    # the response to this command. These values don't affect the running
    # of your task and can be ignored.
    #
    #  </note>
    #
    # @option params [required, String] :window_id
    #   The ID of the maintenance window whose tasks should be retrieved.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Optional filters used to narrow down the scope of the returned tasks.
    #   The supported filter keys are `WindowTaskId`, `TaskArn`, `Priority`,
    #   and `TaskType`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowTasksResult#tasks #tasks} => Array&lt;Types::MaintenanceWindowTask&gt;
    #   * {Types::DescribeMaintenanceWindowTasksResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_tasks({
    #     window_id: "MaintenanceWindowId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].window_id #=> String
    #   resp.tasks[0].window_task_id #=> String
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.tasks[0].targets #=> Array
    #   resp.tasks[0].targets[0].key #=> String
    #   resp.tasks[0].targets[0].values #=> Array
    #   resp.tasks[0].targets[0].values[0] #=> String
    #   resp.tasks[0].task_parameters #=> Hash
    #   resp.tasks[0].task_parameters["MaintenanceWindowTaskParameterName"].values #=> Array
    #   resp.tasks[0].task_parameters["MaintenanceWindowTaskParameterName"].values[0] #=> String
    #   resp.tasks[0].priority #=> Integer
    #   resp.tasks[0].logging_info.s3_bucket_name #=> String
    #   resp.tasks[0].logging_info.s3_key_prefix #=> String
    #   resp.tasks[0].logging_info.s3_region #=> String
    #   resp.tasks[0].service_role_arn #=> String
    #   resp.tasks[0].max_concurrency #=> String
    #   resp.tasks[0].max_errors #=> String
    #   resp.tasks[0].name #=> String
    #   resp.tasks[0].description #=> String
    #   resp.tasks[0].cutoff_behavior #=> String, one of "CONTINUE_TASK", "CANCEL_TASK"
    #   resp.tasks[0].alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.tasks[0].alarm_configuration.alarms #=> Array
    #   resp.tasks[0].alarm_configuration.alarms[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowTasks AWS API Documentation
    #
    # @overload describe_maintenance_window_tasks(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_tasks(params = {}, options = {})
      req = build_request(:describe_maintenance_window_tasks, params)
      req.send_request(options)
    end

    # Retrieves the maintenance windows in an Amazon Web Services account.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Optional filters used to narrow down the scope of the returned
    #   maintenance windows. Supported filter keys are `Name` and `Enabled`.
    #   For example, `Name=MyMaintenanceWindow` and `Enabled=True`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowsResult#window_identities #window_identities} => Array&lt;Types::MaintenanceWindowIdentity&gt;
    #   * {Types::DescribeMaintenanceWindowsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_windows({
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_identities #=> Array
    #   resp.window_identities[0].window_id #=> String
    #   resp.window_identities[0].name #=> String
    #   resp.window_identities[0].description #=> String
    #   resp.window_identities[0].enabled #=> Boolean
    #   resp.window_identities[0].duration #=> Integer
    #   resp.window_identities[0].cutoff #=> Integer
    #   resp.window_identities[0].schedule #=> String
    #   resp.window_identities[0].schedule_timezone #=> String
    #   resp.window_identities[0].schedule_offset #=> Integer
    #   resp.window_identities[0].end_date #=> String
    #   resp.window_identities[0].start_date #=> String
    #   resp.window_identities[0].next_execution_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindows AWS API Documentation
    #
    # @overload describe_maintenance_windows(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_windows(params = {}, options = {})
      req = build_request(:describe_maintenance_windows, params)
      req.send_request(options)
    end

    # Retrieves information about the maintenance window targets or tasks
    # that a managed node is associated with.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   The managed node ID or key-value pair to retrieve information about.
    #
    # @option params [required, String] :resource_type
    #   The type of resource you want to retrieve information about. For
    #   example, `INSTANCE`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowsForTargetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowsForTargetResult#window_identities #window_identities} => Array&lt;Types::MaintenanceWindowIdentityForTarget&gt;
    #   * {Types::DescribeMaintenanceWindowsForTargetResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_windows_for_target({
    #     targets: [ # required
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     resource_type: "INSTANCE", # required, accepts INSTANCE, RESOURCE_GROUP
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_identities #=> Array
    #   resp.window_identities[0].window_id #=> String
    #   resp.window_identities[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowsForTarget AWS API Documentation
    #
    # @overload describe_maintenance_windows_for_target(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_windows_for_target(params = {}, options = {})
      req = build_request(:describe_maintenance_windows_for_target, params)
      req.send_request(options)
    end

    # Query a set of OpsItems. You must have permission in Identity and
    # Access Management (IAM) to query a list of OpsItems. For more
    # information, see [Getting started with OpsCenter][1] in the *Amazon
    # Web Services Systems Manager User Guide*.
    #
    # Operations engineers and IT professionals use Amazon Web Services
    # Systems Manager OpsCenter to view, investigate, and remediate
    # operational issues impacting the performance and health of their
    # Amazon Web Services resources. For more information, see
    # [OpsCenter][2] in the *Amazon Web Services Systems Manager User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html
    # [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html
    #
    # @option params [Array<Types::OpsItemFilter>] :ops_item_filters
    #   One or more filters to limit the response.
    #
    #   * Key: CreatedTime
    #
    #     Operations: GreaterThan, LessThan
    #
    #   * Key: LastModifiedBy
    #
    #     Operations: Contains, Equals
    #
    #   * Key: LastModifiedTime
    #
    #     Operations: GreaterThan, LessThan
    #
    #   * Key: Priority
    #
    #     Operations: Equals
    #
    #   * Key: Source
    #
    #     Operations: Contains, Equals
    #
    #   * Key: Status
    #
    #     Operations: Equals
    #
    #   * Key: Title*
    #
    #     Operations: Equals,Contains
    #
    #   * Key: OperationalData**
    #
    #     Operations: Equals
    #
    #   * Key: OperationalDataKey
    #
    #     Operations: Equals
    #
    #   * Key: OperationalDataValue
    #
    #     Operations: Equals, Contains
    #
    #   * Key: OpsItemId
    #
    #     Operations: Equals
    #
    #   * Key: ResourceId
    #
    #     Operations: Contains
    #
    #   * Key: AutomationId
    #
    #     Operations: Equals
    #
    #   *The Equals operator for Title matches the first 100 characters. If
    #   you specify more than 100 characters, they system returns an error
    #   that the filter value exceeds the length limit.
    #
    #   **If you filter the response by using the OperationalData operator,
    #   specify a key-value pair by using the following JSON format:
    #   \\\{"key":"key\_name","value":"a\_value"\\}
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::DescribeOpsItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOpsItemsResponse#next_token #next_token} => String
    #   * {Types::DescribeOpsItemsResponse#ops_item_summaries #ops_item_summaries} => Array&lt;Types::OpsItemSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ops_items({
    #     ops_item_filters: [
    #       {
    #         key: "Status", # required, accepts Status, CreatedBy, Source, Priority, Title, OpsItemId, CreatedTime, LastModifiedTime, ActualStartTime, ActualEndTime, PlannedStartTime, PlannedEndTime, OperationalData, OperationalDataKey, OperationalDataValue, ResourceId, AutomationId, Category, Severity, OpsItemType, ChangeRequestByRequesterArn, ChangeRequestByRequesterName, ChangeRequestByApproverArn, ChangeRequestByApproverName, ChangeRequestByTemplate, ChangeRequestByTargetsResourceGroup, InsightByType, AccountId
    #         values: ["OpsItemFilterValue"], # required
    #         operator: "Equal", # required, accepts Equal, Contains, GreaterThan, LessThan
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.ops_item_summaries #=> Array
    #   resp.ops_item_summaries[0].created_by #=> String
    #   resp.ops_item_summaries[0].created_time #=> Time
    #   resp.ops_item_summaries[0].last_modified_by #=> String
    #   resp.ops_item_summaries[0].last_modified_time #=> Time
    #   resp.ops_item_summaries[0].priority #=> Integer
    #   resp.ops_item_summaries[0].source #=> String
    #   resp.ops_item_summaries[0].status #=> String, one of "Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Rejected", "Closed"
    #   resp.ops_item_summaries[0].ops_item_id #=> String
    #   resp.ops_item_summaries[0].title #=> String
    #   resp.ops_item_summaries[0].operational_data #=> Hash
    #   resp.ops_item_summaries[0].operational_data["OpsItemDataKey"].value #=> String
    #   resp.ops_item_summaries[0].operational_data["OpsItemDataKey"].type #=> String, one of "SearchableString", "String"
    #   resp.ops_item_summaries[0].category #=> String
    #   resp.ops_item_summaries[0].severity #=> String
    #   resp.ops_item_summaries[0].ops_item_type #=> String
    #   resp.ops_item_summaries[0].actual_start_time #=> Time
    #   resp.ops_item_summaries[0].actual_end_time #=> Time
    #   resp.ops_item_summaries[0].planned_start_time #=> Time
    #   resp.ops_item_summaries[0].planned_end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeOpsItems AWS API Documentation
    #
    # @overload describe_ops_items(params = {})
    # @param [Hash] params ({})
    def describe_ops_items(params = {}, options = {})
      req = build_request(:describe_ops_items, params)
      req.send_request(options)
    end

    # Get information about a parameter.
    #
    # Request results are returned on a best-effort basis. If you specify
    # `MaxResults` in the request, the response includes information up to
    # the limit specified. The number of items returned, however, can be
    # between zero and the value of `MaxResults`. If the service reaches an
    # internal limit while processing the results, it stops the operation
    # and returns the matching values up to that point and a `NextToken`.
    # You can specify the `NextToken` in a subsequent call to get the next
    # set of results.
    #
    # If you change the KMS key alias for the KMS key used to encrypt a
    # parameter, then you must also update the key alias the parameter uses
    # to reference KMS. Otherwise, `DescribeParameters` retrieves whatever
    # the original key alias was referencing.
    #
    # @option params [Array<Types::ParametersFilter>] :filters
    #   This data type is deprecated. Instead, use `ParameterFilters`.
    #
    # @option params [Array<Types::ParameterStringFilter>] :parameter_filters
    #   Filters to limit the request results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeParametersResult#parameters #parameters} => Array&lt;Types::ParameterMetadata&gt;
    #   * {Types::DescribeParametersResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameters({
    #     filters: [
    #       {
    #         key: "Name", # required, accepts Name, Type, KeyId
    #         values: ["ParametersFilterValue"], # required
    #       },
    #     ],
    #     parameter_filters: [
    #       {
    #         key: "ParameterStringFilterKey", # required
    #         option: "ParameterStringQueryOption",
    #         values: ["ParameterStringFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].name #=> String
    #   resp.parameters[0].type #=> String, one of "String", "StringList", "SecureString"
    #   resp.parameters[0].key_id #=> String
    #   resp.parameters[0].last_modified_date #=> Time
    #   resp.parameters[0].last_modified_user #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].allowed_pattern #=> String
    #   resp.parameters[0].version #=> Integer
    #   resp.parameters[0].tier #=> String, one of "Standard", "Advanced", "Intelligent-Tiering"
    #   resp.parameters[0].policies #=> Array
    #   resp.parameters[0].policies[0].policy_text #=> String
    #   resp.parameters[0].policies[0].policy_type #=> String
    #   resp.parameters[0].policies[0].policy_status #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeParameters AWS API Documentation
    #
    # @overload describe_parameters(params = {})
    # @param [Hash] params ({})
    def describe_parameters(params = {}, options = {})
      req = build_request(:describe_parameters, params)
      req.send_request(options)
    end

    # Lists the patch baselines in your Amazon Web Services account.
    #
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   Each element in the array is a structure containing a key-value pair.
    #
    #   Supported keys for `DescribePatchBaselines` include the following:
    #
    #   * <b> <code>NAME_PREFIX</code> </b>
    #
    #     Sample values: `AWS-` \| `My-`
    #
    #   * <b> <code>OWNER</code> </b>
    #
    #     Sample values: `AWS` \| `Self`
    #
    #   * <b> <code>OPERATING_SYSTEM</code> </b>
    #
    #     Sample values: `AMAZON_LINUX` \| `SUSE` \| `WINDOWS`
    #
    # @option params [Integer] :max_results
    #   The maximum number of patch baselines to return (per page).
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribePatchBaselinesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePatchBaselinesResult#baseline_identities #baseline_identities} => Array&lt;Types::PatchBaselineIdentity&gt;
    #   * {Types::DescribePatchBaselinesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_baselines({
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_identities #=> Array
    #   resp.baseline_identities[0].baseline_id #=> String
    #   resp.baseline_identities[0].baseline_name #=> String
    #   resp.baseline_identities[0].operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"
    #   resp.baseline_identities[0].baseline_description #=> String
    #   resp.baseline_identities[0].default_baseline #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchBaselines AWS API Documentation
    #
    # @overload describe_patch_baselines(params = {})
    # @param [Hash] params ({})
    def describe_patch_baselines(params = {}, options = {})
      req = build_request(:describe_patch_baselines, params)
      req.send_request(options)
    end

    # Returns high-level aggregated patch compliance state information for a
    # patch group.
    #
    # @option params [required, String] :patch_group
    #   The name of the patch group whose patch snapshot should be retrieved.
    #
    # @return [Types::DescribePatchGroupStateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePatchGroupStateResult#instances #instances} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_installed_patches #instances_with_installed_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_installed_other_patches #instances_with_installed_other_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_installed_pending_reboot_patches #instances_with_installed_pending_reboot_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_installed_rejected_patches #instances_with_installed_rejected_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_missing_patches #instances_with_missing_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_failed_patches #instances_with_failed_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_not_applicable_patches #instances_with_not_applicable_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_unreported_not_applicable_patches #instances_with_unreported_not_applicable_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_critical_non_compliant_patches #instances_with_critical_non_compliant_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_security_non_compliant_patches #instances_with_security_non_compliant_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_other_non_compliant_patches #instances_with_other_non_compliant_patches} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_group_state({
    #     patch_group: "PatchGroup", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Integer
    #   resp.instances_with_installed_patches #=> Integer
    #   resp.instances_with_installed_other_patches #=> Integer
    #   resp.instances_with_installed_pending_reboot_patches #=> Integer
    #   resp.instances_with_installed_rejected_patches #=> Integer
    #   resp.instances_with_missing_patches #=> Integer
    #   resp.instances_with_failed_patches #=> Integer
    #   resp.instances_with_not_applicable_patches #=> Integer
    #   resp.instances_with_unreported_not_applicable_patches #=> Integer
    #   resp.instances_with_critical_non_compliant_patches #=> Integer
    #   resp.instances_with_security_non_compliant_patches #=> Integer
    #   resp.instances_with_other_non_compliant_patches #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroupState AWS API Documentation
    #
    # @overload describe_patch_group_state(params = {})
    # @param [Hash] params ({})
    def describe_patch_group_state(params = {}, options = {})
      req = build_request(:describe_patch_group_state, params)
      req.send_request(options)
    end

    # Lists all patch groups that have been registered with patch baselines.
    #
    # @option params [Integer] :max_results
    #   The maximum number of patch groups to return (per page).
    #
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   Each element in the array is a structure containing a key-value pair.
    #
    #   Supported keys for `DescribePatchGroups` include the following:
    #
    #   * <b> <code>NAME_PREFIX</code> </b>
    #
    #     Sample values: `AWS-` \| `My-`.
    #
    #   * <b> <code>OPERATING_SYSTEM</code> </b>
    #
    #     Sample values: `AMAZON_LINUX` \| `SUSE` \| `WINDOWS`
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribePatchGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePatchGroupsResult#mappings #mappings} => Array&lt;Types::PatchGroupPatchBaselineMapping&gt;
    #   * {Types::DescribePatchGroupsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_groups({
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"],
    #       },
    #     ],
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.mappings #=> Array
    #   resp.mappings[0].patch_group #=> String
    #   resp.mappings[0].baseline_identity.baseline_id #=> String
    #   resp.mappings[0].baseline_identity.baseline_name #=> String
    #   resp.mappings[0].baseline_identity.operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"
    #   resp.mappings[0].baseline_identity.baseline_description #=> String
    #   resp.mappings[0].baseline_identity.default_baseline #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroups AWS API Documentation
    #
    # @overload describe_patch_groups(params = {})
    # @param [Hash] params ({})
    def describe_patch_groups(params = {}, options = {})
      req = build_request(:describe_patch_groups, params)
      req.send_request(options)
    end

    # Lists the properties of available patches organized by product,
    # product family, classification, severity, and other properties of
    # available patches. You can use the reported properties in the filters
    # you specify in requests for operations such as CreatePatchBaseline,
    # UpdatePatchBaseline, DescribeAvailablePatches, and
    # DescribePatchBaselines.
    #
    # The following section lists the properties that can be used in filters
    # for each major operating system type:
    #
    # AMAZON\_LINUX
    #
    # : Valid properties: `PRODUCT` \| `CLASSIFICATION` \| `SEVERITY`
    #
    # AMAZON\_LINUX\_2
    #
    # : Valid properties: `PRODUCT` \| `CLASSIFICATION` \| `SEVERITY`
    #
    # CENTOS
    #
    # : Valid properties: `PRODUCT` \| `CLASSIFICATION` \| `SEVERITY`
    #
    # DEBIAN
    #
    # : Valid properties: `PRODUCT` \| `PRIORITY`
    #
    # MACOS
    #
    # : Valid properties: `PRODUCT` \| `CLASSIFICATION`
    #
    # ORACLE\_LINUX
    #
    # : Valid properties: `PRODUCT` \| `CLASSIFICATION` \| `SEVERITY`
    #
    # REDHAT\_ENTERPRISE\_LINUX
    #
    # : Valid properties: `PRODUCT` \| `CLASSIFICATION` \| `SEVERITY`
    #
    # SUSE
    #
    # : Valid properties: `PRODUCT` \| `CLASSIFICATION` \| `SEVERITY`
    #
    # UBUNTU
    #
    # : Valid properties: `PRODUCT` \| `PRIORITY`
    #
    # WINDOWS
    #
    # : Valid properties: `PRODUCT` \| `PRODUCT_FAMILY` \| `CLASSIFICATION`
    #   \| `MSRC_SEVERITY`
    #
    # @option params [required, String] :operating_system
    #   The operating system type for which to list patches.
    #
    # @option params [required, String] :property
    #   The patch property for which you want to view patch details.
    #
    # @option params [String] :patch_set
    #   Indicates whether to list patches for the Windows operating system or
    #   for applications released by Microsoft. Not applicable for the Linux
    #   or macOS operating systems.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribePatchPropertiesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePatchPropertiesResult#properties #properties} => Array&lt;Hash&lt;String,String&gt;&gt;
    #   * {Types::DescribePatchPropertiesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_properties({
    #     operating_system: "WINDOWS", # required, accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, AMAZON_LINUX_2022, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN, MACOS, RASPBIAN, ROCKY_LINUX, ALMA_LINUX, AMAZON_LINUX_2023
    #     property: "PRODUCT", # required, accepts PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY, PRIORITY, SEVERITY
    #     patch_set: "OS", # accepts OS, APPLICATION
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.properties #=> Array
    #   resp.properties[0] #=> Hash
    #   resp.properties[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchProperties AWS API Documentation
    #
    # @overload describe_patch_properties(params = {})
    # @param [Hash] params ({})
    def describe_patch_properties(params = {}, options = {})
      req = build_request(:describe_patch_properties, params)
      req.send_request(options)
    end

    # Retrieves a list of all active sessions (both connected and
    # disconnected) or terminated sessions from the past 30 days.
    #
    # @option params [required, String] :state
    #   The session status to retrieve a list of sessions for. For example,
    #   "Active".
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Array<Types::SessionFilter>] :filters
    #   One or more filters to limit the type of sessions returned by the
    #   request.
    #
    # @return [Types::DescribeSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSessionsResponse#sessions #sessions} => Array&lt;Types::Session&gt;
    #   * {Types::DescribeSessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sessions({
    #     state: "Active", # required, accepts Active, History
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Target, Owner, Status, SessionId
    #         value: "SessionFilterValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.sessions #=> Array
    #   resp.sessions[0].session_id #=> String
    #   resp.sessions[0].target #=> String
    #   resp.sessions[0].status #=> String, one of "Connected", "Connecting", "Disconnected", "Terminated", "Terminating", "Failed"
    #   resp.sessions[0].start_date #=> Time
    #   resp.sessions[0].end_date #=> Time
    #   resp.sessions[0].document_name #=> String
    #   resp.sessions[0].owner #=> String
    #   resp.sessions[0].reason #=> String
    #   resp.sessions[0].details #=> String
    #   resp.sessions[0].output_url.s3_output_url #=> String
    #   resp.sessions[0].output_url.cloud_watch_output_url #=> String
    #   resp.sessions[0].max_session_duration #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeSessions AWS API Documentation
    #
    # @overload describe_sessions(params = {})
    # @param [Hash] params ({})
    def describe_sessions(params = {}, options = {})
      req = build_request(:describe_sessions, params)
      req.send_request(options)
    end

    # Deletes the association between an OpsItem and a related item. For
    # example, this API operation can delete an Incident Manager incident
    # from an OpsItem. Incident Manager is a capability of Amazon Web
    # Services Systems Manager.
    #
    # @option params [required, String] :ops_item_id
    #   The ID of the OpsItem for which you want to delete an association
    #   between the OpsItem and a related item.
    #
    # @option params [required, String] :association_id
    #   The ID of the association for which you want to delete an association
    #   between the OpsItem and a related item.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_ops_item_related_item({
    #     ops_item_id: "OpsItemId", # required
    #     association_id: "OpsItemRelatedItemAssociationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DisassociateOpsItemRelatedItem AWS API Documentation
    #
    # @overload disassociate_ops_item_related_item(params = {})
    # @param [Hash] params ({})
    def disassociate_ops_item_related_item(params = {}, options = {})
      req = build_request(:disassociate_ops_item_related_item, params)
      req.send_request(options)
    end

    # Get detailed information about a particular Automation execution.
    #
    # @option params [required, String] :automation_execution_id
    #   The unique identifier for an existing automation execution to examine.
    #   The execution ID is returned by StartAutomationExecution when the
    #   execution of an Automation runbook is initiated.
    #
    # @return [Types::GetAutomationExecutionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutomationExecutionResult#automation_execution #automation_execution} => Types::AutomationExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_automation_execution({
    #     automation_execution_id: "AutomationExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_execution.automation_execution_id #=> String
    #   resp.automation_execution.document_name #=> String
    #   resp.automation_execution.document_version #=> String
    #   resp.automation_execution.execution_start_time #=> Time
    #   resp.automation_execution.execution_end_time #=> Time
    #   resp.automation_execution.automation_execution_status #=> String, one of "Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"
    #   resp.automation_execution.step_executions #=> Array
    #   resp.automation_execution.step_executions[0].step_name #=> String
    #   resp.automation_execution.step_executions[0].action #=> String
    #   resp.automation_execution.step_executions[0].timeout_seconds #=> Integer
    #   resp.automation_execution.step_executions[0].on_failure #=> String
    #   resp.automation_execution.step_executions[0].max_attempts #=> Integer
    #   resp.automation_execution.step_executions[0].execution_start_time #=> Time
    #   resp.automation_execution.step_executions[0].execution_end_time #=> Time
    #   resp.automation_execution.step_executions[0].step_status #=> String, one of "Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"
    #   resp.automation_execution.step_executions[0].response_code #=> String
    #   resp.automation_execution.step_executions[0].inputs #=> Hash
    #   resp.automation_execution.step_executions[0].inputs["String"] #=> String
    #   resp.automation_execution.step_executions[0].outputs #=> Hash
    #   resp.automation_execution.step_executions[0].outputs["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.step_executions[0].outputs["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.step_executions[0].response #=> String
    #   resp.automation_execution.step_executions[0].failure_message #=> String
    #   resp.automation_execution.step_executions[0].failure_details.failure_stage #=> String
    #   resp.automation_execution.step_executions[0].failure_details.failure_type #=> String
    #   resp.automation_execution.step_executions[0].failure_details.details #=> Hash
    #   resp.automation_execution.step_executions[0].failure_details.details["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.step_executions[0].failure_details.details["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.step_executions[0].step_execution_id #=> String
    #   resp.automation_execution.step_executions[0].overridden_parameters #=> Hash
    #   resp.automation_execution.step_executions[0].overridden_parameters["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.step_executions[0].overridden_parameters["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.step_executions[0].is_end #=> Boolean
    #   resp.automation_execution.step_executions[0].next_step #=> String
    #   resp.automation_execution.step_executions[0].is_critical #=> Boolean
    #   resp.automation_execution.step_executions[0].valid_next_steps #=> Array
    #   resp.automation_execution.step_executions[0].valid_next_steps[0] #=> String
    #   resp.automation_execution.step_executions[0].targets #=> Array
    #   resp.automation_execution.step_executions[0].targets[0].key #=> String
    #   resp.automation_execution.step_executions[0].targets[0].values #=> Array
    #   resp.automation_execution.step_executions[0].targets[0].values[0] #=> String
    #   resp.automation_execution.step_executions[0].target_location.accounts #=> Array
    #   resp.automation_execution.step_executions[0].target_location.accounts[0] #=> String
    #   resp.automation_execution.step_executions[0].target_location.regions #=> Array
    #   resp.automation_execution.step_executions[0].target_location.regions[0] #=> String
    #   resp.automation_execution.step_executions[0].target_location.target_location_max_concurrency #=> String
    #   resp.automation_execution.step_executions[0].target_location.target_location_max_errors #=> String
    #   resp.automation_execution.step_executions[0].target_location.execution_role_name #=> String
    #   resp.automation_execution.step_executions[0].target_location.target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.automation_execution.step_executions[0].target_location.target_location_alarm_configuration.alarms #=> Array
    #   resp.automation_execution.step_executions[0].target_location.target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.automation_execution.step_executions[0].triggered_alarms #=> Array
    #   resp.automation_execution.step_executions[0].triggered_alarms[0].name #=> String
    #   resp.automation_execution.step_executions[0].triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #   resp.automation_execution.step_executions_truncated #=> Boolean
    #   resp.automation_execution.parameters #=> Hash
    #   resp.automation_execution.parameters["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.parameters["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.outputs #=> Hash
    #   resp.automation_execution.outputs["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.outputs["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.failure_message #=> String
    #   resp.automation_execution.mode #=> String, one of "Auto", "Interactive"
    #   resp.automation_execution.parent_automation_execution_id #=> String
    #   resp.automation_execution.executed_by #=> String
    #   resp.automation_execution.current_step_name #=> String
    #   resp.automation_execution.current_action #=> String
    #   resp.automation_execution.target_parameter_name #=> String
    #   resp.automation_execution.targets #=> Array
    #   resp.automation_execution.targets[0].key #=> String
    #   resp.automation_execution.targets[0].values #=> Array
    #   resp.automation_execution.targets[0].values[0] #=> String
    #   resp.automation_execution.target_maps #=> Array
    #   resp.automation_execution.target_maps[0] #=> Hash
    #   resp.automation_execution.target_maps[0]["TargetMapKey"] #=> Array
    #   resp.automation_execution.target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.automation_execution.resolved_targets.parameter_values #=> Array
    #   resp.automation_execution.resolved_targets.parameter_values[0] #=> String
    #   resp.automation_execution.resolved_targets.truncated #=> Boolean
    #   resp.automation_execution.max_concurrency #=> String
    #   resp.automation_execution.max_errors #=> String
    #   resp.automation_execution.target #=> String
    #   resp.automation_execution.target_locations #=> Array
    #   resp.automation_execution.target_locations[0].accounts #=> Array
    #   resp.automation_execution.target_locations[0].accounts[0] #=> String
    #   resp.automation_execution.target_locations[0].regions #=> Array
    #   resp.automation_execution.target_locations[0].regions[0] #=> String
    #   resp.automation_execution.target_locations[0].target_location_max_concurrency #=> String
    #   resp.automation_execution.target_locations[0].target_location_max_errors #=> String
    #   resp.automation_execution.target_locations[0].execution_role_name #=> String
    #   resp.automation_execution.target_locations[0].target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.automation_execution.target_locations[0].target_location_alarm_configuration.alarms #=> Array
    #   resp.automation_execution.target_locations[0].target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.automation_execution.progress_counters.total_steps #=> Integer
    #   resp.automation_execution.progress_counters.success_steps #=> Integer
    #   resp.automation_execution.progress_counters.failed_steps #=> Integer
    #   resp.automation_execution.progress_counters.cancelled_steps #=> Integer
    #   resp.automation_execution.progress_counters.timed_out_steps #=> Integer
    #   resp.automation_execution.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.automation_execution.alarm_configuration.alarms #=> Array
    #   resp.automation_execution.alarm_configuration.alarms[0].name #=> String
    #   resp.automation_execution.triggered_alarms #=> Array
    #   resp.automation_execution.triggered_alarms[0].name #=> String
    #   resp.automation_execution.triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #   resp.automation_execution.automation_subtype #=> String, one of "ChangeRequest"
    #   resp.automation_execution.scheduled_time #=> Time
    #   resp.automation_execution.runbooks #=> Array
    #   resp.automation_execution.runbooks[0].document_name #=> String
    #   resp.automation_execution.runbooks[0].document_version #=> String
    #   resp.automation_execution.runbooks[0].parameters #=> Hash
    #   resp.automation_execution.runbooks[0].parameters["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.runbooks[0].parameters["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.runbooks[0].target_parameter_name #=> String
    #   resp.automation_execution.runbooks[0].targets #=> Array
    #   resp.automation_execution.runbooks[0].targets[0].key #=> String
    #   resp.automation_execution.runbooks[0].targets[0].values #=> Array
    #   resp.automation_execution.runbooks[0].targets[0].values[0] #=> String
    #   resp.automation_execution.runbooks[0].target_maps #=> Array
    #   resp.automation_execution.runbooks[0].target_maps[0] #=> Hash
    #   resp.automation_execution.runbooks[0].target_maps[0]["TargetMapKey"] #=> Array
    #   resp.automation_execution.runbooks[0].target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.automation_execution.runbooks[0].max_concurrency #=> String
    #   resp.automation_execution.runbooks[0].max_errors #=> String
    #   resp.automation_execution.runbooks[0].target_locations #=> Array
    #   resp.automation_execution.runbooks[0].target_locations[0].accounts #=> Array
    #   resp.automation_execution.runbooks[0].target_locations[0].accounts[0] #=> String
    #   resp.automation_execution.runbooks[0].target_locations[0].regions #=> Array
    #   resp.automation_execution.runbooks[0].target_locations[0].regions[0] #=> String
    #   resp.automation_execution.runbooks[0].target_locations[0].target_location_max_concurrency #=> String
    #   resp.automation_execution.runbooks[0].target_locations[0].target_location_max_errors #=> String
    #   resp.automation_execution.runbooks[0].target_locations[0].execution_role_name #=> String
    #   resp.automation_execution.runbooks[0].target_locations[0].target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.automation_execution.runbooks[0].target_locations[0].target_location_alarm_configuration.alarms #=> Array
    #   resp.automation_execution.runbooks[0].target_locations[0].target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.automation_execution.ops_item_id #=> String
    #   resp.automation_execution.association_id #=> String
    #   resp.automation_execution.change_request_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetAutomationExecution AWS API Documentation
    #
    # @overload get_automation_execution(params = {})
    # @param [Hash] params ({})
    def get_automation_execution(params = {}, options = {})
      req = build_request(:get_automation_execution, params)
      req.send_request(options)
    end

    # Gets the state of a Amazon Web Services Systems Manager change
    # calendar at the current time or a specified time. If you specify a
    # time, `GetCalendarState` returns the state of the calendar at that
    # specific time, and returns the next time that the change calendar
    # state will transition. If you don't specify a time,
    # `GetCalendarState` uses the current time. Change Calendar entries have
    # two possible states: `OPEN` or `CLOSED`.
    #
    # If you specify more than one calendar in a request, the command
    # returns the status of `OPEN` only if all calendars in the request are
    # open. If one or more calendars in the request are closed, the status
    # returned is `CLOSED`.
    #
    # For more information about Change Calendar, a capability of Amazon Web
    # Services Systems Manager, see [Amazon Web Services Systems Manager
    # Change Calendar][1] in the *Amazon Web Services Systems Manager User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar.html
    #
    # @option params [required, Array<String>] :calendar_names
    #   The names or Amazon Resource Names (ARNs) of the Systems Manager
    #   documents (SSM documents) that represent the calendar entries for
    #   which you want to get the state.
    #
    # @option params [String] :at_time
    #   (Optional) The specific time for which you want to get calendar state
    #   information, in [ISO 8601][1] format. If you don't specify a value or
    #   `AtTime`, the current time is used.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_8601
    #
    # @return [Types::GetCalendarStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCalendarStateResponse#state #state} => String
    #   * {Types::GetCalendarStateResponse#at_time #at_time} => String
    #   * {Types::GetCalendarStateResponse#next_transition_time #next_transition_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_calendar_state({
    #     calendar_names: ["CalendarNameOrARN"], # required
    #     at_time: "ISO8601String",
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String, one of "OPEN", "CLOSED"
    #   resp.at_time #=> String
    #   resp.next_transition_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetCalendarState AWS API Documentation
    #
    # @overload get_calendar_state(params = {})
    # @param [Hash] params ({})
    def get_calendar_state(params = {}, options = {})
      req = build_request(:get_calendar_state, params)
      req.send_request(options)
    end

    # Returns detailed information about command execution for an invocation
    # or plugin.
    #
    # `GetCommandInvocation` only gives the execution status of a plugin in
    # a document. To get the command execution status on a specific managed
    # node, use ListCommandInvocations. To get the command execution status
    # across managed nodes, use ListCommands.
    #
    # @option params [required, String] :command_id
    #   (Required) The parent command ID of the invocation plugin.
    #
    # @option params [required, String] :instance_id
    #   (Required) The ID of the managed node targeted by the command. A
    #   *managed node* can be an Amazon Elastic Compute Cloud (Amazon EC2)
    #   instance, edge device, and on-premises server or VM in your hybrid
    #   environment that is configured for Amazon Web Services Systems
    #   Manager.
    #
    # @option params [String] :plugin_name
    #   The name of the step for which you want detailed results. If the
    #   document contains only one step, you can omit the name and details for
    #   that step. If the document contains more than one step, you must
    #   specify the name of the step for which you want to view details. Be
    #   sure to specify the name of the step, not the name of a plugin like
    #   `aws:RunShellScript`.
    #
    #   To find the `PluginName`, check the document content and find the name
    #   of the step you want details for. Alternatively, use
    #   ListCommandInvocations with the `CommandId` and `Details` parameters.
    #   The `PluginName` is the `Name` attribute of the `CommandPlugin` object
    #   in the `CommandPlugins` list.
    #
    # @return [Types::GetCommandInvocationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCommandInvocationResult#command_id #command_id} => String
    #   * {Types::GetCommandInvocationResult#instance_id #instance_id} => String
    #   * {Types::GetCommandInvocationResult#comment #comment} => String
    #   * {Types::GetCommandInvocationResult#document_name #document_name} => String
    #   * {Types::GetCommandInvocationResult#document_version #document_version} => String
    #   * {Types::GetCommandInvocationResult#plugin_name #plugin_name} => String
    #   * {Types::GetCommandInvocationResult#response_code #response_code} => Integer
    #   * {Types::GetCommandInvocationResult#execution_start_date_time #execution_start_date_time} => String
    #   * {Types::GetCommandInvocationResult#execution_elapsed_time #execution_elapsed_time} => String
    #   * {Types::GetCommandInvocationResult#execution_end_date_time #execution_end_date_time} => String
    #   * {Types::GetCommandInvocationResult#status #status} => String
    #   * {Types::GetCommandInvocationResult#status_details #status_details} => String
    #   * {Types::GetCommandInvocationResult#standard_output_content #standard_output_content} => String
    #   * {Types::GetCommandInvocationResult#standard_output_url #standard_output_url} => String
    #   * {Types::GetCommandInvocationResult#standard_error_content #standard_error_content} => String
    #   * {Types::GetCommandInvocationResult#standard_error_url #standard_error_url} => String
    #   * {Types::GetCommandInvocationResult#cloud_watch_output_config #cloud_watch_output_config} => Types::CloudWatchOutputConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_command_invocation({
    #     command_id: "CommandId", # required
    #     instance_id: "InstanceId", # required
    #     plugin_name: "CommandPluginName",
    #   })
    #
    # @example Response structure
    #
    #   resp.command_id #=> String
    #   resp.instance_id #=> String
    #   resp.comment #=> String
    #   resp.document_name #=> String
    #   resp.document_version #=> String
    #   resp.plugin_name #=> String
    #   resp.response_code #=> Integer
    #   resp.execution_start_date_time #=> String
    #   resp.execution_elapsed_time #=> String
    #   resp.execution_end_date_time #=> String
    #   resp.status #=> String, one of "Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"
    #   resp.status_details #=> String
    #   resp.standard_output_content #=> String
    #   resp.standard_output_url #=> String
    #   resp.standard_error_content #=> String
    #   resp.standard_error_url #=> String
    #   resp.cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * command_executed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetCommandInvocation AWS API Documentation
    #
    # @overload get_command_invocation(params = {})
    # @param [Hash] params ({})
    def get_command_invocation(params = {}, options = {})
      req = build_request(:get_command_invocation, params)
      req.send_request(options)
    end

    # Retrieves the Session Manager connection status for a managed node to
    # determine whether it is running and ready to receive Session Manager
    # connections.
    #
    # @option params [required, String] :target
    #   The managed node ID.
    #
    # @return [Types::GetConnectionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionStatusResponse#target #target} => String
    #   * {Types::GetConnectionStatusResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection_status({
    #     target: "SessionTarget", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target #=> String
    #   resp.status #=> String, one of "Connected", "NotConnected"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetConnectionStatus AWS API Documentation
    #
    # @overload get_connection_status(params = {})
    # @param [Hash] params ({})
    def get_connection_status(params = {}, options = {})
      req = build_request(:get_connection_status, params)
      req.send_request(options)
    end

    # Retrieves the default patch baseline. Amazon Web Services Systems
    # Manager supports creating multiple default patch baselines. For
    # example, you can create a default patch baseline for each operating
    # system.
    #
    # If you don't specify an operating system value, the default patch
    # baseline for Windows is returned.
    #
    # @option params [String] :operating_system
    #   Returns the default patch baseline for the specified operating system.
    #
    # @return [Types::GetDefaultPatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDefaultPatchBaselineResult#baseline_id #baseline_id} => String
    #   * {Types::GetDefaultPatchBaselineResult#operating_system #operating_system} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_default_patch_baseline({
    #     operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, AMAZON_LINUX_2022, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN, MACOS, RASPBIAN, ROCKY_LINUX, ALMA_LINUX, AMAZON_LINUX_2023
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDefaultPatchBaseline AWS API Documentation
    #
    # @overload get_default_patch_baseline(params = {})
    # @param [Hash] params ({})
    def get_default_patch_baseline(params = {}, options = {})
      req = build_request(:get_default_patch_baseline, params)
      req.send_request(options)
    end

    # Retrieves the current snapshot for the patch baseline the managed node
    # uses. This API is primarily used by the `AWS-RunPatchBaseline` Systems
    # Manager document (SSM document).
    #
    # <note markdown="1"> If you run the command locally, such as with the Command Line
    # Interface (CLI), the system attempts to use your local Amazon Web
    # Services credentials and the operation fails. To avoid this, you can
    # run the command in the Amazon Web Services Systems Manager console.
    # Use Run Command, a capability of Amazon Web Services Systems Manager,
    # with an SSM document that enables you to target a managed node with a
    # script or command. For example, run the command using the
    # `AWS-RunShellScript` document or the `AWS-RunPowerShellScript`
    # document.
    #
    #  </note>
    #
    # @option params [required, String] :instance_id
    #   The ID of the managed node for which the appropriate patch snapshot
    #   should be retrieved.
    #
    # @option params [required, String] :snapshot_id
    #   The snapshot ID provided by the user when running
    #   `AWS-RunPatchBaseline`.
    #
    # @option params [Types::BaselineOverride] :baseline_override
    #   Defines the basic information about a patch baseline override.
    #
    # @return [Types::GetDeployablePatchSnapshotForInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeployablePatchSnapshotForInstanceResult#instance_id #instance_id} => String
    #   * {Types::GetDeployablePatchSnapshotForInstanceResult#snapshot_id #snapshot_id} => String
    #   * {Types::GetDeployablePatchSnapshotForInstanceResult#snapshot_download_url #snapshot_download_url} => String
    #   * {Types::GetDeployablePatchSnapshotForInstanceResult#product #product} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployable_patch_snapshot_for_instance({
    #     instance_id: "InstanceId", # required
    #     snapshot_id: "SnapshotId", # required
    #     baseline_override: {
    #       operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, AMAZON_LINUX_2022, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN, MACOS, RASPBIAN, ROCKY_LINUX, ALMA_LINUX, AMAZON_LINUX_2023
    #       global_filters: {
    #         patch_filters: [ # required
    #           {
    #             key: "ARCH", # required, accepts ARCH, ADVISORY_ID, BUGZILLA_ID, PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, CVE_ID, EPOCH, MSRC_SEVERITY, NAME, PATCH_ID, SECTION, PRIORITY, REPOSITORY, RELEASE, SEVERITY, SECURITY, VERSION
    #             values: ["PatchFilterValue"], # required
    #           },
    #         ],
    #       },
    #       approval_rules: {
    #         patch_rules: [ # required
    #           {
    #             patch_filter_group: { # required
    #               patch_filters: [ # required
    #                 {
    #                   key: "ARCH", # required, accepts ARCH, ADVISORY_ID, BUGZILLA_ID, PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, CVE_ID, EPOCH, MSRC_SEVERITY, NAME, PATCH_ID, SECTION, PRIORITY, REPOSITORY, RELEASE, SEVERITY, SECURITY, VERSION
    #                   values: ["PatchFilterValue"], # required
    #                 },
    #               ],
    #             },
    #             compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #             approve_after_days: 1,
    #             approve_until_date: "PatchStringDateTime",
    #             enable_non_security: false,
    #           },
    #         ],
    #       },
    #       approved_patches: ["PatchId"],
    #       approved_patches_compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #       rejected_patches: ["PatchId"],
    #       rejected_patches_action: "ALLOW_AS_DEPENDENCY", # accepts ALLOW_AS_DEPENDENCY, BLOCK
    #       approved_patches_enable_non_security: false,
    #       sources: [
    #         {
    #           name: "PatchSourceName", # required
    #           products: ["PatchSourceProduct"], # required
    #           configuration: "PatchSourceConfiguration", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.snapshot_id #=> String
    #   resp.snapshot_download_url #=> String
    #   resp.product #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDeployablePatchSnapshotForInstance AWS API Documentation
    #
    # @overload get_deployable_patch_snapshot_for_instance(params = {})
    # @param [Hash] params ({})
    def get_deployable_patch_snapshot_for_instance(params = {}, options = {})
      req = build_request(:get_deployable_patch_snapshot_for_instance, params)
      req.send_request(options)
    end

    # Gets the contents of the specified Amazon Web Services Systems Manager
    # document (SSM document).
    #
    # @option params [required, String] :name
    #   The name of the SSM document.
    #
    # @option params [String] :version_name
    #   An optional field specifying the version of the artifact associated
    #   with the document. For example, "Release 12, Update 6". This value
    #   is unique across all versions of a document and can't be changed.
    #
    # @option params [String] :document_version
    #   The document version for which you want information.
    #
    # @option params [String] :document_format
    #   Returns the document in the specified format. The document format can
    #   be either JSON or YAML. JSON is the default format.
    #
    # @return [Types::GetDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDocumentResult#name #name} => String
    #   * {Types::GetDocumentResult#created_date #created_date} => Time
    #   * {Types::GetDocumentResult#display_name #display_name} => String
    #   * {Types::GetDocumentResult#version_name #version_name} => String
    #   * {Types::GetDocumentResult#document_version #document_version} => String
    #   * {Types::GetDocumentResult#status #status} => String
    #   * {Types::GetDocumentResult#status_information #status_information} => String
    #   * {Types::GetDocumentResult#content #content} => String
    #   * {Types::GetDocumentResult#document_type #document_type} => String
    #   * {Types::GetDocumentResult#document_format #document_format} => String
    #   * {Types::GetDocumentResult#requires #requires} => Array&lt;Types::DocumentRequires&gt;
    #   * {Types::GetDocumentResult#attachments_content #attachments_content} => Array&lt;Types::AttachmentContent&gt;
    #   * {Types::GetDocumentResult#review_status #review_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document({
    #     name: "DocumentARN", # required
    #     version_name: "DocumentVersionName",
    #     document_version: "DocumentVersion",
    #     document_format: "YAML", # accepts YAML, JSON, TEXT
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.created_date #=> Time
    #   resp.display_name #=> String
    #   resp.version_name #=> String
    #   resp.document_version #=> String
    #   resp.status #=> String, one of "Creating", "Active", "Updating", "Deleting", "Failed"
    #   resp.status_information #=> String
    #   resp.content #=> String
    #   resp.document_type #=> String, one of "Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup"
    #   resp.document_format #=> String, one of "YAML", "JSON", "TEXT"
    #   resp.requires #=> Array
    #   resp.requires[0].name #=> String
    #   resp.requires[0].version #=> String
    #   resp.requires[0].require_type #=> String
    #   resp.requires[0].version_name #=> String
    #   resp.attachments_content #=> Array
    #   resp.attachments_content[0].name #=> String
    #   resp.attachments_content[0].size #=> Integer
    #   resp.attachments_content[0].hash #=> String
    #   resp.attachments_content[0].hash_type #=> String, one of "Sha256"
    #   resp.attachments_content[0].url #=> String
    #   resp.review_status #=> String, one of "APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDocument AWS API Documentation
    #
    # @overload get_document(params = {})
    # @param [Hash] params ({})
    def get_document(params = {}, options = {})
      req = build_request(:get_document, params)
      req.send_request(options)
    end

    # Query inventory information. This includes managed node status, such
    # as `Stopped` or `Terminated`.
    #
    # @option params [Array<Types::InventoryFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [Array<Types::InventoryAggregator>] :aggregators
    #   Returns counts of inventory types based on one or more expressions.
    #   For example, if you aggregate by using an expression that uses the
    #   `AWS:InstanceInformation.PlatformType` type, you can see a count of
    #   how many Windows and Linux managed nodes exist in your inventoried
    #   fleet.
    #
    # @option params [Array<Types::ResultAttribute>] :result_attributes
    #   The list of inventory item types to return.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::GetInventoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInventoryResult#entities #entities} => Array&lt;Types::InventoryResultEntity&gt;
    #   * {Types::GetInventoryResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inventory({
    #     filters: [
    #       {
    #         key: "InventoryFilterKey", # required
    #         values: ["InventoryFilterValue"], # required
    #         type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #       },
    #     ],
    #     aggregators: [
    #       {
    #         expression: "InventoryAggregatorExpression",
    #         aggregators: {
    #           # recursive InventoryAggregatorList
    #         },
    #         groups: [
    #           {
    #             name: "InventoryGroupName", # required
    #             filters: [ # required
    #               {
    #                 key: "InventoryFilterKey", # required
    #                 values: ["InventoryFilterValue"], # required
    #                 type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #     ],
    #     result_attributes: [
    #       {
    #         type_name: "InventoryItemTypeName", # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].id #=> String
    #   resp.entities[0].data #=> Hash
    #   resp.entities[0].data["InventoryResultItemKey"].type_name #=> String
    #   resp.entities[0].data["InventoryResultItemKey"].schema_version #=> String
    #   resp.entities[0].data["InventoryResultItemKey"].capture_time #=> String
    #   resp.entities[0].data["InventoryResultItemKey"].content_hash #=> String
    #   resp.entities[0].data["InventoryResultItemKey"].content #=> Array
    #   resp.entities[0].data["InventoryResultItemKey"].content[0] #=> Hash
    #   resp.entities[0].data["InventoryResultItemKey"].content[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventory AWS API Documentation
    #
    # @overload get_inventory(params = {})
    # @param [Hash] params ({})
    def get_inventory(params = {}, options = {})
      req = build_request(:get_inventory, params)
      req.send_request(options)
    end

    # Return a list of inventory type names for the account, or return a
    # list of attribute names for a specific Inventory item type.
    #
    # @option params [String] :type_name
    #   The type of inventory item to return.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [Boolean] :aggregator
    #   Returns inventory schemas that support aggregation. For example, this
    #   call returns the `AWS:InstanceInformation` type, because it supports
    #   aggregation based on the `PlatformName`, `PlatformType`, and
    #   `PlatformVersion` attributes.
    #
    # @option params [Boolean] :sub_type
    #   Returns the sub-type schema for a specified inventory type.
    #
    # @return [Types::GetInventorySchemaResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInventorySchemaResult#schemas #schemas} => Array&lt;Types::InventoryItemSchema&gt;
    #   * {Types::GetInventorySchemaResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inventory_schema({
    #     type_name: "InventoryItemTypeNameFilter",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     aggregator: false,
    #     sub_type: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.schemas #=> Array
    #   resp.schemas[0].type_name #=> String
    #   resp.schemas[0].version #=> String
    #   resp.schemas[0].attributes #=> Array
    #   resp.schemas[0].attributes[0].name #=> String
    #   resp.schemas[0].attributes[0].data_type #=> String, one of "string", "number"
    #   resp.schemas[0].display_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventorySchema AWS API Documentation
    #
    # @overload get_inventory_schema(params = {})
    # @param [Hash] params ({})
    def get_inventory_schema(params = {}, options = {})
      req = build_request(:get_inventory_schema, params)
      req.send_request(options)
    end

    # Retrieves a maintenance window.
    #
    # @option params [required, String] :window_id
    #   The ID of the maintenance window for which you want to retrieve
    #   information.
    #
    # @return [Types::GetMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMaintenanceWindowResult#window_id #window_id} => String
    #   * {Types::GetMaintenanceWindowResult#name #name} => String
    #   * {Types::GetMaintenanceWindowResult#description #description} => String
    #   * {Types::GetMaintenanceWindowResult#start_date #start_date} => String
    #   * {Types::GetMaintenanceWindowResult#end_date #end_date} => String
    #   * {Types::GetMaintenanceWindowResult#schedule #schedule} => String
    #   * {Types::GetMaintenanceWindowResult#schedule_timezone #schedule_timezone} => String
    #   * {Types::GetMaintenanceWindowResult#schedule_offset #schedule_offset} => Integer
    #   * {Types::GetMaintenanceWindowResult#next_execution_time #next_execution_time} => String
    #   * {Types::GetMaintenanceWindowResult#duration #duration} => Integer
    #   * {Types::GetMaintenanceWindowResult#cutoff #cutoff} => Integer
    #   * {Types::GetMaintenanceWindowResult#allow_unassociated_targets #allow_unassociated_targets} => Boolean
    #   * {Types::GetMaintenanceWindowResult#enabled #enabled} => Boolean
    #   * {Types::GetMaintenanceWindowResult#created_date #created_date} => Time
    #   * {Types::GetMaintenanceWindowResult#modified_date #modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.start_date #=> String
    #   resp.end_date #=> String
    #   resp.schedule #=> String
    #   resp.schedule_timezone #=> String
    #   resp.schedule_offset #=> Integer
    #   resp.next_execution_time #=> String
    #   resp.duration #=> Integer
    #   resp.cutoff #=> Integer
    #   resp.allow_unassociated_targets #=> Boolean
    #   resp.enabled #=> Boolean
    #   resp.created_date #=> Time
    #   resp.modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindow AWS API Documentation
    #
    # @overload get_maintenance_window(params = {})
    # @param [Hash] params ({})
    def get_maintenance_window(params = {}, options = {})
      req = build_request(:get_maintenance_window, params)
      req.send_request(options)
    end

    # Retrieves details about a specific a maintenance window execution.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the maintenance window execution that includes the task.
    #
    # @return [Types::GetMaintenanceWindowExecutionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMaintenanceWindowExecutionResult#window_execution_id #window_execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionResult#task_ids #task_ids} => Array&lt;String&gt;
    #   * {Types::GetMaintenanceWindowExecutionResult#status #status} => String
    #   * {Types::GetMaintenanceWindowExecutionResult#status_details #status_details} => String
    #   * {Types::GetMaintenanceWindowExecutionResult#start_time #start_time} => Time
    #   * {Types::GetMaintenanceWindowExecutionResult#end_time #end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_execution({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_id #=> String
    #   resp.task_ids #=> Array
    #   resp.task_ids[0] #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.status_details #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecution AWS API Documentation
    #
    # @overload get_maintenance_window_execution(params = {})
    # @param [Hash] params ({})
    def get_maintenance_window_execution(params = {}, options = {})
      req = build_request(:get_maintenance_window_execution, params)
      req.send_request(options)
    end

    # Retrieves the details about a specific task run as part of a
    # maintenance window execution.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the maintenance window execution that includes the task.
    #
    # @option params [required, String] :task_id
    #   The ID of the specific task execution in the maintenance window task
    #   that should be retrieved.
    #
    # @return [Types::GetMaintenanceWindowExecutionTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#window_execution_id #window_execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#task_execution_id #task_execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#task_arn #task_arn} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#service_role #service_role} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#type #type} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#task_parameters #task_parameters} => Array&lt;Hash&lt;String,Types::MaintenanceWindowTaskParameterValueExpression&gt;&gt;
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#priority #priority} => Integer
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#max_concurrency #max_concurrency} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#max_errors #max_errors} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#status #status} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#status_details #status_details} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#start_time #start_time} => Time
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#end_time #end_time} => Time
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#alarm_configuration #alarm_configuration} => Types::AlarmConfiguration
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#triggered_alarms #triggered_alarms} => Array&lt;Types::AlarmStateInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_execution_task({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     task_id: "MaintenanceWindowExecutionTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_id #=> String
    #   resp.task_execution_id #=> String
    #   resp.task_arn #=> String
    #   resp.service_role #=> String
    #   resp.type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.task_parameters #=> Array
    #   resp.task_parameters[0] #=> Hash
    #   resp.task_parameters[0]["MaintenanceWindowTaskParameterName"].values #=> Array
    #   resp.task_parameters[0]["MaintenanceWindowTaskParameterName"].values[0] #=> String
    #   resp.priority #=> Integer
    #   resp.max_concurrency #=> String
    #   resp.max_errors #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.status_details #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.alarm_configuration.alarms #=> Array
    #   resp.alarm_configuration.alarms[0].name #=> String
    #   resp.triggered_alarms #=> Array
    #   resp.triggered_alarms[0].name #=> String
    #   resp.triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionTask AWS API Documentation
    #
    # @overload get_maintenance_window_execution_task(params = {})
    # @param [Hash] params ({})
    def get_maintenance_window_execution_task(params = {}, options = {})
      req = build_request(:get_maintenance_window_execution_task, params)
      req.send_request(options)
    end

    # Retrieves information about a specific task running on a specific
    # target.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the maintenance window execution for which the task is a
    #   part.
    #
    # @option params [required, String] :task_id
    #   The ID of the specific task in the maintenance window task that should
    #   be retrieved.
    #
    # @option params [required, String] :invocation_id
    #   The invocation ID to retrieve.
    #
    # @return [Types::GetMaintenanceWindowExecutionTaskInvocationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#window_execution_id #window_execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#task_execution_id #task_execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#invocation_id #invocation_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#execution_id #execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#task_type #task_type} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#parameters #parameters} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#status #status} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#status_details #status_details} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#start_time #start_time} => Time
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#end_time #end_time} => Time
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#owner_information #owner_information} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#window_target_id #window_target_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_execution_task_invocation({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     task_id: "MaintenanceWindowExecutionTaskId", # required
    #     invocation_id: "MaintenanceWindowExecutionTaskInvocationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_id #=> String
    #   resp.task_execution_id #=> String
    #   resp.invocation_id #=> String
    #   resp.execution_id #=> String
    #   resp.task_type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.parameters #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.status_details #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.owner_information #=> String
    #   resp.window_target_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionTaskInvocation AWS API Documentation
    #
    # @overload get_maintenance_window_execution_task_invocation(params = {})
    # @param [Hash] params ({})
    def get_maintenance_window_execution_task_invocation(params = {}, options = {})
      req = build_request(:get_maintenance_window_execution_task_invocation, params)
      req.send_request(options)
    end

    # Retrieves the details of a maintenance window task.
    #
    # <note markdown="1"> For maintenance window tasks without a specified target, you can't
    # supply values for `--max-errors` and `--max-concurrency`. Instead, the
    # system inserts a placeholder value of `1`, which may be reported in
    # the response to this command. These values don't affect the running
    # of your task and can be ignored.
    #
    #  </note>
    #
    # To retrieve a list of tasks in a maintenance window, instead use the
    # DescribeMaintenanceWindowTasks command.
    #
    # @option params [required, String] :window_id
    #   The maintenance window ID that includes the task to retrieve.
    #
    # @option params [required, String] :window_task_id
    #   The maintenance window task ID to retrieve.
    #
    # @return [Types::GetMaintenanceWindowTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMaintenanceWindowTaskResult#window_id #window_id} => String
    #   * {Types::GetMaintenanceWindowTaskResult#window_task_id #window_task_id} => String
    #   * {Types::GetMaintenanceWindowTaskResult#targets #targets} => Array&lt;Types::Target&gt;
    #   * {Types::GetMaintenanceWindowTaskResult#task_arn #task_arn} => String
    #   * {Types::GetMaintenanceWindowTaskResult#service_role_arn #service_role_arn} => String
    #   * {Types::GetMaintenanceWindowTaskResult#task_type #task_type} => String
    #   * {Types::GetMaintenanceWindowTaskResult#task_parameters #task_parameters} => Hash&lt;String,Types::MaintenanceWindowTaskParameterValueExpression&gt;
    #   * {Types::GetMaintenanceWindowTaskResult#task_invocation_parameters #task_invocation_parameters} => Types::MaintenanceWindowTaskInvocationParameters
    #   * {Types::GetMaintenanceWindowTaskResult#priority #priority} => Integer
    #   * {Types::GetMaintenanceWindowTaskResult#max_concurrency #max_concurrency} => String
    #   * {Types::GetMaintenanceWindowTaskResult#max_errors #max_errors} => String
    #   * {Types::GetMaintenanceWindowTaskResult#logging_info #logging_info} => Types::LoggingInfo
    #   * {Types::GetMaintenanceWindowTaskResult#name #name} => String
    #   * {Types::GetMaintenanceWindowTaskResult#description #description} => String
    #   * {Types::GetMaintenanceWindowTaskResult#cutoff_behavior #cutoff_behavior} => String
    #   * {Types::GetMaintenanceWindowTaskResult#alarm_configuration #alarm_configuration} => Types::AlarmConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_task({
    #     window_id: "MaintenanceWindowId", # required
    #     window_task_id: "MaintenanceWindowTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.window_task_id #=> String
    #   resp.targets #=> Array
    #   resp.targets[0].key #=> String
    #   resp.targets[0].values #=> Array
    #   resp.targets[0].values[0] #=> String
    #   resp.task_arn #=> String
    #   resp.service_role_arn #=> String
    #   resp.task_type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.task_parameters #=> Hash
    #   resp.task_parameters["MaintenanceWindowTaskParameterName"].values #=> Array
    #   resp.task_parameters["MaintenanceWindowTaskParameterName"].values[0] #=> String
    #   resp.task_invocation_parameters.run_command.comment #=> String
    #   resp.task_invocation_parameters.run_command.cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.task_invocation_parameters.run_command.cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.task_invocation_parameters.run_command.document_hash #=> String
    #   resp.task_invocation_parameters.run_command.document_hash_type #=> String, one of "Sha256", "Sha1"
    #   resp.task_invocation_parameters.run_command.document_version #=> String
    #   resp.task_invocation_parameters.run_command.notification_config.notification_arn #=> String
    #   resp.task_invocation_parameters.run_command.notification_config.notification_events #=> Array
    #   resp.task_invocation_parameters.run_command.notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.task_invocation_parameters.run_command.notification_config.notification_type #=> String, one of "Command", "Invocation"
    #   resp.task_invocation_parameters.run_command.output_s3_bucket_name #=> String
    #   resp.task_invocation_parameters.run_command.output_s3_key_prefix #=> String
    #   resp.task_invocation_parameters.run_command.parameters #=> Hash
    #   resp.task_invocation_parameters.run_command.parameters["ParameterName"] #=> Array
    #   resp.task_invocation_parameters.run_command.parameters["ParameterName"][0] #=> String
    #   resp.task_invocation_parameters.run_command.service_role_arn #=> String
    #   resp.task_invocation_parameters.run_command.timeout_seconds #=> Integer
    #   resp.task_invocation_parameters.automation.document_version #=> String
    #   resp.task_invocation_parameters.automation.parameters #=> Hash
    #   resp.task_invocation_parameters.automation.parameters["AutomationParameterKey"] #=> Array
    #   resp.task_invocation_parameters.automation.parameters["AutomationParameterKey"][0] #=> String
    #   resp.task_invocation_parameters.step_functions.input #=> String
    #   resp.task_invocation_parameters.step_functions.name #=> String
    #   resp.task_invocation_parameters.lambda.client_context #=> String
    #   resp.task_invocation_parameters.lambda.qualifier #=> String
    #   resp.task_invocation_parameters.lambda.payload #=> String
    #   resp.priority #=> Integer
    #   resp.max_concurrency #=> String
    #   resp.max_errors #=> String
    #   resp.logging_info.s3_bucket_name #=> String
    #   resp.logging_info.s3_key_prefix #=> String
    #   resp.logging_info.s3_region #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.cutoff_behavior #=> String, one of "CONTINUE_TASK", "CANCEL_TASK"
    #   resp.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.alarm_configuration.alarms #=> Array
    #   resp.alarm_configuration.alarms[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowTask AWS API Documentation
    #
    # @overload get_maintenance_window_task(params = {})
    # @param [Hash] params ({})
    def get_maintenance_window_task(params = {}, options = {})
      req = build_request(:get_maintenance_window_task, params)
      req.send_request(options)
    end

    # Get information about an OpsItem by using the ID. You must have
    # permission in Identity and Access Management (IAM) to view information
    # about an OpsItem. For more information, see [Getting started with
    # OpsCenter][1] in the *Amazon Web Services Systems Manager User Guide*.
    #
    # Operations engineers and IT professionals use Amazon Web Services
    # Systems Manager OpsCenter to view, investigate, and remediate
    # operational issues impacting the performance and health of their
    # Amazon Web Services resources. For more information, see
    # [OpsCenter][2] in the *Amazon Web Services Systems Manager User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html
    # [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html
    #
    # @option params [required, String] :ops_item_id
    #   The ID of the OpsItem that you want to get.
    #
    # @option params [String] :ops_item_arn
    #   The OpsItem Amazon Resource Name (ARN).
    #
    # @return [Types::GetOpsItemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOpsItemResponse#ops_item #ops_item} => Types::OpsItem
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ops_item({
    #     ops_item_id: "OpsItemId", # required
    #     ops_item_arn: "OpsItemArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.ops_item.created_by #=> String
    #   resp.ops_item.ops_item_type #=> String
    #   resp.ops_item.created_time #=> Time
    #   resp.ops_item.description #=> String
    #   resp.ops_item.last_modified_by #=> String
    #   resp.ops_item.last_modified_time #=> Time
    #   resp.ops_item.notifications #=> Array
    #   resp.ops_item.notifications[0].arn #=> String
    #   resp.ops_item.priority #=> Integer
    #   resp.ops_item.related_ops_items #=> Array
    #   resp.ops_item.related_ops_items[0].ops_item_id #=> String
    #   resp.ops_item.status #=> String, one of "Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Rejected", "Closed"
    #   resp.ops_item.ops_item_id #=> String
    #   resp.ops_item.version #=> String
    #   resp.ops_item.title #=> String
    #   resp.ops_item.source #=> String
    #   resp.ops_item.operational_data #=> Hash
    #   resp.ops_item.operational_data["OpsItemDataKey"].value #=> String
    #   resp.ops_item.operational_data["OpsItemDataKey"].type #=> String, one of "SearchableString", "String"
    #   resp.ops_item.category #=> String
    #   resp.ops_item.severity #=> String
    #   resp.ops_item.actual_start_time #=> Time
    #   resp.ops_item.actual_end_time #=> Time
    #   resp.ops_item.planned_start_time #=> Time
    #   resp.ops_item.planned_end_time #=> Time
    #   resp.ops_item.ops_item_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetOpsItem AWS API Documentation
    #
    # @overload get_ops_item(params = {})
    # @param [Hash] params ({})
    def get_ops_item(params = {}, options = {})
      req = build_request(:get_ops_item, params)
      req.send_request(options)
    end

    # View operational metadata related to an application in Application
    # Manager.
    #
    # @option params [required, String] :ops_metadata_arn
    #   The Amazon Resource Name (ARN) of an OpsMetadata Object to view.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::GetOpsMetadataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOpsMetadataResult#resource_id #resource_id} => String
    #   * {Types::GetOpsMetadataResult#metadata #metadata} => Hash&lt;String,Types::MetadataValue&gt;
    #   * {Types::GetOpsMetadataResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ops_metadata({
    #     ops_metadata_arn: "OpsMetadataArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id #=> String
    #   resp.metadata #=> Hash
    #   resp.metadata["MetadataKey"].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetOpsMetadata AWS API Documentation
    #
    # @overload get_ops_metadata(params = {})
    # @param [Hash] params ({})
    def get_ops_metadata(params = {}, options = {})
      req = build_request(:get_ops_metadata, params)
      req.send_request(options)
    end

    # View a summary of operations metadata (OpsData) based on specified
    # filters and aggregators. OpsData can include information about Amazon
    # Web Services Systems Manager OpsCenter operational workitems
    # (OpsItems) as well as information about any Amazon Web Services
    # resource or service configured to report OpsData to Amazon Web
    # Services Systems Manager Explorer.
    #
    # @option params [String] :sync_name
    #   Specify the name of a resource data sync to get.
    #
    # @option params [Array<Types::OpsFilter>] :filters
    #   Optional filters used to scope down the returned OpsData.
    #
    # @option params [Array<Types::OpsAggregator>] :aggregators
    #   Optional aggregators that return counts of OpsData based on one or
    #   more expressions.
    #
    # @option params [Array<Types::OpsResultAttribute>] :result_attributes
    #   The OpsData data type to return.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::GetOpsSummaryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOpsSummaryResult#entities #entities} => Array&lt;Types::OpsEntity&gt;
    #   * {Types::GetOpsSummaryResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ops_summary({
    #     sync_name: "ResourceDataSyncName",
    #     filters: [
    #       {
    #         key: "OpsFilterKey", # required
    #         values: ["OpsFilterValue"], # required
    #         type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #       },
    #     ],
    #     aggregators: [
    #       {
    #         aggregator_type: "OpsAggregatorType",
    #         type_name: "OpsDataTypeName",
    #         attribute_name: "OpsDataAttributeName",
    #         values: {
    #           "OpsAggregatorValueKey" => "OpsAggregatorValue",
    #         },
    #         filters: [
    #           {
    #             key: "OpsFilterKey", # required
    #             values: ["OpsFilterValue"], # required
    #             type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #           },
    #         ],
    #         aggregators: {
    #           # recursive OpsAggregatorList
    #         },
    #       },
    #     ],
    #     result_attributes: [
    #       {
    #         type_name: "OpsDataTypeName", # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].id #=> String
    #   resp.entities[0].data #=> Hash
    #   resp.entities[0].data["OpsEntityItemKey"].capture_time #=> String
    #   resp.entities[0].data["OpsEntityItemKey"].content #=> Array
    #   resp.entities[0].data["OpsEntityItemKey"].content[0] #=> Hash
    #   resp.entities[0].data["OpsEntityItemKey"].content[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetOpsSummary AWS API Documentation
    #
    # @overload get_ops_summary(params = {})
    # @param [Hash] params ({})
    def get_ops_summary(params = {}, options = {})
      req = build_request(:get_ops_summary, params)
      req.send_request(options)
    end

    # Get information about a single parameter by specifying the parameter
    # name.
    #
    # <note markdown="1"> To get information about more than one parameter at a time, use the
    # GetParameters operation.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the parameter you want to query.
    #
    #   To query by parameter label, use `"Name": "name:label"`. To query by
    #   parameter version, use `"Name": "name:version"`.
    #
    # @option params [Boolean] :with_decryption
    #   Return decrypted values for secure string parameters. This flag is
    #   ignored for `String` and `StringList` parameter types.
    #
    # @return [Types::GetParameterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParameterResult#parameter #parameter} => Types::Parameter
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameter({
    #     name: "PSParameterName", # required
    #     with_decryption: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.parameter.name #=> String
    #   resp.parameter.type #=> String, one of "String", "StringList", "SecureString"
    #   resp.parameter.value #=> String
    #   resp.parameter.version #=> Integer
    #   resp.parameter.selector #=> String
    #   resp.parameter.source_result #=> String
    #   resp.parameter.last_modified_date #=> Time
    #   resp.parameter.arn #=> String
    #   resp.parameter.data_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameter AWS API Documentation
    #
    # @overload get_parameter(params = {})
    # @param [Hash] params ({})
    def get_parameter(params = {}, options = {})
      req = build_request(:get_parameter, params)
      req.send_request(options)
    end

    # Retrieves the history of all changes to a parameter.
    #
    # If you change the KMS key alias for the KMS key used to encrypt a
    # parameter, then you must also update the key alias the parameter uses
    # to reference KMS. Otherwise, `GetParameterHistory` retrieves whatever
    # the original key alias was referencing.
    #
    # @option params [required, String] :name
    #   The name of the parameter for which you want to review history.
    #
    # @option params [Boolean] :with_decryption
    #   Return decrypted values for secure string parameters. This flag is
    #   ignored for `String` and `StringList` parameter types.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::GetParameterHistoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParameterHistoryResult#parameters #parameters} => Array&lt;Types::ParameterHistory&gt;
    #   * {Types::GetParameterHistoryResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameter_history({
    #     name: "PSParameterName", # required
    #     with_decryption: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].name #=> String
    #   resp.parameters[0].type #=> String, one of "String", "StringList", "SecureString"
    #   resp.parameters[0].key_id #=> String
    #   resp.parameters[0].last_modified_date #=> Time
    #   resp.parameters[0].last_modified_user #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].value #=> String
    #   resp.parameters[0].allowed_pattern #=> String
    #   resp.parameters[0].version #=> Integer
    #   resp.parameters[0].labels #=> Array
    #   resp.parameters[0].labels[0] #=> String
    #   resp.parameters[0].tier #=> String, one of "Standard", "Advanced", "Intelligent-Tiering"
    #   resp.parameters[0].policies #=> Array
    #   resp.parameters[0].policies[0].policy_text #=> String
    #   resp.parameters[0].policies[0].policy_type #=> String
    #   resp.parameters[0].policies[0].policy_status #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameterHistory AWS API Documentation
    #
    # @overload get_parameter_history(params = {})
    # @param [Hash] params ({})
    def get_parameter_history(params = {}, options = {})
      req = build_request(:get_parameter_history, params)
      req.send_request(options)
    end

    # Get information about one or more parameters by specifying multiple
    # parameter names.
    #
    # <note markdown="1"> To get information about a single parameter, you can use the
    # GetParameter operation instead.
    #
    #  </note>
    #
    # @option params [required, Array<String>] :names
    #   Names of the parameters for which you want to query information.
    #
    #   To query by parameter label, use `"Name": "name:label"`. To query by
    #   parameter version, use `"Name": "name:version"`.
    #
    # @option params [Boolean] :with_decryption
    #   Return decrypted secure string value. Return decrypted values for
    #   secure string parameters. This flag is ignored for `String` and
    #   `StringList` parameter types.
    #
    # @return [Types::GetParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParametersResult#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::GetParametersResult#invalid_parameters #invalid_parameters} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters({
    #     names: ["PSParameterName"], # required
    #     with_decryption: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].name #=> String
    #   resp.parameters[0].type #=> String, one of "String", "StringList", "SecureString"
    #   resp.parameters[0].value #=> String
    #   resp.parameters[0].version #=> Integer
    #   resp.parameters[0].selector #=> String
    #   resp.parameters[0].source_result #=> String
    #   resp.parameters[0].last_modified_date #=> Time
    #   resp.parameters[0].arn #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.invalid_parameters #=> Array
    #   resp.invalid_parameters[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameters AWS API Documentation
    #
    # @overload get_parameters(params = {})
    # @param [Hash] params ({})
    def get_parameters(params = {}, options = {})
      req = build_request(:get_parameters, params)
      req.send_request(options)
    end

    # Retrieve information about one or more parameters in a specific
    # hierarchy.
    #
    # Request results are returned on a best-effort basis. If you specify
    # `MaxResults` in the request, the response includes information up to
    # the limit specified. The number of items returned, however, can be
    # between zero and the value of `MaxResults`. If the service reaches an
    # internal limit while processing the results, it stops the operation
    # and returns the matching values up to that point and a `NextToken`.
    # You can specify the `NextToken` in a subsequent call to get the next
    # set of results.
    #
    # @option params [required, String] :path
    #   The hierarchy for the parameter. Hierarchies start with a forward
    #   slash (/). The hierarchy is the parameter name except the last part of
    #   the parameter. For the API call to succeed, the last part of the
    #   parameter name can't be in the path. A parameter name hierarchy can
    #   have a maximum of 15 levels. Here is an example of a hierarchy:
    #   `/Finance/Prod/IAD/WinServ2016/license33 `
    #
    # @option params [Boolean] :recursive
    #   Retrieve all parameters within a hierarchy.
    #
    #   If a user has access to a path, then the user can access all levels of
    #   that path. For example, if a user has permission to access path `/a`,
    #   then the user can also access `/a/b`. Even if a user has explicitly
    #   been denied access in IAM for parameter `/a/b`, they can still call
    #   the GetParametersByPath API operation recursively for `/a` and view
    #   `/a/b`.
    #
    # @option params [Array<Types::ParameterStringFilter>] :parameter_filters
    #   Filters to limit the request results.
    #
    #   <note markdown="1"> The following `Key` values are supported for `GetParametersByPath`:
    #   `Type`, `KeyId`, and `Label`.
    #
    #    The following `Key` values aren't supported for
    #   `GetParametersByPath`: `tag`, `DataType`, `Name`, `Path`, and `Tier`.
    #
    #    </note>
    #
    # @option params [Boolean] :with_decryption
    #   Retrieve all parameters in a hierarchy with their value decrypted.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::GetParametersByPathResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParametersByPathResult#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::GetParametersByPathResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters_by_path({
    #     path: "PSParameterName", # required
    #     recursive: false,
    #     parameter_filters: [
    #       {
    #         key: "ParameterStringFilterKey", # required
    #         option: "ParameterStringQueryOption",
    #         values: ["ParameterStringFilterValue"],
    #       },
    #     ],
    #     with_decryption: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].name #=> String
    #   resp.parameters[0].type #=> String, one of "String", "StringList", "SecureString"
    #   resp.parameters[0].value #=> String
    #   resp.parameters[0].version #=> Integer
    #   resp.parameters[0].selector #=> String
    #   resp.parameters[0].source_result #=> String
    #   resp.parameters[0].last_modified_date #=> Time
    #   resp.parameters[0].arn #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParametersByPath AWS API Documentation
    #
    # @overload get_parameters_by_path(params = {})
    # @param [Hash] params ({})
    def get_parameters_by_path(params = {}, options = {})
      req = build_request(:get_parameters_by_path, params)
      req.send_request(options)
    end

    # Retrieves information about a patch baseline.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to retrieve.
    #
    #   <note markdown="1"> To retrieve information about an Amazon Web Services managed patch
    #   baseline, specify the full Amazon Resource Name (ARN) of the baseline.
    #   For example, for the baseline `AWS-AmazonLinuxDefaultPatchBaseline`,
    #   specify
    #   `arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0e392de35e7c563b7`
    #   instead of `pb-0e392de35e7c563b7`.
    #
    #    </note>
    #
    # @return [Types::GetPatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPatchBaselineResult#baseline_id #baseline_id} => String
    #   * {Types::GetPatchBaselineResult#name #name} => String
    #   * {Types::GetPatchBaselineResult#operating_system #operating_system} => String
    #   * {Types::GetPatchBaselineResult#global_filters #global_filters} => Types::PatchFilterGroup
    #   * {Types::GetPatchBaselineResult#approval_rules #approval_rules} => Types::PatchRuleGroup
    #   * {Types::GetPatchBaselineResult#approved_patches #approved_patches} => Array&lt;String&gt;
    #   * {Types::GetPatchBaselineResult#approved_patches_compliance_level #approved_patches_compliance_level} => String
    #   * {Types::GetPatchBaselineResult#approved_patches_enable_non_security #approved_patches_enable_non_security} => Boolean
    #   * {Types::GetPatchBaselineResult#rejected_patches #rejected_patches} => Array&lt;String&gt;
    #   * {Types::GetPatchBaselineResult#rejected_patches_action #rejected_patches_action} => String
    #   * {Types::GetPatchBaselineResult#patch_groups #patch_groups} => Array&lt;String&gt;
    #   * {Types::GetPatchBaselineResult#created_date #created_date} => Time
    #   * {Types::GetPatchBaselineResult#modified_date #modified_date} => Time
    #   * {Types::GetPatchBaselineResult#description #description} => String
    #   * {Types::GetPatchBaselineResult#sources #sources} => Array&lt;Types::PatchSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_patch_baseline({
    #     baseline_id: "BaselineId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.name #=> String
    #   resp.operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"
    #   resp.global_filters.patch_filters #=> Array
    #   resp.global_filters.patch_filters[0].key #=> String, one of "ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"
    #   resp.global_filters.patch_filters[0].values #=> Array
    #   resp.global_filters.patch_filters[0].values[0] #=> String
    #   resp.approval_rules.patch_rules #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].key #=> String, one of "ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].values #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].values[0] #=> String
    #   resp.approval_rules.patch_rules[0].compliance_level #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.approval_rules.patch_rules[0].approve_after_days #=> Integer
    #   resp.approval_rules.patch_rules[0].approve_until_date #=> String
    #   resp.approval_rules.patch_rules[0].enable_non_security #=> Boolean
    #   resp.approved_patches #=> Array
    #   resp.approved_patches[0] #=> String
    #   resp.approved_patches_compliance_level #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.approved_patches_enable_non_security #=> Boolean
    #   resp.rejected_patches #=> Array
    #   resp.rejected_patches[0] #=> String
    #   resp.rejected_patches_action #=> String, one of "ALLOW_AS_DEPENDENCY", "BLOCK"
    #   resp.patch_groups #=> Array
    #   resp.patch_groups[0] #=> String
    #   resp.created_date #=> Time
    #   resp.modified_date #=> Time
    #   resp.description #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].name #=> String
    #   resp.sources[0].products #=> Array
    #   resp.sources[0].products[0] #=> String
    #   resp.sources[0].configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaseline AWS API Documentation
    #
    # @overload get_patch_baseline(params = {})
    # @param [Hash] params ({})
    def get_patch_baseline(params = {}, options = {})
      req = build_request(:get_patch_baseline, params)
      req.send_request(options)
    end

    # Retrieves the patch baseline that should be used for the specified
    # patch group.
    #
    # @option params [required, String] :patch_group
    #   The name of the patch group whose patch baseline should be retrieved.
    #
    # @option params [String] :operating_system
    #   Returns the operating system rule specified for patch groups using the
    #   patch baseline.
    #
    # @return [Types::GetPatchBaselineForPatchGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPatchBaselineForPatchGroupResult#baseline_id #baseline_id} => String
    #   * {Types::GetPatchBaselineForPatchGroupResult#patch_group #patch_group} => String
    #   * {Types::GetPatchBaselineForPatchGroupResult#operating_system #operating_system} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_patch_baseline_for_patch_group({
    #     patch_group: "PatchGroup", # required
    #     operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, AMAZON_LINUX_2022, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN, MACOS, RASPBIAN, ROCKY_LINUX, ALMA_LINUX, AMAZON_LINUX_2023
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.patch_group #=> String
    #   resp.operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineForPatchGroup AWS API Documentation
    #
    # @overload get_patch_baseline_for_patch_group(params = {})
    # @param [Hash] params ({})
    def get_patch_baseline_for_patch_group(params = {}, options = {})
      req = build_request(:get_patch_baseline_for_patch_group, params)
      req.send_request(options)
    end

    # Returns an array of the `Policy` object.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the resource to which the policies are
    #   attached.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::GetResourcePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePoliciesResponse#next_token #next_token} => String
    #   * {Types::GetResourcePoliciesResponse#policies #policies} => Array&lt;Types::GetResourcePoliciesResponseEntry&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policies({
    #     resource_arn: "ResourceArnString", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.policies #=> Array
    #   resp.policies[0].policy_id #=> String
    #   resp.policies[0].policy_hash #=> String
    #   resp.policies[0].policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetResourcePolicies AWS API Documentation
    #
    # @overload get_resource_policies(params = {})
    # @param [Hash] params ({})
    def get_resource_policies(params = {}, options = {})
      req = build_request(:get_resource_policies, params)
      req.send_request(options)
    end

    # `ServiceSetting` is an account-level setting for an Amazon Web
    # Services service. This setting defines how a user interacts with or
    # uses a service or a feature of a service. For example, if an Amazon
    # Web Services service charges money to the account based on feature or
    # service usage, then the Amazon Web Services service team might create
    # a default setting of `false`. This means the user can't use this
    # feature unless they change the setting to `true` and intentionally opt
    # in for a paid feature.
    #
    # Services map a `SettingId` object to a setting value. Amazon Web
    # Services services teams define the default value for a `SettingId`.
    # You can't create a new `SettingId`, but you can overwrite the default
    # value if you have the `ssm:UpdateServiceSetting` permission for the
    # setting. Use the UpdateServiceSetting API operation to change the
    # default setting. Or use the ResetServiceSetting to change the value
    # back to the original value defined by the Amazon Web Services service
    # team.
    #
    # Query the current service setting for the Amazon Web Services account.
    #
    # @option params [required, String] :setting_id
    #   The ID of the service setting to get. The setting ID can be one of the
    #   following.
    #
    #   * `/ssm/managed-instance/default-ec2-instance-management-role`
    #
    #   * `/ssm/automation/customer-script-log-destination`
    #
    #   * `/ssm/automation/customer-script-log-group-name`
    #
    #   * `/ssm/documents/console/public-sharing-permission`
    #
    #   * `/ssm/managed-instance/activation-tier`
    #
    #   * `/ssm/opsinsights/opscenter`
    #
    #   * `/ssm/parameter-store/default-parameter-tier`
    #
    #   * `/ssm/parameter-store/high-throughput-enabled`
    #
    # @return [Types::GetServiceSettingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceSettingResult#service_setting #service_setting} => Types::ServiceSetting
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_setting({
    #     setting_id: "ServiceSettingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_setting.setting_id #=> String
    #   resp.service_setting.setting_value #=> String
    #   resp.service_setting.last_modified_date #=> Time
    #   resp.service_setting.last_modified_user #=> String
    #   resp.service_setting.arn #=> String
    #   resp.service_setting.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetServiceSetting AWS API Documentation
    #
    # @overload get_service_setting(params = {})
    # @param [Hash] params ({})
    def get_service_setting(params = {}, options = {})
      req = build_request(:get_service_setting, params)
      req.send_request(options)
    end

    # A parameter label is a user-defined alias to help you manage different
    # versions of a parameter. When you modify a parameter, Amazon Web
    # Services Systems Manager automatically saves a new version and
    # increments the version number by one. A label can help you remember
    # the purpose of a parameter when there are multiple versions.
    #
    # Parameter labels have the following requirements and restrictions.
    #
    # * A version of a parameter can have a maximum of 10 labels.
    #
    # * You can't attach the same label to different versions of the same
    #   parameter. For example, if version 1 has the label Production, then
    #   you can't attach Production to version 2.
    #
    # * You can move a label from one version of a parameter to another.
    #
    # * You can't create a label when you create a new parameter. You must
    #   attach a label to a specific version of a parameter.
    #
    # * If you no longer want to use a parameter label, then you can either
    #   delete it or move it to a different version of a parameter.
    #
    # * A label can have a maximum of 100 characters.
    #
    # * Labels can contain letters (case sensitive), numbers, periods (.),
    #   hyphens (-), or underscores (\_).
    #
    # * Labels can't begin with a number, "`aws`" or "`ssm`" (not case
    #   sensitive). If a label fails to meet these requirements, then the
    #   label isn't associated with a parameter and the system displays it
    #   in the list of InvalidLabels.
    #
    # @option params [required, String] :name
    #   The parameter name on which you want to attach one or more labels.
    #
    # @option params [Integer] :parameter_version
    #   The specific version of the parameter on which you want to attach one
    #   or more labels. If no version is specified, the system attaches the
    #   label to the latest version.
    #
    # @option params [required, Array<String>] :labels
    #   One or more labels to attach to the specified parameter version.
    #
    # @return [Types::LabelParameterVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LabelParameterVersionResult#invalid_labels #invalid_labels} => Array&lt;String&gt;
    #   * {Types::LabelParameterVersionResult#parameter_version #parameter_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.label_parameter_version({
    #     name: "PSParameterName", # required
    #     parameter_version: 1,
    #     labels: ["ParameterLabel"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.invalid_labels #=> Array
    #   resp.invalid_labels[0] #=> String
    #   resp.parameter_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/LabelParameterVersion AWS API Documentation
    #
    # @overload label_parameter_version(params = {})
    # @param [Hash] params ({})
    def label_parameter_version(params = {}, options = {})
      req = build_request(:label_parameter_version, params)
      req.send_request(options)
    end

    # Retrieves all versions of an association for a specific association
    # ID.
    #
    # @option params [required, String] :association_id
    #   The association ID for which you want to view all versions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::ListAssociationVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociationVersionsResult#association_versions #association_versions} => Array&lt;Types::AssociationVersionInfo&gt;
    #   * {Types::ListAssociationVersionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_association_versions({
    #     association_id: "AssociationId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_versions #=> Array
    #   resp.association_versions[0].association_id #=> String
    #   resp.association_versions[0].association_version #=> String
    #   resp.association_versions[0].created_date #=> Time
    #   resp.association_versions[0].name #=> String
    #   resp.association_versions[0].document_version #=> String
    #   resp.association_versions[0].parameters #=> Hash
    #   resp.association_versions[0].parameters["ParameterName"] #=> Array
    #   resp.association_versions[0].parameters["ParameterName"][0] #=> String
    #   resp.association_versions[0].targets #=> Array
    #   resp.association_versions[0].targets[0].key #=> String
    #   resp.association_versions[0].targets[0].values #=> Array
    #   resp.association_versions[0].targets[0].values[0] #=> String
    #   resp.association_versions[0].schedule_expression #=> String
    #   resp.association_versions[0].output_location.s3_location.output_s3_region #=> String
    #   resp.association_versions[0].output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.association_versions[0].output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.association_versions[0].association_name #=> String
    #   resp.association_versions[0].max_errors #=> String
    #   resp.association_versions[0].max_concurrency #=> String
    #   resp.association_versions[0].compliance_severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"
    #   resp.association_versions[0].sync_compliance #=> String, one of "AUTO", "MANUAL"
    #   resp.association_versions[0].apply_only_at_cron_interval #=> Boolean
    #   resp.association_versions[0].calendar_names #=> Array
    #   resp.association_versions[0].calendar_names[0] #=> String
    #   resp.association_versions[0].target_locations #=> Array
    #   resp.association_versions[0].target_locations[0].accounts #=> Array
    #   resp.association_versions[0].target_locations[0].accounts[0] #=> String
    #   resp.association_versions[0].target_locations[0].regions #=> Array
    #   resp.association_versions[0].target_locations[0].regions[0] #=> String
    #   resp.association_versions[0].target_locations[0].target_location_max_concurrency #=> String
    #   resp.association_versions[0].target_locations[0].target_location_max_errors #=> String
    #   resp.association_versions[0].target_locations[0].execution_role_name #=> String
    #   resp.association_versions[0].target_locations[0].target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.association_versions[0].target_locations[0].target_location_alarm_configuration.alarms #=> Array
    #   resp.association_versions[0].target_locations[0].target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.association_versions[0].schedule_offset #=> Integer
    #   resp.association_versions[0].target_maps #=> Array
    #   resp.association_versions[0].target_maps[0] #=> Hash
    #   resp.association_versions[0].target_maps[0]["TargetMapKey"] #=> Array
    #   resp.association_versions[0].target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListAssociationVersions AWS API Documentation
    #
    # @overload list_association_versions(params = {})
    # @param [Hash] params ({})
    def list_association_versions(params = {}, options = {})
      req = build_request(:list_association_versions, params)
      req.send_request(options)
    end

    # Returns all State Manager associations in the current Amazon Web
    # Services account and Amazon Web Services Region. You can limit the
    # results to a specific State Manager association document or managed
    # node by specifying a filter. State Manager is a capability of Amazon
    # Web Services Systems Manager.
    #
    # @option params [Array<Types::AssociationFilter>] :association_filter_list
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    #   <note markdown="1"> Filtering associations using the `InstanceID` attribute only returns
    #   legacy associations created using the `InstanceID` attribute.
    #   Associations targeting the managed node that are part of the Target
    #   Attributes `ResourceGroup` or `Tags` aren't returned.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::ListAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociationsResult#associations #associations} => Array&lt;Types::Association&gt;
    #   * {Types::ListAssociationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associations({
    #     association_filter_list: [
    #       {
    #         key: "InstanceId", # required, accepts InstanceId, Name, AssociationId, AssociationStatusName, LastExecutedBefore, LastExecutedAfter, AssociationName, ResourceGroupName
    #         value: "AssociationFilterValue", # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].name #=> String
    #   resp.associations[0].instance_id #=> String
    #   resp.associations[0].association_id #=> String
    #   resp.associations[0].association_version #=> String
    #   resp.associations[0].document_version #=> String
    #   resp.associations[0].targets #=> Array
    #   resp.associations[0].targets[0].key #=> String
    #   resp.associations[0].targets[0].values #=> Array
    #   resp.associations[0].targets[0].values[0] #=> String
    #   resp.associations[0].last_execution_date #=> Time
    #   resp.associations[0].overview.status #=> String
    #   resp.associations[0].overview.detailed_status #=> String
    #   resp.associations[0].overview.association_status_aggregated_count #=> Hash
    #   resp.associations[0].overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.associations[0].schedule_expression #=> String
    #   resp.associations[0].association_name #=> String
    #   resp.associations[0].schedule_offset #=> Integer
    #   resp.associations[0].target_maps #=> Array
    #   resp.associations[0].target_maps[0] #=> Hash
    #   resp.associations[0].target_maps[0]["TargetMapKey"] #=> Array
    #   resp.associations[0].target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListAssociations AWS API Documentation
    #
    # @overload list_associations(params = {})
    # @param [Hash] params ({})
    def list_associations(params = {}, options = {})
      req = build_request(:list_associations, params)
      req.send_request(options)
    end

    # An invocation is copy of a command sent to a specific managed node. A
    # command can apply to one or more managed nodes. A command invocation
    # applies to one managed node. For example, if a user runs `SendCommand`
    # against three managed nodes, then a command invocation is created for
    # each requested managed node ID. `ListCommandInvocations` provide
    # status about command execution.
    #
    # @option params [String] :command_id
    #   (Optional) The invocations for a specific command ID.
    #
    # @option params [String] :instance_id
    #   (Optional) The command execution details for a specific managed node
    #   ID.
    #
    # @option params [Integer] :max_results
    #   (Optional) The maximum number of items to return for this call. The
    #   call also returns a token that you can specify in a subsequent call to
    #   get the next set of results.
    #
    # @option params [String] :next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #
    # @option params [Array<Types::CommandFilter>] :filters
    #   (Optional) One or more filters. Use a filter to return a more specific
    #   list of results.
    #
    # @option params [Boolean] :details
    #   (Optional) If set this returns the response of the command executions
    #   and any command output. The default value is `false`.
    #
    # @return [Types::ListCommandInvocationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCommandInvocationsResult#command_invocations #command_invocations} => Array&lt;Types::CommandInvocation&gt;
    #   * {Types::ListCommandInvocationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_command_invocations({
    #     command_id: "CommandId",
    #     instance_id: "InstanceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status, ExecutionStage, DocumentName
    #         value: "CommandFilterValue", # required
    #       },
    #     ],
    #     details: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.command_invocations #=> Array
    #   resp.command_invocations[0].command_id #=> String
    #   resp.command_invocations[0].instance_id #=> String
    #   resp.command_invocations[0].instance_name #=> String
    #   resp.command_invocations[0].comment #=> String
    #   resp.command_invocations[0].document_name #=> String
    #   resp.command_invocations[0].document_version #=> String
    #   resp.command_invocations[0].requested_date_time #=> Time
    #   resp.command_invocations[0].status #=> String, one of "Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"
    #   resp.command_invocations[0].status_details #=> String
    #   resp.command_invocations[0].trace_output #=> String
    #   resp.command_invocations[0].standard_output_url #=> String
    #   resp.command_invocations[0].standard_error_url #=> String
    #   resp.command_invocations[0].command_plugins #=> Array
    #   resp.command_invocations[0].command_plugins[0].name #=> String
    #   resp.command_invocations[0].command_plugins[0].status #=> String, one of "Pending", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.command_invocations[0].command_plugins[0].status_details #=> String
    #   resp.command_invocations[0].command_plugins[0].response_code #=> Integer
    #   resp.command_invocations[0].command_plugins[0].response_start_date_time #=> Time
    #   resp.command_invocations[0].command_plugins[0].response_finish_date_time #=> Time
    #   resp.command_invocations[0].command_plugins[0].output #=> String
    #   resp.command_invocations[0].command_plugins[0].standard_output_url #=> String
    #   resp.command_invocations[0].command_plugins[0].standard_error_url #=> String
    #   resp.command_invocations[0].command_plugins[0].output_s3_region #=> String
    #   resp.command_invocations[0].command_plugins[0].output_s3_bucket_name #=> String
    #   resp.command_invocations[0].command_plugins[0].output_s3_key_prefix #=> String
    #   resp.command_invocations[0].service_role #=> String
    #   resp.command_invocations[0].notification_config.notification_arn #=> String
    #   resp.command_invocations[0].notification_config.notification_events #=> Array
    #   resp.command_invocations[0].notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.command_invocations[0].notification_config.notification_type #=> String, one of "Command", "Invocation"
    #   resp.command_invocations[0].cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.command_invocations[0].cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListCommandInvocations AWS API Documentation
    #
    # @overload list_command_invocations(params = {})
    # @param [Hash] params ({})
    def list_command_invocations(params = {}, options = {})
      req = build_request(:list_command_invocations, params)
      req.send_request(options)
    end

    # Lists the commands requested by users of the Amazon Web Services
    # account.
    #
    # @option params [String] :command_id
    #   (Optional) If provided, lists only the specified command.
    #
    # @option params [String] :instance_id
    #   (Optional) Lists commands issued against this managed node ID.
    #
    #   <note markdown="1"> You can't specify a managed node ID in the same command that you
    #   specify `Status` = `Pending`. This is because the command hasn't
    #   reached the managed node yet.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   (Optional) The maximum number of items to return for this call. The
    #   call also returns a token that you can specify in a subsequent call to
    #   get the next set of results.
    #
    # @option params [String] :next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #
    # @option params [Array<Types::CommandFilter>] :filters
    #   (Optional) One or more filters. Use a filter to return a more specific
    #   list of results.
    #
    # @return [Types::ListCommandsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCommandsResult#commands #commands} => Array&lt;Types::Command&gt;
    #   * {Types::ListCommandsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_commands({
    #     command_id: "CommandId",
    #     instance_id: "InstanceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status, ExecutionStage, DocumentName
    #         value: "CommandFilterValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.commands #=> Array
    #   resp.commands[0].command_id #=> String
    #   resp.commands[0].document_name #=> String
    #   resp.commands[0].document_version #=> String
    #   resp.commands[0].comment #=> String
    #   resp.commands[0].expires_after #=> Time
    #   resp.commands[0].parameters #=> Hash
    #   resp.commands[0].parameters["ParameterName"] #=> Array
    #   resp.commands[0].parameters["ParameterName"][0] #=> String
    #   resp.commands[0].instance_ids #=> Array
    #   resp.commands[0].instance_ids[0] #=> String
    #   resp.commands[0].targets #=> Array
    #   resp.commands[0].targets[0].key #=> String
    #   resp.commands[0].targets[0].values #=> Array
    #   resp.commands[0].targets[0].values[0] #=> String
    #   resp.commands[0].requested_date_time #=> Time
    #   resp.commands[0].status #=> String, one of "Pending", "InProgress", "Success", "Cancelled", "Failed", "TimedOut", "Cancelling"
    #   resp.commands[0].status_details #=> String
    #   resp.commands[0].output_s3_region #=> String
    #   resp.commands[0].output_s3_bucket_name #=> String
    #   resp.commands[0].output_s3_key_prefix #=> String
    #   resp.commands[0].max_concurrency #=> String
    #   resp.commands[0].max_errors #=> String
    #   resp.commands[0].target_count #=> Integer
    #   resp.commands[0].completed_count #=> Integer
    #   resp.commands[0].error_count #=> Integer
    #   resp.commands[0].delivery_timed_out_count #=> Integer
    #   resp.commands[0].service_role #=> String
    #   resp.commands[0].notification_config.notification_arn #=> String
    #   resp.commands[0].notification_config.notification_events #=> Array
    #   resp.commands[0].notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.commands[0].notification_config.notification_type #=> String, one of "Command", "Invocation"
    #   resp.commands[0].cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.commands[0].cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.commands[0].timeout_seconds #=> Integer
    #   resp.commands[0].alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.commands[0].alarm_configuration.alarms #=> Array
    #   resp.commands[0].alarm_configuration.alarms[0].name #=> String
    #   resp.commands[0].triggered_alarms #=> Array
    #   resp.commands[0].triggered_alarms[0].name #=> String
    #   resp.commands[0].triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListCommands AWS API Documentation
    #
    # @overload list_commands(params = {})
    # @param [Hash] params ({})
    def list_commands(params = {}, options = {})
      req = build_request(:list_commands, params)
      req.send_request(options)
    end

    # For a specified resource ID, this API operation returns a list of
    # compliance statuses for different resource types. Currently, you can
    # only specify one resource ID per call. List results depend on the
    # criteria specified in the filter.
    #
    # @option params [Array<Types::ComplianceStringFilter>] :filters
    #   One or more compliance filters. Use a filter to return a more specific
    #   list of results.
    #
    # @option params [Array<String>] :resource_ids
    #   The ID for the resources from which to get compliance information.
    #   Currently, you can only specify one resource ID.
    #
    # @option params [Array<String>] :resource_types
    #   The type of resource from which to get compliance information.
    #   Currently, the only supported resource type is `ManagedInstance`.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListComplianceItemsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComplianceItemsResult#compliance_items #compliance_items} => Array&lt;Types::ComplianceItem&gt;
    #   * {Types::ListComplianceItemsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compliance_items({
    #     filters: [
    #       {
    #         key: "ComplianceStringFilterKey",
    #         values: ["ComplianceFilterValue"],
    #         type: "EQUAL", # accepts EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN
    #       },
    #     ],
    #     resource_ids: ["ComplianceResourceId"],
    #     resource_types: ["ComplianceResourceType"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.compliance_items #=> Array
    #   resp.compliance_items[0].compliance_type #=> String
    #   resp.compliance_items[0].resource_type #=> String
    #   resp.compliance_items[0].resource_id #=> String
    #   resp.compliance_items[0].id #=> String
    #   resp.compliance_items[0].title #=> String
    #   resp.compliance_items[0].status #=> String, one of "COMPLIANT", "NON_COMPLIANT"
    #   resp.compliance_items[0].severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.compliance_items[0].execution_summary.execution_time #=> Time
    #   resp.compliance_items[0].execution_summary.execution_id #=> String
    #   resp.compliance_items[0].execution_summary.execution_type #=> String
    #   resp.compliance_items[0].details #=> Hash
    #   resp.compliance_items[0].details["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListComplianceItems AWS API Documentation
    #
    # @overload list_compliance_items(params = {})
    # @param [Hash] params ({})
    def list_compliance_items(params = {}, options = {})
      req = build_request(:list_compliance_items, params)
      req.send_request(options)
    end

    # Returns a summary count of compliant and non-compliant resources for a
    # compliance type. For example, this call can return State Manager
    # associations, patches, or custom compliance types according to the
    # filter criteria that you specify.
    #
    # @option params [Array<Types::ComplianceStringFilter>] :filters
    #   One or more compliance or inventory filters. Use a filter to return a
    #   more specific list of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. Currently, you
    #   can specify null or 50. The call also returns a token that you can
    #   specify in a subsequent call to get the next set of results.
    #
    # @return [Types::ListComplianceSummariesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComplianceSummariesResult#compliance_summary_items #compliance_summary_items} => Array&lt;Types::ComplianceSummaryItem&gt;
    #   * {Types::ListComplianceSummariesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compliance_summaries({
    #     filters: [
    #       {
    #         key: "ComplianceStringFilterKey",
    #         values: ["ComplianceFilterValue"],
    #         type: "EQUAL", # accepts EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.compliance_summary_items #=> Array
    #   resp.compliance_summary_items[0].compliance_type #=> String
    #   resp.compliance_summary_items[0].compliant_summary.compliant_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.critical_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.high_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.medium_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.low_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.informational_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.unspecified_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.non_compliant_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.critical_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.high_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.medium_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.low_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.informational_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.unspecified_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListComplianceSummaries AWS API Documentation
    #
    # @overload list_compliance_summaries(params = {})
    # @param [Hash] params ({})
    def list_compliance_summaries(params = {}, options = {})
      req = build_request(:list_compliance_summaries, params)
      req.send_request(options)
    end

    # Information about approval reviews for a version of a change template
    # in Change Manager.
    #
    # @option params [required, String] :name
    #   The name of the change template.
    #
    # @option params [String] :document_version
    #   The version of the change template.
    #
    # @option params [required, String] :metadata
    #   The type of data for which details are being requested. Currently, the
    #   only supported value is `DocumentReviews`.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListDocumentMetadataHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentMetadataHistoryResponse#name #name} => String
    #   * {Types::ListDocumentMetadataHistoryResponse#document_version #document_version} => String
    #   * {Types::ListDocumentMetadataHistoryResponse#author #author} => String
    #   * {Types::ListDocumentMetadataHistoryResponse#metadata #metadata} => Types::DocumentMetadataResponseInfo
    #   * {Types::ListDocumentMetadataHistoryResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_metadata_history({
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersion",
    #     metadata: "DocumentReviews", # required, accepts DocumentReviews
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.document_version #=> String
    #   resp.author #=> String
    #   resp.metadata.reviewer_response #=> Array
    #   resp.metadata.reviewer_response[0].create_time #=> Time
    #   resp.metadata.reviewer_response[0].updated_time #=> Time
    #   resp.metadata.reviewer_response[0].review_status #=> String, one of "APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"
    #   resp.metadata.reviewer_response[0].comment #=> Array
    #   resp.metadata.reviewer_response[0].comment[0].type #=> String, one of "Comment"
    #   resp.metadata.reviewer_response[0].comment[0].content #=> String
    #   resp.metadata.reviewer_response[0].reviewer #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocumentMetadataHistory AWS API Documentation
    #
    # @overload list_document_metadata_history(params = {})
    # @param [Hash] params ({})
    def list_document_metadata_history(params = {}, options = {})
      req = build_request(:list_document_metadata_history, params)
      req.send_request(options)
    end

    # List all versions for a document.
    #
    # @option params [required, String] :name
    #   The name of the document. You can specify an Amazon Resource Name
    #   (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::ListDocumentVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentVersionsResult#document_versions #document_versions} => Array&lt;Types::DocumentVersionInfo&gt;
    #   * {Types::ListDocumentVersionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_versions({
    #     name: "DocumentARN", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_versions #=> Array
    #   resp.document_versions[0].name #=> String
    #   resp.document_versions[0].display_name #=> String
    #   resp.document_versions[0].document_version #=> String
    #   resp.document_versions[0].version_name #=> String
    #   resp.document_versions[0].created_date #=> Time
    #   resp.document_versions[0].is_default_version #=> Boolean
    #   resp.document_versions[0].document_format #=> String, one of "YAML", "JSON", "TEXT"
    #   resp.document_versions[0].status #=> String, one of "Creating", "Active", "Updating", "Deleting", "Failed"
    #   resp.document_versions[0].status_information #=> String
    #   resp.document_versions[0].review_status #=> String, one of "APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocumentVersions AWS API Documentation
    #
    # @overload list_document_versions(params = {})
    # @param [Hash] params ({})
    def list_document_versions(params = {}, options = {})
      req = build_request(:list_document_versions, params)
      req.send_request(options)
    end

    # Returns all Systems Manager (SSM) documents in the current Amazon Web
    # Services account and Amazon Web Services Region. You can limit the
    # results of this request by using a filter.
    #
    # @option params [Array<Types::DocumentFilter>] :document_filter_list
    #   This data type is deprecated. Instead, use `Filters`.
    #
    # @option params [Array<Types::DocumentKeyValuesFilter>] :filters
    #   One or more `DocumentKeyValuesFilter` objects. Use a filter to return
    #   a more specific list of results. For keys, you can specify one or more
    #   key-value pair tags that have been applied to a document. Other valid
    #   keys include `Owner`, `Name`, `PlatformTypes`, `DocumentType`, and
    #   `TargetType`. For example, to return documents you own use
    #   `Key=Owner,Values=Self`. To specify a custom key-value pair, use the
    #   format `Key=tag:tagName,Values=valueName`.
    #
    #   <note markdown="1"> This API operation only supports filtering documents by using a single
    #   tag key and one or more tag values. For example:
    #   `Key=tag:tagName,Values=valueName1,valueName2`
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::ListDocumentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentsResult#document_identifiers #document_identifiers} => Array&lt;Types::DocumentIdentifier&gt;
    #   * {Types::ListDocumentsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_documents({
    #     document_filter_list: [
    #       {
    #         key: "Name", # required, accepts Name, Owner, PlatformTypes, DocumentType
    #         value: "DocumentFilterValue", # required
    #       },
    #     ],
    #     filters: [
    #       {
    #         key: "DocumentKeyValuesFilterKey",
    #         values: ["DocumentKeyValuesFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_identifiers #=> Array
    #   resp.document_identifiers[0].name #=> String
    #   resp.document_identifiers[0].created_date #=> Time
    #   resp.document_identifiers[0].display_name #=> String
    #   resp.document_identifiers[0].owner #=> String
    #   resp.document_identifiers[0].version_name #=> String
    #   resp.document_identifiers[0].platform_types #=> Array
    #   resp.document_identifiers[0].platform_types[0] #=> String, one of "Windows", "Linux", "MacOS"
    #   resp.document_identifiers[0].document_version #=> String
    #   resp.document_identifiers[0].document_type #=> String, one of "Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup"
    #   resp.document_identifiers[0].schema_version #=> String
    #   resp.document_identifiers[0].document_format #=> String, one of "YAML", "JSON", "TEXT"
    #   resp.document_identifiers[0].target_type #=> String
    #   resp.document_identifiers[0].tags #=> Array
    #   resp.document_identifiers[0].tags[0].key #=> String
    #   resp.document_identifiers[0].tags[0].value #=> String
    #   resp.document_identifiers[0].requires #=> Array
    #   resp.document_identifiers[0].requires[0].name #=> String
    #   resp.document_identifiers[0].requires[0].version #=> String
    #   resp.document_identifiers[0].requires[0].require_type #=> String
    #   resp.document_identifiers[0].requires[0].version_name #=> String
    #   resp.document_identifiers[0].review_status #=> String, one of "APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"
    #   resp.document_identifiers[0].author #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocuments AWS API Documentation
    #
    # @overload list_documents(params = {})
    # @param [Hash] params ({})
    def list_documents(params = {}, options = {})
      req = build_request(:list_documents, params)
      req.send_request(options)
    end

    # A list of inventory items returned by the request.
    #
    # @option params [required, String] :instance_id
    #   The managed node ID for which you want inventory information.
    #
    # @option params [required, String] :type_name
    #   The type of inventory item for which you want information.
    #
    # @option params [Array<Types::InventoryFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListInventoryEntriesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInventoryEntriesResult#type_name #type_name} => String
    #   * {Types::ListInventoryEntriesResult#instance_id #instance_id} => String
    #   * {Types::ListInventoryEntriesResult#schema_version #schema_version} => String
    #   * {Types::ListInventoryEntriesResult#capture_time #capture_time} => String
    #   * {Types::ListInventoryEntriesResult#entries #data.entries} => Array&lt;Hash&lt;String,String&gt;&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::ListInventoryEntriesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inventory_entries({
    #     instance_id: "InstanceId", # required
    #     type_name: "InventoryItemTypeName", # required
    #     filters: [
    #       {
    #         key: "InventoryFilterKey", # required
    #         values: ["InventoryFilterValue"], # required
    #         type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.type_name #=> String
    #   resp.instance_id #=> String
    #   resp.schema_version #=> String
    #   resp.capture_time #=> String
    #   resp.data.entries #=> Array
    #   resp.data.entries[0] #=> Hash
    #   resp.data.entries[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListInventoryEntries AWS API Documentation
    #
    # @overload list_inventory_entries(params = {})
    # @param [Hash] params ({})
    def list_inventory_entries(params = {}, options = {})
      req = build_request(:list_inventory_entries, params)
      req.send_request(options)
    end

    # Returns a list of all OpsItem events in the current Amazon Web
    # Services Region and Amazon Web Services account. You can limit the
    # results to events associated with specific OpsItems by specifying a
    # filter.
    #
    # @option params [Array<Types::OpsItemEventFilter>] :filters
    #   One or more OpsItem filters. Use a filter to return a more specific
    #   list of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::ListOpsItemEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOpsItemEventsResponse#next_token #next_token} => String
    #   * {Types::ListOpsItemEventsResponse#summaries #summaries} => Array&lt;Types::OpsItemEventSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ops_item_events({
    #     filters: [
    #       {
    #         key: "OpsItemId", # required, accepts OpsItemId
    #         values: ["OpsItemEventFilterValue"], # required
    #         operator: "Equal", # required, accepts Equal
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.summaries #=> Array
    #   resp.summaries[0].ops_item_id #=> String
    #   resp.summaries[0].event_id #=> String
    #   resp.summaries[0].source #=> String
    #   resp.summaries[0].detail_type #=> String
    #   resp.summaries[0].detail #=> String
    #   resp.summaries[0].created_by.arn #=> String
    #   resp.summaries[0].created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListOpsItemEvents AWS API Documentation
    #
    # @overload list_ops_item_events(params = {})
    # @param [Hash] params ({})
    def list_ops_item_events(params = {}, options = {})
      req = build_request(:list_ops_item_events, params)
      req.send_request(options)
    end

    # Lists all related-item resources associated with a Systems Manager
    # OpsCenter OpsItem. OpsCenter is a capability of Amazon Web Services
    # Systems Manager.
    #
    # @option params [String] :ops_item_id
    #   The ID of the OpsItem for which you want to list all related-item
    #   resources.
    #
    # @option params [Array<Types::OpsItemRelatedItemsFilter>] :filters
    #   One or more OpsItem filters. Use a filter to return a more specific
    #   list of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::ListOpsItemRelatedItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOpsItemRelatedItemsResponse#next_token #next_token} => String
    #   * {Types::ListOpsItemRelatedItemsResponse#summaries #summaries} => Array&lt;Types::OpsItemRelatedItemSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ops_item_related_items({
    #     ops_item_id: "OpsItemId",
    #     filters: [
    #       {
    #         key: "ResourceType", # required, accepts ResourceType, AssociationId, ResourceUri
    #         values: ["OpsItemRelatedItemsFilterValue"], # required
    #         operator: "Equal", # required, accepts Equal
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.summaries #=> Array
    #   resp.summaries[0].ops_item_id #=> String
    #   resp.summaries[0].association_id #=> String
    #   resp.summaries[0].resource_type #=> String
    #   resp.summaries[0].association_type #=> String
    #   resp.summaries[0].resource_uri #=> String
    #   resp.summaries[0].created_by.arn #=> String
    #   resp.summaries[0].created_time #=> Time
    #   resp.summaries[0].last_modified_by.arn #=> String
    #   resp.summaries[0].last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListOpsItemRelatedItems AWS API Documentation
    #
    # @overload list_ops_item_related_items(params = {})
    # @param [Hash] params ({})
    def list_ops_item_related_items(params = {}, options = {})
      req = build_request(:list_ops_item_related_items, params)
      req.send_request(options)
    end

    # Amazon Web Services Systems Manager calls this API operation when
    # displaying all Application Manager OpsMetadata objects or blobs.
    #
    # @option params [Array<Types::OpsMetadataFilter>] :filters
    #   One or more filters to limit the number of OpsMetadata objects
    #   returned by the call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::ListOpsMetadataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOpsMetadataResult#ops_metadata_list #ops_metadata_list} => Array&lt;Types::OpsMetadata&gt;
    #   * {Types::ListOpsMetadataResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ops_metadata({
    #     filters: [
    #       {
    #         key: "OpsMetadataFilterKey", # required
    #         values: ["OpsMetadataFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ops_metadata_list #=> Array
    #   resp.ops_metadata_list[0].resource_id #=> String
    #   resp.ops_metadata_list[0].ops_metadata_arn #=> String
    #   resp.ops_metadata_list[0].last_modified_date #=> Time
    #   resp.ops_metadata_list[0].last_modified_user #=> String
    #   resp.ops_metadata_list[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListOpsMetadata AWS API Documentation
    #
    # @overload list_ops_metadata(params = {})
    # @param [Hash] params ({})
    def list_ops_metadata(params = {}, options = {})
      req = build_request(:list_ops_metadata, params)
      req.send_request(options)
    end

    # Returns a resource-level summary count. The summary includes
    # information about compliant and non-compliant statuses and detailed
    # compliance-item severity counts, according to the filter criteria you
    # specify.
    #
    # @option params [Array<Types::ComplianceStringFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListResourceComplianceSummariesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceComplianceSummariesResult#resource_compliance_summary_items #resource_compliance_summary_items} => Array&lt;Types::ResourceComplianceSummaryItem&gt;
    #   * {Types::ListResourceComplianceSummariesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_compliance_summaries({
    #     filters: [
    #       {
    #         key: "ComplianceStringFilterKey",
    #         values: ["ComplianceFilterValue"],
    #         type: "EQUAL", # accepts EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_compliance_summary_items #=> Array
    #   resp.resource_compliance_summary_items[0].compliance_type #=> String
    #   resp.resource_compliance_summary_items[0].resource_type #=> String
    #   resp.resource_compliance_summary_items[0].resource_id #=> String
    #   resp.resource_compliance_summary_items[0].status #=> String, one of "COMPLIANT", "NON_COMPLIANT"
    #   resp.resource_compliance_summary_items[0].overall_severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.resource_compliance_summary_items[0].execution_summary.execution_time #=> Time
    #   resp.resource_compliance_summary_items[0].execution_summary.execution_id #=> String
    #   resp.resource_compliance_summary_items[0].execution_summary.execution_type #=> String
    #   resp.resource_compliance_summary_items[0].compliant_summary.compliant_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.critical_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.high_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.medium_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.low_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.informational_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.unspecified_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.non_compliant_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.critical_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.high_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.medium_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.low_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.informational_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.unspecified_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceComplianceSummaries AWS API Documentation
    #
    # @overload list_resource_compliance_summaries(params = {})
    # @param [Hash] params ({})
    def list_resource_compliance_summaries(params = {}, options = {})
      req = build_request(:list_resource_compliance_summaries, params)
      req.send_request(options)
    end

    # Lists your resource data sync configurations. Includes information
    # about the last time a sync attempted to start, the last sync status,
    # and the last time a sync successfully completed.
    #
    # The number of sync configurations might be too large to return using a
    # single call to `ListResourceDataSync`. You can limit the number of
    # sync configurations returned by using the `MaxResults` parameter. To
    # determine whether there are more sync configurations to list, check
    # the value of `NextToken` in the output. If there are more sync
    # configurations to list, you can request them by specifying the
    # `NextToken` returned in the call to the parameter of a subsequent
    # call.
    #
    # @option params [String] :sync_type
    #   View a list of resource data syncs according to the sync type. Specify
    #   `SyncToDestination` to view resource data syncs that synchronize data
    #   to an Amazon S3 bucket. Specify `SyncFromSource` to view resource data
    #   syncs from Organizations or from multiple Amazon Web Services Regions.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListResourceDataSyncResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceDataSyncResult#resource_data_sync_items #resource_data_sync_items} => Array&lt;Types::ResourceDataSyncItem&gt;
    #   * {Types::ListResourceDataSyncResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_data_sync({
    #     sync_type: "ResourceDataSyncType",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_data_sync_items #=> Array
    #   resp.resource_data_sync_items[0].sync_name #=> String
    #   resp.resource_data_sync_items[0].sync_type #=> String
    #   resp.resource_data_sync_items[0].sync_source.source_type #=> String
    #   resp.resource_data_sync_items[0].sync_source.aws_organizations_source.organization_source_type #=> String
    #   resp.resource_data_sync_items[0].sync_source.aws_organizations_source.organizational_units #=> Array
    #   resp.resource_data_sync_items[0].sync_source.aws_organizations_source.organizational_units[0].organizational_unit_id #=> String
    #   resp.resource_data_sync_items[0].sync_source.source_regions #=> Array
    #   resp.resource_data_sync_items[0].sync_source.source_regions[0] #=> String
    #   resp.resource_data_sync_items[0].sync_source.include_future_regions #=> Boolean
    #   resp.resource_data_sync_items[0].sync_source.state #=> String
    #   resp.resource_data_sync_items[0].sync_source.enable_all_ops_data_sources #=> Boolean
    #   resp.resource_data_sync_items[0].s3_destination.bucket_name #=> String
    #   resp.resource_data_sync_items[0].s3_destination.prefix #=> String
    #   resp.resource_data_sync_items[0].s3_destination.sync_format #=> String, one of "JsonSerDe"
    #   resp.resource_data_sync_items[0].s3_destination.region #=> String
    #   resp.resource_data_sync_items[0].s3_destination.awskms_key_arn #=> String
    #   resp.resource_data_sync_items[0].s3_destination.destination_data_sharing.destination_data_sharing_type #=> String
    #   resp.resource_data_sync_items[0].last_sync_time #=> Time
    #   resp.resource_data_sync_items[0].last_successful_sync_time #=> Time
    #   resp.resource_data_sync_items[0].sync_last_modified_time #=> Time
    #   resp.resource_data_sync_items[0].last_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.resource_data_sync_items[0].sync_created_time #=> Time
    #   resp.resource_data_sync_items[0].last_sync_status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceDataSync AWS API Documentation
    #
    # @overload list_resource_data_sync(params = {})
    # @param [Hash] params ({})
    def list_resource_data_sync(params = {}, options = {})
      req = build_request(:list_resource_data_sync, params)
      req.send_request(options)
    end

    # Returns a list of the tags assigned to the specified resource.
    #
    # For information about the ID format for each supported resource type,
    # see AddTagsToResource.
    #
    # @option params [required, String] :resource_type
    #   Returns a list of tags for a specific resource type.
    #
    # @option params [required, String] :resource_id
    #   The resource ID for which you want to see a list of tags.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline, OpsItem, OpsMetadata, Automation, Association
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Shares a Amazon Web Services Systems Manager document (SSM
    # document)publicly or privately. If you share a document privately, you
    # must specify the Amazon Web Services user IDs for those people who can
    # use the document. If you share a document publicly, you must specify
    # *All* as the account ID.
    #
    # @option params [required, String] :name
    #   The name of the document that you want to share.
    #
    # @option params [required, String] :permission_type
    #   The permission type for the document. The permission type can be
    #   *Share*.
    #
    # @option params [Array<String>] :account_ids_to_add
    #   The Amazon Web Services users that should have access to the document.
    #   The account IDs can either be a group of account IDs or *All*.
    #
    # @option params [Array<String>] :account_ids_to_remove
    #   The Amazon Web Services users that should no longer have access to the
    #   document. The Amazon Web Services user can either be a group of
    #   account IDs or *All*. This action has a higher priority than
    #   *AccountIdsToAdd*. If you specify an ID to add and the same ID to
    #   remove, the system removes access to the document.
    #
    # @option params [String] :shared_document_version
    #   (Optional) The version of the document to share. If it isn't
    #   specified, the system choose the `Default` version to share.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_document_permission({
    #     name: "DocumentName", # required
    #     permission_type: "Share", # required, accepts Share
    #     account_ids_to_add: ["AccountId"],
    #     account_ids_to_remove: ["AccountId"],
    #     shared_document_version: "SharedDocumentVersion",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ModifyDocumentPermission AWS API Documentation
    #
    # @overload modify_document_permission(params = {})
    # @param [Hash] params ({})
    def modify_document_permission(params = {}, options = {})
      req = build_request(:modify_document_permission, params)
      req.send_request(options)
    end

    # Registers a compliance type and other compliance details on a
    # designated resource. This operation lets you register custom
    # compliance details with a resource. This call overwrites existing
    # compliance information on the resource, so you must provide a full
    # list of compliance items each time that you send the request.
    #
    # ComplianceType can be one of the following:
    #
    # * ExecutionId: The execution ID when the patch, association, or custom
    #   compliance item was applied.
    #
    # * ExecutionType: Specify patch, association, or Custom:`string`.
    #
    # * ExecutionTime. The time the patch, association, or custom compliance
    #   item was applied to the managed node.
    #
    # * Id: The patch, association, or custom compliance ID.
    #
    # * Title: A title.
    #
    # * Status: The status of the compliance item. For example, `approved`
    #   for patches, or `Failed` for associations.
    #
    # * Severity: A patch severity. For example, `Critical`.
    #
    # * DocumentName: An SSM document name. For example,
    #   `AWS-RunPatchBaseline`.
    #
    # * DocumentVersion: An SSM document version number. For example, 4.
    #
    # * Classification: A patch classification. For example, `security
    #   updates`.
    #
    # * PatchBaselineId: A patch baseline ID.
    #
    # * PatchSeverity: A patch severity. For example, `Critical`.
    #
    # * PatchState: A patch state. For example,
    #   `InstancesWithFailedPatches`.
    #
    # * PatchGroup: The name of a patch group.
    #
    # * InstalledTime: The time the association, patch, or custom compliance
    #   item was applied to the resource. Specify the time by using the
    #   following format: yyyy-MM-dd'T'HH:mm:ss'Z'
    #
    # @option params [required, String] :resource_id
    #   Specify an ID for this resource. For a managed node, this is the node
    #   ID.
    #
    # @option params [required, String] :resource_type
    #   Specify the type of resource. `ManagedInstance` is currently the only
    #   supported resource type.
    #
    # @option params [required, String] :compliance_type
    #   Specify the compliance type. For example, specify Association (for a
    #   State Manager association), Patch, or Custom:`string`.
    #
    # @option params [required, Types::ComplianceExecutionSummary] :execution_summary
    #   A summary of the call execution that includes an execution ID, the
    #   type of execution (for example, `Command`), and the date/time of the
    #   execution using a datetime object that is saved in the following
    #   format: yyyy-MM-dd'T'HH:mm:ss'Z'.
    #
    # @option params [required, Array<Types::ComplianceItemEntry>] :items
    #   Information about the compliance as defined by the resource type. For
    #   example, for a patch compliance type, `Items` includes information
    #   about the PatchSeverity, Classification, and so on.
    #
    # @option params [String] :item_content_hash
    #   MD5 or SHA-256 content hash. The content hash is used to determine if
    #   existing information should be overwritten or ignored. If the content
    #   hashes match, the request to put compliance information is ignored.
    #
    # @option params [String] :upload_type
    #   The mode for uploading compliance items. You can specify `COMPLETE` or
    #   `PARTIAL`. In `COMPLETE` mode, the system overwrites all existing
    #   compliance information for the resource. You must provide a full list
    #   of compliance items each time you send the request.
    #
    #   In `PARTIAL` mode, the system overwrites compliance information for a
    #   specific association. The association must be configured with
    #   `SyncCompliance` set to `MANUAL`. By default, all requests use
    #   `COMPLETE` mode.
    #
    #   <note markdown="1"> This attribute is only valid for association compliance.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_compliance_items({
    #     resource_id: "ComplianceResourceId", # required
    #     resource_type: "ComplianceResourceType", # required
    #     compliance_type: "ComplianceTypeName", # required
    #     execution_summary: { # required
    #       execution_time: Time.now, # required
    #       execution_id: "ComplianceExecutionId",
    #       execution_type: "ComplianceExecutionType",
    #     },
    #     items: [ # required
    #       {
    #         id: "ComplianceItemId",
    #         title: "ComplianceItemTitle",
    #         severity: "CRITICAL", # required, accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #         status: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT
    #         details: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       },
    #     ],
    #     item_content_hash: "ComplianceItemContentHash",
    #     upload_type: "COMPLETE", # accepts COMPLETE, PARTIAL
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutComplianceItems AWS API Documentation
    #
    # @overload put_compliance_items(params = {})
    # @param [Hash] params ({})
    def put_compliance_items(params = {}, options = {})
      req = build_request(:put_compliance_items, params)
      req.send_request(options)
    end

    # Bulk update custom inventory items on one or more managed nodes. The
    # request adds an inventory item, if it doesn't already exist, or
    # updates an inventory item, if it does exist.
    #
    # @option params [required, String] :instance_id
    #   An managed node ID where you want to add or update inventory items.
    #
    # @option params [required, Array<Types::InventoryItem>] :items
    #   The inventory items that you want to add or update on managed nodes.
    #
    # @return [Types::PutInventoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutInventoryResult#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_inventory({
    #     instance_id: "InstanceId", # required
    #     items: [ # required
    #       {
    #         type_name: "InventoryItemTypeName", # required
    #         schema_version: "InventoryItemSchemaVersion", # required
    #         capture_time: "InventoryItemCaptureTime", # required
    #         content_hash: "InventoryItemContentHash",
    #         content: [
    #           {
    #             "AttributeName" => "AttributeValue",
    #           },
    #         ],
    #         context: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutInventory AWS API Documentation
    #
    # @overload put_inventory(params = {})
    # @param [Hash] params ({})
    def put_inventory(params = {}, options = {})
      req = build_request(:put_inventory, params)
      req.send_request(options)
    end

    # Add a parameter to the system.
    #
    # @option params [required, String] :name
    #   The fully qualified name of the parameter that you want to add to the
    #   system. The fully qualified name includes the complete hierarchy of
    #   the parameter path and name. For parameters in a hierarchy, you must
    #   include a leading forward slash character (/) when you create or
    #   reference a parameter. For example: `/Dev/DBServer/MySQL/db-string13`
    #
    #   Naming Constraints:
    #
    #   * Parameter names are case sensitive.
    #
    #   * A parameter name must be unique within an Amazon Web Services Region
    #
    #   * A parameter name can't be prefixed with "`aws`" or "`ssm`"
    #     (case-insensitive).
    #
    #   * Parameter names can include only the following symbols and letters:
    #     `a-zA-Z0-9_.-`
    #
    #     In addition, the slash character ( / ) is used to delineate
    #     hierarchies in parameter names. For example:
    #     `/Dev/Production/East/Project-ABC/MyParameter`
    #
    #   * A parameter name can't include spaces.
    #
    #   * Parameter hierarchies are limited to a maximum depth of fifteen
    #     levels.
    #
    #   For additional information about valid values for parameter names, see
    #   [Creating Systems Manager parameters][1] in the *Amazon Web Services
    #   Systems Manager User Guide*.
    #
    #   <note markdown="1"> The maximum length constraint of 2048 characters listed below includes
    #   1037 characters reserved for internal use by Systems Manager. The
    #   maximum length for a parameter name that you create is 1011
    #   characters. This includes the characters in the ARN that precede the
    #   name you specify, such as
    #   `arn:aws:ssm:us-east-2:111122223333:parameter/`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-su-create.html
    #
    # @option params [String] :description
    #   Information about the parameter that you want to add to the system.
    #   Optional but recommended.
    #
    #   Don't enter personally identifiable information in this field.
    #
    # @option params [required, String] :value
    #   The parameter value that you want to add to the system. Standard
    #   parameters have a value limit of 4 KB. Advanced parameters have a
    #   value limit of 8 KB.
    #
    #   <note markdown="1"> Parameters can't be referenced or nested in the values of other
    #   parameters. You can't include `\{\{\}\}` or
    #   `\{\{ssm:parameter-name\}\}` in a parameter value.
    #
    #    </note>
    #
    # @option params [String] :type
    #   The type of parameter that you want to add to the system.
    #
    #   <note markdown="1"> `SecureString` isn't currently supported for CloudFormation
    #   templates.
    #
    #    </note>
    #
    #   Items in a `StringList` must be separated by a comma (,). You can't
    #   use other punctuation or special character to escape items in the
    #   list. If you have a parameter value that requires a comma, then use
    #   the `String` data type.
    #
    #   Specifying a parameter type isn't required when updating a parameter.
    #   You must specify a parameter type when creating a parameter.
    #
    # @option params [String] :key_id
    #   The Key Management Service (KMS) ID that you want to use to encrypt a
    #   parameter. Use a custom key for better security. Required for
    #   parameters that use the `SecureString` data type.
    #
    #   If you don't specify a key ID, the system uses the default key
    #   associated with your Amazon Web Services account which is not as
    #   secure as using a custom key.
    #
    #   * To use a custom KMS key, choose the `SecureString` data type with
    #     the `Key ID` parameter.
    #
    #   ^
    #
    # @option params [Boolean] :overwrite
    #   Overwrite an existing parameter. The default value is `false`.
    #
    # @option params [String] :allowed_pattern
    #   A regular expression used to validate the parameter value. For
    #   example, for String types with values restricted to numbers, you can
    #   specify the following: AllowedPattern=^\\d+$
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment. For example, you might want to tag a Systems Manager
    #   parameter to identify the type of resource to which it applies, the
    #   environment, or the type of configuration data referenced by the
    #   parameter. In this case, you could specify the following key-value
    #   pairs:
    #
    #   * `Key=Resource,Value=S3bucket`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=ParameterType,Value=LicenseKey`
    #
    #   <note markdown="1"> To add tags to an existing Systems Manager parameter, use the
    #   AddTagsToResource operation.
    #
    #    </note>
    #
    # @option params [String] :tier
    #   The parameter tier to assign to a parameter.
    #
    #   Parameter Store offers a standard tier and an advanced tier for
    #   parameters. Standard parameters have a content size limit of 4 KB and
    #   can't be configured to use parameter policies. You can create a
    #   maximum of 10,000 standard parameters for each Region in an Amazon Web
    #   Services account. Standard parameters are offered at no additional
    #   cost.
    #
    #   Advanced parameters have a content size limit of 8 KB and can be
    #   configured to use parameter policies. You can create a maximum of
    #   100,000 advanced parameters for each Region in an Amazon Web Services
    #   account. Advanced parameters incur a charge. For more information, see
    #   [Standard and advanced parameter tiers][1] in the *Amazon Web Services
    #   Systems Manager User Guide*.
    #
    #   You can change a standard parameter to an advanced parameter any time.
    #   But you can't revert an advanced parameter to a standard parameter.
    #   Reverting an advanced parameter to a standard parameter would result
    #   in data loss because the system would truncate the size of the
    #   parameter from 8 KB to 4 KB. Reverting would also remove any policies
    #   attached to the parameter. Lastly, advanced parameters use a different
    #   form of encryption than standard parameters.
    #
    #   If you no longer need an advanced parameter, or if you no longer want
    #   to incur charges for an advanced parameter, you must delete it and
    #   recreate it as a new standard parameter.
    #
    #   **Using the Default Tier Configuration**
    #
    #   In `PutParameter` requests, you can specify the tier to create the
    #   parameter in. Whenever you specify a tier in the request, Parameter
    #   Store creates or updates the parameter according to that request.
    #   However, if you don't specify a tier in a request, Parameter Store
    #   assigns the tier based on the current Parameter Store default tier
    #   configuration.
    #
    #   The default tier when you begin using Parameter Store is the
    #   standard-parameter tier. If you use the advanced-parameter tier, you
    #   can specify one of the following as the default:
    #
    #   * **Advanced**: With this option, Parameter Store evaluates all
    #     requests as advanced parameters.
    #
    #   * **Intelligent-Tiering**: With this option, Parameter Store evaluates
    #     each request to determine if the parameter is standard or advanced.
    #
    #     If the request doesn't include any options that require an advanced
    #     parameter, the parameter is created in the standard-parameter tier.
    #     If one or more options requiring an advanced parameter are included
    #     in the request, Parameter Store create a parameter in the
    #     advanced-parameter tier.
    #
    #     This approach helps control your parameter-related costs by always
    #     creating standard parameters unless an advanced parameter is
    #     necessary.
    #
    #   Options that require an advanced parameter include the following:
    #
    #   * The content size of the parameter is more than 4 KB.
    #
    #   * The parameter uses a parameter policy.
    #
    #   * More than 10,000 parameters already exist in your Amazon Web
    #     Services account in the current Amazon Web Services Region.
    #
    #   For more information about configuring the default tier option, see
    #   [Specifying a default parameter tier][2] in the *Amazon Web Services
    #   Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/ps-default-tier.html
    #
    # @option params [String] :policies
    #   One or more policies to apply to a parameter. This operation takes a
    #   JSON array. Parameter Store, a capability of Amazon Web Services
    #   Systems Manager supports the following policy types:
    #
    #   Expiration: This policy deletes the parameter after it expires. When
    #   you create the policy, you specify the expiration date. You can update
    #   the expiration date and time by updating the policy. Updating the
    #   *parameter* doesn't affect the expiration date and time. When the
    #   expiration time is reached, Parameter Store deletes the parameter.
    #
    #   ExpirationNotification: This policy initiates an event in Amazon
    #   CloudWatch Events that notifies you about the expiration. By using
    #   this policy, you can receive notification before or after the
    #   expiration time is reached, in units of days or hours.
    #
    #   NoChangeNotification: This policy initiates a CloudWatch Events event
    #   if a parameter hasn't been modified for a specified period of time.
    #   This policy type is useful when, for example, a secret needs to be
    #   changed within a period of time, but it hasn't been changed.
    #
    #   All existing policies are preserved until you send new policies or an
    #   empty policy. For more information about parameter policies, see
    #   [Assigning parameter policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html
    #
    # @option params [String] :data_type
    #   The data type for a `String` parameter. Supported data types include
    #   plain text and Amazon Machine Image (AMI) IDs.
    #
    #   **The following data type values are supported.**
    #
    #   * `text`
    #
    #   * `aws:ec2:image`
    #
    #   * `aws:ssm:integration`
    #
    #   When you create a `String` parameter and specify `aws:ec2:image`,
    #   Amazon Web Services Systems Manager validates the parameter value is
    #   in the required format, such as `ami-12345abcdeEXAMPLE`, and that the
    #   specified AMI is available in your Amazon Web Services account.
    #
    #   <note markdown="1"> If the action is successful, the service sends back an HTTP 200
    #   response which indicates a successful `PutParameter` call for all
    #   cases except for data type `aws:ec2:image`. If you call `PutParameter`
    #   with `aws:ec2:image` data type, a successful HTTP 200 response does
    #   not guarantee that your parameter was successfully created or updated.
    #   The `aws:ec2:image` value is validated asynchronously, and the
    #   `PutParameter` call returns before the validation is complete. If you
    #   submit an invalid AMI value, the PutParameter operation will return
    #   success, but the asynchronous validation will fail and the parameter
    #   will not be created or updated. To monitor whether your
    #   `aws:ec2:image` parameters are created successfully, see [Setting up
    #   notifications or trigger actions based on Parameter Store events][1].
    #   For more information about AMI format validation , see [Native
    #   parameter support for Amazon Machine Image (AMI) IDs][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-cwe.html
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html
    #
    # @return [Types::PutParameterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutParameterResult#version #version} => Integer
    #   * {Types::PutParameterResult#tier #tier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_parameter({
    #     name: "PSParameterName", # required
    #     description: "ParameterDescription",
    #     value: "PSParameterValue", # required
    #     type: "String", # accepts String, StringList, SecureString
    #     key_id: "ParameterKeyId",
    #     overwrite: false,
    #     allowed_pattern: "AllowedPattern",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     tier: "Standard", # accepts Standard, Advanced, Intelligent-Tiering
    #     policies: "ParameterPolicies",
    #     data_type: "ParameterDataType",
    #   })
    #
    # @example Response structure
    #
    #   resp.version #=> Integer
    #   resp.tier #=> String, one of "Standard", "Advanced", "Intelligent-Tiering"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutParameter AWS API Documentation
    #
    # @overload put_parameter(params = {})
    # @param [Hash] params ({})
    def put_parameter(params = {}, options = {})
      req = build_request(:put_parameter, params)
      req.send_request(options)
    end

    # Creates or updates a Systems Manager resource policy. A resource
    # policy helps you to define the IAM entity (for example, an Amazon Web
    # Services account) that can manage your Systems Manager resources.
    # Currently, `OpsItemGroup` is the only resource that supports Systems
    # Manager resource policies. The resource policy for `OpsItemGroup`
    # enables Amazon Web Services accounts to view and interact with
    # OpsCenter operational work items (OpsItems).
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the resource to which you want to attach
    #   a policy.
    #
    # @option params [required, String] :policy
    #   A policy you want to associate with a resource.
    #
    # @option params [String] :policy_id
    #   The policy ID.
    #
    # @option params [String] :policy_hash
    #   ID of the current policy version. The hash helps to prevent a
    #   situation where multiple users attempt to overwrite a policy. You must
    #   provide this hash when updating or deleting a policy.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#policy_id #policy_id} => String
    #   * {Types::PutResourcePolicyResponse#policy_hash #policy_hash} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "ResourceArnString", # required
    #     policy: "Policy", # required
    #     policy_id: "PolicyId",
    #     policy_hash: "PolicyHash",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.policy_hash #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Defines the default patch baseline for the relevant operating system.
    #
    # To reset the Amazon Web Services-predefined patch baseline as the
    # default, specify the full patch baseline Amazon Resource Name (ARN) as
    # the baseline ID value. For example, for CentOS, specify
    # `arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed`
    # instead of `pb-0574b43a65ea646ed`.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline that should be the default patch
    #   baseline.
    #
    # @return [Types::RegisterDefaultPatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterDefaultPatchBaselineResult#baseline_id #baseline_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_default_patch_baseline({
    #     baseline_id: "BaselineId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterDefaultPatchBaseline AWS API Documentation
    #
    # @overload register_default_patch_baseline(params = {})
    # @param [Hash] params ({})
    def register_default_patch_baseline(params = {}, options = {})
      req = build_request(:register_default_patch_baseline, params)
      req.send_request(options)
    end

    # Registers a patch baseline for a patch group.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to register with the patch group.
    #
    # @option params [required, String] :patch_group
    #   The name of the patch group to be registered with the patch baseline.
    #
    # @return [Types::RegisterPatchBaselineForPatchGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterPatchBaselineForPatchGroupResult#baseline_id #baseline_id} => String
    #   * {Types::RegisterPatchBaselineForPatchGroupResult#patch_group #patch_group} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_patch_baseline_for_patch_group({
    #     baseline_id: "BaselineId", # required
    #     patch_group: "PatchGroup", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.patch_group #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterPatchBaselineForPatchGroup AWS API Documentation
    #
    # @overload register_patch_baseline_for_patch_group(params = {})
    # @param [Hash] params ({})
    def register_patch_baseline_for_patch_group(params = {}, options = {})
      req = build_request(:register_patch_baseline_for_patch_group, params)
      req.send_request(options)
    end

    # Registers a target with a maintenance window.
    #
    # @option params [required, String] :window_id
    #   The ID of the maintenance window the target should be registered with.
    #
    # @option params [required, String] :resource_type
    #   The type of target being registered with the maintenance window.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   The targets to register with the maintenance window. In other words,
    #   the managed nodes to run commands on when the maintenance window runs.
    #
    #   <note markdown="1"> If a single maintenance window task is registered with multiple
    #   targets, its task invocations occur sequentially and not in parallel.
    #   If your task must run on multiple targets at the same time, register a
    #   task for each target individually and assign each task the same
    #   priority level.
    #
    #    </note>
    #
    #   You can specify targets using managed node IDs, resource group names,
    #   or tags that have been applied to managed nodes.
    #
    #   **Example 1**: Specify managed node IDs
    #
    #   `Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>,<instance-id-3>`
    #
    #   **Example 2**: Use tag key-pairs applied to managed nodes
    #
    #   `Key=tag:<my-tag-key>,Values=<my-tag-value-1>,<my-tag-value-2>`
    #
    #   **Example 3**: Use tag-keys applied to managed nodes
    #
    #   `Key=tag-key,Values=<my-tag-key-1>,<my-tag-key-2>`
    #
    #   **Example 4**: Use resource group names
    #
    #   `Key=resource-groups:Name,Values=<resource-group-name>`
    #
    #   **Example 5**: Use filters for resource group types
    #
    #   `Key=resource-groups:ResourceTypeFilters,Values=<resource-type-1>,<resource-type-2>`
    #
    #   <note markdown="1"> For `Key=resource-groups:ResourceTypeFilters`, specify resource types
    #   in the following format
    #
    #    `Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC`
    #
    #    </note>
    #
    #   For more information about these examples formats, including the best
    #   use case for each one, see [Examples: Register targets with a
    #   maintenance window][1] in the *Amazon Web Services Systems Manager
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html
    #
    # @option params [String] :owner_information
    #   User-provided value that will be included in any Amazon CloudWatch
    #   Events events raised while running tasks for these targets in this
    #   maintenance window.
    #
    # @option params [String] :name
    #   An optional name for the target.
    #
    # @option params [String] :description
    #   An optional description for the target.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::RegisterTargetWithMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTargetWithMaintenanceWindowResult#window_target_id #window_target_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_target_with_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #     resource_type: "INSTANCE", # required, accepts INSTANCE, RESOURCE_GROUP
    #     targets: [ # required
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     owner_information: "OwnerInformation",
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_target_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTargetWithMaintenanceWindow AWS API Documentation
    #
    # @overload register_target_with_maintenance_window(params = {})
    # @param [Hash] params ({})
    def register_target_with_maintenance_window(params = {}, options = {})
      req = build_request(:register_target_with_maintenance_window, params)
      req.send_request(options)
    end

    # Adds a new task to a maintenance window.
    #
    # @option params [required, String] :window_id
    #   The ID of the maintenance window the task should be added to.
    #
    # @option params [Array<Types::Target>] :targets
    #   The targets (either managed nodes or maintenance window targets).
    #
    #   <note markdown="1"> One or more targets must be specified for maintenance window Run
    #   Command-type tasks. Depending on the task, targets are optional for
    #   other maintenance window task types (Automation, Lambda, and Step
    #   Functions). For more information about running tasks that don't
    #   specify targets, see [Registering maintenance window tasks without
    #   targets][1] in the *Amazon Web Services Systems Manager User Guide*.
    #
    #    </note>
    #
    #   Specify managed nodes using the following format:
    #
    #   `Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>`
    #
    #   Specify maintenance window targets using the following format:
    #
    #   `Key=WindowTargetIds,Values=<window-target-id-1>,<window-target-id-2>`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #
    # @option params [required, String] :task_arn
    #   The ARN of the task to run.
    #
    # @option params [String] :service_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role for Amazon Web
    #   Services Systems Manager to assume when running a maintenance window
    #   task. If you do not specify a service role ARN, Systems Manager uses
    #   your account's service-linked role. If no service-linked role for
    #   Systems Manager exists in your account, it is created when you run
    #   `RegisterTaskWithMaintenanceWindow`.
    #
    #   For more information, see the following topics in the in the *Amazon
    #   Web Services Systems Manager User Guide*:
    #
    #   * [Using service-linked roles for Systems Manager][1]
    #
    #   * [Should I use a service-linked role or a custom service role to run
    #     maintenance window tasks? ][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role
    #
    # @option params [required, String] :task_type
    #   The type of task being registered.
    #
    # @option params [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>] :task_parameters
    #   The parameters that should be passed to the task when it is run.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass to
    #   a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported maintenance
    #   window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #
    # @option params [Types::MaintenanceWindowTaskInvocationParameters] :task_invocation_parameters
    #   The parameters that the task should use during execution. Populate
    #   only the fields that match the task type. All other fields should be
    #   empty.
    #
    # @option params [Integer] :priority
    #   The priority of the task in the maintenance window, the lower the
    #   number the higher the priority. Tasks in a maintenance window are
    #   scheduled in priority order with tasks that have the same priority
    #   scheduled in parallel.
    #
    # @option params [String] :max_concurrency
    #   The maximum number of targets this task can be run for, in parallel.
    #
    #   <note markdown="1"> Although this element is listed as "Required: No", a value can be
    #   omitted only when you are registering or updating a [targetless
    #   task][1] You must provide a value in all other cases.
    #
    #    For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`. This value doesn't affect the running of
    #   your task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #
    # @option params [String] :max_errors
    #   The maximum number of errors allowed before this task stops being
    #   scheduled.
    #
    #   <note markdown="1"> Although this element is listed as "Required: No", a value can be
    #   omitted only when you are registering or updating a [targetless
    #   task][1] You must provide a value in all other cases.
    #
    #    For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`. This value doesn't affect the running of
    #   your task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #
    # @option params [Types::LoggingInfo] :logging_info
    #   A structure containing information about an Amazon Simple Storage
    #   Service (Amazon S3) bucket to write managed node-level logs to.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple Storage
    #   Service (Amazon S3) bucket to contain logs, instead use the
    #   `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    #   `TaskInvocationParameters` structure. For information about how Amazon
    #   Web Services Systems Manager handles these options for the supported
    #   maintenance window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #
    # @option params [String] :name
    #   An optional name for the task.
    #
    # @option params [String] :description
    #   An optional description for the task.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :cutoff_behavior
    #   Indicates whether tasks should continue to run after the cutoff time
    #   specified in the maintenance windows is reached.
    #
    #   * `CONTINUE_TASK`: When the cutoff time is reached, any tasks that are
    #     running continue. The default value.
    #
    #   * `CANCEL_TASK`:
    #
    #     * For Automation, Lambda, Step Functions tasks: When the cutoff time
    #       is reached, any task invocations that are already running
    #       continue, but no new task invocations are started.
    #
    #     * For Run Command tasks: When the cutoff time is reached, the system
    #       sends a CancelCommand operation that attempts to cancel the
    #       command associated with the task. However, there is no guarantee
    #       that the command will be terminated and the underlying process
    #       stopped.
    #
    #     The status for tasks that are not completed is `TIMED_OUT`.
    #
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   The CloudWatch alarm you want to apply to your maintenance window
    #   task.
    #
    # @return [Types::RegisterTaskWithMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTaskWithMaintenanceWindowResult#window_task_id #window_task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_task_with_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     task_arn: "MaintenanceWindowTaskArn", # required
    #     service_role_arn: "ServiceRole",
    #     task_type: "RUN_COMMAND", # required, accepts RUN_COMMAND, AUTOMATION, STEP_FUNCTIONS, LAMBDA
    #     task_parameters: {
    #       "MaintenanceWindowTaskParameterName" => {
    #         values: ["MaintenanceWindowTaskParameterValue"],
    #       },
    #     },
    #     task_invocation_parameters: {
    #       run_command: {
    #         comment: "Comment",
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           cloud_watch_output_enabled: false,
    #         },
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256", # accepts Sha256, Sha1
    #         document_version: "DocumentVersion",
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #           notification_type: "Command", # accepts Command, Invocation
    #         },
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         service_role_arn: "ServiceRole",
    #         timeout_seconds: 1,
    #       },
    #       automation: {
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"],
    #         },
    #       },
    #       step_functions: {
    #         input: "MaintenanceWindowStepFunctionsInput",
    #         name: "MaintenanceWindowStepFunctionsName",
    #       },
    #       lambda: {
    #         client_context: "MaintenanceWindowLambdaClientContext",
    #         qualifier: "MaintenanceWindowLambdaQualifier",
    #         payload: "data",
    #       },
    #     },
    #     priority: 1,
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     logging_info: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix",
    #       s3_region: "S3Region", # required
    #     },
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     client_token: "ClientToken",
    #     cutoff_behavior: "CONTINUE_TASK", # accepts CONTINUE_TASK, CANCEL_TASK
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.window_task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTaskWithMaintenanceWindow AWS API Documentation
    #
    # @overload register_task_with_maintenance_window(params = {})
    # @param [Hash] params ({})
    def register_task_with_maintenance_window(params = {}, options = {})
      req = build_request(:register_task_with_maintenance_window, params)
      req.send_request(options)
    end

    # Removes tag keys from the specified resource.
    #
    # @option params [required, String] :resource_type
    #   The type of resource from which you want to remove a tag.
    #
    #   <note markdown="1"> The `ManagedInstance` type for this API operation is only for
    #   on-premises managed nodes. Specify the name of the managed node in the
    #   following format: `mi-ID_number `. For example, `mi-1a2b3c4d5e6f`.
    #
    #    </note>
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource from which you want to remove tags. For
    #   example:
    #
    #   ManagedInstance: mi-012345abcde
    #
    #   MaintenanceWindow: mw-012345abcde
    #
    #   `Automation`: `example-c160-4567-8519-012345abcde`
    #
    #   PatchBaseline: pb-012345abcde
    #
    #   OpsMetadata object: `ResourceID` for tagging is created from the
    #   Amazon Resource Name (ARN) for the object. Specifically, `ResourceID`
    #   is created from the strings that come after the word `opsmetadata` in
    #   the ARN. For example, an OpsMetadata object with an ARN of
    #   `arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager`
    #   has a `ResourceID` of either `aws/ssm/MyGroup/appmanager` or
    #   `/aws/ssm/MyGroup/appmanager`.
    #
    #   For the Document and Parameter values, use the name of the resource.
    #
    #   <note markdown="1"> The `ManagedInstance` type for this API operation is only for
    #   on-premises managed nodes. Specify the name of the managed node in the
    #   following format: mi-ID\_number. For example, mi-1a2b3c4d5e6f.
    #
    #    </note>
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys that you want to remove from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline, OpsItem, OpsMetadata, Automation, Association
    #     resource_id: "ResourceId", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RemoveTagsFromResource AWS API Documentation
    #
    # @overload remove_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_tags_from_resource, params)
      req.send_request(options)
    end

    # `ServiceSetting` is an account-level setting for an Amazon Web
    # Services service. This setting defines how a user interacts with or
    # uses a service or a feature of a service. For example, if an Amazon
    # Web Services service charges money to the account based on feature or
    # service usage, then the Amazon Web Services service team might create
    # a default setting of "false". This means the user can't use this
    # feature unless they change the setting to "true" and intentionally
    # opt in for a paid feature.
    #
    # Services map a `SettingId` object to a setting value. Amazon Web
    # Services services teams define the default value for a `SettingId`.
    # You can't create a new `SettingId`, but you can overwrite the default
    # value if you have the `ssm:UpdateServiceSetting` permission for the
    # setting. Use the GetServiceSetting API operation to view the current
    # value. Use the UpdateServiceSetting API operation to change the
    # default setting.
    #
    # Reset the service setting for the account to the default value as
    # provisioned by the Amazon Web Services service team.
    #
    # @option params [required, String] :setting_id
    #   The Amazon Resource Name (ARN) of the service setting to reset. The
    #   setting ID can be one of the following.
    #
    #   * `/ssm/managed-instance/default-ec2-instance-management-role`
    #
    #   * `/ssm/automation/customer-script-log-destination`
    #
    #   * `/ssm/automation/customer-script-log-group-name`
    #
    #   * `/ssm/documents/console/public-sharing-permission`
    #
    #   * `/ssm/managed-instance/activation-tier`
    #
    #   * `/ssm/opsinsights/opscenter`
    #
    #   * `/ssm/parameter-store/default-parameter-tier`
    #
    #   * `/ssm/parameter-store/high-throughput-enabled`
    #
    # @return [Types::ResetServiceSettingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetServiceSettingResult#service_setting #service_setting} => Types::ServiceSetting
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_service_setting({
    #     setting_id: "ServiceSettingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_setting.setting_id #=> String
    #   resp.service_setting.setting_value #=> String
    #   resp.service_setting.last_modified_date #=> Time
    #   resp.service_setting.last_modified_user #=> String
    #   resp.service_setting.arn #=> String
    #   resp.service_setting.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResetServiceSetting AWS API Documentation
    #
    # @overload reset_service_setting(params = {})
    # @param [Hash] params ({})
    def reset_service_setting(params = {}, options = {})
      req = build_request(:reset_service_setting, params)
      req.send_request(options)
    end

    # Reconnects a session to a managed node after it has been disconnected.
    # Connections can be resumed for disconnected sessions, but not
    # terminated sessions.
    #
    # <note markdown="1"> This command is primarily for use by client machines to automatically
    # reconnect during intermittent network issues. It isn't intended for
    # any other use.
    #
    #  </note>
    #
    # @option params [required, String] :session_id
    #   The ID of the disconnected session to resume.
    #
    # @return [Types::ResumeSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResumeSessionResponse#session_id #session_id} => String
    #   * {Types::ResumeSessionResponse#token_value #token_value} => String
    #   * {Types::ResumeSessionResponse#stream_url #stream_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_session({
    #     session_id: "SessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.token_value #=> String
    #   resp.stream_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResumeSession AWS API Documentation
    #
    # @overload resume_session(params = {})
    # @param [Hash] params ({})
    def resume_session(params = {}, options = {})
      req = build_request(:resume_session, params)
      req.send_request(options)
    end

    # Sends a signal to an Automation execution to change the current
    # behavior or status of the execution.
    #
    # @option params [required, String] :automation_execution_id
    #   The unique identifier for an existing Automation execution that you
    #   want to send the signal to.
    #
    # @option params [required, String] :signal_type
    #   The type of signal to send to an Automation execution.
    #
    # @option params [Hash<String,Array>] :payload
    #   The data sent with the signal. The data schema depends on the type of
    #   signal used in the request.
    #
    #   For `Approve` and `Reject` signal types, the payload is an optional
    #   comment that you can send with the signal type. For example:
    #
    #   `Comment="Looks good"`
    #
    #   For `StartStep` and `Resume` signal types, you must send the name of
    #   the Automation step to start or resume as the payload. For example:
    #
    #   `StepName="step1"`
    #
    #   For the `StopStep` signal type, you must send the step execution ID as
    #   the payload. For example:
    #
    #   `StepExecutionId="97fff367-fc5a-4299-aed8-0123456789ab"`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_automation_signal({
    #     automation_execution_id: "AutomationExecutionId", # required
    #     signal_type: "Approve", # required, accepts Approve, Reject, StartStep, StopStep, Resume
    #     payload: {
    #       "AutomationParameterKey" => ["AutomationParameterValue"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendAutomationSignal AWS API Documentation
    #
    # @overload send_automation_signal(params = {})
    # @param [Hash] params ({})
    def send_automation_signal(params = {}, options = {})
      req = build_request(:send_automation_signal, params)
      req.send_request(options)
    end

    # Runs commands on one or more managed nodes.
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the managed nodes where the command should run. Specifying
    #   managed node IDs is most useful when you are targeting a limited
    #   number of managed nodes, though you can specify up to 50 IDs.
    #
    #   To target a larger number of managed nodes, or if you prefer not to
    #   list individual node IDs, we recommend using the `Targets` option
    #   instead. Using `Targets`, which accepts tag key-value pairs to
    #   identify the managed nodes to send commands to, you can a send command
    #   to tens, hundreds, or thousands of nodes at once.
    #
    #   For more information about how to use targets, see [Using targets and
    #   rate controls to send commands to a fleet][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #
    # @option params [Array<Types::Target>] :targets
    #   An array of search criteria that targets managed nodes using a
    #   `Key,Value` combination that you specify. Specifying targets is most
    #   useful when you want to send a command to a large number of managed
    #   nodes at once. Using `Targets`, which accepts tag key-value pairs to
    #   identify managed nodes, you can send a command to tens, hundreds, or
    #   thousands of nodes at once.
    #
    #   To send a command to a smaller number of managed nodes, you can use
    #   the `InstanceIds` option instead.
    #
    #   For more information about how to use targets, see [Sending commands
    #   to a fleet][1] in the *Amazon Web Services Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #
    # @option params [required, String] :document_name
    #   The name of the Amazon Web Services Systems Manager document (SSM
    #   document) to run. This can be a public document or a custom document.
    #   To run a shared document belonging to another account, specify the
    #   document Amazon Resource Name (ARN). For more information about how to
    #   use shared documents, see [Using shared SSM documents][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #   <note markdown="1"> If you specify a document name or ARN that hasn't been shared with
    #   your account, you receive an `InvalidDocument` error.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html
    #
    # @option params [String] :document_version
    #   The SSM document version to use in the request. You can specify
    #   $DEFAULT, $LATEST, or a specific version number. If you run commands
    #   by using the Command Line Interface (Amazon Web Services CLI), then
    #   you must escape the first two options by using a backslash. If you
    #   specify a version number, then you don't need to use the backslash.
    #   For example:
    #
    #   --document-version "\\$DEFAULT"
    #
    #   --document-version "\\$LATEST"
    #
    #   --document-version "3"
    #
    # @option params [String] :document_hash
    #   The Sha256 or Sha1 hash created by the system when the document was
    #   created.
    #
    #   <note markdown="1"> Sha1 hashes have been deprecated.
    #
    #    </note>
    #
    # @option params [String] :document_hash_type
    #   Sha256 or Sha1.
    #
    #   <note markdown="1"> Sha1 hashes have been deprecated.
    #
    #    </note>
    #
    # @option params [Integer] :timeout_seconds
    #   If this time is reached and the command hasn't already started
    #   running, it won't run.
    #
    # @option params [String] :comment
    #   User-specified information about the command, such as a brief
    #   description of what the command should do.
    #
    # @option params [Hash<String,Array>] :parameters
    #   The required and optional parameters specified in the document being
    #   run.
    #
    # @option params [String] :output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Systems Manager automatically determines the
    #   Amazon Web Services Region of the S3 bucket.
    #
    # @option params [String] :output_s3_bucket_name
    #   The name of the S3 bucket where command execution responses should be
    #   stored.
    #
    # @option params [String] :output_s3_key_prefix
    #   The directory structure within the S3 bucket where the responses
    #   should be stored.
    #
    # @option params [String] :max_concurrency
    #   (Optional) The maximum number of managed nodes that are allowed to run
    #   the command at the same time. You can specify a number such as 10 or a
    #   percentage such as 10%. The default value is `50`. For more
    #   information about how to use `MaxConcurrency`, see [Using concurrency
    #   controls][1] in the *Amazon Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity
    #
    # @option params [String] :max_errors
    #   The maximum number of errors allowed without the command failing. When
    #   the command fails one more time beyond the value of `MaxErrors`, the
    #   systems stops sending the command to additional targets. You can
    #   specify a number like 10 or a percentage like 10%. The default value
    #   is `0`. For more information about how to use `MaxErrors`, see [Using
    #   error controls][1] in the *Amazon Web Services Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors
    #
    # @option params [String] :service_role_arn
    #   The ARN of the Identity and Access Management (IAM) service role to
    #   use to publish Amazon Simple Notification Service (Amazon SNS)
    #   notifications for Run Command commands.
    #
    #   This role must provide the `sns:Publish` permission for your
    #   notification topic. For information about creating and using this
    #   service role, see [Monitoring Systems Manager status changes using
    #   Amazon SNS notifications][1] in the *Amazon Web Services Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html
    #
    # @option params [Types::NotificationConfig] :notification_config
    #   Configurations for sending notifications.
    #
    # @option params [Types::CloudWatchOutputConfig] :cloud_watch_output_config
    #   Enables Amazon Web Services Systems Manager to send Run Command output
    #   to Amazon CloudWatch Logs. Run Command is a capability of Amazon Web
    #   Services Systems Manager.
    #
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   The CloudWatch alarm you want to apply to your command.
    #
    # @return [Types::SendCommandResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendCommandResult#command #command} => Types::Command
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_command({
    #     instance_ids: ["InstanceId"],
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     document_name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     document_hash: "DocumentHash",
    #     document_hash_type: "Sha256", # accepts Sha256, Sha1
    #     timeout_seconds: 1,
    #     comment: "Comment",
    #     parameters: {
    #       "ParameterName" => ["ParameterValue"],
    #     },
    #     output_s3_region: "S3Region",
    #     output_s3_bucket_name: "S3BucketName",
    #     output_s3_key_prefix: "S3KeyPrefix",
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     service_role_arn: "ServiceRole",
    #     notification_config: {
    #       notification_arn: "NotificationArn",
    #       notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #       notification_type: "Command", # accepts Command, Invocation
    #     },
    #     cloud_watch_output_config: {
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       cloud_watch_output_enabled: false,
    #     },
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.command.command_id #=> String
    #   resp.command.document_name #=> String
    #   resp.command.document_version #=> String
    #   resp.command.comment #=> String
    #   resp.command.expires_after #=> Time
    #   resp.command.parameters #=> Hash
    #   resp.command.parameters["ParameterName"] #=> Array
    #   resp.command.parameters["ParameterName"][0] #=> String
    #   resp.command.instance_ids #=> Array
    #   resp.command.instance_ids[0] #=> String
    #   resp.command.targets #=> Array
    #   resp.command.targets[0].key #=> String
    #   resp.command.targets[0].values #=> Array
    #   resp.command.targets[0].values[0] #=> String
    #   resp.command.requested_date_time #=> Time
    #   resp.command.status #=> String, one of "Pending", "InProgress", "Success", "Cancelled", "Failed", "TimedOut", "Cancelling"
    #   resp.command.status_details #=> String
    #   resp.command.output_s3_region #=> String
    #   resp.command.output_s3_bucket_name #=> String
    #   resp.command.output_s3_key_prefix #=> String
    #   resp.command.max_concurrency #=> String
    #   resp.command.max_errors #=> String
    #   resp.command.target_count #=> Integer
    #   resp.command.completed_count #=> Integer
    #   resp.command.error_count #=> Integer
    #   resp.command.delivery_timed_out_count #=> Integer
    #   resp.command.service_role #=> String
    #   resp.command.notification_config.notification_arn #=> String
    #   resp.command.notification_config.notification_events #=> Array
    #   resp.command.notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.command.notification_config.notification_type #=> String, one of "Command", "Invocation"
    #   resp.command.cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.command.cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.command.timeout_seconds #=> Integer
    #   resp.command.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.command.alarm_configuration.alarms #=> Array
    #   resp.command.alarm_configuration.alarms[0].name #=> String
    #   resp.command.triggered_alarms #=> Array
    #   resp.command.triggered_alarms[0].name #=> String
    #   resp.command.triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendCommand AWS API Documentation
    #
    # @overload send_command(params = {})
    # @param [Hash] params ({})
    def send_command(params = {}, options = {})
      req = build_request(:send_command, params)
      req.send_request(options)
    end

    # Runs an association immediately and only one time. This operation can
    # be helpful when troubleshooting associations.
    #
    # @option params [required, Array<String>] :association_ids
    #   The association IDs that you want to run immediately and only one
    #   time.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_associations_once({
    #     association_ids: ["AssociationId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAssociationsOnce AWS API Documentation
    #
    # @overload start_associations_once(params = {})
    # @param [Hash] params ({})
    def start_associations_once(params = {}, options = {})
      req = build_request(:start_associations_once, params)
      req.send_request(options)
    end

    # Initiates execution of an Automation runbook.
    #
    # @option params [required, String] :document_name
    #   The name of the SSM document to run. This can be a public document or
    #   a custom document. To run a shared document belonging to another
    #   account, specify the document ARN. For more information about how to
    #   use shared documents, see [Using shared SSM documents][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html
    #
    # @option params [String] :document_version
    #   The version of the Automation runbook to use for this execution.
    #
    # @option params [Hash<String,Array>] :parameters
    #   A key-value map of execution parameters, which match the declared
    #   parameters in the Automation runbook.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token. The token must be unique, is case
    #   insensitive, enforces the UUID format, and can't be reused.
    #
    # @option params [String] :mode
    #   The execution mode of the automation. Valid modes include the
    #   following: Auto and Interactive. The default mode is Auto.
    #
    # @option params [String] :target_parameter_name
    #   The name of the parameter used as the target resource for the
    #   rate-controlled execution. Required if you specify targets.
    #
    # @option params [Array<Types::Target>] :targets
    #   A key-value mapping to target resources. Required if you specify
    #   TargetParameterName.
    #
    # @option params [Array<Hash>] :target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps can't be specified together.
    #
    # @option params [String] :max_concurrency
    #   The maximum number of targets allowed to run this task in parallel.
    #   You can specify a number, such as 10, or a percentage, such as 10%.
    #   The default value is `10`.
    #
    # @option params [String] :max_errors
    #   The number of errors that are allowed before the system stops running
    #   the automation on additional targets. You can specify either an
    #   absolute number of errors, for example 10, or a percentage of the
    #   target set, for example 10%. If you specify 3, for example, the system
    #   stops running the automation when the fourth error is received. If you
    #   specify 0, then the system stops running the automation on additional
    #   targets after the first error result is returned. If you run an
    #   automation on 50 resources and set max-errors to 10%, then the system
    #   stops running the automation on additional targets when the sixth
    #   error is received.
    #
    #   Executions that are already running an automation when max-errors is
    #   reached are allowed to complete, but some of these executions may fail
    #   as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set max-concurrency to 1 so the
    #   executions proceed one at a time.
    #
    # @option params [Array<Types::TargetLocation>] :target_locations
    #   A location is a combination of Amazon Web Services Regions and/or
    #   Amazon Web Services accounts where you want to run the automation. Use
    #   this operation to start an automation in multiple Amazon Web Services
    #   Regions and multiple Amazon Web Services accounts. For more
    #   information, see [Running Automation workflows in multiple Amazon Web
    #   Services Regions and Amazon Web Services accounts][1] in the *Amazon
    #   Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata that you assign to a resource. You can specify a
    #   maximum of five tags for an automation. Tags enable you to categorize
    #   a resource in different ways, such as by purpose, owner, or
    #   environment. For example, you might want to tag an automation to
    #   identify an environment or operating system. In this case, you could
    #   specify the following key-value pairs:
    #
    #   * `Key=environment,Value=test`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   <note markdown="1"> To add tags to an existing automation, use the AddTagsToResource
    #   operation.
    #
    #    </note>
    #
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   The CloudWatch alarm you want to apply to your automation.
    #
    # @return [Types::StartAutomationExecutionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAutomationExecutionResult#automation_execution_id #automation_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_automation_execution({
    #     document_name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     parameters: {
    #       "AutomationParameterKey" => ["AutomationParameterValue"],
    #     },
    #     client_token: "IdempotencyToken",
    #     mode: "Auto", # accepts Auto, Interactive
    #     target_parameter_name: "AutomationParameterKey",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     target_maps: [
    #       {
    #         "TargetMapKey" => ["TargetMapValue"],
    #       },
    #     ],
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     target_locations: [
    #       {
    #         accounts: ["Account"],
    #         regions: ["Region"],
    #         target_location_max_concurrency: "MaxConcurrency",
    #         target_location_max_errors: "MaxErrors",
    #         execution_role_name: "ExecutionRoleName",
    #         target_location_alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAutomationExecution AWS API Documentation
    #
    # @overload start_automation_execution(params = {})
    # @param [Hash] params ({})
    def start_automation_execution(params = {}, options = {})
      req = build_request(:start_automation_execution, params)
      req.send_request(options)
    end

    # Creates a change request for Change Manager. The Automation runbooks
    # specified in the change request run only after all required approvals
    # for the change request have been received.
    #
    # @option params [Time,DateTime,Date,Integer,String] :scheduled_time
    #   The date and time specified in the change request to run the
    #   Automation runbooks.
    #
    #   <note markdown="1"> The Automation runbooks specified for the runbook workflow can't run
    #   until all required approvals for the change request have been
    #   received.
    #
    #    </note>
    #
    # @option params [required, String] :document_name
    #   The name of the change template document to run during the runbook
    #   workflow.
    #
    # @option params [String] :document_version
    #   The version of the change template document to run during the runbook
    #   workflow.
    #
    # @option params [Hash<String,Array>] :parameters
    #   A key-value map of parameters that match the declared parameters in
    #   the change template document.
    #
    # @option params [String] :change_request_name
    #   The name of the change request associated with the runbook workflow to
    #   be run.
    #
    # @option params [String] :client_token
    #   The user-provided idempotency token. The token must be unique, is case
    #   insensitive, enforces the UUID format, and can't be reused.
    #
    # @option params [Boolean] :auto_approve
    #   Indicates whether the change request can be approved automatically
    #   without the need for manual approvals.
    #
    #   If `AutoApprovable` is enabled in a change template, then setting
    #   `AutoApprove` to `true` in `StartChangeRequestExecution` creates a
    #   change request that bypasses approver review.
    #
    #   <note markdown="1"> Change Calendar restrictions are not bypassed in this scenario. If the
    #   state of an associated calendar is `CLOSED`, change freeze approvers
    #   must still grant permission for this change request to run. If they
    #   don't, the change won't be processed until the calendar state is
    #   again `OPEN`.
    #
    #    </note>
    #
    # @option params [required, Array<Types::Runbook>] :runbooks
    #   Information about the Automation runbooks that are run during the
    #   runbook workflow.
    #
    #   <note markdown="1"> The Automation runbooks specified for the runbook workflow can't run
    #   until all required approvals for the change request have been
    #   received.
    #
    #    </note>
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata that you assign to a resource. You can specify a
    #   maximum of five tags for a change request. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment. For example, you might want to tag a change request to
    #   identify an environment or target Amazon Web Services Region. In this
    #   case, you could specify the following key-value pairs:
    #
    #   * `Key=Environment,Value=Production`
    #
    #   * `Key=Region,Value=us-east-2`
    #
    # @option params [Time,DateTime,Date,Integer,String] :scheduled_end_time
    #   The time that the requester expects the runbook workflow related to
    #   the change request to complete. The time is an estimate only that the
    #   requester provides for reviewers.
    #
    # @option params [String] :change_details
    #   User-provided details about the change. If no details are provided,
    #   content specified in the **Template information** section of the
    #   associated change template is added.
    #
    # @return [Types::StartChangeRequestExecutionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartChangeRequestExecutionResult#automation_execution_id #automation_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_change_request_execution({
    #     scheduled_time: Time.now,
    #     document_name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     parameters: {
    #       "AutomationParameterKey" => ["AutomationParameterValue"],
    #     },
    #     change_request_name: "ChangeRequestName",
    #     client_token: "IdempotencyToken",
    #     auto_approve: false,
    #     runbooks: [ # required
    #       {
    #         document_name: "DocumentARN", # required
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"],
    #         },
    #         target_parameter_name: "AutomationParameterKey",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         target_maps: [
    #           {
    #             "TargetMapKey" => ["TargetMapValue"],
    #           },
    #         ],
    #         max_concurrency: "MaxConcurrency",
    #         max_errors: "MaxErrors",
    #         target_locations: [
    #           {
    #             accounts: ["Account"],
    #             regions: ["Region"],
    #             target_location_max_concurrency: "MaxConcurrency",
    #             target_location_max_errors: "MaxErrors",
    #             execution_role_name: "ExecutionRoleName",
    #             target_location_alarm_configuration: {
    #               ignore_poll_alarm_failure: false,
    #               alarms: [ # required
    #                 {
    #                   name: "AlarmName", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     scheduled_end_time: Time.now,
    #     change_details: "ChangeDetailsValue",
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartChangeRequestExecution AWS API Documentation
    #
    # @overload start_change_request_execution(params = {})
    # @param [Hash] params ({})
    def start_change_request_execution(params = {}, options = {})
      req = build_request(:start_change_request_execution, params)
      req.send_request(options)
    end

    # Initiates a connection to a target (for example, a managed node) for a
    # Session Manager session. Returns a URL and token that can be used to
    # open a WebSocket connection for sending input and receiving outputs.
    #
    # <note markdown="1"> Amazon Web Services CLI usage: `start-session` is an interactive
    # command that requires the Session Manager plugin to be installed on
    # the client machine making the call. For information, see [Install the
    # Session Manager plugin for the Amazon Web Services CLI][1] in the
    # *Amazon Web Services Systems Manager User Guide*.
    #
    #  Amazon Web Services Tools for PowerShell usage: Start-SSMSession
    # isn't currently supported by Amazon Web Services Tools for PowerShell
    # on Windows local machines.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html
    #
    # @option params [required, String] :target
    #   The managed node to connect to for the session.
    #
    # @option params [String] :document_name
    #   The name of the SSM document you want to use to define the type of
    #   session, input parameters, or preferences for the session. For
    #   example, `SSM-SessionManagerRunShell`. You can call the GetDocument
    #   API to verify the document exists before attempting to start a
    #   session. If no document name is provided, a shell to the managed node
    #   is launched by default. For more information, see [Start a session][1]
    #   in the *Amazon Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-sessions-start.html
    #
    # @option params [String] :reason
    #   The reason for connecting to the instance. This value is included in
    #   the details for the Amazon CloudWatch Events event created when you
    #   start the session.
    #
    # @option params [Hash<String,Array>] :parameters
    #   The values you want to specify for the parameters defined in the
    #   Session document.
    #
    # @return [Types::StartSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSessionResponse#session_id #session_id} => String
    #   * {Types::StartSessionResponse#token_value #token_value} => String
    #   * {Types::StartSessionResponse#stream_url #stream_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_session({
    #     target: "SessionTarget", # required
    #     document_name: "DocumentARN",
    #     reason: "SessionReason",
    #     parameters: {
    #       "SessionManagerParameterName" => ["SessionManagerParameterValue"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.token_value #=> String
    #   resp.stream_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartSession AWS API Documentation
    #
    # @overload start_session(params = {})
    # @param [Hash] params ({})
    def start_session(params = {}, options = {})
      req = build_request(:start_session, params)
      req.send_request(options)
    end

    # Stop an Automation that is currently running.
    #
    # @option params [required, String] :automation_execution_id
    #   The execution ID of the Automation to stop.
    #
    # @option params [String] :type
    #   The stop request type. Valid types include the following: Cancel and
    #   Complete. The default type is Cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_automation_execution({
    #     automation_execution_id: "AutomationExecutionId", # required
    #     type: "Complete", # accepts Complete, Cancel
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StopAutomationExecution AWS API Documentation
    #
    # @overload stop_automation_execution(params = {})
    # @param [Hash] params ({})
    def stop_automation_execution(params = {}, options = {})
      req = build_request(:stop_automation_execution, params)
      req.send_request(options)
    end

    # Permanently ends a session and closes the data connection between the
    # Session Manager client and SSM Agent on the managed node. A terminated
    # session can't be resumed.
    #
    # @option params [required, String] :session_id
    #   The ID of the session to terminate.
    #
    # @return [Types::TerminateSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateSessionResponse#session_id #session_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_session({
    #     session_id: "SessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TerminateSession AWS API Documentation
    #
    # @overload terminate_session(params = {})
    # @param [Hash] params ({})
    def terminate_session(params = {}, options = {})
      req = build_request(:terminate_session, params)
      req.send_request(options)
    end

    # Remove a label or labels from a parameter.
    #
    # @option params [required, String] :name
    #   The name of the parameter from which you want to delete one or more
    #   labels.
    #
    # @option params [required, Integer] :parameter_version
    #   The specific version of the parameter which you want to delete one or
    #   more labels from. If it isn't present, the call will fail.
    #
    # @option params [required, Array<String>] :labels
    #   One or more labels to delete from the specified parameter version.
    #
    # @return [Types::UnlabelParameterVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UnlabelParameterVersionResult#removed_labels #removed_labels} => Array&lt;String&gt;
    #   * {Types::UnlabelParameterVersionResult#invalid_labels #invalid_labels} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unlabel_parameter_version({
    #     name: "PSParameterName", # required
    #     parameter_version: 1, # required
    #     labels: ["ParameterLabel"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.removed_labels #=> Array
    #   resp.removed_labels[0] #=> String
    #   resp.invalid_labels #=> Array
    #   resp.invalid_labels[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnlabelParameterVersion AWS API Documentation
    #
    # @overload unlabel_parameter_version(params = {})
    # @param [Hash] params ({})
    def unlabel_parameter_version(params = {}, options = {})
      req = build_request(:unlabel_parameter_version, params)
      req.send_request(options)
    end

    # Updates an association. You can update the association name and
    # version, the document version, schedule, parameters, and Amazon Simple
    # Storage Service (Amazon S3) output. When you call `UpdateAssociation`,
    # the system removes all optional parameters from the request and
    # overwrites the association with null values for those parameters. This
    # is by design. You must specify all optional parameters in the call,
    # even if you are not changing the parameters. This includes the `Name`
    # parameter. Before calling this API action, we recommend that you call
    # the DescribeAssociation API operation and make a note of all optional
    # parameters required for your `UpdateAssociation` call.
    #
    # In order to call this API operation, a user, group, or role must be
    # granted permission to call the DescribeAssociation API operation. If
    # you don't have permission to call `DescribeAssociation`, then you
    # receive the following error: `An error occurred
    # (AccessDeniedException) when calling the UpdateAssociation operation:
    # User: <user_arn> isn't authorized to perform: ssm:DescribeAssociation
    # on resource: <resource_arn>`
    #
    # When you update an association, the association immediately runs
    # against the specified targets. You can add the
    # `ApplyOnlyAtCronInterval` parameter to run the association during the
    # next schedule run.
    #
    # @option params [required, String] :association_id
    #   The ID of the association you want to update.
    #
    # @option params [Hash<String,Array>] :parameters
    #   The parameters you want to update for the association. If you create a
    #   parameter using Parameter Store, a capability of Amazon Web Services
    #   Systems Manager, you can reference the parameter using
    #   `\{\{ssm:parameter-name\}\}`.
    #
    # @option params [String] :document_version
    #   The document version you want update for the association.
    #
    #   State Manager doesn't support running associations that use a new
    #   version of a document if that document is shared from another account.
    #   State Manager always runs the `default` version of a document if
    #   shared from another account, even though the Systems Manager console
    #   shows that a new version was processed. If you want to run an
    #   association using a new version of a document shared form another
    #   account, you must set the document version to `default`.
    #
    # @option params [String] :schedule_expression
    #   The cron expression used to schedule the association that you want to
    #   update.
    #
    # @option params [Types::InstanceAssociationOutputLocation] :output_location
    #   An S3 bucket where you want to store the results of this request.
    #
    # @option params [String] :name
    #   The name of the SSM Command document or Automation runbook that
    #   contains the configuration information for the managed node.
    #
    #   You can specify Amazon Web Services-predefined documents, documents
    #   you created, or a document that is shared with you from another
    #   account.
    #
    #   For Systems Manager document (SSM document) that are shared with you
    #   from other Amazon Web Services accounts, you must specify the complete
    #   SSM document ARN, in the following format:
    #
    #   `arn:aws:ssm:region:account-id:document/document-name `
    #
    #   For example:
    #
    #   `arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document`
    #
    #   For Amazon Web Services-predefined documents and SSM documents you
    #   created in your account, you only need to specify the document name.
    #   For example, `AWS-ApplyPatchBaseline` or `My-Document`.
    #
    # @option params [Array<Types::Target>] :targets
    #   The targets of the association.
    #
    # @option params [String] :association_name
    #   The name of the association that you want to update.
    #
    # @option params [String] :association_version
    #   This parameter is provided for concurrency control purposes. You must
    #   specify the latest association version in the service. If you want to
    #   ensure that this request succeeds, either specify `$LATEST`, or omit
    #   this parameter.
    #
    # @option params [String] :automation_target_parameter_name
    #   Choose the parameter that will define how your automation will branch
    #   out. This target is required for associations that use an Automation
    #   runbook and target resources by using rate controls. Automation is a
    #   capability of Amazon Web Services Systems Manager.
    #
    # @option params [String] :max_errors
    #   The number of errors that are allowed before the system stops sending
    #   requests to run the association on additional targets. You can specify
    #   either an absolute number of errors, for example 10, or a percentage
    #   of the target set, for example 10%. If you specify 3, for example, the
    #   system stops sending requests when the fourth error is received. If
    #   you specify 0, then the system stops sending requests after the first
    #   error is returned. If you run an association on 50 managed nodes and
    #   set `MaxError` to 10%, then the system stops sending the request when
    #   the sixth error is received.
    #
    #   Executions that are already running an association when `MaxErrors` is
    #   reached are allowed to complete, but some of these executions may fail
    #   as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set `MaxConcurrency` to 1 so that
    #   executions proceed one at a time.
    #
    # @option params [String] :max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new managed node starts and attempts to run an association while
    #   Systems Manager is running `MaxConcurrency` associations, the
    #   association is allowed to run. During the next association interval,
    #   the new managed node will process its association within the limit
    #   specified for `MaxConcurrency`.
    #
    # @option params [String] :compliance_severity
    #   The severity level to assign to the association.
    #
    # @option params [String] :sync_compliance
    #   The mode for generating association compliance. You can specify `AUTO`
    #   or `MANUAL`. In `AUTO` mode, the system uses the status of the
    #   association execution to determine the compliance status. If the
    #   association execution runs successfully, then the association is
    #   `COMPLIANT`. If the association execution doesn't run successfully,
    #   the association is `NON-COMPLIANT`.
    #
    #   In `MANUAL` mode, you must specify the `AssociationId` as a parameter
    #   for the PutComplianceItems API operation. In this case, compliance
    #   data isn't managed by State Manager, a capability of Amazon Web
    #   Services Systems Manager. It is managed by your direct call to the
    #   PutComplianceItems API operation.
    #
    #   By default, all associations use `AUTO` mode.
    #
    # @option params [Boolean] :apply_only_at_cron_interval
    #   By default, when you update an association, the system runs it
    #   immediately after it is updated and then according to the schedule you
    #   specified. Specify this option if you don't want an association to
    #   run immediately after you update it. This parameter isn't supported
    #   for rate expressions.
    #
    #   If you chose this option when you created an association and later you
    #   edit that association or you make changes to the SSM document on which
    #   that association is based (by using the Documents page in the
    #   console), State Manager applies the association at the next specified
    #   cron interval. For example, if you chose the `Latest` version of an
    #   SSM document when you created an association and you edit the
    #   association by choosing a different document version on the Documents
    #   page, State Manager applies the association at the next specified cron
    #   interval if you previously selected this option. If this option
    #   wasn't selected, State Manager immediately runs the association.
    #
    #   You can reset this option. To do so, specify the
    #   `no-apply-only-at-cron-interval` parameter when you update the
    #   association from the command line. This parameter forces the
    #   association to run immediately after updating it and according to the
    #   interval specified.
    #
    # @option params [Array<String>] :calendar_names
    #   The names or Amazon Resource Names (ARNs) of the Change Calendar type
    #   documents you want to gate your associations under. The associations
    #   only run when that change calendar is open. For more information, see
    #   [Amazon Web Services Systems Manager Change Calendar][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar
    #
    # @option params [Array<Types::TargetLocation>] :target_locations
    #   A location is a combination of Amazon Web Services Regions and Amazon
    #   Web Services accounts where you want to run the association. Use this
    #   action to update an association in multiple Regions and multiple
    #   accounts.
    #
    # @option params [Integer] :schedule_offset
    #   Number of days to wait after the scheduled day to run an association.
    #   For example, if you specified a cron schedule of `cron(0 0 ? * THU#2
    #   *)`, you could specify an offset of 3 to run the association each
    #   Sunday after the second Thursday of the month. For more information
    #   about cron schedules for associations, see [Reference: Cron and rate
    #   expressions for Systems Manager][1] in the *Amazon Web Services
    #   Systems Manager User Guide*.
    #
    #   <note markdown="1"> To use offsets, you must specify the `ApplyOnlyAtCronInterval`
    #   parameter. This option tells the system not to run an association
    #   immediately after you create it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html
    #
    # @option params [Array<Hash>] :target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps can't be specified together.
    #
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   The details for the CloudWatch alarm you want to apply to an
    #   automation or command.
    #
    # @return [Types::UpdateAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssociationResult#association_description #association_description} => Types::AssociationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_association({
    #     association_id: "AssociationId", # required
    #     parameters: {
    #       "ParameterName" => ["ParameterValue"],
    #     },
    #     document_version: "DocumentVersion",
    #     schedule_expression: "ScheduleExpression",
    #     output_location: {
    #       s3_location: {
    #         output_s3_region: "S3Region",
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #       },
    #     },
    #     name: "DocumentARN",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     association_name: "AssociationName",
    #     association_version: "AssociationVersion",
    #     automation_target_parameter_name: "AutomationTargetParameterName",
    #     max_errors: "MaxErrors",
    #     max_concurrency: "MaxConcurrency",
    #     compliance_severity: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, UNSPECIFIED
    #     sync_compliance: "AUTO", # accepts AUTO, MANUAL
    #     apply_only_at_cron_interval: false,
    #     calendar_names: ["CalendarNameOrARN"],
    #     target_locations: [
    #       {
    #         accounts: ["Account"],
    #         regions: ["Region"],
    #         target_location_max_concurrency: "MaxConcurrency",
    #         target_location_max_errors: "MaxErrors",
    #         execution_role_name: "ExecutionRoleName",
    #         target_location_alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     schedule_offset: 1,
    #     target_maps: [
    #       {
    #         "TargetMapKey" => ["TargetMapValue"],
    #       },
    #     ],
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.association_description.name #=> String
    #   resp.association_description.instance_id #=> String
    #   resp.association_description.association_version #=> String
    #   resp.association_description.date #=> Time
    #   resp.association_description.last_update_association_date #=> Time
    #   resp.association_description.status.date #=> Time
    #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
    #   resp.association_description.status.message #=> String
    #   resp.association_description.status.additional_info #=> String
    #   resp.association_description.overview.status #=> String
    #   resp.association_description.overview.detailed_status #=> String
    #   resp.association_description.overview.association_status_aggregated_count #=> Hash
    #   resp.association_description.overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.association_description.document_version #=> String
    #   resp.association_description.automation_target_parameter_name #=> String
    #   resp.association_description.parameters #=> Hash
    #   resp.association_description.parameters["ParameterName"] #=> Array
    #   resp.association_description.parameters["ParameterName"][0] #=> String
    #   resp.association_description.association_id #=> String
    #   resp.association_description.targets #=> Array
    #   resp.association_description.targets[0].key #=> String
    #   resp.association_description.targets[0].values #=> Array
    #   resp.association_description.targets[0].values[0] #=> String
    #   resp.association_description.schedule_expression #=> String
    #   resp.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.association_description.last_execution_date #=> Time
    #   resp.association_description.last_successful_execution_date #=> Time
    #   resp.association_description.association_name #=> String
    #   resp.association_description.max_errors #=> String
    #   resp.association_description.max_concurrency #=> String
    #   resp.association_description.compliance_severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"
    #   resp.association_description.sync_compliance #=> String, one of "AUTO", "MANUAL"
    #   resp.association_description.apply_only_at_cron_interval #=> Boolean
    #   resp.association_description.calendar_names #=> Array
    #   resp.association_description.calendar_names[0] #=> String
    #   resp.association_description.target_locations #=> Array
    #   resp.association_description.target_locations[0].accounts #=> Array
    #   resp.association_description.target_locations[0].accounts[0] #=> String
    #   resp.association_description.target_locations[0].regions #=> Array
    #   resp.association_description.target_locations[0].regions[0] #=> String
    #   resp.association_description.target_locations[0].target_location_max_concurrency #=> String
    #   resp.association_description.target_locations[0].target_location_max_errors #=> String
    #   resp.association_description.target_locations[0].execution_role_name #=> String
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.alarms #=> Array
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.association_description.schedule_offset #=> Integer
    #   resp.association_description.target_maps #=> Array
    #   resp.association_description.target_maps[0] #=> Hash
    #   resp.association_description.target_maps[0]["TargetMapKey"] #=> Array
    #   resp.association_description.target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.association_description.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.association_description.alarm_configuration.alarms #=> Array
    #   resp.association_description.alarm_configuration.alarms[0].name #=> String
    #   resp.association_description.triggered_alarms #=> Array
    #   resp.association_description.triggered_alarms[0].name #=> String
    #   resp.association_description.triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateAssociation AWS API Documentation
    #
    # @overload update_association(params = {})
    # @param [Hash] params ({})
    def update_association(params = {}, options = {})
      req = build_request(:update_association, params)
      req.send_request(options)
    end

    # Updates the status of the Amazon Web Services Systems Manager document
    # (SSM document) associated with the specified managed node.
    #
    # `UpdateAssociationStatus` is primarily used by the Amazon Web Services
    # Systems Manager Agent (SSM Agent) to report status updates about your
    # associations and is only used for associations created with the
    # `InstanceId` legacy parameter.
    #
    # @option params [required, String] :name
    #   The name of the SSM document.
    #
    # @option params [required, String] :instance_id
    #   The managed node ID.
    #
    # @option params [required, Types::AssociationStatus] :association_status
    #   The association status.
    #
    # @return [Types::UpdateAssociationStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssociationStatusResult#association_description #association_description} => Types::AssociationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_association_status({
    #     name: "DocumentARN", # required
    #     instance_id: "InstanceId", # required
    #     association_status: { # required
    #       date: Time.now, # required
    #       name: "Pending", # required, accepts Pending, Success, Failed
    #       message: "StatusMessage", # required
    #       additional_info: "StatusAdditionalInfo",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.association_description.name #=> String
    #   resp.association_description.instance_id #=> String
    #   resp.association_description.association_version #=> String
    #   resp.association_description.date #=> Time
    #   resp.association_description.last_update_association_date #=> Time
    #   resp.association_description.status.date #=> Time
    #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
    #   resp.association_description.status.message #=> String
    #   resp.association_description.status.additional_info #=> String
    #   resp.association_description.overview.status #=> String
    #   resp.association_description.overview.detailed_status #=> String
    #   resp.association_description.overview.association_status_aggregated_count #=> Hash
    #   resp.association_description.overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.association_description.document_version #=> String
    #   resp.association_description.automation_target_parameter_name #=> String
    #   resp.association_description.parameters #=> Hash
    #   resp.association_description.parameters["ParameterName"] #=> Array
    #   resp.association_description.parameters["ParameterName"][0] #=> String
    #   resp.association_description.association_id #=> String
    #   resp.association_description.targets #=> Array
    #   resp.association_description.targets[0].key #=> String
    #   resp.association_description.targets[0].values #=> Array
    #   resp.association_description.targets[0].values[0] #=> String
    #   resp.association_description.schedule_expression #=> String
    #   resp.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.association_description.last_execution_date #=> Time
    #   resp.association_description.last_successful_execution_date #=> Time
    #   resp.association_description.association_name #=> String
    #   resp.association_description.max_errors #=> String
    #   resp.association_description.max_concurrency #=> String
    #   resp.association_description.compliance_severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"
    #   resp.association_description.sync_compliance #=> String, one of "AUTO", "MANUAL"
    #   resp.association_description.apply_only_at_cron_interval #=> Boolean
    #   resp.association_description.calendar_names #=> Array
    #   resp.association_description.calendar_names[0] #=> String
    #   resp.association_description.target_locations #=> Array
    #   resp.association_description.target_locations[0].accounts #=> Array
    #   resp.association_description.target_locations[0].accounts[0] #=> String
    #   resp.association_description.target_locations[0].regions #=> Array
    #   resp.association_description.target_locations[0].regions[0] #=> String
    #   resp.association_description.target_locations[0].target_location_max_concurrency #=> String
    #   resp.association_description.target_locations[0].target_location_max_errors #=> String
    #   resp.association_description.target_locations[0].execution_role_name #=> String
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.alarms #=> Array
    #   resp.association_description.target_locations[0].target_location_alarm_configuration.alarms[0].name #=> String
    #   resp.association_description.schedule_offset #=> Integer
    #   resp.association_description.target_maps #=> Array
    #   resp.association_description.target_maps[0] #=> Hash
    #   resp.association_description.target_maps[0]["TargetMapKey"] #=> Array
    #   resp.association_description.target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.association_description.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.association_description.alarm_configuration.alarms #=> Array
    #   resp.association_description.alarm_configuration.alarms[0].name #=> String
    #   resp.association_description.triggered_alarms #=> Array
    #   resp.association_description.triggered_alarms[0].name #=> String
    #   resp.association_description.triggered_alarms[0].state #=> String, one of "UNKNOWN", "ALARM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateAssociationStatus AWS API Documentation
    #
    # @overload update_association_status(params = {})
    # @param [Hash] params ({})
    def update_association_status(params = {}, options = {})
      req = build_request(:update_association_status, params)
      req.send_request(options)
    end

    # Updates one or more values for an SSM document.
    #
    # @option params [required, String] :content
    #   A valid JSON or YAML string.
    #
    # @option params [Array<Types::AttachmentsSource>] :attachments
    #   A list of key-value pairs that describe attachments to a version of a
    #   document.
    #
    # @option params [required, String] :name
    #   The name of the SSM document that you want to update.
    #
    # @option params [String] :display_name
    #   The friendly name of the SSM document that you want to update. This
    #   value can differ for each version of the document. If you don't
    #   specify a value for this parameter in your request, the existing value
    #   is applied to the new document version.
    #
    # @option params [String] :version_name
    #   An optional field specifying the version of the artifact you are
    #   updating with the document. For example, "Release 12, Update 6".
    #   This value is unique across all versions of a document, and can't be
    #   changed.
    #
    # @option params [String] :document_version
    #   The version of the document that you want to update. Currently,
    #   Systems Manager supports updating only the latest version of the
    #   document. You can specify the version number of the latest version or
    #   use the `$LATEST` variable.
    #
    #   <note markdown="1"> If you change a document version for a State Manager association,
    #   Systems Manager immediately runs the association unless you previously
    #   specifed the `apply-only-at-cron-interval` parameter.
    #
    #    </note>
    #
    # @option params [String] :document_format
    #   Specify the document format for the new document version. Systems
    #   Manager supports JSON and YAML documents. JSON is the default format.
    #
    # @option params [String] :target_type
    #   Specify a new target type for the document.
    #
    # @return [Types::UpdateDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDocumentResult#document_description #document_description} => Types::DocumentDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document({
    #     content: "DocumentContent", # required
    #     attachments: [
    #       {
    #         key: "SourceUrl", # accepts SourceUrl, S3FileUrl, AttachmentReference
    #         values: ["AttachmentsSourceValue"],
    #         name: "AttachmentIdentifier",
    #       },
    #     ],
    #     name: "DocumentName", # required
    #     display_name: "DocumentDisplayName",
    #     version_name: "DocumentVersionName",
    #     document_version: "DocumentVersion",
    #     document_format: "YAML", # accepts YAML, JSON, TEXT
    #     target_type: "TargetType",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_description.sha_1 #=> String
    #   resp.document_description.hash #=> String
    #   resp.document_description.hash_type #=> String, one of "Sha256", "Sha1"
    #   resp.document_description.name #=> String
    #   resp.document_description.display_name #=> String
    #   resp.document_description.version_name #=> String
    #   resp.document_description.owner #=> String
    #   resp.document_description.created_date #=> Time
    #   resp.document_description.status #=> String, one of "Creating", "Active", "Updating", "Deleting", "Failed"
    #   resp.document_description.status_information #=> String
    #   resp.document_description.document_version #=> String
    #   resp.document_description.description #=> String
    #   resp.document_description.parameters #=> Array
    #   resp.document_description.parameters[0].name #=> String
    #   resp.document_description.parameters[0].type #=> String, one of "String", "StringList"
    #   resp.document_description.parameters[0].description #=> String
    #   resp.document_description.parameters[0].default_value #=> String
    #   resp.document_description.platform_types #=> Array
    #   resp.document_description.platform_types[0] #=> String, one of "Windows", "Linux", "MacOS"
    #   resp.document_description.document_type #=> String, one of "Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup"
    #   resp.document_description.schema_version #=> String
    #   resp.document_description.latest_version #=> String
    #   resp.document_description.default_version #=> String
    #   resp.document_description.document_format #=> String, one of "YAML", "JSON", "TEXT"
    #   resp.document_description.target_type #=> String
    #   resp.document_description.tags #=> Array
    #   resp.document_description.tags[0].key #=> String
    #   resp.document_description.tags[0].value #=> String
    #   resp.document_description.attachments_information #=> Array
    #   resp.document_description.attachments_information[0].name #=> String
    #   resp.document_description.requires #=> Array
    #   resp.document_description.requires[0].name #=> String
    #   resp.document_description.requires[0].version #=> String
    #   resp.document_description.requires[0].require_type #=> String
    #   resp.document_description.requires[0].version_name #=> String
    #   resp.document_description.author #=> String
    #   resp.document_description.review_information #=> Array
    #   resp.document_description.review_information[0].reviewed_time #=> Time
    #   resp.document_description.review_information[0].status #=> String, one of "APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"
    #   resp.document_description.review_information[0].reviewer #=> String
    #   resp.document_description.approved_version #=> String
    #   resp.document_description.pending_review_version #=> String
    #   resp.document_description.review_status #=> String, one of "APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"
    #   resp.document_description.category #=> Array
    #   resp.document_description.category[0] #=> String
    #   resp.document_description.category_enum #=> Array
    #   resp.document_description.category_enum[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocument AWS API Documentation
    #
    # @overload update_document(params = {})
    # @param [Hash] params ({})
    def update_document(params = {}, options = {})
      req = build_request(:update_document, params)
      req.send_request(options)
    end

    # Set the default version of a document.
    #
    # <note markdown="1"> If you change a document version for a State Manager association,
    # Systems Manager immediately runs the association unless you previously
    # specifed the `apply-only-at-cron-interval` parameter.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of a custom document that you want to set as the default
    #   version.
    #
    # @option params [required, String] :document_version
    #   The version of a custom document that you want to set as the default
    #   version.
    #
    # @return [Types::UpdateDocumentDefaultVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDocumentDefaultVersionResult#description #description} => Types::DocumentDefaultVersionDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document_default_version({
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersionNumber", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description.name #=> String
    #   resp.description.default_version #=> String
    #   resp.description.default_version_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentDefaultVersion AWS API Documentation
    #
    # @overload update_document_default_version(params = {})
    # @param [Hash] params ({})
    def update_document_default_version(params = {}, options = {})
      req = build_request(:update_document_default_version, params)
      req.send_request(options)
    end

    # Updates information related to approval reviews for a specific version
    # of a change template in Change Manager.
    #
    # @option params [required, String] :name
    #   The name of the change template for which a version's metadata is to
    #   be updated.
    #
    # @option params [String] :document_version
    #   The version of a change template in which to update approval metadata.
    #
    # @option params [required, Types::DocumentReviews] :document_reviews
    #   The change template review details to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document_metadata({
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersion",
    #     document_reviews: { # required
    #       action: "SendForReview", # required, accepts SendForReview, UpdateReview, Approve, Reject
    #       comment: [
    #         {
    #           type: "Comment", # accepts Comment
    #           content: "DocumentReviewComment",
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentMetadata AWS API Documentation
    #
    # @overload update_document_metadata(params = {})
    # @param [Hash] params ({})
    def update_document_metadata(params = {}, options = {})
      req = build_request(:update_document_metadata, params)
      req.send_request(options)
    end

    # Updates an existing maintenance window. Only specified parameters are
    # modified.
    #
    # <note markdown="1"> The value you specify for `Duration` determines the specific end time
    # for the maintenance window based on the time it begins. No maintenance
    # window tasks are permitted to start after the resulting endtime minus
    # the number of hours you specify for `Cutoff`. For example, if the
    # maintenance window starts at 3 PM, the duration is three hours, and
    # the value you specify for `Cutoff` is one hour, no maintenance window
    # tasks can start after 5 PM.
    #
    #  </note>
    #
    # @option params [required, String] :window_id
    #   The ID of the maintenance window to update.
    #
    # @option params [String] :name
    #   The name of the maintenance window.
    #
    # @option params [String] :description
    #   An optional description for the update request.
    #
    # @option params [String] :start_date
    #   The date and time, in ISO-8601 Extended format, for when you want the
    #   maintenance window to become active. `StartDate` allows you to delay
    #   activation of the maintenance window until the specified future date.
    #
    # @option params [String] :end_date
    #   The date and time, in ISO-8601 Extended format, for when you want the
    #   maintenance window to become inactive. `EndDate` allows you to set a
    #   date and time in the future when the maintenance window will no longer
    #   run.
    #
    # @option params [String] :schedule
    #   The schedule of the maintenance window in the form of a cron or rate
    #   expression.
    #
    # @option params [String] :schedule_timezone
    #   The time zone that the scheduled maintenance window executions are
    #   based on, in Internet Assigned Numbers Authority (IANA) format. For
    #   example: "America/Los\_Angeles", "UTC", or "Asia/Seoul". For
    #   more information, see the [Time Zone Database][1] on the IANA website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #
    # @option params [Integer] :schedule_offset
    #   The number of days to wait after the date and time specified by a cron
    #   expression before running the maintenance window.
    #
    #   For example, the following cron expression schedules a maintenance
    #   window to run the third Tuesday of every month at 11:30 PM.
    #
    #   `cron(30 23 ? * TUE#3 *)`
    #
    #   If the schedule offset is `2`, the maintenance window won't run until
    #   two days later.
    #
    # @option params [Integer] :duration
    #   The duration of the maintenance window in hours.
    #
    # @option params [Integer] :cutoff
    #   The number of hours before the end of the maintenance window that
    #   Amazon Web Services Systems Manager stops scheduling new tasks for
    #   execution.
    #
    # @option params [Boolean] :allow_unassociated_targets
    #   Whether targets must be registered with the maintenance window before
    #   tasks can be defined for those targets.
    #
    # @option params [Boolean] :enabled
    #   Whether the maintenance window is enabled.
    #
    # @option params [Boolean] :replace
    #   If `True`, then all fields that are required by the
    #   CreateMaintenanceWindow operation are also required for this API
    #   request. Optional fields that aren't specified are set to null.
    #
    # @return [Types::UpdateMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMaintenanceWindowResult#window_id #window_id} => String
    #   * {Types::UpdateMaintenanceWindowResult#name #name} => String
    #   * {Types::UpdateMaintenanceWindowResult#description #description} => String
    #   * {Types::UpdateMaintenanceWindowResult#start_date #start_date} => String
    #   * {Types::UpdateMaintenanceWindowResult#end_date #end_date} => String
    #   * {Types::UpdateMaintenanceWindowResult#schedule #schedule} => String
    #   * {Types::UpdateMaintenanceWindowResult#schedule_timezone #schedule_timezone} => String
    #   * {Types::UpdateMaintenanceWindowResult#schedule_offset #schedule_offset} => Integer
    #   * {Types::UpdateMaintenanceWindowResult#duration #duration} => Integer
    #   * {Types::UpdateMaintenanceWindowResult#cutoff #cutoff} => Integer
    #   * {Types::UpdateMaintenanceWindowResult#allow_unassociated_targets #allow_unassociated_targets} => Boolean
    #   * {Types::UpdateMaintenanceWindowResult#enabled #enabled} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     start_date: "MaintenanceWindowStringDateTime",
    #     end_date: "MaintenanceWindowStringDateTime",
    #     schedule: "MaintenanceWindowSchedule",
    #     schedule_timezone: "MaintenanceWindowTimezone",
    #     schedule_offset: 1,
    #     duration: 1,
    #     cutoff: 1,
    #     allow_unassociated_targets: false,
    #     enabled: false,
    #     replace: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.start_date #=> String
    #   resp.end_date #=> String
    #   resp.schedule #=> String
    #   resp.schedule_timezone #=> String
    #   resp.schedule_offset #=> Integer
    #   resp.duration #=> Integer
    #   resp.cutoff #=> Integer
    #   resp.allow_unassociated_targets #=> Boolean
    #   resp.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindow AWS API Documentation
    #
    # @overload update_maintenance_window(params = {})
    # @param [Hash] params ({})
    def update_maintenance_window(params = {}, options = {})
      req = build_request(:update_maintenance_window, params)
      req.send_request(options)
    end

    # Modifies the target of an existing maintenance window. You can change
    # the following:
    #
    # * Name
    #
    # * Description
    #
    # * Owner
    #
    # * IDs for an ID target
    #
    # * Tags for a Tag target
    #
    # * From any supported tag type to another. The three supported tag
    #   types are ID target, Tag target, and resource group. For more
    #   information, see Target.
    #
    # <note markdown="1"> If a parameter is null, then the corresponding field isn't modified.
    #
    #  </note>
    #
    # @option params [required, String] :window_id
    #   The maintenance window ID with which to modify the target.
    #
    # @option params [required, String] :window_target_id
    #   The target ID to modify.
    #
    # @option params [Array<Types::Target>] :targets
    #   The targets to add or replace.
    #
    # @option params [String] :owner_information
    #   User-provided value that will be included in any Amazon CloudWatch
    #   Events events raised while running tasks for these targets in this
    #   maintenance window.
    #
    # @option params [String] :name
    #   A name for the update.
    #
    # @option params [String] :description
    #   An optional description for the update.
    #
    # @option params [Boolean] :replace
    #   If `True`, then all fields that are required by the
    #   RegisterTargetWithMaintenanceWindow operation are also required for
    #   this API request. Optional fields that aren't specified are set to
    #   null.
    #
    # @return [Types::UpdateMaintenanceWindowTargetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMaintenanceWindowTargetResult#window_id #window_id} => String
    #   * {Types::UpdateMaintenanceWindowTargetResult#window_target_id #window_target_id} => String
    #   * {Types::UpdateMaintenanceWindowTargetResult#targets #targets} => Array&lt;Types::Target&gt;
    #   * {Types::UpdateMaintenanceWindowTargetResult#owner_information #owner_information} => String
    #   * {Types::UpdateMaintenanceWindowTargetResult#name #name} => String
    #   * {Types::UpdateMaintenanceWindowTargetResult#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_window_target({
    #     window_id: "MaintenanceWindowId", # required
    #     window_target_id: "MaintenanceWindowTargetId", # required
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     owner_information: "OwnerInformation",
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     replace: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.window_target_id #=> String
    #   resp.targets #=> Array
    #   resp.targets[0].key #=> String
    #   resp.targets[0].values #=> Array
    #   resp.targets[0].values[0] #=> String
    #   resp.owner_information #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowTarget AWS API Documentation
    #
    # @overload update_maintenance_window_target(params = {})
    # @param [Hash] params ({})
    def update_maintenance_window_target(params = {}, options = {})
      req = build_request(:update_maintenance_window_target, params)
      req.send_request(options)
    end

    # Modifies a task assigned to a maintenance window. You can't change
    # the task type, but you can change the following values:
    #
    # * `TaskARN`. For example, you can change a `RUN_COMMAND` task from
    #   `AWS-RunPowerShellScript` to `AWS-RunShellScript`.
    #
    # * `ServiceRoleArn`
    #
    # * `TaskInvocationParameters`
    #
    # * `Priority`
    #
    # * `MaxConcurrency`
    #
    # * `MaxErrors`
    #
    # <note markdown="1"> One or more targets must be specified for maintenance window Run
    # Command-type tasks. Depending on the task, targets are optional for
    # other maintenance window task types (Automation, Lambda, and Step
    # Functions). For more information about running tasks that don't
    # specify targets, see [Registering maintenance window tasks without
    # targets][1] in the *Amazon Web Services Systems Manager User Guide*.
    #
    #  </note>
    #
    # If the value for a parameter in `UpdateMaintenanceWindowTask` is null,
    # then the corresponding field isn't modified. If you set `Replace` to
    # true, then all fields required by the
    # RegisterTaskWithMaintenanceWindow operation are required for this
    # request. Optional fields that aren't specified are set to null.
    #
    # When you update a maintenance window task that has options specified
    # in `TaskInvocationParameters`, you must provide again all the
    # `TaskInvocationParameters` values that you want to retain. The values
    # you don't specify again are removed. For example, suppose that when
    # you registered a Run Command task, you specified
    # `TaskInvocationParameters` values for `Comment`, `NotificationConfig`,
    # and `OutputS3BucketName`. If you update the maintenance window task
    # and specify only a different `OutputS3BucketName` value, the values
    # for `Comment` and `NotificationConfig` are removed.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #
    # @option params [required, String] :window_id
    #   The maintenance window ID that contains the task to modify.
    #
    # @option params [required, String] :window_task_id
    #   The task ID to modify.
    #
    # @option params [Array<Types::Target>] :targets
    #   The targets (either managed nodes or tags) to modify. Managed nodes
    #   are specified using the format
    #   `Key=instanceids,Values=instanceID_1,instanceID_2`. Tags are specified
    #   using the format ` Key=tag_name,Values=tag_value`.
    #
    #   <note markdown="1"> One or more targets must be specified for maintenance window Run
    #   Command-type tasks. Depending on the task, targets are optional for
    #   other maintenance window task types (Automation, Lambda, and Step
    #   Functions). For more information about running tasks that don't
    #   specify targets, see [Registering maintenance window tasks without
    #   targets][1] in the *Amazon Web Services Systems Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #
    # @option params [String] :task_arn
    #   The task ARN to modify.
    #
    # @option params [String] :service_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role for Amazon Web
    #   Services Systems Manager to assume when running a maintenance window
    #   task. If you do not specify a service role ARN, Systems Manager uses
    #   your account's service-linked role. If no service-linked role for
    #   Systems Manager exists in your account, it is created when you run
    #   `RegisterTaskWithMaintenanceWindow`.
    #
    #   For more information, see the following topics in the in the *Amazon
    #   Web Services Systems Manager User Guide*:
    #
    #   * [Using service-linked roles for Systems Manager][1]
    #
    #   * [Should I use a service-linked role or a custom service role to run
    #     maintenance window tasks? ][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role
    #
    # @option params [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>] :task_parameters
    #   The parameters to modify.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass to
    #   a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported maintenance
    #   window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #
    #   The map has the following format:
    #
    #   Key: string, between 1 and 255 characters
    #
    #   Value: an array of strings, each string is between 1 and 255
    #   characters
    #
    # @option params [Types::MaintenanceWindowTaskInvocationParameters] :task_invocation_parameters
    #   The parameters that the task should use during execution. Populate
    #   only the fields that match the task type. All other fields should be
    #   empty.
    #
    #   When you update a maintenance window task that has options specified
    #   in `TaskInvocationParameters`, you must provide again all the
    #   `TaskInvocationParameters` values that you want to retain. The values
    #   you don't specify again are removed. For example, suppose that when
    #   you registered a Run Command task, you specified
    #   `TaskInvocationParameters` values for `Comment`, `NotificationConfig`,
    #   and `OutputS3BucketName`. If you update the maintenance window task
    #   and specify only a different `OutputS3BucketName` value, the values
    #   for `Comment` and `NotificationConfig` are removed.
    #
    # @option params [Integer] :priority
    #   The new task priority to specify. The lower the number, the higher the
    #   priority. Tasks that have the same priority are scheduled in parallel.
    #
    # @option params [String] :max_concurrency
    #   The new `MaxConcurrency` value you want to specify. `MaxConcurrency`
    #   is the number of targets that are allowed to run this task, in
    #   parallel.
    #
    #   <note markdown="1"> Although this element is listed as "Required: No", a value can be
    #   omitted only when you are registering or updating a [targetless
    #   task][1] You must provide a value in all other cases.
    #
    #    For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`. This value doesn't affect the running of
    #   your task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #
    # @option params [String] :max_errors
    #   The new `MaxErrors` value to specify. `MaxErrors` is the maximum
    #   number of errors that are allowed before the task stops being
    #   scheduled.
    #
    #   <note markdown="1"> Although this element is listed as "Required: No", a value can be
    #   omitted only when you are registering or updating a [targetless
    #   task][1] You must provide a value in all other cases.
    #
    #    For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`. This value doesn't affect the running of
    #   your task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #
    # @option params [Types::LoggingInfo] :logging_info
    #   The new logging location in Amazon S3 to specify.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple Storage
    #   Service (Amazon S3) bucket to contain logs, instead use the
    #   `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    #   `TaskInvocationParameters` structure. For information about how Amazon
    #   Web Services Systems Manager handles these options for the supported
    #   maintenance window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #
    # @option params [String] :name
    #   The new task name to specify.
    #
    # @option params [String] :description
    #   The new task description to specify.
    #
    # @option params [Boolean] :replace
    #   If True, then all fields that are required by the
    #   RegisterTaskWithMaintenanceWindow operation are also required for this
    #   API request. Optional fields that aren't specified are set to null.
    #
    # @option params [String] :cutoff_behavior
    #   Indicates whether tasks should continue to run after the cutoff time
    #   specified in the maintenance windows is reached.
    #
    #   * `CONTINUE_TASK`: When the cutoff time is reached, any tasks that are
    #     running continue. The default value.
    #
    #   * `CANCEL_TASK`:
    #
    #     * For Automation, Lambda, Step Functions tasks: When the cutoff time
    #       is reached, any task invocations that are already running
    #       continue, but no new task invocations are started.
    #
    #     * For Run Command tasks: When the cutoff time is reached, the system
    #       sends a CancelCommand operation that attempts to cancel the
    #       command associated with the task. However, there is no guarantee
    #       that the command will be terminated and the underlying process
    #       stopped.
    #
    #     The status for tasks that are not completed is `TIMED_OUT`.
    #
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   The CloudWatch alarm you want to apply to your maintenance window
    #   task.
    #
    # @return [Types::UpdateMaintenanceWindowTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMaintenanceWindowTaskResult#window_id #window_id} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#window_task_id #window_task_id} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#targets #targets} => Array&lt;Types::Target&gt;
    #   * {Types::UpdateMaintenanceWindowTaskResult#task_arn #task_arn} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#service_role_arn #service_role_arn} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#task_parameters #task_parameters} => Hash&lt;String,Types::MaintenanceWindowTaskParameterValueExpression&gt;
    #   * {Types::UpdateMaintenanceWindowTaskResult#task_invocation_parameters #task_invocation_parameters} => Types::MaintenanceWindowTaskInvocationParameters
    #   * {Types::UpdateMaintenanceWindowTaskResult#priority #priority} => Integer
    #   * {Types::UpdateMaintenanceWindowTaskResult#max_concurrency #max_concurrency} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#max_errors #max_errors} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#logging_info #logging_info} => Types::LoggingInfo
    #   * {Types::UpdateMaintenanceWindowTaskResult#name #name} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#description #description} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#cutoff_behavior #cutoff_behavior} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#alarm_configuration #alarm_configuration} => Types::AlarmConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_window_task({
    #     window_id: "MaintenanceWindowId", # required
    #     window_task_id: "MaintenanceWindowTaskId", # required
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     task_arn: "MaintenanceWindowTaskArn",
    #     service_role_arn: "ServiceRole",
    #     task_parameters: {
    #       "MaintenanceWindowTaskParameterName" => {
    #         values: ["MaintenanceWindowTaskParameterValue"],
    #       },
    #     },
    #     task_invocation_parameters: {
    #       run_command: {
    #         comment: "Comment",
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           cloud_watch_output_enabled: false,
    #         },
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256", # accepts Sha256, Sha1
    #         document_version: "DocumentVersion",
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #           notification_type: "Command", # accepts Command, Invocation
    #         },
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         service_role_arn: "ServiceRole",
    #         timeout_seconds: 1,
    #       },
    #       automation: {
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"],
    #         },
    #       },
    #       step_functions: {
    #         input: "MaintenanceWindowStepFunctionsInput",
    #         name: "MaintenanceWindowStepFunctionsName",
    #       },
    #       lambda: {
    #         client_context: "MaintenanceWindowLambdaClientContext",
    #         qualifier: "MaintenanceWindowLambdaQualifier",
    #         payload: "data",
    #       },
    #     },
    #     priority: 1,
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     logging_info: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix",
    #       s3_region: "S3Region", # required
    #     },
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     replace: false,
    #     cutoff_behavior: "CONTINUE_TASK", # accepts CONTINUE_TASK, CANCEL_TASK
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.window_task_id #=> String
    #   resp.targets #=> Array
    #   resp.targets[0].key #=> String
    #   resp.targets[0].values #=> Array
    #   resp.targets[0].values[0] #=> String
    #   resp.task_arn #=> String
    #   resp.service_role_arn #=> String
    #   resp.task_parameters #=> Hash
    #   resp.task_parameters["MaintenanceWindowTaskParameterName"].values #=> Array
    #   resp.task_parameters["MaintenanceWindowTaskParameterName"].values[0] #=> String
    #   resp.task_invocation_parameters.run_command.comment #=> String
    #   resp.task_invocation_parameters.run_command.cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.task_invocation_parameters.run_command.cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.task_invocation_parameters.run_command.document_hash #=> String
    #   resp.task_invocation_parameters.run_command.document_hash_type #=> String, one of "Sha256", "Sha1"
    #   resp.task_invocation_parameters.run_command.document_version #=> String
    #   resp.task_invocation_parameters.run_command.notification_config.notification_arn #=> String
    #   resp.task_invocation_parameters.run_command.notification_config.notification_events #=> Array
    #   resp.task_invocation_parameters.run_command.notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.task_invocation_parameters.run_command.notification_config.notification_type #=> String, one of "Command", "Invocation"
    #   resp.task_invocation_parameters.run_command.output_s3_bucket_name #=> String
    #   resp.task_invocation_parameters.run_command.output_s3_key_prefix #=> String
    #   resp.task_invocation_parameters.run_command.parameters #=> Hash
    #   resp.task_invocation_parameters.run_command.parameters["ParameterName"] #=> Array
    #   resp.task_invocation_parameters.run_command.parameters["ParameterName"][0] #=> String
    #   resp.task_invocation_parameters.run_command.service_role_arn #=> String
    #   resp.task_invocation_parameters.run_command.timeout_seconds #=> Integer
    #   resp.task_invocation_parameters.automation.document_version #=> String
    #   resp.task_invocation_parameters.automation.parameters #=> Hash
    #   resp.task_invocation_parameters.automation.parameters["AutomationParameterKey"] #=> Array
    #   resp.task_invocation_parameters.automation.parameters["AutomationParameterKey"][0] #=> String
    #   resp.task_invocation_parameters.step_functions.input #=> String
    #   resp.task_invocation_parameters.step_functions.name #=> String
    #   resp.task_invocation_parameters.lambda.client_context #=> String
    #   resp.task_invocation_parameters.lambda.qualifier #=> String
    #   resp.task_invocation_parameters.lambda.payload #=> String
    #   resp.priority #=> Integer
    #   resp.max_concurrency #=> String
    #   resp.max_errors #=> String
    #   resp.logging_info.s3_bucket_name #=> String
    #   resp.logging_info.s3_key_prefix #=> String
    #   resp.logging_info.s3_region #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.cutoff_behavior #=> String, one of "CONTINUE_TASK", "CANCEL_TASK"
    #   resp.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.alarm_configuration.alarms #=> Array
    #   resp.alarm_configuration.alarms[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowTask AWS API Documentation
    #
    # @overload update_maintenance_window_task(params = {})
    # @param [Hash] params ({})
    def update_maintenance_window_task(params = {}, options = {})
      req = build_request(:update_maintenance_window_task, params)
      req.send_request(options)
    end

    # Changes the Identity and Access Management (IAM) role that is assigned
    # to the on-premises server, edge device, or virtual machines (VM). IAM
    # roles are first assigned to these hybrid nodes during the activation
    # process. For more information, see CreateActivation.
    #
    # @option params [required, String] :instance_id
    #   The ID of the managed node where you want to update the role.
    #
    # @option params [required, String] :iam_role
    #   The name of the Identity and Access Management (IAM) role that you
    #   want to assign to the managed node. This IAM role must provide
    #   AssumeRole permissions for the Amazon Web Services Systems Manager
    #   service principal `ssm.amazonaws.com`. For more information, see
    #   [Create an IAM service role for a hybrid environment][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #   <note markdown="1"> You can't specify an IAM service-linked role for this parameter. You
    #   must create a unique role.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_managed_instance_role({
    #     instance_id: "ManagedInstanceId", # required
    #     iam_role: "IamRole", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateManagedInstanceRole AWS API Documentation
    #
    # @overload update_managed_instance_role(params = {})
    # @param [Hash] params ({})
    def update_managed_instance_role(params = {}, options = {})
      req = build_request(:update_managed_instance_role, params)
      req.send_request(options)
    end

    # Edit or change an OpsItem. You must have permission in Identity and
    # Access Management (IAM) to update an OpsItem. For more information,
    # see [Getting started with OpsCenter][1] in the *Amazon Web Services
    # Systems Manager User Guide*.
    #
    # Operations engineers and IT professionals use Amazon Web Services
    # Systems Manager OpsCenter to view, investigate, and remediate
    # operational issues impacting the performance and health of their
    # Amazon Web Services resources. For more information, see
    # [OpsCenter][2] in the *Amazon Web Services Systems Manager User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html
    # [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html
    #
    # @option params [String] :description
    #   Update the information about the OpsItem. Provide enough information
    #   so that users reading this OpsItem for the first time understand the
    #   issue.
    #
    # @option params [Hash<String,Types::OpsItemDataValue>] :operational_data
    #   Add new keys or edit existing key-value pairs of the OperationalData
    #   map in the OpsItem object.
    #
    #   Operational data is custom data that provides useful reference details
    #   about the OpsItem. For example, you can specify log files, error
    #   strings, license keys, troubleshooting tips, or other relevant data.
    #   You enter operational data as key-value pairs. The key has a maximum
    #   length of 128 characters. The value has a maximum size of 20 KB.
    #
    #   Operational data keys *can't* begin with the following: `amazon`,
    #   `aws`, `amzn`, `ssm`, `/amazon`, `/aws`, `/amzn`, `/ssm`.
    #
    #   You can choose to make the data searchable by other users in the
    #   account or you can restrict search access. Searchable data means that
    #   all users with access to the OpsItem Overview page (as provided by the
    #   DescribeOpsItems API operation) can view and search on the specified
    #   data. Operational data that isn't searchable is only viewable by
    #   users who have access to the OpsItem (as provided by the GetOpsItem
    #   API operation).
    #
    #   Use the `/aws/resources` key in OperationalData to specify a related
    #   resource in the request. Use the `/aws/automations` key in
    #   OperationalData to associate an Automation runbook with the OpsItem.
    #   To view Amazon Web Services CLI example commands that use these keys,
    #   see [Creating OpsItems manually][1] in the *Amazon Web Services
    #   Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems
    #
    # @option params [Array<String>] :operational_data_to_delete
    #   Keys that you want to remove from the OperationalData map.
    #
    # @option params [Array<Types::OpsItemNotification>] :notifications
    #   The Amazon Resource Name (ARN) of an SNS topic where notifications are
    #   sent when this OpsItem is edited or changed.
    #
    # @option params [Integer] :priority
    #   The importance of this OpsItem in relation to other OpsItems in the
    #   system.
    #
    # @option params [Array<Types::RelatedOpsItem>] :related_ops_items
    #   One or more OpsItems that share something in common with the current
    #   OpsItems. For example, related OpsItems can include OpsItems with
    #   similar error messages, impacted resources, or statuses for the
    #   impacted resource.
    #
    # @option params [String] :status
    #   The OpsItem status. Status can be `Open`, `In Progress`, or
    #   `Resolved`. For more information, see [Editing OpsItem details][1] in
    #   the *Amazon Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html#OpsCenter-working-with-OpsItems-editing-details
    #
    # @option params [required, String] :ops_item_id
    #   The ID of the OpsItem.
    #
    # @option params [String] :title
    #   A short heading that describes the nature of the OpsItem and the
    #   impacted resource.
    #
    # @option params [String] :category
    #   Specify a new category for an OpsItem.
    #
    # @option params [String] :severity
    #   Specify a new severity for an OpsItem.
    #
    # @option params [Time,DateTime,Date,Integer,String] :actual_start_time
    #   The time a runbook workflow started. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :actual_end_time
    #   The time a runbook workflow ended. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :planned_start_time
    #   The time specified in a change request for a runbook workflow to
    #   start. Currently supported only for the OpsItem type
    #   `/aws/changerequest`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :planned_end_time
    #   The time specified in a change request for a runbook workflow to end.
    #   Currently supported only for the OpsItem type `/aws/changerequest`.
    #
    # @option params [String] :ops_item_arn
    #   The OpsItem Amazon Resource Name (ARN).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ops_item({
    #     description: "OpsItemDescription",
    #     operational_data: {
    #       "OpsItemDataKey" => {
    #         value: "OpsItemDataValueString",
    #         type: "SearchableString", # accepts SearchableString, String
    #       },
    #     },
    #     operational_data_to_delete: ["String"],
    #     notifications: [
    #       {
    #         arn: "String",
    #       },
    #     ],
    #     priority: 1,
    #     related_ops_items: [
    #       {
    #         ops_item_id: "String", # required
    #       },
    #     ],
    #     status: "Open", # accepts Open, InProgress, Resolved, Pending, TimedOut, Cancelling, Cancelled, Failed, CompletedWithSuccess, CompletedWithFailure, Scheduled, RunbookInProgress, PendingChangeCalendarOverride, ChangeCalendarOverrideApproved, ChangeCalendarOverrideRejected, PendingApproval, Approved, Rejected, Closed
    #     ops_item_id: "OpsItemId", # required
    #     title: "OpsItemTitle",
    #     category: "OpsItemCategory",
    #     severity: "OpsItemSeverity",
    #     actual_start_time: Time.now,
    #     actual_end_time: Time.now,
    #     planned_start_time: Time.now,
    #     planned_end_time: Time.now,
    #     ops_item_arn: "OpsItemArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateOpsItem AWS API Documentation
    #
    # @overload update_ops_item(params = {})
    # @param [Hash] params ({})
    def update_ops_item(params = {}, options = {})
      req = build_request(:update_ops_item, params)
      req.send_request(options)
    end

    # Amazon Web Services Systems Manager calls this API operation when you
    # edit OpsMetadata in Application Manager.
    #
    # @option params [required, String] :ops_metadata_arn
    #   The Amazon Resource Name (ARN) of the OpsMetadata Object to update.
    #
    # @option params [Hash<String,Types::MetadataValue>] :metadata_to_update
    #   Metadata to add to an OpsMetadata object.
    #
    # @option params [Array<String>] :keys_to_delete
    #   The metadata keys to delete from the OpsMetadata object.
    #
    # @return [Types::UpdateOpsMetadataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOpsMetadataResult#ops_metadata_arn #ops_metadata_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ops_metadata({
    #     ops_metadata_arn: "OpsMetadataArn", # required
    #     metadata_to_update: {
    #       "MetadataKey" => {
    #         value: "MetadataValueString",
    #       },
    #     },
    #     keys_to_delete: ["MetadataKey"],
    #   })
    #
    # @example Response structure
    #
    #   resp.ops_metadata_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateOpsMetadata AWS API Documentation
    #
    # @overload update_ops_metadata(params = {})
    # @param [Hash] params ({})
    def update_ops_metadata(params = {}, options = {})
      req = build_request(:update_ops_metadata, params)
      req.send_request(options)
    end

    # Modifies an existing patch baseline. Fields not specified in the
    # request are left unchanged.
    #
    # <note markdown="1"> For information about valid key-value pairs in `PatchFilters` for each
    # supported operating system type, see PatchFilter.
    #
    #  </note>
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to update.
    #
    # @option params [String] :name
    #   The name of the patch baseline.
    #
    # @option params [Types::PatchFilterGroup] :global_filters
    #   A set of global filters used to include patches in the baseline.
    #
    # @option params [Types::PatchRuleGroup] :approval_rules
    #   A set of rules used to include patches in the baseline.
    #
    # @option params [Array<String>] :approved_patches
    #   A list of explicitly approved patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [About package name formats for approved and
    #   rejected patch lists][1] in the *Amazon Web Services Systems Manager
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #
    # @option params [String] :approved_patches_compliance_level
    #   Assigns a new compliance severity level to an existing patch baseline.
    #
    # @option params [Boolean] :approved_patches_enable_non_security
    #   Indicates whether the list of approved patches includes non-security
    #   updates that should be applied to the managed nodes. The default value
    #   is `false`. Applies to Linux managed nodes only.
    #
    # @option params [Array<String>] :rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [About package name formats for approved and
    #   rejected patch lists][1] in the *Amazon Web Services Systems Manager
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #
    # @option params [String] :rejected_patches_action
    #   The action for Patch Manager to take on patches included in the
    #   `RejectedPackages` list.
    #
    #   * <b> <code>ALLOW_AS_DEPENDENCY</code> </b>: A package in the
    #     `Rejected` patches list is installed only if it is a dependency of
    #     another package. It is considered compliant with the patch baseline,
    #     and its status is reported as `InstalledOther`. This is the default
    #     action if no option is specified.
    #
    #   * <b> <code>BLOCK</code> </b>: Packages in the `RejectedPatches` list,
    #     and packages that include them as dependencies, aren't installed
    #     under any circumstances. If a package was installed before it was
    #     added to the `Rejected` patches list, it is considered non-compliant
    #     with the patch baseline, and its status is reported as
    #     `InstalledRejected`.
    #
    # @option params [String] :description
    #   A description of the patch baseline.
    #
    # @option params [Array<Types::PatchSource>] :sources
    #   Information about the patches to use to update the managed nodes,
    #   including target operating systems and source repositories. Applies to
    #   Linux managed nodes only.
    #
    # @option params [Boolean] :replace
    #   If True, then all fields that are required by the CreatePatchBaseline
    #   operation are also required for this API request. Optional fields that
    #   aren't specified are set to null.
    #
    # @return [Types::UpdatePatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePatchBaselineResult#baseline_id #baseline_id} => String
    #   * {Types::UpdatePatchBaselineResult#name #name} => String
    #   * {Types::UpdatePatchBaselineResult#operating_system #operating_system} => String
    #   * {Types::UpdatePatchBaselineResult#global_filters #global_filters} => Types::PatchFilterGroup
    #   * {Types::UpdatePatchBaselineResult#approval_rules #approval_rules} => Types::PatchRuleGroup
    #   * {Types::UpdatePatchBaselineResult#approved_patches #approved_patches} => Array&lt;String&gt;
    #   * {Types::UpdatePatchBaselineResult#approved_patches_compliance_level #approved_patches_compliance_level} => String
    #   * {Types::UpdatePatchBaselineResult#approved_patches_enable_non_security #approved_patches_enable_non_security} => Boolean
    #   * {Types::UpdatePatchBaselineResult#rejected_patches #rejected_patches} => Array&lt;String&gt;
    #   * {Types::UpdatePatchBaselineResult#rejected_patches_action #rejected_patches_action} => String
    #   * {Types::UpdatePatchBaselineResult#created_date #created_date} => Time
    #   * {Types::UpdatePatchBaselineResult#modified_date #modified_date} => Time
    #   * {Types::UpdatePatchBaselineResult#description #description} => String
    #   * {Types::UpdatePatchBaselineResult#sources #sources} => Array&lt;Types::PatchSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_patch_baseline({
    #     baseline_id: "BaselineId", # required
    #     name: "BaselineName",
    #     global_filters: {
    #       patch_filters: [ # required
    #         {
    #           key: "ARCH", # required, accepts ARCH, ADVISORY_ID, BUGZILLA_ID, PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, CVE_ID, EPOCH, MSRC_SEVERITY, NAME, PATCH_ID, SECTION, PRIORITY, REPOSITORY, RELEASE, SEVERITY, SECURITY, VERSION
    #           values: ["PatchFilterValue"], # required
    #         },
    #       ],
    #     },
    #     approval_rules: {
    #       patch_rules: [ # required
    #         {
    #           patch_filter_group: { # required
    #             patch_filters: [ # required
    #               {
    #                 key: "ARCH", # required, accepts ARCH, ADVISORY_ID, BUGZILLA_ID, PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, CVE_ID, EPOCH, MSRC_SEVERITY, NAME, PATCH_ID, SECTION, PRIORITY, REPOSITORY, RELEASE, SEVERITY, SECURITY, VERSION
    #                 values: ["PatchFilterValue"], # required
    #               },
    #             ],
    #           },
    #           compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #           approve_after_days: 1,
    #           approve_until_date: "PatchStringDateTime",
    #           enable_non_security: false,
    #         },
    #       ],
    #     },
    #     approved_patches: ["PatchId"],
    #     approved_patches_compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #     approved_patches_enable_non_security: false,
    #     rejected_patches: ["PatchId"],
    #     rejected_patches_action: "ALLOW_AS_DEPENDENCY", # accepts ALLOW_AS_DEPENDENCY, BLOCK
    #     description: "BaselineDescription",
    #     sources: [
    #       {
    #         name: "PatchSourceName", # required
    #         products: ["PatchSourceProduct"], # required
    #         configuration: "PatchSourceConfiguration", # required
    #       },
    #     ],
    #     replace: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.name #=> String
    #   resp.operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"
    #   resp.global_filters.patch_filters #=> Array
    #   resp.global_filters.patch_filters[0].key #=> String, one of "ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"
    #   resp.global_filters.patch_filters[0].values #=> Array
    #   resp.global_filters.patch_filters[0].values[0] #=> String
    #   resp.approval_rules.patch_rules #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].key #=> String, one of "ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].values #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].values[0] #=> String
    #   resp.approval_rules.patch_rules[0].compliance_level #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.approval_rules.patch_rules[0].approve_after_days #=> Integer
    #   resp.approval_rules.patch_rules[0].approve_until_date #=> String
    #   resp.approval_rules.patch_rules[0].enable_non_security #=> Boolean
    #   resp.approved_patches #=> Array
    #   resp.approved_patches[0] #=> String
    #   resp.approved_patches_compliance_level #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.approved_patches_enable_non_security #=> Boolean
    #   resp.rejected_patches #=> Array
    #   resp.rejected_patches[0] #=> String
    #   resp.rejected_patches_action #=> String, one of "ALLOW_AS_DEPENDENCY", "BLOCK"
    #   resp.created_date #=> Time
    #   resp.modified_date #=> Time
    #   resp.description #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].name #=> String
    #   resp.sources[0].products #=> Array
    #   resp.sources[0].products[0] #=> String
    #   resp.sources[0].configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdatePatchBaseline AWS API Documentation
    #
    # @overload update_patch_baseline(params = {})
    # @param [Hash] params ({})
    def update_patch_baseline(params = {}, options = {})
      req = build_request(:update_patch_baseline, params)
      req.send_request(options)
    end

    # Update a resource data sync. After you create a resource data sync for
    # a Region, you can't change the account options for that sync. For
    # example, if you create a sync in the us-east-2 (Ohio) Region and you
    # choose the `Include only the current account` option, you can't edit
    # that sync later and choose the `Include all accounts from my
    # Organizations configuration` option. Instead, you must delete the
    # first resource data sync, and create a new one.
    #
    # <note markdown="1"> This API operation only supports a resource data sync that was created
    # with a SyncFromSource `SyncType`.
    #
    #  </note>
    #
    # @option params [required, String] :sync_name
    #   The name of the resource data sync you want to update.
    #
    # @option params [required, String] :sync_type
    #   The type of resource data sync. The supported `SyncType` is
    #   SyncFromSource.
    #
    # @option params [required, Types::ResourceDataSyncSource] :sync_source
    #   Specify information about the data sources to synchronize.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_data_sync({
    #     sync_name: "ResourceDataSyncName", # required
    #     sync_type: "ResourceDataSyncType", # required
    #     sync_source: { # required
    #       source_type: "ResourceDataSyncSourceType", # required
    #       aws_organizations_source: {
    #         organization_source_type: "ResourceDataSyncOrganizationSourceType", # required
    #         organizational_units: [
    #           {
    #             organizational_unit_id: "ResourceDataSyncOrganizationalUnitId",
    #           },
    #         ],
    #       },
    #       source_regions: ["ResourceDataSyncSourceRegion"], # required
    #       include_future_regions: false,
    #       enable_all_ops_data_sources: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateResourceDataSync AWS API Documentation
    #
    # @overload update_resource_data_sync(params = {})
    # @param [Hash] params ({})
    def update_resource_data_sync(params = {}, options = {})
      req = build_request(:update_resource_data_sync, params)
      req.send_request(options)
    end

    # `ServiceSetting` is an account-level setting for an Amazon Web
    # Services service. This setting defines how a user interacts with or
    # uses a service or a feature of a service. For example, if an Amazon
    # Web Services service charges money to the account based on feature or
    # service usage, then the Amazon Web Services service team might create
    # a default setting of "false". This means the user can't use this
    # feature unless they change the setting to "true" and intentionally
    # opt in for a paid feature.
    #
    # Services map a `SettingId` object to a setting value. Amazon Web
    # Services services teams define the default value for a `SettingId`.
    # You can't create a new `SettingId`, but you can overwrite the default
    # value if you have the `ssm:UpdateServiceSetting` permission for the
    # setting. Use the GetServiceSetting API operation to view the current
    # value. Or, use the ResetServiceSetting to change the value back to the
    # original value defined by the Amazon Web Services service team.
    #
    # Update the service setting for the account.
    #
    # @option params [required, String] :setting_id
    #   The Amazon Resource Name (ARN) of the service setting to update. For
    #   example,
    #   `arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled`.
    #   The setting ID can be one of the following.
    #
    #   * `/ssm/managed-instance/default-ec2-instance-management-role`
    #
    #   * `/ssm/automation/customer-script-log-destination`
    #
    #   * `/ssm/automation/customer-script-log-group-name`
    #
    #   * `/ssm/documents/console/public-sharing-permission`
    #
    #   * `/ssm/managed-instance/activation-tier`
    #
    #   * `/ssm/opsinsights/opscenter`
    #
    #   * `/ssm/parameter-store/default-parameter-tier`
    #
    #   * `/ssm/parameter-store/high-throughput-enabled`
    #
    #   <note markdown="1"> Permissions to update the
    #   `/ssm/managed-instance/default-ec2-instance-management-role` setting
    #   should only be provided to administrators. Implement least privilege
    #   access when allowing individuals to configure or modify the Default
    #   Host Management Configuration.
    #
    #    </note>
    #
    # @option params [required, String] :setting_value
    #   The new value to specify for the service setting. The following list
    #   specifies the available values for each setting.
    #
    #   * `/ssm/managed-instance/default-ec2-instance-management-role: The
    #     name of an IAM role`
    #
    #   * `/ssm/automation/customer-script-log-destination`: `CloudWatch`
    #
    #   * `/ssm/automation/customer-script-log-group-name`: The name of an
    #     Amazon CloudWatch Logs log group
    #
    #   * `/ssm/documents/console/public-sharing-permission`: `Enable` or
    #     `Disable`
    #
    #   * `/ssm/managed-instance/activation-tier`: `standard` or `advanced`
    #
    #   * `/ssm/opsinsights/opscenter`: `Enabled` or `Disabled`
    #
    #   * `/ssm/parameter-store/default-parameter-tier`: `Standard`,
    #     `Advanced`, `Intelligent-Tiering`
    #
    #   * `/ssm/parameter-store/high-throughput-enabled`: `true` or `false`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_setting({
    #     setting_id: "ServiceSettingId", # required
    #     setting_value: "ServiceSettingValue", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateServiceSetting AWS API Documentation
    #
    # @overload update_service_setting(params = {})
    # @param [Hash] params ({})
    def update_service_setting(params = {}, options = {})
      req = build_request(:update_service_setting, params)
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
      context[:gem_name] = 'aws-sdk-ssm'
      context[:gem_version] = '1.150.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name      | params                          | :delay   | :max_attempts |
    # | ---------------- | ------------------------------- | -------- | ------------- |
    # | command_executed | {Client#get_command_invocation} | 5        | 20            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        command_executed: Waiters::CommandExecuted
      }
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
