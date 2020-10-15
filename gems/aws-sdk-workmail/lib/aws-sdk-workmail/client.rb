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

Aws::Plugins::GlobalConfiguration.add_identifier(:workmail)

module Aws::WorkMail
  # An API client for WorkMail.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::WorkMail::Client.new(
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

    @identifier = :workmail

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

    # Adds a member (user or group) to the resource's set of delegates.
    #
    # @option params [required, String] :organization_id
    #   The organization under which the resource exists.
    #
    # @option params [required, String] :resource_id
    #   The resource for which members (users or groups) are associated.
    #
    # @option params [required, String] :entity_id
    #   The member (user or group) to associate to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_delegate_to_resource({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "ResourceId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateDelegateToResource AWS API Documentation
    #
    # @overload associate_delegate_to_resource(params = {})
    # @param [Hash] params ({})
    def associate_delegate_to_resource(params = {}, options = {})
      req = build_request(:associate_delegate_to_resource, params)
      req.send_request(options)
    end

    # Adds a member (user or group) to the group's set.
    #
    # @option params [required, String] :organization_id
    #   The organization under which the group exists.
    #
    # @option params [required, String] :group_id
    #   The group to which the member (user or group) is associated.
    #
    # @option params [required, String] :member_id
    #   The member (user or group) to associate to the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member_to_group({
    #     organization_id: "OrganizationId", # required
    #     group_id: "WorkMailIdentifier", # required
    #     member_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateMemberToGroup AWS API Documentation
    #
    # @overload associate_member_to_group(params = {})
    # @param [Hash] params ({})
    def associate_member_to_group(params = {}, options = {})
      req = build_request(:associate_member_to_group, params)
      req.send_request(options)
    end

    # Cancels a mailbox export job.
    #
    # <note markdown="1"> If the mailbox export job is near completion, it might not be possible
    # to cancel it.
    #
    #  </note>
    #
    # @option params [required, String] :client_token
    #   The idempotency token for the client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :job_id
    #   The job ID.
    #
    # @option params [required, String] :organization_id
    #   The organization ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_mailbox_export_job({
    #     client_token: "IdempotencyClientToken", # required
    #     job_id: "MailboxExportJobId", # required
    #     organization_id: "OrganizationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CancelMailboxExportJob AWS API Documentation
    #
    # @overload cancel_mailbox_export_job(params = {})
    # @param [Hash] params ({})
    def cancel_mailbox_export_job(params = {}, options = {})
      req = build_request(:cancel_mailbox_export_job, params)
      req.send_request(options)
    end

    # Adds an alias to the set of a given member (user or group) of Amazon
    # WorkMail.
    #
    # @option params [required, String] :organization_id
    #   The organization under which the member (user or group) exists.
    #
    # @option params [required, String] :entity_id
    #   The member (user or group) to which this alias is added.
    #
    # @option params [required, String] :alias
    #   The alias to add to the member set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     alias: "EmailAddress", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Creates a group that can be used in Amazon WorkMail by calling the
    # RegisterToWorkMail operation.
    #
    # @option params [required, String] :organization_id
    #   The organization under which the group is to be created.
    #
    # @option params [required, String] :name
    #   The name of the group.
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group_id #group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     organization_id: "OrganizationId", # required
    #     name: "GroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Creates a new Amazon WorkMail organization. Optionally, you can choose
    # to associate an existing AWS Directory Service directory with your
    # organization. If an AWS Directory Service directory ID is specified,
    # the organization alias must match the directory alias. If you choose
    # not to associate an existing directory with your organization, then we
    # create a new Amazon WorkMail directory for you. For more information,
    # see [Adding an organization][1] in the *Amazon WorkMail Administrator
    # Guide*.
    #
    # You can associate multiple email domains with an organization, then
    # set your default email domain from the Amazon WorkMail console. You
    # can also associate a domain that is managed in an Amazon Route 53
    # public hosted zone. For more information, see [Adding a domain][2] and
    # [Choosing the default domain][3] in the *Amazon WorkMail Administrator
    # Guide*.
    #
    # Optionally, you can use a customer managed master key from AWS Key
    # Management Service (AWS KMS) to encrypt email for your organization.
    # If you don't associate an AWS KMS key, Amazon WorkMail creates a
    # default AWS managed master key for you.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html
    # [2]: https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html
    # [3]: https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html
    #
    # @option params [String] :directory_id
    #   The AWS Directory Service directory ID.
    #
    # @option params [required, String] :alias
    #   The organization alias.
    #
    # @option params [String] :client_token
    #   The idempotency token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Domain>] :domains
    #   The email domains to associate with the organization.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of a customer managed master key from
    #   AWS KMS.
    #
    # @option params [Boolean] :enable_interoperability
    #   When `true`, allows organization interoperability between Amazon
    #   WorkMail and Microsoft Exchange. Can only be set to `true` if an AD
    #   Connector directory ID is included in the request.
    #
    # @return [Types::CreateOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOrganizationResponse#organization_id #organization_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_organization({
    #     directory_id: "DirectoryId",
    #     alias: "OrganizationName", # required
    #     client_token: "IdempotencyClientToken",
    #     domains: [
    #       {
    #         domain_name: "DomainName",
    #         hosted_zone_id: "HostedZoneId",
    #       },
    #     ],
    #     kms_key_arn: "KmsKeyArn",
    #     enable_interoperability: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateOrganization AWS API Documentation
    #
    # @overload create_organization(params = {})
    # @param [Hash] params ({})
    def create_organization(params = {}, options = {})
      req = build_request(:create_organization, params)
      req.send_request(options)
    end

    # Creates a new Amazon WorkMail resource.
    #
    # @option params [required, String] :organization_id
    #   The identifier associated with the organization for which the resource
    #   is created.
    #
    # @option params [required, String] :name
    #   The name of the new resource.
    #
    # @option params [required, String] :type
    #   The type of the new resource. The available types are `equipment` and
    #   `room`.
    #
    # @return [Types::CreateResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceResponse#resource_id #resource_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource({
    #     organization_id: "OrganizationId", # required
    #     name: "ResourceName", # required
    #     type: "ROOM", # required, accepts ROOM, EQUIPMENT
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateResource AWS API Documentation
    #
    # @overload create_resource(params = {})
    # @param [Hash] params ({})
    def create_resource(params = {}, options = {})
      req = build_request(:create_resource, params)
      req.send_request(options)
    end

    # Creates a user who can be used in Amazon WorkMail by calling the
    # RegisterToWorkMail operation.
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization for which the user is created.
    #
    # @option params [required, String] :name
    #   The name for the new user. Simple AD or AD Connector user names have a
    #   maximum length of 20. All others have a maximum length of 64.
    #
    # @option params [required, String] :display_name
    #   The display name for the new user.
    #
    # @option params [required, String] :password
    #   The password for the new user.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user_id #user_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     organization_id: "OrganizationId", # required
    #     name: "UserName", # required
    #     display_name: "String", # required
    #     password: "Password", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes an access control rule for the specified WorkMail
    # organization.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization.
    #
    # @option params [required, String] :name
    #   The name of the access control rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_control_rule({
    #     organization_id: "OrganizationId", # required
    #     name: "AccessControlRuleName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteAccessControlRule AWS API Documentation
    #
    # @overload delete_access_control_rule(params = {})
    # @param [Hash] params ({})
    def delete_access_control_rule(params = {}, options = {})
      req = build_request(:delete_access_control_rule, params)
      req.send_request(options)
    end

    # Remove one or more specified aliases from a set of aliases for a given
    # user.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the user exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier for the member (user or group) from which to have the
    #   aliases removed.
    #
    # @option params [required, String] :alias
    #   The aliases to be removed from the user's set of aliases. Duplicate
    #   entries in the list are collapsed into single entries (the list is
    #   transformed into a set).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     alias: "EmailAddress", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteAlias AWS API Documentation
    #
    # @overload delete_alias(params = {})
    # @param [Hash] params ({})
    def delete_alias(params = {}, options = {})
      req = build_request(:delete_alias, params)
      req.send_request(options)
    end

    # Deletes a group from Amazon WorkMail.
    #
    # @option params [required, String] :organization_id
    #   The organization that contains the group.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     organization_id: "OrganizationId", # required
    #     group_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes permissions granted to a member (user or group).
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization under which the member (user or
    #   group) exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier of the member (user or group) that owns the mailbox.
    #
    # @option params [required, String] :grantee_id
    #   The identifier of the member (user or group) for which to delete
    #   granted permissions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mailbox_permissions({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     grantee_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteMailboxPermissions AWS API Documentation
    #
    # @overload delete_mailbox_permissions(params = {})
    # @param [Hash] params ({})
    def delete_mailbox_permissions(params = {}, options = {})
      req = build_request(:delete_mailbox_permissions, params)
      req.send_request(options)
    end

    # Deletes an Amazon WorkMail organization and all underlying AWS
    # resources managed by Amazon WorkMail as part of the organization. You
    # can choose whether to delete the associated directory. For more
    # information, see [Removing an organization][1] in the *Amazon WorkMail
    # Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html
    #
    # @option params [String] :client_token
    #   The idempotency token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :organization_id
    #   The organization ID.
    #
    # @option params [required, Boolean] :delete_directory
    #   If true, deletes the AWS Directory Service directory associated with
    #   the organization.
    #
    # @return [Types::DeleteOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteOrganizationResponse#organization_id #organization_id} => String
    #   * {Types::DeleteOrganizationResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_organization({
    #     client_token: "IdempotencyClientToken",
    #     organization_id: "OrganizationId", # required
    #     delete_directory: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_id #=> String
    #   resp.state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteOrganization AWS API Documentation
    #
    # @overload delete_organization(params = {})
    # @param [Hash] params ({})
    def delete_organization(params = {}, options = {})
      req = build_request(:delete_organization, params)
      req.send_request(options)
    end

    # Deletes the specified resource.
    #
    # @option params [required, String] :organization_id
    #   The identifier associated with the organization from which the
    #   resource is deleted.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteResource AWS API Documentation
    #
    # @overload delete_resource(params = {})
    # @param [Hash] params ({})
    def delete_resource(params = {}, options = {})
      req = build_request(:delete_resource, params)
      req.send_request(options)
    end

    # Deletes the specified retention policy from the specified
    # organization.
    #
    # @option params [required, String] :organization_id
    #   The organization ID.
    #
    # @option params [required, String] :id
    #   The retention policy ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_retention_policy({
    #     organization_id: "OrganizationId", # required
    #     id: "ShortString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteRetentionPolicy AWS API Documentation
    #
    # @overload delete_retention_policy(params = {})
    # @param [Hash] params ({})
    def delete_retention_policy(params = {}, options = {})
      req = build_request(:delete_retention_policy, params)
      req.send_request(options)
    end

    # Deletes a user from Amazon WorkMail and all subsequent systems. Before
    # you can delete a user, the user state must be `DISABLED`. Use the
    # DescribeUser action to confirm the user state.
    #
    # Deleting a user is permanent and cannot be undone. WorkMail archives
    # user mailboxes for 30 days before they are permanently removed.
    #
    # @option params [required, String] :organization_id
    #   The organization that contains the user to be deleted.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     organization_id: "OrganizationId", # required
    #     user_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Mark a user, group, or resource as no longer used in Amazon WorkMail.
    # This action disassociates the mailbox and schedules it for clean-up.
    # WorkMail keeps mailboxes for 30 days before they are permanently
    # removed. The functionality in the console is *Disable*.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the Amazon WorkMail
    #   entity exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier for the member (user or group) to be updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_from_work_mail({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeregisterFromWorkMail AWS API Documentation
    #
    # @overload deregister_from_work_mail(params = {})
    # @param [Hash] params ({})
    def deregister_from_work_mail(params = {}, options = {})
      req = build_request(:deregister_from_work_mail, params)
      req.send_request(options)
    end

    # Returns the data available for the group.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the group exists.
    #
    # @option params [required, String] :group_id
    #   The identifier for the group to be described.
    #
    # @return [Types::DescribeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupResponse#group_id #group_id} => String
    #   * {Types::DescribeGroupResponse#name #name} => String
    #   * {Types::DescribeGroupResponse#email #email} => String
    #   * {Types::DescribeGroupResponse#state #state} => String
    #   * {Types::DescribeGroupResponse#enabled_date #enabled_date} => Time
    #   * {Types::DescribeGroupResponse#disabled_date #disabled_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group({
    #     organization_id: "OrganizationId", # required
    #     group_id: "WorkMailIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_id #=> String
    #   resp.name #=> String
    #   resp.email #=> String
    #   resp.state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.enabled_date #=> Time
    #   resp.disabled_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeGroup AWS API Documentation
    #
    # @overload describe_group(params = {})
    # @param [Hash] params ({})
    def describe_group(params = {}, options = {})
      req = build_request(:describe_group, params)
      req.send_request(options)
    end

    # Describes the current status of a mailbox export job.
    #
    # @option params [required, String] :job_id
    #   The mailbox export job ID.
    #
    # @option params [required, String] :organization_id
    #   The organization ID.
    #
    # @return [Types::DescribeMailboxExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMailboxExportJobResponse#entity_id #entity_id} => String
    #   * {Types::DescribeMailboxExportJobResponse#description #description} => String
    #   * {Types::DescribeMailboxExportJobResponse#role_arn #role_arn} => String
    #   * {Types::DescribeMailboxExportJobResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::DescribeMailboxExportJobResponse#s3_bucket_name #s3_bucket_name} => String
    #   * {Types::DescribeMailboxExportJobResponse#s3_prefix #s3_prefix} => String
    #   * {Types::DescribeMailboxExportJobResponse#s3_path #s3_path} => String
    #   * {Types::DescribeMailboxExportJobResponse#estimated_progress #estimated_progress} => Integer
    #   * {Types::DescribeMailboxExportJobResponse#state #state} => String
    #   * {Types::DescribeMailboxExportJobResponse#error_info #error_info} => String
    #   * {Types::DescribeMailboxExportJobResponse#start_time #start_time} => Time
    #   * {Types::DescribeMailboxExportJobResponse#end_time #end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mailbox_export_job({
    #     job_id: "MailboxExportJobId", # required
    #     organization_id: "OrganizationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_id #=> String
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #   resp.kms_key_arn #=> String
    #   resp.s3_bucket_name #=> String
    #   resp.s3_prefix #=> String
    #   resp.s3_path #=> String
    #   resp.estimated_progress #=> Integer
    #   resp.state #=> String, one of "RUNNING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.error_info #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeMailboxExportJob AWS API Documentation
    #
    # @overload describe_mailbox_export_job(params = {})
    # @param [Hash] params ({})
    def describe_mailbox_export_job(params = {}, options = {})
      req = build_request(:describe_mailbox_export_job, params)
      req.send_request(options)
    end

    # Provides more information regarding a given organization based on its
    # identifier.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization to be described.
    #
    # @return [Types::DescribeOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationResponse#organization_id #organization_id} => String
    #   * {Types::DescribeOrganizationResponse#alias #alias} => String
    #   * {Types::DescribeOrganizationResponse#state #state} => String
    #   * {Types::DescribeOrganizationResponse#directory_id #directory_id} => String
    #   * {Types::DescribeOrganizationResponse#directory_type #directory_type} => String
    #   * {Types::DescribeOrganizationResponse#default_mail_domain #default_mail_domain} => String
    #   * {Types::DescribeOrganizationResponse#completed_date #completed_date} => Time
    #   * {Types::DescribeOrganizationResponse#error_message #error_message} => String
    #   * {Types::DescribeOrganizationResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization({
    #     organization_id: "OrganizationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_id #=> String
    #   resp.alias #=> String
    #   resp.state #=> String
    #   resp.directory_id #=> String
    #   resp.directory_type #=> String
    #   resp.default_mail_domain #=> String
    #   resp.completed_date #=> Time
    #   resp.error_message #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeOrganization AWS API Documentation
    #
    # @overload describe_organization(params = {})
    # @param [Hash] params ({})
    def describe_organization(params = {}, options = {})
      req = build_request(:describe_organization, params)
      req.send_request(options)
    end

    # Returns the data available for the resource.
    #
    # @option params [required, String] :organization_id
    #   The identifier associated with the organization for which the resource
    #   is described.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource to be described.
    #
    # @return [Types::DescribeResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourceResponse#resource_id #resource_id} => String
    #   * {Types::DescribeResourceResponse#email #email} => String
    #   * {Types::DescribeResourceResponse#name #name} => String
    #   * {Types::DescribeResourceResponse#type #type} => String
    #   * {Types::DescribeResourceResponse#booking_options #booking_options} => Types::BookingOptions
    #   * {Types::DescribeResourceResponse#state #state} => String
    #   * {Types::DescribeResourceResponse#enabled_date #enabled_date} => Time
    #   * {Types::DescribeResourceResponse#disabled_date #disabled_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id #=> String
    #   resp.email #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "ROOM", "EQUIPMENT"
    #   resp.booking_options.auto_accept_requests #=> Boolean
    #   resp.booking_options.auto_decline_recurring_requests #=> Boolean
    #   resp.booking_options.auto_decline_conflicting_requests #=> Boolean
    #   resp.state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.enabled_date #=> Time
    #   resp.disabled_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeResource AWS API Documentation
    #
    # @overload describe_resource(params = {})
    # @param [Hash] params ({})
    def describe_resource(params = {}, options = {})
      req = build_request(:describe_resource, params)
      req.send_request(options)
    end

    # Provides information regarding the user.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the user exists.
    #
    # @option params [required, String] :user_id
    #   The identifier for the user to be described.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user_id #user_id} => String
    #   * {Types::DescribeUserResponse#name #name} => String
    #   * {Types::DescribeUserResponse#email #email} => String
    #   * {Types::DescribeUserResponse#display_name #display_name} => String
    #   * {Types::DescribeUserResponse#state #state} => String
    #   * {Types::DescribeUserResponse#user_role #user_role} => String
    #   * {Types::DescribeUserResponse#enabled_date #enabled_date} => Time
    #   * {Types::DescribeUserResponse#disabled_date #disabled_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     organization_id: "OrganizationId", # required
    #     user_id: "WorkMailIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.name #=> String
    #   resp.email #=> String
    #   resp.display_name #=> String
    #   resp.state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.user_role #=> String, one of "USER", "RESOURCE", "SYSTEM_USER"
    #   resp.enabled_date #=> Time
    #   resp.disabled_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Removes a member from the resource's set of delegates.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the resource exists.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource from which delegates' set members are
    #   removed.
    #
    # @option params [required, String] :entity_id
    #   The identifier for the member (user, group) to be removed from the
    #   resource's delegates.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_delegate_from_resource({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "ResourceId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateDelegateFromResource AWS API Documentation
    #
    # @overload disassociate_delegate_from_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_delegate_from_resource(params = {}, options = {})
      req = build_request(:disassociate_delegate_from_resource, params)
      req.send_request(options)
    end

    # Removes a member from a group.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the group exists.
    #
    # @option params [required, String] :group_id
    #   The identifier for the group from which members are removed.
    #
    # @option params [required, String] :member_id
    #   The identifier for the member to be removed to the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member_from_group({
    #     organization_id: "OrganizationId", # required
    #     group_id: "WorkMailIdentifier", # required
    #     member_id: "WorkMailIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateMemberFromGroup AWS API Documentation
    #
    # @overload disassociate_member_from_group(params = {})
    # @param [Hash] params ({})
    def disassociate_member_from_group(params = {}, options = {})
      req = build_request(:disassociate_member_from_group, params)
      req.send_request(options)
    end

    # Gets the effects of an organization's access control rules as they
    # apply to a specified IPv4 address, access protocol action, or user ID.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization.
    #
    # @option params [required, String] :ip_address
    #   The IPv4 address.
    #
    # @option params [required, String] :action
    #   The access protocol action. Valid values include `ActiveSync`,
    #   `AutoDiscover`, `EWS`, `IMAP`, `SMTP`, `WindowsOutlook`, and
    #   `WebMail`.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Types::GetAccessControlEffectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessControlEffectResponse#effect #effect} => String
    #   * {Types::GetAccessControlEffectResponse#matched_rules #matched_rules} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_control_effect({
    #     organization_id: "OrganizationId", # required
    #     ip_address: "IpAddress", # required
    #     action: "AccessControlRuleAction", # required
    #     user_id: "WorkMailIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.effect #=> String, one of "ALLOW", "DENY"
    #   resp.matched_rules #=> Array
    #   resp.matched_rules[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/GetAccessControlEffect AWS API Documentation
    #
    # @overload get_access_control_effect(params = {})
    # @param [Hash] params ({})
    def get_access_control_effect(params = {}, options = {})
      req = build_request(:get_access_control_effect, params)
      req.send_request(options)
    end

    # Gets the default retention policy details for the specified
    # organization.
    #
    # @option params [required, String] :organization_id
    #   The organization ID.
    #
    # @return [Types::GetDefaultRetentionPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDefaultRetentionPolicyResponse#id #id} => String
    #   * {Types::GetDefaultRetentionPolicyResponse#name #name} => String
    #   * {Types::GetDefaultRetentionPolicyResponse#description #description} => String
    #   * {Types::GetDefaultRetentionPolicyResponse#folder_configurations #folder_configurations} => Array&lt;Types::FolderConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_default_retention_policy({
    #     organization_id: "OrganizationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.folder_configurations #=> Array
    #   resp.folder_configurations[0].name #=> String, one of "INBOX", "DELETED_ITEMS", "SENT_ITEMS", "DRAFTS", "JUNK_EMAIL"
    #   resp.folder_configurations[0].action #=> String, one of "NONE", "DELETE", "PERMANENTLY_DELETE"
    #   resp.folder_configurations[0].period #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/GetDefaultRetentionPolicy AWS API Documentation
    #
    # @overload get_default_retention_policy(params = {})
    # @param [Hash] params ({})
    def get_default_retention_policy(params = {}, options = {})
      req = build_request(:get_default_retention_policy, params)
      req.send_request(options)
    end

    # Requests a user's mailbox details for a specified organization and
    # user.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization that contains the user whose
    #   mailbox details are being requested.
    #
    # @option params [required, String] :user_id
    #   The identifier for the user whose mailbox details are being requested.
    #
    # @return [Types::GetMailboxDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMailboxDetailsResponse#mailbox_quota #mailbox_quota} => Integer
    #   * {Types::GetMailboxDetailsResponse#mailbox_size #mailbox_size} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mailbox_details({
    #     organization_id: "OrganizationId", # required
    #     user_id: "WorkMailIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.mailbox_quota #=> Integer
    #   resp.mailbox_size #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/GetMailboxDetails AWS API Documentation
    #
    # @overload get_mailbox_details(params = {})
    # @param [Hash] params ({})
    def get_mailbox_details(params = {}, options = {})
      req = build_request(:get_mailbox_details, params)
      req.send_request(options)
    end

    # Lists the access control rules for the specified organization.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization.
    #
    # @return [Types::ListAccessControlRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessControlRulesResponse#rules #rules} => Array&lt;Types::AccessControlRule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_control_rules({
    #     organization_id: "OrganizationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].name #=> String
    #   resp.rules[0].effect #=> String, one of "ALLOW", "DENY"
    #   resp.rules[0].description #=> String
    #   resp.rules[0].ip_ranges #=> Array
    #   resp.rules[0].ip_ranges[0] #=> String
    #   resp.rules[0].not_ip_ranges #=> Array
    #   resp.rules[0].not_ip_ranges[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0] #=> String
    #   resp.rules[0].not_actions #=> Array
    #   resp.rules[0].not_actions[0] #=> String
    #   resp.rules[0].user_ids #=> Array
    #   resp.rules[0].user_ids[0] #=> String
    #   resp.rules[0].not_user_ids #=> Array
    #   resp.rules[0].not_user_ids[0] #=> String
    #   resp.rules[0].date_created #=> Time
    #   resp.rules[0].date_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListAccessControlRules AWS API Documentation
    #
    # @overload list_access_control_rules(params = {})
    # @param [Hash] params ({})
    def list_access_control_rules(params = {}, options = {})
      req = build_request(:list_access_control_rules, params)
      req.send_request(options)
    end

    # Creates a paginated call to list the aliases associated with a given
    # entity.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the entity exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier for the entity for which to list the aliases.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAliasesResponse#aliases #aliases} => Array&lt;String&gt;
    #   * {Types::ListAliasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.aliases #=> Array
    #   resp.aliases[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListAliases AWS API Documentation
    #
    # @overload list_aliases(params = {})
    # @param [Hash] params ({})
    def list_aliases(params = {}, options = {})
      req = build_request(:list_aliases, params)
      req.send_request(options)
    end

    # Returns an overview of the members of a group. Users and groups can be
    # members of a group.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the group exists.
    #
    # @option params [required, String] :group_id
    #   The identifier for the group to which the members (users or groups)
    #   are associated.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListGroupMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::ListGroupMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_members({
    #     organization_id: "OrganizationId", # required
    #     group_id: "WorkMailIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].id #=> String
    #   resp.members[0].name #=> String
    #   resp.members[0].type #=> String, one of "GROUP", "USER"
    #   resp.members[0].state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.members[0].enabled_date #=> Time
    #   resp.members[0].disabled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListGroupMembers AWS API Documentation
    #
    # @overload list_group_members(params = {})
    # @param [Hash] params ({})
    def list_group_members(params = {}, options = {})
      req = build_request(:list_group_members, params)
      req.send_request(options)
    end

    # Returns summaries of the organization's groups.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the groups exist.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#groups #groups} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].id #=> String
    #   resp.groups[0].email #=> String
    #   resp.groups[0].name #=> String
    #   resp.groups[0].state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.groups[0].enabled_date #=> Time
    #   resp.groups[0].disabled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists the mailbox export jobs started for the specified organization
    # within the last seven days.
    #
    # @option params [required, String] :organization_id
    #   The organization ID.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListMailboxExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMailboxExportJobsResponse#jobs #jobs} => Array&lt;Types::MailboxExportJob&gt;
    #   * {Types::ListMailboxExportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mailbox_export_jobs({
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].entity_id #=> String
    #   resp.jobs[0].description #=> String
    #   resp.jobs[0].s3_bucket_name #=> String
    #   resp.jobs[0].s3_path #=> String
    #   resp.jobs[0].estimated_progress #=> Integer
    #   resp.jobs[0].state #=> String, one of "RUNNING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.jobs[0].start_time #=> Time
    #   resp.jobs[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListMailboxExportJobs AWS API Documentation
    #
    # @overload list_mailbox_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_mailbox_export_jobs(params = {}, options = {})
      req = build_request(:list_mailbox_export_jobs, params)
      req.send_request(options)
    end

    # Lists the mailbox permissions associated with a user, group, or
    # resource mailbox.
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization under which the user, group, or
    #   resource exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier of the user, group, or resource for which to list
    #   mailbox permissions.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListMailboxPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMailboxPermissionsResponse#permissions #permissions} => Array&lt;Types::Permission&gt;
    #   * {Types::ListMailboxPermissionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mailbox_permissions({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].grantee_id #=> String
    #   resp.permissions[0].grantee_type #=> String, one of "GROUP", "USER"
    #   resp.permissions[0].permission_values #=> Array
    #   resp.permissions[0].permission_values[0] #=> String, one of "FULL_ACCESS", "SEND_AS", "SEND_ON_BEHALF"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListMailboxPermissions AWS API Documentation
    #
    # @overload list_mailbox_permissions(params = {})
    # @param [Hash] params ({})
    def list_mailbox_permissions(params = {}, options = {})
      req = build_request(:list_mailbox_permissions, params)
      req.send_request(options)
    end

    # Returns summaries of the customer's organizations.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListOrganizationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationsResponse#organization_summaries #organization_summaries} => Array&lt;Types::OrganizationSummary&gt;
    #   * {Types::ListOrganizationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organizations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_summaries #=> Array
    #   resp.organization_summaries[0].organization_id #=> String
    #   resp.organization_summaries[0].alias #=> String
    #   resp.organization_summaries[0].default_mail_domain #=> String
    #   resp.organization_summaries[0].error_message #=> String
    #   resp.organization_summaries[0].state #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListOrganizations AWS API Documentation
    #
    # @overload list_organizations(params = {})
    # @param [Hash] params ({})
    def list_organizations(params = {}, options = {})
      req = build_request(:list_organizations, params)
      req.send_request(options)
    end

    # Lists the delegates associated with a resource. Users and groups can
    # be resource delegates and answer requests on behalf of the resource.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization that contains the resource for
    #   which delegates are listed.
    #
    # @option params [required, String] :resource_id
    #   The identifier for the resource whose delegates are listed.
    #
    # @option params [String] :next_token
    #   The token used to paginate through the delegates associated with a
    #   resource.
    #
    # @option params [Integer] :max_results
    #   The number of maximum results in a page.
    #
    # @return [Types::ListResourceDelegatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceDelegatesResponse#delegates #delegates} => Array&lt;Types::Delegate&gt;
    #   * {Types::ListResourceDelegatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_delegates({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "WorkMailIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.delegates #=> Array
    #   resp.delegates[0].id #=> String
    #   resp.delegates[0].type #=> String, one of "GROUP", "USER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListResourceDelegates AWS API Documentation
    #
    # @overload list_resource_delegates(params = {})
    # @param [Hash] params ({})
    def list_resource_delegates(params = {}, options = {})
      req = build_request(:list_resource_delegates, params)
      req.send_request(options)
    end

    # Returns summaries of the organization's resources.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the resources exist.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
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
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].id #=> String
    #   resp.resources[0].email #=> String
    #   resp.resources[0].name #=> String
    #   resp.resources[0].type #=> String, one of "ROOM", "EQUIPMENT"
    #   resp.resources[0].state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.resources[0].enabled_date #=> Time
    #   resp.resources[0].disabled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListResources AWS API Documentation
    #
    # @overload list_resources(params = {})
    # @param [Hash] params ({})
    def list_resources(params = {}, options = {})
      req = build_request(:list_resources, params)
      req.send_request(options)
    end

    # Lists the tags applied to an Amazon WorkMail organization resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns summaries of the organization's users.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the users exist.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. The first call
    #   does not contain any tokens.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].id #=> String
    #   resp.users[0].email #=> String
    #   resp.users[0].name #=> String
    #   resp.users[0].display_name #=> String
    #   resp.users[0].state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.users[0].user_role #=> String, one of "USER", "RESOURCE", "SYSTEM_USER"
    #   resp.users[0].enabled_date #=> Time
    #   resp.users[0].disabled_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Adds a new access control rule for the specified organization. The
    # rule allows or denies access to the organization for the specified
    # IPv4 addresses, access protocol actions, and user IDs. Adding a new
    # rule with the same name as an existing rule replaces the older rule.
    #
    # @option params [required, String] :name
    #   The rule name.
    #
    # @option params [required, String] :effect
    #   The rule effect.
    #
    # @option params [required, String] :description
    #   The rule description.
    #
    # @option params [Array<String>] :ip_ranges
    #   IPv4 CIDR ranges to include in the rule.
    #
    # @option params [Array<String>] :not_ip_ranges
    #   IPv4 CIDR ranges to exclude from the rule.
    #
    # @option params [Array<String>] :actions
    #   Access protocol actions to include in the rule. Valid values include
    #   `ActiveSync`, `AutoDiscover`, `EWS`, `IMAP`, `SMTP`, `WindowsOutlook`,
    #   and `WebMail`.
    #
    # @option params [Array<String>] :not_actions
    #   Access protocol actions to exclude from the rule. Valid values include
    #   `ActiveSync`, `AutoDiscover`, `EWS`, `IMAP`, `SMTP`, `WindowsOutlook`,
    #   and `WebMail`.
    #
    # @option params [Array<String>] :user_ids
    #   User IDs to include in the rule.
    #
    # @option params [Array<String>] :not_user_ids
    #   User IDs to exclude from the rule.
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_access_control_rule({
    #     name: "AccessControlRuleName", # required
    #     effect: "ALLOW", # required, accepts ALLOW, DENY
    #     description: "AccessControlRuleDescription", # required
    #     ip_ranges: ["IpRange"],
    #     not_ip_ranges: ["IpRange"],
    #     actions: ["AccessControlRuleAction"],
    #     not_actions: ["AccessControlRuleAction"],
    #     user_ids: ["WorkMailIdentifier"],
    #     not_user_ids: ["WorkMailIdentifier"],
    #     organization_id: "OrganizationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutAccessControlRule AWS API Documentation
    #
    # @overload put_access_control_rule(params = {})
    # @param [Hash] params ({})
    def put_access_control_rule(params = {}, options = {})
      req = build_request(:put_access_control_rule, params)
      req.send_request(options)
    end

    # Sets permissions for a user, group, or resource. This replaces any
    # pre-existing permissions.
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization under which the user, group, or
    #   resource exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier of the user, group, or resource for which to update
    #   mailbox permissions.
    #
    # @option params [required, String] :grantee_id
    #   The identifier of the user, group, or resource to which to grant the
    #   permissions.
    #
    # @option params [required, Array<String>] :permission_values
    #   The permissions granted to the grantee. SEND\_AS allows the grantee to
    #   send email as the owner of the mailbox (the grantee is not mentioned
    #   on these emails). SEND\_ON\_BEHALF allows the grantee to send email on
    #   behalf of the owner of the mailbox (the grantee is not mentioned as
    #   the physical sender of these emails). FULL\_ACCESS allows the grantee
    #   full access to the mailbox, irrespective of other folder-level
    #   permissions set on the mailbox.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_mailbox_permissions({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     grantee_id: "WorkMailIdentifier", # required
    #     permission_values: ["FULL_ACCESS"], # required, accepts FULL_ACCESS, SEND_AS, SEND_ON_BEHALF
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutMailboxPermissions AWS API Documentation
    #
    # @overload put_mailbox_permissions(params = {})
    # @param [Hash] params ({})
    def put_mailbox_permissions(params = {}, options = {})
      req = build_request(:put_mailbox_permissions, params)
      req.send_request(options)
    end

    # Puts a retention policy to the specified organization.
    #
    # @option params [required, String] :organization_id
    #   The organization ID.
    #
    # @option params [String] :id
    #   The retention policy ID.
    #
    # @option params [required, String] :name
    #   The retention policy name.
    #
    # @option params [String] :description
    #   The retention policy description.
    #
    # @option params [required, Array<Types::FolderConfiguration>] :folder_configurations
    #   The retention policy folder configurations.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_retention_policy({
    #     organization_id: "OrganizationId", # required
    #     id: "ShortString",
    #     name: "ShortString", # required
    #     description: "PolicyDescription",
    #     folder_configurations: [ # required
    #       {
    #         name: "INBOX", # required, accepts INBOX, DELETED_ITEMS, SENT_ITEMS, DRAFTS, JUNK_EMAIL
    #         action: "NONE", # required, accepts NONE, DELETE, PERMANENTLY_DELETE
    #         period: 1,
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutRetentionPolicy AWS API Documentation
    #
    # @overload put_retention_policy(params = {})
    # @param [Hash] params ({})
    def put_retention_policy(params = {}, options = {})
      req = build_request(:put_retention_policy, params)
      req.send_request(options)
    end

    # Registers an existing and disabled user, group, or resource for Amazon
    # WorkMail use by associating a mailbox and calendaring capabilities. It
    # performs no change if the user, group, or resource is enabled and
    # fails if the user, group, or resource is deleted. This operation
    # results in the accumulation of costs. For more information, see
    # [Pricing][1]. The equivalent console functionality for this operation
    # is *Enable*.
    #
    # Users can either be created by calling the CreateUser API operation or
    # they can be synchronized from your directory. For more information,
    # see DeregisterFromWorkMail.
    #
    #
    #
    # [1]: https://aws.amazon.com/workmail/pricing
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization under which the user, group, or
    #   resource exists.
    #
    # @option params [required, String] :entity_id
    #   The identifier for the user, group, or resource to be updated.
    #
    # @option params [required, String] :email
    #   The email for the user, group, or resource to be updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_to_work_mail({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     email: "EmailAddress", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/RegisterToWorkMail AWS API Documentation
    #
    # @overload register_to_work_mail(params = {})
    # @param [Hash] params ({})
    def register_to_work_mail(params = {}, options = {})
      req = build_request(:register_to_work_mail, params)
      req.send_request(options)
    end

    # Allows the administrator to reset the password for a user.
    #
    # @option params [required, String] :organization_id
    #   The identifier of the organization that contains the user for which
    #   the password is reset.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user for whom the password is reset.
    #
    # @option params [required, String] :password
    #   The new password for the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_password({
    #     organization_id: "OrganizationId", # required
    #     user_id: "WorkMailIdentifier", # required
    #     password: "Password", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ResetPassword AWS API Documentation
    #
    # @overload reset_password(params = {})
    # @param [Hash] params ({})
    def reset_password(params = {}, options = {})
      req = build_request(:reset_password, params)
      req.send_request(options)
    end

    # Starts a mailbox export job to export MIME-format email messages and
    # calendar items from the specified mailbox to the specified Amazon
    # Simple Storage Service (Amazon S3) bucket. For more information, see
    # [Exporting mailbox content][1] in the *Amazon WorkMail Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html
    #
    # @option params [required, String] :client_token
    #   The idempotency token for the client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :organization_id
    #   The identifier associated with the organization.
    #
    # @option params [required, String] :entity_id
    #   The identifier of the user or resource associated with the mailbox.
    #
    # @option params [String] :description
    #   The mailbox export job description.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   grants write permission to the S3 bucket.
    #
    # @option params [required, String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the symmetric AWS Key Management
    #   Service (AWS KMS) key that encrypts the exported mailbox content.
    #
    # @option params [required, String] :s3_bucket_name
    #   The name of the S3 bucket.
    #
    # @option params [required, String] :s3_prefix
    #   The S3 bucket prefix.
    #
    # @return [Types::StartMailboxExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMailboxExportJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_mailbox_export_job({
    #     client_token: "IdempotencyClientToken", # required
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     description: "Description",
    #     role_arn: "RoleArn", # required
    #     kms_key_arn: "KmsKeyArn", # required
    #     s3_bucket_name: "S3BucketName", # required
    #     s3_prefix: "S3ObjectKey", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/StartMailboxExportJob AWS API Documentation
    #
    # @overload start_mailbox_export_job(params = {})
    # @param [Hash] params ({})
    def start_mailbox_export_job(params = {}, options = {})
      req = build_request(:start_mailbox_export_job, params)
      req.send_request(options)
    end

    # Applies the specified tags to the specified Amazon WorkMail
    # organization resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untags the specified tags from the specified Amazon WorkMail
    # organization resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a user's current mailbox quota for a specified organization
    # and user.
    #
    # @option params [required, String] :organization_id
    #   The identifier for the organization that contains the user for whom to
    #   update the mailbox quota.
    #
    # @option params [required, String] :user_id
    #   The identifer for the user for whom to update the mailbox quota.
    #
    # @option params [required, Integer] :mailbox_quota
    #   The updated mailbox quota, in MB, for the specified user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_mailbox_quota({
    #     organization_id: "OrganizationId", # required
    #     user_id: "WorkMailIdentifier", # required
    #     mailbox_quota: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdateMailboxQuota AWS API Documentation
    #
    # @overload update_mailbox_quota(params = {})
    # @param [Hash] params ({})
    def update_mailbox_quota(params = {}, options = {})
      req = build_request(:update_mailbox_quota, params)
      req.send_request(options)
    end

    # Updates the primary email for a user, group, or resource. The current
    # email is moved into the list of aliases (or swapped between an
    # existing alias and the current primary email), and the email provided
    # in the input is promoted as the primary.
    #
    # @option params [required, String] :organization_id
    #   The organization that contains the user, group, or resource to update.
    #
    # @option params [required, String] :entity_id
    #   The user, group, or resource to update.
    #
    # @option params [required, String] :email
    #   The value of the email to be updated as primary.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_primary_email_address({
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     email: "EmailAddress", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdatePrimaryEmailAddress AWS API Documentation
    #
    # @overload update_primary_email_address(params = {})
    # @param [Hash] params ({})
    def update_primary_email_address(params = {}, options = {})
      req = build_request(:update_primary_email_address, params)
      req.send_request(options)
    end

    # Updates data for the resource. To have the latest information, it must
    # be preceded by a DescribeResource call. The dataset in the request
    # should be the one expected when performing another `DescribeResource`
    # call.
    #
    # @option params [required, String] :organization_id
    #   The identifier associated with the organization for which the resource
    #   is updated.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource to be updated.
    #
    # @option params [String] :name
    #   The name of the resource to be updated.
    #
    # @option params [Types::BookingOptions] :booking_options
    #   The resource's booking options to be updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource({
    #     organization_id: "OrganizationId", # required
    #     resource_id: "ResourceId", # required
    #     name: "ResourceName",
    #     booking_options: {
    #       auto_accept_requests: false,
    #       auto_decline_recurring_requests: false,
    #       auto_decline_conflicting_requests: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdateResource AWS API Documentation
    #
    # @overload update_resource(params = {})
    # @param [Hash] params ({})
    def update_resource(params = {}, options = {})
      req = build_request(:update_resource, params)
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
      context[:gem_name] = 'aws-sdk-workmail'
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
