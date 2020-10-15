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

Aws::Plugins::GlobalConfiguration.add_identifier(:transfer)

module Aws::Transfer
  # An API client for Transfer.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Transfer::Client.new(
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

    @identifier = :transfer

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

    # Instantiates an autoscaling virtual server based on the selected file
    # transfer protocol in AWS. When you make updates to your file transfer
    # protocol-enabled server or when you work with users, use the
    # service-generated `ServerId` property that is assigned to the newly
    # created server.
    #
    # @option params [String] :certificate
    #   The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM)
    #   certificate. Required when `Protocols` is set to `FTPS`.
    #
    #   To request a new public certificate, see [Request a public
    #   certificate][1] in the <i> AWS Certificate Manager User Guide</i>.
    #
    #   To import an existing certificate into ACM, see [Importing
    #   certificates into ACM][2] in the <i> AWS Certificate Manager User
    #   Guide</i>.
    #
    #   To request a private certificate to use FTPS through private IP
    #   addresses, see [Request a private certificate][3] in the <i> AWS
    #   Certificate Manager User Guide</i>.
    #
    #   Certificates with the following cryptographic algorithms and key sizes
    #   are supported:
    #
    #   * 2048-bit RSA (RSA\_2048)
    #
    #   * 4096-bit RSA (RSA\_4096)
    #
    #   * Elliptic Prime Curve 256 bit (EC\_prime256v1)
    #
    #   * Elliptic Prime Curve 384 bit (EC\_secp384r1)
    #
    #   * Elliptic Prime Curve 521 bit (EC\_secp521r1)
    #
    #   <note markdown="1"> The certificate must be a valid SSL/TLS X.509 version 3 certificate
    #   with FQDN or IP address specified and information about the issuer.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #   [3]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html
    #
    # @option params [Types::EndpointDetails] :endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are configured
    #   for your server. When you host your endpoint within your VPC, you can
    #   make it accessible only to resources within your VPC, or you can
    #   attach Elastic IPs and make it accessible to clients over the
    #   internet. Your VPC's default security groups are automatically
    #   assigned to your endpoint.
    #
    # @option params [String] :endpoint_type
    #   The type of VPC endpoint that you want your server to connect to. You
    #   can choose to connect to the public internet or a VPC endpoint. With a
    #   VPC endpoint, you can restrict access to your server and resources
    #   only within your VPC.
    #
    #   <note markdown="1"> It is recommended that you use `VPC` as the `EndpointType`. With this
    #   endpoint type, you have the option to directly associate up to three
    #   Elastic IPv4 addresses (BYO IP included) with your server's endpoint
    #   and use VPC security groups to restrict traffic by the client's
    #   public IP address. This is not possible with `EndpointType` set to
    #   `VPC_ENDPOINT`.
    #
    #    </note>
    #
    # @option params [String] :host_key
    #   The RSA private key as generated by the `ssh-keygen -N "" -m PEM -f
    #   my-new-server-key` command.
    #
    #   If you aren't planning to migrate existing users from an existing
    #   SFTP-enabled server to a new server, don't update the host key.
    #   Accidentally changing a server's host key can be disruptive.
    #
    #   For more information, see [Change the host key for your SFTP-enabled
    #   server][1] in the *AWS Transfer Family User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key
    #
    # @option params [Types::IdentityProviderDetails] :identity_provider_details
    #   Required when `IdentityProviderType` is set to `API_GATEWAY`. Accepts
    #   an array containing all of the information required to call a
    #   customer-supplied authentication API, including the API Gateway URL.
    #   Not required when `IdentityProviderType` is set to `SERVICE_MANAGED`.
    #
    # @option params [String] :identity_provider_type
    #   Specifies the mode of authentication for a server. The default value
    #   is `SERVICE_MANAGED`, which allows you to store and access user
    #   credentials within the AWS Transfer Family service. Use the
    #   `API_GATEWAY` value to integrate with an identity provider of your
    #   choosing. The `API_GATEWAY` setting requires you to provide an API
    #   Gateway endpoint URL to call for authentication using the
    #   `IdentityProviderDetails` parameter.
    #
    # @option params [String] :logging_role
    #   Allows the service to write your users' activity to your Amazon
    #   CloudWatch logs for monitoring and auditing purposes.
    #
    # @option params [Array<String>] :protocols
    #   Specifies the file transfer protocol or protocols over which your file
    #   transfer protocol client can connect to your server's endpoint. The
    #   available protocols are:
    #
    #   * `SFTP` (Secure Shell (SSH) File Transfer Protocol): File transfer
    #     over SSH
    #
    #   * `FTPS` (File Transfer Protocol Secure): File transfer with TLS
    #     encryption
    #
    #   * `FTP` (File Transfer Protocol): Unencrypted file transfer
    #
    #   <note markdown="1"> If you select `FTPS`, you must choose a certificate stored in AWS
    #   Certificate Manager (ACM) which will be used to identify your server
    #   when clients connect to it over FTPS.
    #
    #    If `Protocol` includes either `FTP` or `FTPS`, then the `EndpointType`
    #   must be `VPC` and the `IdentityProviderType` must be `API_GATEWAY`.
    #
    #    If `Protocol` includes `FTP`, then `AddressAllocationIds` cannot be
    #   associated.
    #
    #    If `Protocol` is set only to `SFTP`, the `EndpointType` can be set to
    #   `PUBLIC` and the `IdentityProviderType` can be set to
    #   `SERVICE_MANAGED`.
    #
    #    </note>
    #
    # @option params [String] :security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for servers.
    #
    # @return [Types::CreateServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServerResponse#server_id #server_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_server({
    #     certificate: "Certificate",
    #     endpoint_details: {
    #       address_allocation_ids: ["AddressAllocationId"],
    #       subnet_ids: ["SubnetId"],
    #       vpc_endpoint_id: "VpcEndpointId",
    #       vpc_id: "VpcId",
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     endpoint_type: "PUBLIC", # accepts PUBLIC, VPC, VPC_ENDPOINT
    #     host_key: "HostKey",
    #     identity_provider_details: {
    #       url: "Url",
    #       invocation_role: "Role",
    #     },
    #     identity_provider_type: "SERVICE_MANAGED", # accepts SERVICE_MANAGED, API_GATEWAY
    #     logging_role: "Role",
    #     protocols: ["SFTP"], # accepts SFTP, FTP, FTPS
    #     security_policy_name: "SecurityPolicyName",
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
    #   resp.server_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateServer AWS API Documentation
    #
    # @overload create_server(params = {})
    # @param [Hash] params ({})
    def create_server(params = {}, options = {})
      req = build_request(:create_server, params)
      req.send_request(options)
    end

    # Creates a user and associates them with an existing file transfer
    # protocol-enabled server. You can only create and associate users with
    # servers that have the `IdentityProviderType` set to `SERVICE_MANAGED`.
    # Using parameters for `CreateUser`, you can specify the user name, set
    # the home directory, store the user's public key, and assign the
    # user's AWS Identity and Access Management (IAM) role. You can also
    # optionally add a scope-down policy, and assign metadata with tags that
    # can be used to group and search for users.
    #
    # @option params [String] :home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   An example is <i>
    #   <code>your-Amazon-S3-bucket-name&gt;/home/username</code> </i>.
    #
    # @option params [String] :home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket paths as is in
    #   their file transfer protocol clients. If you set it `LOGICAL`, you
    #   will need to provide mappings in the `HomeDirectoryMappings` for how
    #   you want to make Amazon S3 paths visible to your users.
    #
    # @option params [Array<Types::HomeDirectoryMapEntry>] :home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 paths and keys
    #   should be visible to your user and how you want to make them visible.
    #   You will need to specify the "`Entry`" and "`Target`" pair, where
    #   `Entry` shows how the path is made visible and `Target` is the actual
    #   Amazon S3 path. If you only specify a target, it will be displayed as
    #   is. You will need to also make sure that your IAM role provides access
    #   to paths in `Target`. The following is an example.
    #
    #   `'[ "/bucket2/documentation", \{ "Entry": "your-personal-report.pdf",
    #   "Target": "/bucket3/customized-reports/$\{transfer:UserName\}.pdf" \}
    #   ]'`
    #
    #   In most cases, you can use this value instead of the scope-down policy
    #   to lock your user down to the designated home directory ("chroot").
    #   To do this, you can set `Entry` to '/' and set `Target` to the
    #   HomeDirectory parameter value.
    #
    #   <note markdown="1"> If the target of a logical directory entry does not exist in Amazon
    #   S3, the entry will be ignored. As a workaround, you can use the Amazon
    #   S3 API to create 0 byte objects as place holders for your directory.
    #   If using the CLI, use the `s3api` call instead of `s3` so you can use
    #   the put-object operation. For example, you use the following: `aws
    #   s3api put-object --bucket bucketname --key path/to/folder/`. Make sure
    #   that the end of the key name ends in a '/' for it to be considered a
    #   folder.
    #
    #    </note>
    #
    # @option params [String] :policy
    #   A scope-down policy for your user so you can use the same IAM role
    #   across multiple users. This policy scopes down user access to portions
    #   of their Amazon S3 bucket. Variables that you can use inside this
    #   policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> For scope-down policies, AWS Transfer Family stores the policy as a
    #   JSON blob, instead of the Amazon Resource Name (ARN) of the policy.
    #   You save the policy as a JSON blob and pass it in the `Policy`
    #   argument.
    #
    #    For an example of a scope-down policy, see [Creating a scope-down
    #   policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *AWS Security Token
    #   Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #
    # @option params [required, String] :role
    #   The IAM role that controls your users' access to your Amazon S3
    #   bucket. The policies attached to this role will determine the level of
    #   access you want to provide your users when transferring files into and
    #   out of your Amazon S3 bucket or buckets. The IAM role should also
    #   contain a trust relationship that allows the server to access your
    #   resources when servicing your users' transfer requests.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance. This is the
    #   specific server that you added your user to.
    #
    # @option params [String] :ssh_public_key_body
    #   The public portion of the Secure Shell (SSH) key used to authenticate
    #   the user to the server.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for users. Tags
    #   are metadata attached to users for any purpose.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user and is associated with a as
    #   specified by the `ServerId`. This user name must be a minimum of 3 and
    #   a maximum of 100 characters long. The following are valid characters:
    #   a-z, A-Z, 0-9, underscore '\_', hyphen '-', period '.', and at
    #   sign '@'. The user name can't start with a hyphen, period, or at
    #   sign.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#server_id #server_id} => String
    #   * {Types::CreateUserResponse#user_name #user_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     home_directory: "HomeDirectory",
    #     home_directory_type: "PATH", # accepts PATH, LOGICAL
    #     home_directory_mappings: [
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #       },
    #     ],
    #     policy: "Policy",
    #     role: "Role", # required
    #     server_id: "ServerId", # required
    #     ssh_public_key_body: "SshPublicKeyBody",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     user_name: "UserName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.user_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes the file transfer protocol-enabled server that you specify.
    #
    # No response returns from this operation.
    #
    # @option params [required, String] :server_id
    #   A unique system-assigned identifier for a server instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_server({
    #     server_id: "ServerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteServer AWS API Documentation
    #
    # @overload delete_server(params = {})
    # @param [Hash] params ({})
    def delete_server(params = {}, options = {})
      req = build_request(:delete_server, params)
      req.send_request(options)
    end

    # Deletes a user's Secure Shell (SSH) public key.
    #
    # No response is returned from this operation.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a file transfer
    #   protocol-enabled server instance that has the user assigned to it.
    #
    # @option params [required, String] :ssh_public_key_id
    #   A unique identifier used to reference your user's specific SSH key.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user whose public key is being
    #   deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ssh_public_key({
    #     server_id: "ServerId", # required
    #     ssh_public_key_id: "SshPublicKeyId", # required
    #     user_name: "UserName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteSshPublicKey AWS API Documentation
    #
    # @overload delete_ssh_public_key(params = {})
    # @param [Hash] params ({})
    def delete_ssh_public_key(params = {}, options = {})
      req = build_request(:delete_ssh_public_key, params)
      req.send_request(options)
    end

    # Deletes the user belonging to a file transfer protocol-enabled server
    # you specify.
    #
    # No response returns from this operation.
    #
    # <note markdown="1"> When you delete a user from a server, the user's information is lost.
    #
    #  </note>
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance that has the
    #   user assigned to it.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user that is being deleted from a
    #   server.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Describes the security policy that is attached to your file transfer
    # protocol-enabled server. The response contains a description of the
    # security policy's properties. For more information about security
    # policies, see [Working with security policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html
    #
    # @option params [required, String] :security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
    #
    # @return [Types::DescribeSecurityPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecurityPolicyResponse#security_policy #security_policy} => Types::DescribedSecurityPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_policy({
    #     security_policy_name: "SecurityPolicyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_policy.fips #=> Boolean
    #   resp.security_policy.security_policy_name #=> String
    #   resp.security_policy.ssh_ciphers #=> Array
    #   resp.security_policy.ssh_ciphers[0] #=> String
    #   resp.security_policy.ssh_kexs #=> Array
    #   resp.security_policy.ssh_kexs[0] #=> String
    #   resp.security_policy.ssh_macs #=> Array
    #   resp.security_policy.ssh_macs[0] #=> String
    #   resp.security_policy.tls_ciphers #=> Array
    #   resp.security_policy.tls_ciphers[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeSecurityPolicy AWS API Documentation
    #
    # @overload describe_security_policy(params = {})
    # @param [Hash] params ({})
    def describe_security_policy(params = {}, options = {})
      req = build_request(:describe_security_policy, params)
      req.send_request(options)
    end

    # Describes a file transfer protocol-enabled server that you specify by
    # passing the `ServerId` parameter.
    #
    # The response contains a description of a server's properties. When
    # you set `EndpointType` to VPC, the response will contain the
    # `EndpointDetails`.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server.
    #
    # @return [Types::DescribeServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServerResponse#server #server} => Types::DescribedServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_server({
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server.arn #=> String
    #   resp.server.certificate #=> String
    #   resp.server.endpoint_details.address_allocation_ids #=> Array
    #   resp.server.endpoint_details.address_allocation_ids[0] #=> String
    #   resp.server.endpoint_details.subnet_ids #=> Array
    #   resp.server.endpoint_details.subnet_ids[0] #=> String
    #   resp.server.endpoint_details.vpc_endpoint_id #=> String
    #   resp.server.endpoint_details.vpc_id #=> String
    #   resp.server.endpoint_details.security_group_ids #=> Array
    #   resp.server.endpoint_details.security_group_ids[0] #=> String
    #   resp.server.endpoint_type #=> String, one of "PUBLIC", "VPC", "VPC_ENDPOINT"
    #   resp.server.host_key_fingerprint #=> String
    #   resp.server.identity_provider_details.url #=> String
    #   resp.server.identity_provider_details.invocation_role #=> String
    #   resp.server.identity_provider_type #=> String, one of "SERVICE_MANAGED", "API_GATEWAY"
    #   resp.server.logging_role #=> String
    #   resp.server.protocols #=> Array
    #   resp.server.protocols[0] #=> String, one of "SFTP", "FTP", "FTPS"
    #   resp.server.security_policy_name #=> String
    #   resp.server.server_id #=> String
    #   resp.server.state #=> String, one of "OFFLINE", "ONLINE", "STARTING", "STOPPING", "START_FAILED", "STOP_FAILED"
    #   resp.server.tags #=> Array
    #   resp.server.tags[0].key #=> String
    #   resp.server.tags[0].value #=> String
    #   resp.server.user_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeServer AWS API Documentation
    #
    # @overload describe_server(params = {})
    # @param [Hash] params ({})
    def describe_server(params = {}, options = {})
      req = build_request(:describe_server, params)
      req.send_request(options)
    end

    # Describes the user assigned to the specific file transfer
    # protocol-enabled server, as identified by its `ServerId` property.
    #
    # The response from this call returns the properties of the user
    # associated with the `ServerId` value that was specified.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that has this user
    #   assigned.
    #
    # @option params [required, String] :user_name
    #   The name of the user assigned to one or more servers. User names are
    #   part of the sign-in credentials to use the AWS Transfer Family service
    #   and perform file transfer tasks.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#server_id #server_id} => String
    #   * {Types::DescribeUserResponse#user #user} => Types::DescribedUser
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.user.arn #=> String
    #   resp.user.home_directory #=> String
    #   resp.user.home_directory_mappings #=> Array
    #   resp.user.home_directory_mappings[0].entry #=> String
    #   resp.user.home_directory_mappings[0].target #=> String
    #   resp.user.home_directory_type #=> String, one of "PATH", "LOGICAL"
    #   resp.user.policy #=> String
    #   resp.user.role #=> String
    #   resp.user.ssh_public_keys #=> Array
    #   resp.user.ssh_public_keys[0].date_imported #=> Time
    #   resp.user.ssh_public_keys[0].ssh_public_key_body #=> String
    #   resp.user.ssh_public_keys[0].ssh_public_key_id #=> String
    #   resp.user.tags #=> Array
    #   resp.user.tags[0].key #=> String
    #   resp.user.tags[0].value #=> String
    #   resp.user.user_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Adds a Secure Shell (SSH) public key to a user account identified by a
    # `UserName` value assigned to the specific file transfer
    # protocol-enabled server, identified by `ServerId`.
    #
    # The response returns the `UserName` value, the `ServerId` value, and
    # the name of the `SshPublicKeyId`.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server.
    #
    # @option params [required, String] :ssh_public_key_body
    #   The public key portion of an SSH key pair.
    #
    # @option params [required, String] :user_name
    #   The name of the user account that is assigned to one or more servers.
    #
    # @return [Types::ImportSshPublicKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportSshPublicKeyResponse#server_id #server_id} => String
    #   * {Types::ImportSshPublicKeyResponse#ssh_public_key_id #ssh_public_key_id} => String
    #   * {Types::ImportSshPublicKeyResponse#user_name #user_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_ssh_public_key({
    #     server_id: "ServerId", # required
    #     ssh_public_key_body: "SshPublicKeyBody", # required
    #     user_name: "UserName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.ssh_public_key_id #=> String
    #   resp.user_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportSshPublicKey AWS API Documentation
    #
    # @overload import_ssh_public_key(params = {})
    # @param [Hash] params ({})
    def import_ssh_public_key(params = {}, options = {})
      req = build_request(:import_ssh_public_key, params)
      req.send_request(options)
    end

    # Lists the security policies that are attached to your file transfer
    # protocol-enabled servers.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of security policies to return as a response to
    #   the `ListSecurityPolicies` query.
    #
    # @option params [String] :next_token
    #   When additional results are obtained from the `ListSecurityPolicies`
    #   command, a `NextToken` parameter is returned in the output. You can
    #   then pass the `NextToken` parameter in a subsequent command to
    #   continue listing additional security policies.
    #
    # @return [Types::ListSecurityPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityPoliciesResponse#next_token #next_token} => String
    #   * {Types::ListSecurityPoliciesResponse#security_policy_names #security_policy_names} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_policies({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.security_policy_names #=> Array
    #   resp.security_policy_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListSecurityPolicies AWS API Documentation
    #
    # @overload list_security_policies(params = {})
    # @param [Hash] params ({})
    def list_security_policies(params = {}, options = {})
      req = build_request(:list_security_policies, params)
      req.send_request(options)
    end

    # Lists the file transfer protocol-enabled servers that are associated
    # with your AWS account.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of servers to return as a response to the
    #   `ListServers` query.
    #
    # @option params [String] :next_token
    #   When additional results are obtained from the `ListServers` command, a
    #   `NextToken` parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional servers.
    #
    # @return [Types::ListServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServersResponse#next_token #next_token} => String
    #   * {Types::ListServersResponse#servers #servers} => Array&lt;Types::ListedServer&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_servers({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.servers #=> Array
    #   resp.servers[0].arn #=> String
    #   resp.servers[0].identity_provider_type #=> String, one of "SERVICE_MANAGED", "API_GATEWAY"
    #   resp.servers[0].endpoint_type #=> String, one of "PUBLIC", "VPC", "VPC_ENDPOINT"
    #   resp.servers[0].logging_role #=> String
    #   resp.servers[0].server_id #=> String
    #   resp.servers[0].state #=> String, one of "OFFLINE", "ONLINE", "STARTING", "STOPPING", "START_FAILED", "STOP_FAILED"
    #   resp.servers[0].user_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListServers AWS API Documentation
    #
    # @overload list_servers(params = {})
    # @param [Hash] params ({})
    def list_servers(params = {}, options = {})
      req = build_request(:list_servers, params)
      req.send_request(options)
    end

    # Lists all of the tags associated with the Amazon Resource Number (ARN)
    # you specify. The resource can be a user, server, or role.
    #
    # @option params [required, String] :arn
    #   Requests the tags associated with a particular Amazon Resource Name
    #   (ARN). An ARN is an identifier for a specific AWS resource, such as a
    #   server, user, or role.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of tags to return as a response to the
    #   `ListTagsForResource` request.
    #
    # @option params [String] :next_token
    #   When you request additional results from the `ListTagsForResource`
    #   operation, a `NextToken` parameter is returned in the input. You can
    #   then pass in a subsequent command to the `NextToken` parameter to
    #   continue listing additional tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#arn #arn} => String
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the users for a file transfer protocol-enabled server that you
    # specify by passing the `ServerId` parameter.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of users to return as a response to the
    #   `ListUsers` request.
    #
    # @option params [String] :next_token
    #   When you can get additional results from the `ListUsers` call, a
    #   `NextToken` parameter is returned in the output. You can then pass in
    #   a subsequent command to the `NextToken` parameter to continue listing
    #   additional users.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that has users
    #   assigned to it.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #   * {Types::ListUsersResponse#server_id #server_id} => String
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::ListedUser&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.server_id #=> String
    #   resp.users #=> Array
    #   resp.users[0].arn #=> String
    #   resp.users[0].home_directory #=> String
    #   resp.users[0].home_directory_type #=> String, one of "PATH", "LOGICAL"
    #   resp.users[0].role #=> String
    #   resp.users[0].ssh_public_key_count #=> Integer
    #   resp.users[0].user_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Changes the state of a file transfer protocol-enabled server from
    # `OFFLINE` to `ONLINE`. It has no impact on a server that is already
    # `ONLINE`. An `ONLINE` server can accept and process file transfer
    # jobs.
    #
    # The state of `STARTING` indicates that the server is in an
    # intermediate state, either not fully able to respond, or not fully
    # online. The values of `START_FAILED` can indicate an error condition.
    #
    # No response is returned from this call.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that you start.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_server({
    #     server_id: "ServerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartServer AWS API Documentation
    #
    # @overload start_server(params = {})
    # @param [Hash] params ({})
    def start_server(params = {}, options = {})
      req = build_request(:start_server, params)
      req.send_request(options)
    end

    # Changes the state of a file transfer protocol-enabled server from
    # `ONLINE` to `OFFLINE`. An `OFFLINE` server cannot accept and process
    # file transfer jobs. Information tied to your server, such as server
    # and user properties, are not affected by stopping your server.
    #
    # <note markdown="1"> Stopping the server will not reduce or impact your file transfer
    # protocol endpoint billing; you must delete the server to stop being
    # billed.
    #
    #  </note>
    #
    # The state of `STOPPING` indicates that the server is in an
    # intermediate state, either not fully able to respond, or not fully
    # offline. The values of `STOP_FAILED` can indicate an error condition.
    #
    # No response is returned from this call.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server that you stopped.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_server({
    #     server_id: "ServerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StopServer AWS API Documentation
    #
    # @overload stop_server(params = {})
    # @param [Hash] params ({})
    def stop_server(params = {}, options = {})
      req = build_request(:stop_server, params)
      req.send_request(options)
    end

    # Attaches a key-value pair to a resource, as identified by its Amazon
    # Resource Name (ARN). Resources are users, servers, roles, and other
    # entities.
    #
    # There is no response returned from this call.
    #
    # @option params [required, String] :arn
    #   An Amazon Resource Name (ARN) for a specific AWS resource, such as a
    #   server, user, or role.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Key-value pairs assigned to ARNs that you can use to group and search
    #   for resources by type. You can attach this metadata to user accounts
    #   for any purpose.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # If the `IdentityProviderType` of a file transfer protocol-enabled
    # server is `API_Gateway`, tests whether your API Gateway is set up
    # successfully. We highly recommend that you call this operation to test
    # your authentication method as soon as you create your server. By doing
    # so, you can troubleshoot issues with the API Gateway integration to
    # ensure that your users can successfully use the service.
    #
    # @option params [required, String] :server_id
    #   A system-assigned identifier for a specific server. That server's
    #   user authentication method is tested with a user name and password.
    #
    # @option params [String] :server_protocol
    #   The type of file transfer protocol to be tested.
    #
    #   The available protocols are:
    #
    #   * Secure Shell (SSH) File Transfer Protocol (SFTP)
    #
    #   * File Transfer Protocol Secure (FTPS)
    #
    #   * File Transfer Protocol (FTP)
    #
    # @option params [String] :source_ip
    #   The source IP address of the user account to be tested.
    #
    # @option params [required, String] :user_name
    #   The name of the user account to be tested.
    #
    # @option params [String] :user_password
    #   The password of the user account to be tested.
    #
    # @return [Types::TestIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestIdentityProviderResponse#response #response} => String
    #   * {Types::TestIdentityProviderResponse#status_code #status_code} => Integer
    #   * {Types::TestIdentityProviderResponse#message #message} => String
    #   * {Types::TestIdentityProviderResponse#url #url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_identity_provider({
    #     server_id: "ServerId", # required
    #     server_protocol: "SFTP", # accepts SFTP, FTP, FTPS
    #     source_ip: "SourceIp",
    #     user_name: "UserName", # required
    #     user_password: "UserPassword",
    #   })
    #
    # @example Response structure
    #
    #   resp.response #=> String
    #   resp.status_code #=> Integer
    #   resp.message #=> String
    #   resp.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TestIdentityProvider AWS API Documentation
    #
    # @overload test_identity_provider(params = {})
    # @param [Hash] params ({})
    def test_identity_provider(params = {}, options = {})
      req = build_request(:test_identity_provider, params)
      req.send_request(options)
    end

    # Detaches a key-value pair from a resource, as identified by its Amazon
    # Resource Name (ARN). Resources are users, servers, roles, and other
    # entities.
    #
    # No response is returned from this call.
    #
    # @option params [required, String] :arn
    #   The value of the resource that will have the tag removed. An Amazon
    #   Resource Name (ARN) is an identifier for a specific AWS resource, such
    #   as a server, user, or role.
    #
    # @option params [required, Array<String>] :tag_keys
    #   TagKeys are key-value pairs assigned to ARNs that can be used to group
    #   and search for resources by type. This metadata can be attached to
    #   resources for any purpose.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the file transfer protocol-enabled server's properties after
    # that server has been created.
    #
    # The `UpdateServer` call returns the `ServerId` of the server you
    # updated.
    #
    # @option params [String] :certificate
    #   The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM)
    #   certificate. Required when `Protocols` is set to `FTPS`.
    #
    #   To request a new public certificate, see [Request a public
    #   certificate][1] in the <i> AWS Certificate Manager User Guide</i>.
    #
    #   To import an existing certificate into ACM, see [Importing
    #   certificates into ACM][2] in the <i> AWS Certificate Manager User
    #   Guide</i>.
    #
    #   To request a private certificate to use FTPS through private IP
    #   addresses, see [Request a private certificate][3] in the <i> AWS
    #   Certificate Manager User Guide</i>.
    #
    #   Certificates with the following cryptographic algorithms and key sizes
    #   are supported:
    #
    #   * 2048-bit RSA (RSA\_2048)
    #
    #   * 4096-bit RSA (RSA\_4096)
    #
    #   * Elliptic Prime Curve 256 bit (EC\_prime256v1)
    #
    #   * Elliptic Prime Curve 384 bit (EC\_secp384r1)
    #
    #   * Elliptic Prime Curve 521 bit (EC\_secp521r1)
    #
    #   <note markdown="1"> The certificate must be a valid SSL/TLS X.509 version 3 certificate
    #   with FQDN or IP address specified and information about the issuer.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #   [3]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html
    #
    # @option params [Types::EndpointDetails] :endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are configured
    #   for your server. With a VPC endpoint, you can restrict access to your
    #   server to resources only within your VPC. To control incoming internet
    #   traffic, you will need to associate one or more Elastic IP addresses
    #   with your server's endpoint.
    #
    # @option params [String] :endpoint_type
    #   The type of endpoint that you want your server to connect to. You can
    #   choose to connect to the public internet or a VPC endpoint. With a VPC
    #   endpoint, you can restrict access to your server and resources only
    #   within your VPC.
    #
    #   <note markdown="1"> It is recommended that you use `VPC` as the `EndpointType`. With this
    #   endpoint type, you have the option to directly associate up to three
    #   Elastic IPv4 addresses (BYO IP included) with your server's endpoint
    #   and use VPC security groups to restrict traffic by the client's
    #   public IP address. This is not possible with `EndpointType` set to
    #   `VPC_ENDPOINT`.
    #
    #    </note>
    #
    # @option params [String] :host_key
    #   The RSA private key as generated by `ssh-keygen -N "" -m PEM -f
    #   my-new-server-key`.
    #
    #   If you aren't planning to migrate existing users from an existing
    #   server to a new server, don't update the host key. Accidentally
    #   changing a server's host key can be disruptive.
    #
    #   For more information, see [Change the host key for your SFTP-enabled
    #   server][1] in the *AWS Transfer Family User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key
    #
    # @option params [Types::IdentityProviderDetails] :identity_provider_details
    #   An array containing all of the information required to call a
    #   customer's authentication API method.
    #
    # @option params [String] :logging_role
    #   Changes the AWS Identity and Access Management (IAM) role that allows
    #   Amazon S3 events to be logged in Amazon CloudWatch, turning logging on
    #   or off.
    #
    # @option params [Array<String>] :protocols
    #   Specifies the file transfer protocol or protocols over which your file
    #   transfer protocol client can connect to your server's endpoint. The
    #   available protocols are:
    #
    #   * Secure Shell (SSH) File Transfer Protocol (SFTP): File transfer over
    #     SSH
    #
    #   * File Transfer Protocol Secure (FTPS): File transfer with TLS
    #     encryption
    #
    #   * File Transfer Protocol (FTP): Unencrypted file transfer
    #
    #   <note markdown="1"> If you select `FTPS`, you must choose a certificate stored in AWS
    #   Certificate Manager (ACM) which will be used to identify your server
    #   when clients connect to it over FTPS.
    #
    #    If `Protocol` includes either `FTP` or `FTPS`, then the `EndpointType`
    #   must be `VPC` and the `IdentityProviderType` must be `API_GATEWAY`.
    #
    #    If `Protocol` includes `FTP`, then `AddressAllocationIds` cannot be
    #   associated.
    #
    #    If `Protocol` is set only to `SFTP`, the `EndpointType` can be set to
    #   `PUBLIC` and the `IdentityProviderType` can be set to
    #   `SERVICE_MANAGED`.
    #
    #    </note>
    #
    # @option params [String] :security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance that the
    #   user account is assigned to.
    #
    # @return [Types::UpdateServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServerResponse#server_id #server_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server({
    #     certificate: "Certificate",
    #     endpoint_details: {
    #       address_allocation_ids: ["AddressAllocationId"],
    #       subnet_ids: ["SubnetId"],
    #       vpc_endpoint_id: "VpcEndpointId",
    #       vpc_id: "VpcId",
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     endpoint_type: "PUBLIC", # accepts PUBLIC, VPC, VPC_ENDPOINT
    #     host_key: "HostKey",
    #     identity_provider_details: {
    #       url: "Url",
    #       invocation_role: "Role",
    #     },
    #     logging_role: "NullableRole",
    #     protocols: ["SFTP"], # accepts SFTP, FTP, FTPS
    #     security_policy_name: "SecurityPolicyName",
    #     server_id: "ServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateServer AWS API Documentation
    #
    # @overload update_server(params = {})
    # @param [Hash] params ({})
    def update_server(params = {}, options = {})
      req = build_request(:update_server, params)
      req.send_request(options)
    end

    # Assigns new properties to a user. Parameters you pass modify any or
    # all of the following: the home directory, role, and policy for the
    # `UserName` and `ServerId` you specify.
    #
    # The response returns the `ServerId` and the `UserName` for the updated
    # user.
    #
    # @option params [String] :home_directory
    #   Specifies the landing directory (folder) for a user when they log in
    #   to the server using their file transfer protocol client.
    #
    #   An example is `your-Amazon-S3-bucket-name>/home/username`.
    #
    # @option params [String] :home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket paths as is in
    #   their file transfer protocol clients. If you set it `LOGICAL`, you
    #   will need to provide mappings in the `HomeDirectoryMappings` for how
    #   you want to make Amazon S3 paths visible to your users.
    #
    # @option params [Array<Types::HomeDirectoryMapEntry>] :home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 paths and keys
    #   should be visible to your user and how you want to make them visible.
    #   You will need to specify the "`Entry`" and "`Target`" pair, where
    #   `Entry` shows how the path is made visible and `Target` is the actual
    #   Amazon S3 path. If you only specify a target, it will be displayed as
    #   is. You will need to also make sure that your IAM role provides access
    #   to paths in `Target`. The following is an example.
    #
    #   `'[ "/bucket2/documentation", \{ "Entry": "your-personal-report.pdf",
    #   "Target": "/bucket3/customized-reports/$\{transfer:UserName\}.pdf" \}
    #   ]'`
    #
    #   In most cases, you can use this value instead of the scope-down policy
    #   to lock your user down to the designated home directory ("chroot").
    #   To do this, you can set `Entry` to '/' and set `Target` to the
    #   HomeDirectory parameter value.
    #
    #   <note markdown="1"> If the target of a logical directory entry does not exist in Amazon
    #   S3, the entry will be ignored. As a workaround, you can use the Amazon
    #   S3 API to create 0 byte objects as place holders for your directory.
    #   If using the CLI, use the `s3api` call instead of `s3` so you can use
    #   the put-object operation. For example, you use the following: `aws
    #   s3api put-object --bucket bucketname --key path/to/folder/`. Make sure
    #   that the end of the key name ends in a / for it to be considered a
    #   folder.
    #
    #    </note>
    #
    # @option params [String] :policy
    #   Allows you to supply a scope-down policy for your user so you can use
    #   the same IAM role across multiple users. The policy scopes down user
    #   access to portions of your Amazon S3 bucket. Variables you can use
    #   inside this policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> For scope-down policies, AWS Transfer Family stores the policy as a
    #   JSON blob, instead of the Amazon Resource Name (ARN) of the policy.
    #   You save the policy as a JSON blob and pass it in the `Policy`
    #   argument.
    #
    #    For an example of a scope-down policy, see [Creating a scope-down
    #   policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *AWS Security Token
    #   Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #
    # @option params [String] :role
    #   The IAM role that controls your users' access to your Amazon S3
    #   bucket. The policies attached to this role will determine the level of
    #   access you want to provide your users when transferring files into and
    #   out of your Amazon S3 bucket or buckets. The IAM role should also
    #   contain a trust relationship that allows the server to access your
    #   resources when servicing your users' transfer requests.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a server instance that the
    #   user account is assigned to.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user and is associated with a server
    #   as specified by the `ServerId`. This user name must be a minimum of 3
    #   and a maximum of 100 characters long. The following are valid
    #   characters: a-z, A-Z, 0-9, underscore '\_', hyphen '-', period
    #   '.', and at sign '@'. The user name can't start with a hyphen,
    #   period, or at sign.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#server_id #server_id} => String
    #   * {Types::UpdateUserResponse#user_name #user_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     home_directory: "HomeDirectory",
    #     home_directory_type: "PATH", # accepts PATH, LOGICAL
    #     home_directory_mappings: [
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #       },
    #     ],
    #     policy: "Policy",
    #     role: "Role",
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.server_id #=> String
    #   resp.user_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-transfer'
      context[:gem_version] = '1.28.0'
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
