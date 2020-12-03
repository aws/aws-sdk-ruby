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

Aws::Plugins::GlobalConfiguration.add_identifier(:ram)

module Aws::RAM
  # An API client for RAM.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::RAM::Client.new(
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

    @identifier = :ram

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

    # Accepts an invitation to a resource share from another AWS account.
    #
    # @option params [required, String] :resource_share_invitation_arn
    #   The Amazon Resource Name (ARN) of the invitation.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @return [Types::AcceptResourceShareInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptResourceShareInvitationResponse#resource_share_invitation #resource_share_invitation} => Types::ResourceShareInvitation
    #   * {Types::AcceptResourceShareInvitationResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_resource_share_invitation({
    #     resource_share_invitation_arn: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_invitation.resource_share_invitation_arn #=> String
    #   resp.resource_share_invitation.resource_share_name #=> String
    #   resp.resource_share_invitation.resource_share_arn #=> String
    #   resp.resource_share_invitation.sender_account_id #=> String
    #   resp.resource_share_invitation.receiver_account_id #=> String
    #   resp.resource_share_invitation.invitation_timestamp #=> Time
    #   resp.resource_share_invitation.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "EXPIRED"
    #   resp.resource_share_invitation.resource_share_associations #=> Array
    #   resp.resource_share_invitation.resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_invitation.resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_invitation.resource_share_associations[0].status_message #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_invitation.resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_invitation.resource_share_associations[0].external #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AcceptResourceShareInvitation AWS API Documentation
    #
    # @overload accept_resource_share_invitation(params = {})
    # @param [Hash] params ({})
    def accept_resource_share_invitation(params = {}, options = {})
      req = build_request(:accept_resource_share_invitation, params)
      req.send_request(options)
    end

    # Associates the specified resource share with the specified principals
    # and resources.
    #
    # @option params [required, String] :resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #
    # @option params [Array<String>] :resource_arns
    #   The Amazon Resource Names (ARN) of the resources.
    #
    # @option params [Array<String>] :principals
    #   The principals.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @return [Types::AssociateResourceShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateResourceShareResponse#resource_share_associations #resource_share_associations} => Array&lt;Types::ResourceShareAssociation&gt;
    #   * {Types::AssociateResourceShareResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resource_share({
    #     resource_share_arn: "String", # required
    #     resource_arns: ["String"],
    #     principals: ["String"],
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_associations #=> Array
    #   resp.resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_associations[0].status_message #=> String
    #   resp.resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_associations[0].external #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceShare AWS API Documentation
    #
    # @overload associate_resource_share(params = {})
    # @param [Hash] params ({})
    def associate_resource_share(params = {}, options = {})
      req = build_request(:associate_resource_share, params)
      req.send_request(options)
    end

    # Associates a permission with a resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #
    # @option params [required, String] :permission_arn
    #   The ARN of the AWS RAM permission to associate with the resource
    #   share.
    #
    # @option params [Boolean] :replace
    #   Indicates whether the permission should replace the permissions that
    #   are currently associated with the resource share. Use `true` to
    #   replace the current permissions. Use `false` to add the permission to
    #   the current permission.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @return [Types::AssociateResourceSharePermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateResourceSharePermissionResponse#return_value #return_value} => Boolean
    #   * {Types::AssociateResourceSharePermissionResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resource_share_permission({
    #     resource_share_arn: "String", # required
    #     permission_arn: "String", # required
    #     replace: false,
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceSharePermission AWS API Documentation
    #
    # @overload associate_resource_share_permission(params = {})
    # @param [Hash] params ({})
    def associate_resource_share_permission(params = {}, options = {})
      req = build_request(:associate_resource_share_permission, params)
      req.send_request(options)
    end

    # Creates a resource share.
    #
    # @option params [required, String] :name
    #   The name of the resource share.
    #
    # @option params [Array<String>] :resource_arns
    #   The Amazon Resource Names (ARN) of the resources to associate with the
    #   resource share.
    #
    # @option params [Array<String>] :principals
    #   The principals to associate with the resource share. The possible
    #   values are IDs of AWS accounts, the ARN of an OU or organization from
    #   AWS Organizations.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @option params [Boolean] :allow_external_principals
    #   Indicates whether principals outside your AWS organization can be
    #   associated with a resource share.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @option params [Array<String>] :permission_arns
    #   The ARNs of the permissions to associate with the resource share. If
    #   you do not specify an ARN for the permission, AWS RAM automatically
    #   attaches the default version of the permission for each resource type.
    #
    # @return [Types::CreateResourceShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceShareResponse#resource_share #resource_share} => Types::ResourceShare
    #   * {Types::CreateResourceShareResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_share({
    #     name: "String", # required
    #     resource_arns: ["String"],
    #     principals: ["String"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     allow_external_principals: false,
    #     client_token: "String",
    #     permission_arns: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share.resource_share_arn #=> String
    #   resp.resource_share.name #=> String
    #   resp.resource_share.owning_account_id #=> String
    #   resp.resource_share.allow_external_principals #=> Boolean
    #   resp.resource_share.status #=> String, one of "PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"
    #   resp.resource_share.status_message #=> String
    #   resp.resource_share.tags #=> Array
    #   resp.resource_share.tags[0].key #=> String
    #   resp.resource_share.tags[0].value #=> String
    #   resp.resource_share.creation_time #=> Time
    #   resp.resource_share.last_updated_time #=> Time
    #   resp.resource_share.feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreateResourceShare AWS API Documentation
    #
    # @overload create_resource_share(params = {})
    # @param [Hash] params ({})
    def create_resource_share(params = {}, options = {})
      req = build_request(:create_resource_share, params)
      req.send_request(options)
    end

    # Deletes the specified resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @return [Types::DeleteResourceShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourceShareResponse#return_value #return_value} => Boolean
    #   * {Types::DeleteResourceShareResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_share({
    #     resource_share_arn: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeleteResourceShare AWS API Documentation
    #
    # @overload delete_resource_share(params = {})
    # @param [Hash] params ({})
    def delete_resource_share(params = {}, options = {})
      req = build_request(:delete_resource_share, params)
      req.send_request(options)
    end

    # Disassociates the specified principals or resources from the specified
    # resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #
    # @option params [Array<String>] :resource_arns
    #   The Amazon Resource Names (ARNs) of the resources.
    #
    # @option params [Array<String>] :principals
    #   The principals.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @return [Types::DisassociateResourceShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateResourceShareResponse#resource_share_associations #resource_share_associations} => Array&lt;Types::ResourceShareAssociation&gt;
    #   * {Types::DisassociateResourceShareResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resource_share({
    #     resource_share_arn: "String", # required
    #     resource_arns: ["String"],
    #     principals: ["String"],
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_associations #=> Array
    #   resp.resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_associations[0].status_message #=> String
    #   resp.resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_associations[0].external #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceShare AWS API Documentation
    #
    # @overload disassociate_resource_share(params = {})
    # @param [Hash] params ({})
    def disassociate_resource_share(params = {}, options = {})
      req = build_request(:disassociate_resource_share, params)
      req.send_request(options)
    end

    # Disassociates an AWS RAM permission from a resource share.
    #
    # @option params [required, String] :resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #
    # @option params [required, String] :permission_arn
    #   The ARN of the permission to disassociate from the resource share.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @return [Types::DisassociateResourceSharePermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateResourceSharePermissionResponse#return_value #return_value} => Boolean
    #   * {Types::DisassociateResourceSharePermissionResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resource_share_permission({
    #     resource_share_arn: "String", # required
    #     permission_arn: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceSharePermission AWS API Documentation
    #
    # @overload disassociate_resource_share_permission(params = {})
    # @param [Hash] params ({})
    def disassociate_resource_share_permission(params = {}, options = {})
      req = build_request(:disassociate_resource_share_permission, params)
      req.send_request(options)
    end

    # Enables resource sharing within your AWS Organization.
    #
    # The caller must be the master account for the AWS Organization.
    #
    # @return [Types::EnableSharingWithAwsOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableSharingWithAwsOrganizationResponse#return_value #return_value} => Boolean
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/EnableSharingWithAwsOrganization AWS API Documentation
    #
    # @overload enable_sharing_with_aws_organization(params = {})
    # @param [Hash] params ({})
    def enable_sharing_with_aws_organization(params = {}, options = {})
      req = build_request(:enable_sharing_with_aws_organization, params)
      req.send_request(options)
    end

    # Gets the contents of an AWS RAM permission in JSON format.
    #
    # @option params [required, String] :permission_arn
    #   The ARN of the permission.
    #
    # @option params [Integer] :permission_version
    #   The identifier for the version of the permission.
    #
    # @return [Types::GetPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPermissionResponse#permission #permission} => Types::ResourceSharePermissionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_permission({
    #     permission_arn: "String", # required
    #     permission_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permission.arn #=> String
    #   resp.permission.version #=> String
    #   resp.permission.default_version #=> Boolean
    #   resp.permission.name #=> String
    #   resp.permission.resource_type #=> String
    #   resp.permission.permission #=> String
    #   resp.permission.creation_time #=> Time
    #   resp.permission.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetPermission AWS API Documentation
    #
    # @overload get_permission(params = {})
    # @param [Hash] params ({})
    def get_permission(params = {}, options = {})
      req = build_request(:get_permission, params)
      req.send_request(options)
    end

    # Gets the policies for the specified resources that you own and have
    # shared.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The Amazon Resource Names (ARN) of the resources.
    #
    # @option params [String] :principal
    #   The principal.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::GetResourcePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePoliciesResponse#policies #policies} => Array&lt;String&gt;
    #   * {Types::GetResourcePoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policies({
    #     resource_arns: ["String"], # required
    #     principal: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourcePolicies AWS API Documentation
    #
    # @overload get_resource_policies(params = {})
    # @param [Hash] params ({})
    def get_resource_policies(params = {}, options = {})
      req = build_request(:get_resource_policies, params)
      req.send_request(options)
    end

    # Gets the resources or principals for the resource shares that you own.
    #
    # @option params [required, String] :association_type
    #   The association type. Specify `PRINCIPAL` to list the principals that
    #   are associated with the specified resource share. Specify `RESOURCE`
    #   to list the resources that are associated with the specified resource
    #   share.
    #
    # @option params [Array<String>] :resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. You cannot specify
    #   this parameter if the association type is `PRINCIPAL`.
    #
    # @option params [String] :principal
    #   The principal. You cannot specify this parameter if the association
    #   type is `RESOURCE`.
    #
    # @option params [String] :association_status
    #   The association status.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::GetResourceShareAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceShareAssociationsResponse#resource_share_associations #resource_share_associations} => Array&lt;Types::ResourceShareAssociation&gt;
    #   * {Types::GetResourceShareAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_share_associations({
    #     association_type: "PRINCIPAL", # required, accepts PRINCIPAL, RESOURCE
    #     resource_share_arns: ["String"],
    #     resource_arn: "String",
    #     principal: "String",
    #     association_status: "ASSOCIATING", # accepts ASSOCIATING, ASSOCIATED, FAILED, DISASSOCIATING, DISASSOCIATED
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_associations #=> Array
    #   resp.resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_associations[0].status_message #=> String
    #   resp.resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_associations[0].external #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareAssociations AWS API Documentation
    #
    # @overload get_resource_share_associations(params = {})
    # @param [Hash] params ({})
    def get_resource_share_associations(params = {}, options = {})
      req = build_request(:get_resource_share_associations, params)
      req.send_request(options)
    end

    # Gets the invitations for resource sharing that you've received.
    #
    # @option params [Array<String>] :resource_share_invitation_arns
    #   The Amazon Resource Names (ARN) of the invitations.
    #
    # @option params [Array<String>] :resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::GetResourceShareInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceShareInvitationsResponse#resource_share_invitations #resource_share_invitations} => Array&lt;Types::ResourceShareInvitation&gt;
    #   * {Types::GetResourceShareInvitationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_share_invitations({
    #     resource_share_invitation_arns: ["String"],
    #     resource_share_arns: ["String"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_invitations #=> Array
    #   resp.resource_share_invitations[0].resource_share_invitation_arn #=> String
    #   resp.resource_share_invitations[0].resource_share_name #=> String
    #   resp.resource_share_invitations[0].resource_share_arn #=> String
    #   resp.resource_share_invitations[0].sender_account_id #=> String
    #   resp.resource_share_invitations[0].receiver_account_id #=> String
    #   resp.resource_share_invitations[0].invitation_timestamp #=> Time
    #   resp.resource_share_invitations[0].status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "EXPIRED"
    #   resp.resource_share_invitations[0].resource_share_associations #=> Array
    #   resp.resource_share_invitations[0].resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_invitations[0].resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_invitations[0].resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_invitations[0].resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_invitations[0].resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_invitations[0].resource_share_associations[0].status_message #=> String
    #   resp.resource_share_invitations[0].resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_invitations[0].resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_invitations[0].resource_share_associations[0].external #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareInvitations AWS API Documentation
    #
    # @overload get_resource_share_invitations(params = {})
    # @param [Hash] params ({})
    def get_resource_share_invitations(params = {}, options = {})
      req = build_request(:get_resource_share_invitations, params)
      req.send_request(options)
    end

    # Gets the resource shares that you own or the resource shares that are
    # shared with you.
    #
    # @option params [Array<String>] :resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #
    # @option params [String] :resource_share_status
    #   The status of the resource share.
    #
    # @option params [required, String] :resource_owner
    #   The type of owner.
    #
    # @option params [String] :name
    #   The name of the resource share.
    #
    # @option params [Array<Types::TagFilter>] :tag_filters
    #   One or more tag filters.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::GetResourceSharesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceSharesResponse#resource_shares #resource_shares} => Array&lt;Types::ResourceShare&gt;
    #   * {Types::GetResourceSharesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_shares({
    #     resource_share_arns: ["String"],
    #     resource_share_status: "PENDING", # accepts PENDING, ACTIVE, FAILED, DELETING, DELETED
    #     resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #     name: "String",
    #     tag_filters: [
    #       {
    #         tag_key: "TagKey",
    #         tag_values: ["TagValue"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_shares #=> Array
    #   resp.resource_shares[0].resource_share_arn #=> String
    #   resp.resource_shares[0].name #=> String
    #   resp.resource_shares[0].owning_account_id #=> String
    #   resp.resource_shares[0].allow_external_principals #=> Boolean
    #   resp.resource_shares[0].status #=> String, one of "PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"
    #   resp.resource_shares[0].status_message #=> String
    #   resp.resource_shares[0].tags #=> Array
    #   resp.resource_shares[0].tags[0].key #=> String
    #   resp.resource_shares[0].tags[0].value #=> String
    #   resp.resource_shares[0].creation_time #=> Time
    #   resp.resource_shares[0].last_updated_time #=> Time
    #   resp.resource_shares[0].feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShares AWS API Documentation
    #
    # @overload get_resource_shares(params = {})
    # @param [Hash] params ({})
    def get_resource_shares(params = {}, options = {})
      req = build_request(:get_resource_shares, params)
      req.send_request(options)
    end

    # Lists the resources in a resource share that is shared with you but
    # that the invitation is still pending for.
    #
    # @option params [required, String] :resource_share_invitation_arn
    #   The Amazon Resource Name (ARN) of the invitation.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::ListPendingInvitationResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPendingInvitationResourcesResponse#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::ListPendingInvitationResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pending_invitation_resources({
    #     resource_share_invitation_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].arn #=> String
    #   resp.resources[0].type #=> String
    #   resp.resources[0].resource_share_arn #=> String
    #   resp.resources[0].resource_group_arn #=> String
    #   resp.resources[0].status #=> String, one of "AVAILABLE", "ZONAL_RESOURCE_INACCESSIBLE", "LIMIT_EXCEEDED", "UNAVAILABLE", "PENDING"
    #   resp.resources[0].status_message #=> String
    #   resp.resources[0].creation_time #=> Time
    #   resp.resources[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPendingInvitationResources AWS API Documentation
    #
    # @overload list_pending_invitation_resources(params = {})
    # @param [Hash] params ({})
    def list_pending_invitation_resources(params = {}, options = {})
      req = build_request(:list_pending_invitation_resources, params)
      req.send_request(options)
    end

    # Lists the AWS RAM permissions.
    #
    # @option params [String] :resource_type
    #   Specifies the resource type for which to list permissions. For
    #   example, to list only permissions that apply to EC2 subnets, specify
    #   `ec2:Subnet`.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::ListPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourceSharePermissionSummary&gt;
    #   * {Types::ListPermissionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions({
    #     resource_type: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].arn #=> String
    #   resp.permissions[0].version #=> String
    #   resp.permissions[0].default_version #=> Boolean
    #   resp.permissions[0].name #=> String
    #   resp.permissions[0].resource_type #=> String
    #   resp.permissions[0].status #=> String
    #   resp.permissions[0].creation_time #=> Time
    #   resp.permissions[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissions AWS API Documentation
    #
    # @overload list_permissions(params = {})
    # @param [Hash] params ({})
    def list_permissions(params = {}, options = {})
      req = build_request(:list_permissions, params)
      req.send_request(options)
    end

    # Lists the principals that you have shared resources with or that have
    # shared resources with you.
    #
    # @option params [required, String] :resource_owner
    #   The type of owner.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [Array<String>] :principals
    #   The principals.
    #
    # @option params [String] :resource_type
    #   The resource type.
    #
    #   Valid values: `codebuild:Project` \| `codebuild:ReportGroup` \|
    #   `ec2:CapacityReservation` \| `ec2:DedicatedHost` \| `ec2:Subnet` \|
    #   `ec2:TrafficMirrorTarget` \| `ec2:TransitGateway` \|
    #   `imagebuilder:Component` \| `imagebuilder:Image` \|
    #   `imagebuilder:ImageRecipe` \| `license-manager:LicenseConfiguration` I
    #   `resource-groups:Group` \| `rds:Cluster` \|
    #   `route53resolver:ResolverRule`
    #
    # @option params [Array<String>] :resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::ListPrincipalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrincipalsResponse#principals #principals} => Array&lt;Types::Principal&gt;
    #   * {Types::ListPrincipalsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principals({
    #     resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #     resource_arn: "String",
    #     principals: ["String"],
    #     resource_type: "String",
    #     resource_share_arns: ["String"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.principals #=> Array
    #   resp.principals[0].id #=> String
    #   resp.principals[0].resource_share_arn #=> String
    #   resp.principals[0].creation_time #=> Time
    #   resp.principals[0].last_updated_time #=> Time
    #   resp.principals[0].external #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPrincipals AWS API Documentation
    #
    # @overload list_principals(params = {})
    # @param [Hash] params ({})
    def list_principals(params = {}, options = {})
      req = build_request(:list_principals, params)
      req.send_request(options)
    end

    # Lists the AWS RAM permissions that are associated with a resource
    # share.
    #
    # @option params [required, String] :resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::ListResourceSharePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceSharePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourceSharePermissionSummary&gt;
    #   * {Types::ListResourceSharePermissionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_share_permissions({
    #     resource_share_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].arn #=> String
    #   resp.permissions[0].version #=> String
    #   resp.permissions[0].default_version #=> Boolean
    #   resp.permissions[0].name #=> String
    #   resp.permissions[0].resource_type #=> String
    #   resp.permissions[0].status #=> String
    #   resp.permissions[0].creation_time #=> Time
    #   resp.permissions[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceSharePermissions AWS API Documentation
    #
    # @overload list_resource_share_permissions(params = {})
    # @param [Hash] params ({})
    def list_resource_share_permissions(params = {}, options = {})
      req = build_request(:list_resource_share_permissions, params)
      req.send_request(options)
    end

    # Lists the shareable resource types supported by AWS RAM.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::ListResourceTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceTypesResponse#resource_types #resource_types} => Array&lt;Types::ServiceNameAndResourceType&gt;
    #   * {Types::ListResourceTypesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_types({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_types #=> Array
    #   resp.resource_types[0].resource_type #=> String
    #   resp.resource_types[0].service_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceTypes AWS API Documentation
    #
    # @overload list_resource_types(params = {})
    # @param [Hash] params ({})
    def list_resource_types(params = {}, options = {})
      req = build_request(:list_resource_types, params)
      req.send_request(options)
    end

    # Lists the resources that you added to a resource shares or the
    # resources that are shared with you.
    #
    # @option params [required, String] :resource_owner
    #   The type of owner.
    #
    # @option params [String] :principal
    #   The principal.
    #
    # @option params [String] :resource_type
    #   The resource type.
    #
    #   Valid values: `codebuild:Project` \| `codebuild:ReportGroup` \|
    #   `ec2:CapacityReservation` \| `ec2:DedicatedHost` \| `ec2:Subnet` \|
    #   `ec2:TrafficMirrorTarget` \| `ec2:TransitGateway` \|
    #   `imagebuilder:Component` \| `imagebuilder:Image` \|
    #   `imagebuilder:ImageRecipe` \| `license-manager:LicenseConfiguration` I
    #   `resource-groups:Group` \| `rds:Cluster` \|
    #   `route53resolver:ResolverRule`
    #
    # @option params [Array<String>] :resource_arns
    #   The Amazon Resource Names (ARN) of the resources.
    #
    # @option params [Array<String>] :resource_share_arns
    #   The Amazon Resource Names (ARN) of the resource shares.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @return [Types::ListResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesResponse#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::ListResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources({
    #     resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #     principal: "String",
    #     resource_type: "String",
    #     resource_arns: ["String"],
    #     resource_share_arns: ["String"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].arn #=> String
    #   resp.resources[0].type #=> String
    #   resp.resources[0].resource_share_arn #=> String
    #   resp.resources[0].resource_group_arn #=> String
    #   resp.resources[0].status #=> String, one of "AVAILABLE", "ZONAL_RESOURCE_INACCESSIBLE", "LIMIT_EXCEEDED", "UNAVAILABLE", "PENDING"
    #   resp.resources[0].status_message #=> String
    #   resp.resources[0].creation_time #=> Time
    #   resp.resources[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResources AWS API Documentation
    #
    # @overload list_resources(params = {})
    # @param [Hash] params ({})
    def list_resources(params = {}, options = {})
      req = build_request(:list_resources, params)
      req.send_request(options)
    end

    # Resource shares that were created by attaching a policy to a resource
    # are visible only to the resource share owner, and the resource share
    # cannot be modified in AWS RAM.
    #
    # Use this API action to promote the resource share. When you promote
    # the resource share, it becomes:
    #
    # * Visible to all principals that it is shared with.
    #
    # * Modifiable in AWS RAM.
    #
    # @option params [required, String] :resource_share_arn
    #   The ARN of the resource share to promote.
    #
    # @return [Types::PromoteResourceShareCreatedFromPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PromoteResourceShareCreatedFromPolicyResponse#return_value #return_value} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.promote_resource_share_created_from_policy({
    #     resource_share_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PromoteResourceShareCreatedFromPolicy AWS API Documentation
    #
    # @overload promote_resource_share_created_from_policy(params = {})
    # @param [Hash] params ({})
    def promote_resource_share_created_from_policy(params = {}, options = {})
      req = build_request(:promote_resource_share_created_from_policy, params)
      req.send_request(options)
    end

    # Rejects an invitation to a resource share from another AWS account.
    #
    # @option params [required, String] :resource_share_invitation_arn
    #   The Amazon Resource Name (ARN) of the invitation.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @return [Types::RejectResourceShareInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectResourceShareInvitationResponse#resource_share_invitation #resource_share_invitation} => Types::ResourceShareInvitation
    #   * {Types::RejectResourceShareInvitationResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_resource_share_invitation({
    #     resource_share_invitation_arn: "String", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share_invitation.resource_share_invitation_arn #=> String
    #   resp.resource_share_invitation.resource_share_name #=> String
    #   resp.resource_share_invitation.resource_share_arn #=> String
    #   resp.resource_share_invitation.sender_account_id #=> String
    #   resp.resource_share_invitation.receiver_account_id #=> String
    #   resp.resource_share_invitation.invitation_timestamp #=> Time
    #   resp.resource_share_invitation.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "EXPIRED"
    #   resp.resource_share_invitation.resource_share_associations #=> Array
    #   resp.resource_share_invitation.resource_share_associations[0].resource_share_arn #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].resource_share_name #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].associated_entity #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].association_type #=> String, one of "PRINCIPAL", "RESOURCE"
    #   resp.resource_share_invitation.resource_share_associations[0].status #=> String, one of "ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"
    #   resp.resource_share_invitation.resource_share_associations[0].status_message #=> String
    #   resp.resource_share_invitation.resource_share_associations[0].creation_time #=> Time
    #   resp.resource_share_invitation.resource_share_associations[0].last_updated_time #=> Time
    #   resp.resource_share_invitation.resource_share_associations[0].external #=> Boolean
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/RejectResourceShareInvitation AWS API Documentation
    #
    # @overload reject_resource_share_invitation(params = {})
    # @param [Hash] params ({})
    def reject_resource_share_invitation(params = {}, options = {})
      req = build_request(:reject_resource_share_invitation, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource share that you own.
    #
    # @option params [required, String] :resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_share_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource share that you
    # own.
    #
    # @option params [required, String] :resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys of the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_share_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified resource share that you own.
    #
    # @option params [required, String] :resource_share_arn
    #   The Amazon Resource Name (ARN) of the resource share.
    #
    # @option params [String] :name
    #   The name of the resource share.
    #
    # @option params [Boolean] :allow_external_principals
    #   Indicates whether principals outside your AWS organization can be
    #   associated with a resource share.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @return [Types::UpdateResourceShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResourceShareResponse#resource_share #resource_share} => Types::ResourceShare
    #   * {Types::UpdateResourceShareResponse#client_token #client_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_share({
    #     resource_share_arn: "String", # required
    #     name: "String",
    #     allow_external_principals: false,
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_share.resource_share_arn #=> String
    #   resp.resource_share.name #=> String
    #   resp.resource_share.owning_account_id #=> String
    #   resp.resource_share.allow_external_principals #=> Boolean
    #   resp.resource_share.status #=> String, one of "PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"
    #   resp.resource_share.status_message #=> String
    #   resp.resource_share.tags #=> Array
    #   resp.resource_share.tags[0].key #=> String
    #   resp.resource_share.tags[0].value #=> String
    #   resp.resource_share.creation_time #=> Time
    #   resp.resource_share.last_updated_time #=> Time
    #   resp.resource_share.feature_set #=> String, one of "CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"
    #   resp.client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UpdateResourceShare AWS API Documentation
    #
    # @overload update_resource_share(params = {})
    # @param [Hash] params ({})
    def update_resource_share(params = {}, options = {})
      req = build_request(:update_resource_share, params)
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
      context[:gem_name] = 'aws-sdk-ram'
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
