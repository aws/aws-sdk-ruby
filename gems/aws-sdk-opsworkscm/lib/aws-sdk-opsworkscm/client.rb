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

Aws::Plugins::GlobalConfiguration.add_identifier(:opsworkscm)

module Aws::OpsWorksCM
  # An API client for OpsWorksCM.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::OpsWorksCM::Client.new(
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

    @identifier = :opsworkscm

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

    # Associates a new node with the server. For more information about how
    # to disassociate a node, see DisassociateNode.
    #
    # On a Chef server: This command is an alternative to `knife bootstrap`.
    #
    # Example (Chef): `aws opsworks-cm associate-node --server-name MyServer
    # --node-name MyManagedNode --engine-attributes
    # "Name=CHEF_ORGANIZATION,Value=default"
    # "Name=CHEF_NODE_PUBLIC_KEY,Value=public-key-pem"`
    #
    # On a Puppet server, this command is an alternative to the `puppet cert
    # sign` command that signs a Puppet node CSR.
    #
    # Example (Puppet): `aws opsworks-cm associate-node --server-name
    # MyServer --node-name MyManagedNode --engine-attributes
    # "Name=PUPPET_NODE_CSR,Value=csr-pem"`
    #
    # A node can can only be associated with servers that are in a `HEALTHY`
    # state. Otherwise, an `InvalidStateException` is thrown. A
    # `ResourceNotFoundException` is thrown when the server does not exist.
    # A `ValidationException` is raised when parameters of the request are
    # not valid. The AssociateNode API call can be integrated into Auto
    # Scaling configurations, AWS Cloudformation templates, or the user data
    # of a server's instance.
    #
    # @option params [required, String] :server_name
    #   The name of the server with which to associate the node.
    #
    # @option params [required, String] :node_name
    #   The name of the node.
    #
    # @option params [required, Array<Types::EngineAttribute>] :engine_attributes
    #   Engine attributes used for associating the node.
    #
    #   **Attributes accepted in a AssociateNode request for Chef**
    #
    #   * `CHEF_ORGANIZATION`\: The Chef organization with which the node is
    #     associated. By default only one organization named `default` can
    #     exist.
    #
    #   * `CHEF_NODE_PUBLIC_KEY`\: A PEM-formatted public key. This key is
    #     required for the `chef-client` agent to access the Chef API.
    #
    #   **Attributes accepted in a AssociateNode request for Puppet**
    #
    #   * `PUPPET_NODE_CSR`\: A PEM-formatted certificate-signing request
    #     (CSR) that is created by the node.
    #
    #   ^
    #
    # @return [Types::AssociateNodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateNodeResponse#node_association_status_token #node_association_status_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_node({
    #     server_name: "ServerName", # required
    #     node_name: "NodeName", # required
    #     engine_attributes: [ # required
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.node_association_status_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/AssociateNode AWS API Documentation
    #
    # @overload associate_node(params = {})
    # @param [Hash] params ({})
    def associate_node(params = {}, options = {})
      req = build_request(:associate_node, params)
      req.send_request(options)
    end

    # Creates an application-level backup of a server. While the server is
    # in the `BACKING_UP` state, the server cannot be changed, and no
    # additional backup can be created.
    #
    # Backups can be created for servers in `RUNNING`, `HEALTHY`, and
    # `UNHEALTHY` states. By default, you can create a maximum of 50 manual
    # backups.
    #
    # This operation is asynchronous.
    #
    # A `LimitExceededException` is thrown when the maximum number of manual
    # backups is reached. An `InvalidStateException` is thrown when the
    # server is not in any of the following states: RUNNING, HEALTHY, or
    # UNHEALTHY. A `ResourceNotFoundException` is thrown when the server is
    # not found. A `ValidationException` is thrown when parameters of the
    # request are not valid.
    #
    # @option params [required, String] :server_name
    #   The name of the server that you want to back up.
    #
    # @option params [String] :description
    #   A user-defined description of the backup.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map that contains tag keys and tag values to attach to an AWS
    #   OpsWorks-CM server backup.
    #
    #   * The key cannot be empty.
    #
    #   * The key can be a maximum of 127 characters, and can contain only
    #     Unicode letters, numbers, or separators, or the following special
    #     characters: `+ - = . _ : /`
    #
    #   * The value can be a maximum 255 characters, and contain only Unicode
    #     letters, numbers, or separators, or the following special
    #     characters: `+ - = . _ : /`
    #
    #   * Leading and trailing white spaces are trimmed from both the key and
    #     value.
    #
    #   * A maximum of 50 user-applied tags is allowed for tag-supported AWS
    #     OpsWorks-CM resources.
    #
    # @return [Types::CreateBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackupResponse#backup #backup} => Types::Backup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup({
    #     server_name: "ServerName", # required
    #     description: "String",
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
    #   resp.backup.backup_arn #=> String
    #   resp.backup.backup_id #=> String
    #   resp.backup.backup_type #=> String, one of "AUTOMATED", "MANUAL"
    #   resp.backup.created_at #=> Time
    #   resp.backup.description #=> String
    #   resp.backup.engine #=> String
    #   resp.backup.engine_model #=> String
    #   resp.backup.engine_version #=> String
    #   resp.backup.instance_profile_arn #=> String
    #   resp.backup.instance_type #=> String
    #   resp.backup.key_pair #=> String
    #   resp.backup.preferred_backup_window #=> String
    #   resp.backup.preferred_maintenance_window #=> String
    #   resp.backup.s3_data_size #=> Integer
    #   resp.backup.s3_data_url #=> String
    #   resp.backup.s3_log_url #=> String
    #   resp.backup.security_group_ids #=> Array
    #   resp.backup.security_group_ids[0] #=> String
    #   resp.backup.server_name #=> String
    #   resp.backup.service_role_arn #=> String
    #   resp.backup.status #=> String, one of "IN_PROGRESS", "OK", "FAILED", "DELETING"
    #   resp.backup.status_description #=> String
    #   resp.backup.subnet_ids #=> Array
    #   resp.backup.subnet_ids[0] #=> String
    #   resp.backup.tools_version #=> String
    #   resp.backup.user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/CreateBackup AWS API Documentation
    #
    # @overload create_backup(params = {})
    # @param [Hash] params ({})
    def create_backup(params = {}, options = {})
      req = build_request(:create_backup, params)
      req.send_request(options)
    end

    # Creates and immedately starts a new server. The server is ready to use
    # when it is in the `HEALTHY` state. By default, you can create a
    # maximum of 10 servers.
    #
    # This operation is asynchronous.
    #
    # A `LimitExceededException` is thrown when you have created the maximum
    # number of servers (10). A `ResourceAlreadyExistsException` is thrown
    # when a server with the same name already exists in the account. A
    # `ResourceNotFoundException` is thrown when you specify a backup ID
    # that is not valid or is for a backup that does not exist. A
    # `ValidationException` is thrown when parameters of the request are not
    # valid.
    #
    # If you do not specify a security group by adding the
    # `SecurityGroupIds` parameter, AWS OpsWorks creates a new security
    # group.
    #
    # *Chef Automate:* The default security group opens the Chef server to
    # the world on TCP port 443. If a KeyName is present, AWS OpsWorks
    # enables SSH access. SSH is also open to the world on TCP port 22.
    #
    # *Puppet Enterprise:* The default security group opens TCP ports 22,
    # 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS
    # OpsWorks enables SSH access. SSH is also open to the world on TCP port
    # 22.
    #
    # By default, your server is accessible from any IP address. We
    # recommend that you update your security group rules to allow access
    # from known IP addresses and address ranges only. To edit security
    # group rules, open Security Groups in the navigation pane of the EC2
    # management console.
    #
    # To specify your own domain for a server, and provide your own
    # self-signed or CA-signed certificate and private key, specify values
    # for `CustomDomain`, `CustomCertificate`, and `CustomPrivateKey`.
    #
    # @option params [Boolean] :associate_public_ip_address
    #   Associate a public IP address with a server that you are launching.
    #   Valid values are `true` or `false`. The default value is `true`.
    #
    # @option params [String] :custom_domain
    #   An optional public endpoint of a server, such as
    #   `https://aws.my-company.com`. To access the server, create a CNAME DNS
    #   record in your preferred DNS service that points the custom domain to
    #   the endpoint that is generated when the server is created (the value
    #   of the CreateServer Endpoint attribute). You cannot access the server
    #   by using the generated `Endpoint` value if the server is using a
    #   custom domain. If you specify a custom domain, you must also specify
    #   values for `CustomCertificate` and `CustomPrivateKey`.
    #
    # @option params [String] :custom_certificate
    #   A PEM-formatted HTTPS certificate. The value can be be a single,
    #   self-signed certificate, or a certificate chain. If you specify a
    #   custom certificate, you must also specify values for `CustomDomain`
    #   and `CustomPrivateKey`. The following are requirements for the
    #   `CustomCertificate` value:
    #
    #   * You can provide either a self-signed, custom certificate, or the
    #     full certificate chain.
    #
    #   * The certificate must be a valid X509 certificate, or a certificate
    #     chain in PEM format.
    #
    #   * The certificate must be valid at the time of upload. A certificate
    #     can't be used before its validity period begins (the certificate's
    #     `NotBefore` date), or after it expires (the certificate's
    #     `NotAfter` date).
    #
    #   * The certificate’s common name or subject alternative names (SANs),
    #     if present, must match the value of `CustomDomain`.
    #
    #   * The certificate must match the value of `CustomPrivateKey`.
    #
    # @option params [String] :custom_private_key
    #   A private key in PEM format for connecting to the server by using
    #   HTTPS. The private key must not be encrypted; it cannot be protected
    #   by a password or passphrase. If you specify a custom private key, you
    #   must also specify values for `CustomDomain` and `CustomCertificate`.
    #
    # @option params [Boolean] :disable_automated_backup
    #   Enable or disable scheduled backups. Valid values are `true` or
    #   `false`. The default value is `true`.
    #
    # @option params [required, String] :engine
    #   The configuration management engine to use. Valid values include
    #   `ChefAutomate` and `Puppet`.
    #
    # @option params [String] :engine_model
    #   The engine model of the server. Valid values in this release include
    #   `Monolithic` for Puppet and `Single` for Chef.
    #
    # @option params [String] :engine_version
    #   The major release version of the engine that you want to use. For a
    #   Chef server, the valid value for EngineVersion is currently `2`. For a
    #   Puppet server, the valid value is `2017`.
    #
    # @option params [Array<Types::EngineAttribute>] :engine_attributes
    #   Optional engine attributes on a specified server.
    #
    #   **Attributes accepted in a Chef createServer request:**
    #
    #   * `CHEF_AUTOMATE_PIVOTAL_KEY`\: A base64-encoded RSA public key. The
    #     corresponding private key is required to access the Chef API. When
    #     no CHEF\_AUTOMATE\_PIVOTAL\_KEY is set, a private key is generated
    #     and returned in the response.
    #
    #   * `CHEF_AUTOMATE_ADMIN_PASSWORD`\: The password for the administrative
    #     user in the Chef Automate web-based dashboard. The password length
    #     is a minimum of eight characters, and a maximum of 32. The password
    #     can contain letters, numbers, and special characters
    #     (!/@#$%^&amp;+=\_). The password must contain at least one lower
    #     case letter, one upper case letter, one number, and one special
    #     character. When no CHEF\_AUTOMATE\_ADMIN\_PASSWORD is set, one is
    #     generated and returned in the response.
    #
    #   **Attributes accepted in a Puppet createServer request:**
    #
    #   * `PUPPET_ADMIN_PASSWORD`\: To work with the Puppet Enterprise
    #     console, a password must use ASCII characters.
    #
    #   * `PUPPET_R10K_REMOTE`\: The r10k remote is the URL of your control
    #     repository (for example,
    #     ssh://git@your.git-repo.com:user/control-repo.git). Specifying an
    #     r10k remote opens TCP port 8170.
    #
    #   * `PUPPET_R10K_PRIVATE_KEY`\: If you are using a private Git
    #     repository, add PUPPET\_R10K\_PRIVATE\_KEY to specify a PEM-encoded
    #     private SSH key.
    #
    # @option params [Integer] :backup_retention_count
    #   The number of automated backups that you want to keep. Whenever a new
    #   backup is created, AWS OpsWorks CM deletes the oldest backups if this
    #   number is exceeded. The default value is `1`.
    #
    # @option params [required, String] :server_name
    #   The name of the server. The server name must be unique within your AWS
    #   account, within each region. Server names must start with a letter;
    #   then letters, numbers, or hyphens (-) are allowed, up to a maximum of
    #   40 characters.
    #
    # @option params [required, String] :instance_profile_arn
    #   The ARN of the instance profile that your Amazon EC2 instances use.
    #   Although the AWS OpsWorks console typically creates the instance
    #   profile for you, if you are using API commands instead, run the
    #   service-role-creation.yaml AWS CloudFormation template, located at
    #   https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
    #   This template creates a CloudFormation stack that includes the
    #   instance profile you need.
    #
    # @option params [required, String] :instance_type
    #   The Amazon EC2 instance type to use. For example, `m5.large`.
    #
    # @option params [String] :key_pair
    #   The Amazon EC2 key pair to set for the instance. This parameter is
    #   optional; if desired, you may specify this parameter to connect to
    #   your instances by using SSH.
    #
    # @option params [String] :preferred_maintenance_window
    #   The start time for a one-hour period each week during which AWS
    #   OpsWorks CM performs maintenance on the instance. Valid values must be
    #   specified in the following format: `DDD:HH:MM`. `MM` must be specified
    #   as `00`. The specified time is in coordinated universal time (UTC).
    #   The default value is a random one-hour period on Tuesday, Wednesday,
    #   or Friday. See `TimeWindowDefinition` for more information.
    #
    #   **Example:** `Mon:08:00`, which represents a start time of every
    #   Monday at 08:00 UTC. (8:00 a.m.)
    #
    # @option params [String] :preferred_backup_window
    #   The start time for a one-hour period during which AWS OpsWorks CM
    #   backs up application-level data on your server if automated backups
    #   are enabled. Valid values must be specified in one of the following
    #   formats:
    #
    #   * `HH:MM` for daily backups
    #
    #   * `DDD:HH:MM` for weekly backups
    #
    #   `MM` must be specified as `00`. The specified time is in coordinated
    #   universal time (UTC). The default value is a random, daily start time.
    #
    #   **Example:** `08:00`, which represents a daily start time of 08:00
    #   UTC.
    #
    #   **Example:** `Mon:08:00`, which represents a start time of every
    #   Monday at 08:00 UTC. (8:00 a.m.)
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of security group IDs to attach to the Amazon EC2 instance. If
    #   you add this parameter, the specified security groups must be within
    #   the VPC that is specified by `SubnetIds`.
    #
    #   If you do not specify this parameter, AWS OpsWorks CM creates one new
    #   security group that uses TCP ports 22 and 443, open to 0.0.0.0/0
    #   (everyone).
    #
    # @option params [required, String] :service_role_arn
    #   The service role that the AWS OpsWorks CM service backend uses to work
    #   with your account. Although the AWS OpsWorks management console
    #   typically creates the service role for you, if you are using the AWS
    #   CLI or API commands, run the service-role-creation.yaml AWS
    #   CloudFormation template, located at
    #   https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
    #   This template creates a CloudFormation stack that includes the service
    #   role and instance profile that you need.
    #
    # @option params [Array<String>] :subnet_ids
    #   The IDs of subnets in which to launch the server EC2 instance.
    #
    #   Amazon EC2-Classic customers: This field is required. All servers must
    #   run within a VPC. The VPC must have "Auto Assign Public IP" enabled.
    #
    #   EC2-VPC customers: This field is optional. If you do not specify
    #   subnet IDs, your EC2 instances are created in a default subnet that is
    #   selected by Amazon EC2. If you specify subnet IDs, the VPC must have
    #   "Auto Assign Public IP" enabled.
    #
    #   For more information about supported Amazon EC2 platforms, see
    #   [Supported Platforms][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map that contains tag keys and tag values to attach to an AWS
    #   OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise
    #   server.
    #
    #   * The key cannot be empty.
    #
    #   * The key can be a maximum of 127 characters, and can contain only
    #     Unicode letters, numbers, or separators, or the following special
    #     characters: `+ - = . _ : / @`
    #
    #   * The value can be a maximum 255 characters, and contain only Unicode
    #     letters, numbers, or separators, or the following special
    #     characters: `+ - = . _ : / @`
    #
    #   * Leading and trailing white spaces are trimmed from both the key and
    #     value.
    #
    #   * A maximum of 50 user-applied tags is allowed for any AWS OpsWorks-CM
    #     server.
    #
    # @option params [String] :backup_id
    #   If you specify this field, AWS OpsWorks CM creates the server by using
    #   the backup represented by BackupId.
    #
    # @return [Types::CreateServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServerResponse#server #server} => Types::Server
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_server({
    #     associate_public_ip_address: false,
    #     custom_domain: "CustomDomain",
    #     custom_certificate: "CustomCertificate",
    #     custom_private_key: "CustomPrivateKey",
    #     disable_automated_backup: false,
    #     engine: "String", # required
    #     engine_model: "String",
    #     engine_version: "String",
    #     engine_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue",
    #       },
    #     ],
    #     backup_retention_count: 1,
    #     server_name: "ServerName", # required
    #     instance_profile_arn: "InstanceProfileArn", # required
    #     instance_type: "String", # required
    #     key_pair: "KeyPair",
    #     preferred_maintenance_window: "TimeWindowDefinition",
    #     preferred_backup_window: "TimeWindowDefinition",
    #     security_group_ids: ["String"],
    #     service_role_arn: "ServiceRoleArn", # required
    #     subnet_ids: ["String"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     backup_id: "BackupId",
    #   })
    #
    # @example Response structure
    #
    #   resp.server.associate_public_ip_address #=> Boolean
    #   resp.server.backup_retention_count #=> Integer
    #   resp.server.server_name #=> String
    #   resp.server.created_at #=> Time
    #   resp.server.cloud_formation_stack_arn #=> String
    #   resp.server.custom_domain #=> String
    #   resp.server.disable_automated_backup #=> Boolean
    #   resp.server.endpoint #=> String
    #   resp.server.engine #=> String
    #   resp.server.engine_model #=> String
    #   resp.server.engine_attributes #=> Array
    #   resp.server.engine_attributes[0].name #=> String
    #   resp.server.engine_attributes[0].value #=> String
    #   resp.server.engine_version #=> String
    #   resp.server.instance_profile_arn #=> String
    #   resp.server.instance_type #=> String
    #   resp.server.key_pair #=> String
    #   resp.server.maintenance_status #=> String, one of "SUCCESS", "FAILED"
    #   resp.server.preferred_maintenance_window #=> String
    #   resp.server.preferred_backup_window #=> String
    #   resp.server.security_group_ids #=> Array
    #   resp.server.security_group_ids[0] #=> String
    #   resp.server.service_role_arn #=> String
    #   resp.server.status #=> String, one of "BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"
    #   resp.server.status_reason #=> String
    #   resp.server.subnet_ids #=> Array
    #   resp.server.subnet_ids[0] #=> String
    #   resp.server.server_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/CreateServer AWS API Documentation
    #
    # @overload create_server(params = {})
    # @param [Hash] params ({})
    def create_server(params = {}, options = {})
      req = build_request(:create_server, params)
      req.send_request(options)
    end

    # Deletes a backup. You can delete both manual and automated backups.
    # This operation is asynchronous.
    #
    # An `InvalidStateException` is thrown when a backup deletion is already
    # in progress. A `ResourceNotFoundException` is thrown when the backup
    # does not exist. A `ValidationException` is thrown when parameters of
    # the request are not valid.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup to delete. Run the DescribeBackups command to get
    #   a list of backup IDs. Backup IDs are in the format
    #   `ServerName-yyyyMMddHHmmssSSS`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup({
    #     backup_id: "BackupId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DeleteBackup AWS API Documentation
    #
    # @overload delete_backup(params = {})
    # @param [Hash] params ({})
    def delete_backup(params = {}, options = {})
      req = build_request(:delete_backup, params)
      req.send_request(options)
    end

    # Deletes the server and the underlying AWS CloudFormation stacks
    # (including the server's EC2 instance). When you run this command, the
    # server state is updated to `DELETING`. After the server is deleted, it
    # is no longer returned by `DescribeServer` requests. If the AWS
    # CloudFormation stack cannot be deleted, the server cannot be deleted.
    #
    # This operation is asynchronous.
    #
    # An `InvalidStateException` is thrown when a server deletion is already
    # in progress. A `ResourceNotFoundException` is thrown when the server
    # does not exist. A `ValidationException` is raised when parameters of
    # the request are not valid.
    #
    # @option params [required, String] :server_name
    #   The ID of the server to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_server({
    #     server_name: "ServerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DeleteServer AWS API Documentation
    #
    # @overload delete_server(params = {})
    # @param [Hash] params ({})
    def delete_server(params = {}, options = {})
      req = build_request(:delete_server, params)
      req.send_request(options)
    end

    # Describes your OpsWorks-CM account attributes.
    #
    # This operation is synchronous.
    #
    # @return [Types::DescribeAccountAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAttributesResponse#attributes #attributes} => Array&lt;Types::AccountAttribute&gt;
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].name #=> String
    #   resp.attributes[0].maximum #=> Integer
    #   resp.attributes[0].used #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeAccountAttributes AWS API Documentation
    #
    # @overload describe_account_attributes(params = {})
    # @param [Hash] params ({})
    def describe_account_attributes(params = {}, options = {})
      req = build_request(:describe_account_attributes, params)
      req.send_request(options)
    end

    # Describes backups. The results are ordered by time, with newest
    # backups first. If you do not specify a BackupId or ServerName, the
    # command returns all backups.
    #
    # This operation is synchronous.
    #
    # A `ResourceNotFoundException` is thrown when the backup does not
    # exist. A `ValidationException` is raised when parameters of the
    # request are not valid.
    #
    # @option params [String] :backup_id
    #   Describes a single backup.
    #
    # @option params [String] :server_name
    #   Returns backups for the server with the specified ServerName.
    #
    # @option params [String] :next_token
    #   This is not currently implemented for `DescribeBackups` requests.
    #
    # @option params [Integer] :max_results
    #   This is not currently implemented for `DescribeBackups` requests.
    #
    # @return [Types::DescribeBackupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupsResponse#backups #backups} => Array&lt;Types::Backup&gt;
    #   * {Types::DescribeBackupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backups({
    #     backup_id: "BackupId",
    #     server_name: "ServerName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.backups #=> Array
    #   resp.backups[0].backup_arn #=> String
    #   resp.backups[0].backup_id #=> String
    #   resp.backups[0].backup_type #=> String, one of "AUTOMATED", "MANUAL"
    #   resp.backups[0].created_at #=> Time
    #   resp.backups[0].description #=> String
    #   resp.backups[0].engine #=> String
    #   resp.backups[0].engine_model #=> String
    #   resp.backups[0].engine_version #=> String
    #   resp.backups[0].instance_profile_arn #=> String
    #   resp.backups[0].instance_type #=> String
    #   resp.backups[0].key_pair #=> String
    #   resp.backups[0].preferred_backup_window #=> String
    #   resp.backups[0].preferred_maintenance_window #=> String
    #   resp.backups[0].s3_data_size #=> Integer
    #   resp.backups[0].s3_data_url #=> String
    #   resp.backups[0].s3_log_url #=> String
    #   resp.backups[0].security_group_ids #=> Array
    #   resp.backups[0].security_group_ids[0] #=> String
    #   resp.backups[0].server_name #=> String
    #   resp.backups[0].service_role_arn #=> String
    #   resp.backups[0].status #=> String, one of "IN_PROGRESS", "OK", "FAILED", "DELETING"
    #   resp.backups[0].status_description #=> String
    #   resp.backups[0].subnet_ids #=> Array
    #   resp.backups[0].subnet_ids[0] #=> String
    #   resp.backups[0].tools_version #=> String
    #   resp.backups[0].user_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeBackups AWS API Documentation
    #
    # @overload describe_backups(params = {})
    # @param [Hash] params ({})
    def describe_backups(params = {}, options = {})
      req = build_request(:describe_backups, params)
      req.send_request(options)
    end

    # Describes events for a specified server. Results are ordered by time,
    # with newest events first.
    #
    # This operation is synchronous.
    #
    # A `ResourceNotFoundException` is thrown when the server does not
    # exist. A `ValidationException` is raised when parameters of the
    # request are not valid.
    #
    # @option params [required, String] :server_name
    #   The name of the server for which you want to view events.
    #
    # @option params [String] :next_token
    #   NextToken is a string that is returned in some command responses. It
    #   indicates that not all entries have been returned, and that you must
    #   run at least one more request to get remaining items. To get remaining
    #   results, call `DescribeEvents` again, and assign the token from the
    #   previous results as the value of the `nextToken` parameter. If there
    #   are no more results, the response object's `nextToken` parameter
    #   value is `null`. Setting a `nextToken` value that was not returned in
    #   your previous results causes an `InvalidNextTokenException` to occur.
    #
    # @option params [Integer] :max_results
    #   To receive a paginated response, use this parameter to specify the
    #   maximum number of results to be returned with a single call. If the
    #   number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @return [Types::DescribeEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventsResponse#server_events #server_events} => Array&lt;Types::ServerEvent&gt;
    #   * {Types::DescribeEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     server_name: "ServerName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.server_events #=> Array
    #   resp.server_events[0].created_at #=> Time
    #   resp.server_events[0].server_name #=> String
    #   resp.server_events[0].message #=> String
    #   resp.server_events[0].log_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns the current status of an existing association or
    # disassociation request.
    #
    # A `ResourceNotFoundException` is thrown when no recent association or
    # disassociation request with the specified token is found, or when the
    # server does not exist. A `ValidationException` is raised when
    # parameters of the request are not valid.
    #
    # @option params [required, String] :node_association_status_token
    #   The token returned in either the AssociateNodeResponse or the
    #   DisassociateNodeResponse.
    #
    # @option params [required, String] :server_name
    #   The name of the server from which to disassociate the node.
    #
    # @return [Types::DescribeNodeAssociationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNodeAssociationStatusResponse#node_association_status #node_association_status} => String
    #   * {Types::DescribeNodeAssociationStatusResponse#engine_attributes #engine_attributes} => Array&lt;Types::EngineAttribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_node_association_status({
    #     node_association_status_token: "NodeAssociationStatusToken", # required
    #     server_name: "ServerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.node_association_status #=> String, one of "SUCCESS", "FAILED", "IN_PROGRESS"
    #   resp.engine_attributes #=> Array
    #   resp.engine_attributes[0].name #=> String
    #   resp.engine_attributes[0].value #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * node_associated
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeNodeAssociationStatus AWS API Documentation
    #
    # @overload describe_node_association_status(params = {})
    # @param [Hash] params ({})
    def describe_node_association_status(params = {}, options = {})
      req = build_request(:describe_node_association_status, params)
      req.send_request(options)
    end

    # Lists all configuration management servers that are identified with
    # your account. Only the stored results from Amazon DynamoDB are
    # returned. AWS OpsWorks CM does not query other services.
    #
    # This operation is synchronous.
    #
    # A `ResourceNotFoundException` is thrown when the server does not
    # exist. A `ValidationException` is raised when parameters of the
    # request are not valid.
    #
    # @option params [String] :server_name
    #   Describes the server with the specified ServerName.
    #
    # @option params [String] :next_token
    #   This is not currently implemented for `DescribeServers` requests.
    #
    # @option params [Integer] :max_results
    #   This is not currently implemented for `DescribeServers` requests.
    #
    # @return [Types::DescribeServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServersResponse#servers #servers} => Array&lt;Types::Server&gt;
    #   * {Types::DescribeServersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_servers({
    #     server_name: "ServerName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.servers #=> Array
    #   resp.servers[0].associate_public_ip_address #=> Boolean
    #   resp.servers[0].backup_retention_count #=> Integer
    #   resp.servers[0].server_name #=> String
    #   resp.servers[0].created_at #=> Time
    #   resp.servers[0].cloud_formation_stack_arn #=> String
    #   resp.servers[0].custom_domain #=> String
    #   resp.servers[0].disable_automated_backup #=> Boolean
    #   resp.servers[0].endpoint #=> String
    #   resp.servers[0].engine #=> String
    #   resp.servers[0].engine_model #=> String
    #   resp.servers[0].engine_attributes #=> Array
    #   resp.servers[0].engine_attributes[0].name #=> String
    #   resp.servers[0].engine_attributes[0].value #=> String
    #   resp.servers[0].engine_version #=> String
    #   resp.servers[0].instance_profile_arn #=> String
    #   resp.servers[0].instance_type #=> String
    #   resp.servers[0].key_pair #=> String
    #   resp.servers[0].maintenance_status #=> String, one of "SUCCESS", "FAILED"
    #   resp.servers[0].preferred_maintenance_window #=> String
    #   resp.servers[0].preferred_backup_window #=> String
    #   resp.servers[0].security_group_ids #=> Array
    #   resp.servers[0].security_group_ids[0] #=> String
    #   resp.servers[0].service_role_arn #=> String
    #   resp.servers[0].status #=> String, one of "BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"
    #   resp.servers[0].status_reason #=> String
    #   resp.servers[0].subnet_ids #=> Array
    #   resp.servers[0].subnet_ids[0] #=> String
    #   resp.servers[0].server_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeServers AWS API Documentation
    #
    # @overload describe_servers(params = {})
    # @param [Hash] params ({})
    def describe_servers(params = {}, options = {})
      req = build_request(:describe_servers, params)
      req.send_request(options)
    end

    # Disassociates a node from an AWS OpsWorks CM server, and removes the
    # node from the server's managed nodes. After a node is disassociated,
    # the node key pair is no longer valid for accessing the configuration
    # manager's API. For more information about how to associate a node,
    # see AssociateNode.
    #
    # A node can can only be disassociated from a server that is in a
    # `HEALTHY` state. Otherwise, an `InvalidStateException` is thrown. A
    # `ResourceNotFoundException` is thrown when the server does not exist.
    # A `ValidationException` is raised when parameters of the request are
    # not valid.
    #
    # @option params [required, String] :server_name
    #   The name of the server from which to disassociate the node.
    #
    # @option params [required, String] :node_name
    #   The name of the client node.
    #
    # @option params [Array<Types::EngineAttribute>] :engine_attributes
    #   Engine attributes that are used for disassociating the node. No
    #   attributes are required for Puppet.
    #
    #   **Attributes required in a DisassociateNode request for Chef**
    #
    #   * `CHEF_ORGANIZATION`\: The Chef organization with which the node was
    #     associated. By default only one organization named `default` can
    #     exist.
    #
    #   ^
    #
    # @return [Types::DisassociateNodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateNodeResponse#node_association_status_token #node_association_status_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_node({
    #     server_name: "ServerName", # required
    #     node_name: "NodeName", # required
    #     engine_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.node_association_status_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DisassociateNode AWS API Documentation
    #
    # @overload disassociate_node(params = {})
    # @param [Hash] params ({})
    def disassociate_node(params = {}, options = {})
      req = build_request(:disassociate_node, params)
      req.send_request(options)
    end

    # Exports a specified server engine attribute as a base64-encoded
    # string. For example, you can export user data that you can use in EC2
    # to associate nodes with a server.
    #
    # This operation is synchronous.
    #
    # A `ValidationException` is raised when parameters of the request are
    # not valid. A `ResourceNotFoundException` is thrown when the server
    # does not exist. An `InvalidStateException` is thrown when the server
    # is in any of the following states: CREATING, TERMINATED, FAILED or
    # DELETING.
    #
    # @option params [required, String] :export_attribute_name
    #   The name of the export attribute. Currently, the supported export
    #   attribute is `Userdata`. This exports a user data script that includes
    #   parameters and values provided in the `InputAttributes` list.
    #
    # @option params [required, String] :server_name
    #   The name of the server from which you are exporting the attribute.
    #
    # @option params [Array<Types::EngineAttribute>] :input_attributes
    #   The list of engine attributes. The list type is `EngineAttribute`. An
    #   `EngineAttribute` list item is a pair that includes an attribute name
    #   and its value. For the `Userdata` ExportAttributeName, the following
    #   are supported engine attribute names.
    #
    #   * **RunList** In Chef, a list of roles or recipes that are run in the
    #     specified order. In Puppet, this parameter is ignored.
    #
    #   * **OrganizationName** In Chef, an organization name. AWS OpsWorks for
    #     Chef Automate always creates the organization `default`. In Puppet,
    #     this parameter is ignored.
    #
    #   * **NodeEnvironment** In Chef, a node environment (for example,
    #     development, staging, or one-box). In Puppet, this parameter is
    #     ignored.
    #
    #   * **NodeClientVersion** In Chef, the version of the Chef engine (three
    #     numbers separated by dots, such as 13.8.5). If this attribute is
    #     empty, OpsWorks for Chef Automate uses the most current version. In
    #     Puppet, this parameter is ignored.
    #
    # @return [Types::ExportServerEngineAttributeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportServerEngineAttributeResponse#engine_attribute #engine_attribute} => Types::EngineAttribute
    #   * {Types::ExportServerEngineAttributeResponse#server_name #server_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_server_engine_attribute({
    #     export_attribute_name: "String", # required
    #     server_name: "ServerName", # required
    #     input_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.engine_attribute.name #=> String
    #   resp.engine_attribute.value #=> String
    #   resp.server_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/ExportServerEngineAttribute AWS API Documentation
    #
    # @overload export_server_engine_attribute(params = {})
    # @param [Hash] params ({})
    def export_server_engine_attribute(params = {}, options = {})
      req = build_request(:export_server_engine_attribute, params)
      req.send_request(options)
    end

    # Returns a list of tags that are applied to the specified AWS OpsWorks
    # for Chef Automate or AWS OpsWorks for Puppet Enterprise servers or
    # backups.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of an AWS OpsWorks for Chef Automate
    #   or AWS OpsWorks for Puppet Enterprise server for which you want to
    #   show applied tags. For example,
    #   `arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE`.
    #
    # @option params [String] :next_token
    #   NextToken is a string that is returned in some command responses. It
    #   indicates that not all entries have been returned, and that you must
    #   run at least one more request to get remaining items. To get remaining
    #   results, call `ListTagsForResource` again, and assign the token from
    #   the previous results as the value of the `nextToken` parameter. If
    #   there are no more results, the response object's `nextToken`
    #   parameter value is `null`. Setting a `nextToken` value that was not
    #   returned in your previous results causes an
    #   `InvalidNextTokenException` to occur.
    #
    # @option params [Integer] :max_results
    #   To receive a paginated response, use this parameter to specify the
    #   maximum number of results to be returned with a single call. If the
    #   number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AWSOpsWorksCMResourceArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Restores a backup to a server that is in a `CONNECTION_LOST`,
    # `HEALTHY`, `RUNNING`, `UNHEALTHY`, or `TERMINATED` state. When you run
    # RestoreServer, the server's EC2 instance is deleted, and a new EC2
    # instance is configured. RestoreServer maintains the existing server
    # endpoint, so configuration management of the server's client devices
    # (nodes) should continue to work.
    #
    # Restoring from a backup is performed by creating a new EC2 instance.
    # If restoration is successful, and the server is in a `HEALTHY` state,
    # AWS OpsWorks CM switches traffic over to the new instance. After
    # restoration is finished, the old EC2 instance is maintained in a
    # `Running` or `Stopped` state, but is eventually terminated.
    #
    # This operation is asynchronous.
    #
    # An `InvalidStateException` is thrown when the server is not in a valid
    # state. A `ResourceNotFoundException` is thrown when the server does
    # not exist. A `ValidationException` is raised when parameters of the
    # request are not valid.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup that you want to use to restore a server.
    #
    # @option params [required, String] :server_name
    #   The name of the server that you want to restore.
    #
    # @option params [String] :instance_type
    #   The type of instance to restore. Valid values must be specified in the
    #   following format: `^([cm][34]|t2).*` For example, `m5.large`. Valid
    #   values are `m5.large`, `r5.xlarge`, and `r5.2xlarge`. If you do not
    #   specify this parameter, RestoreServer uses the instance type from the
    #   specified backup.
    #
    # @option params [String] :key_pair
    #   The name of the key pair to set on the new EC2 instance. This can be
    #   helpful if the administrator no longer has the SSH key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_server({
    #     backup_id: "BackupId", # required
    #     server_name: "ServerName", # required
    #     instance_type: "String",
    #     key_pair: "KeyPair",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/RestoreServer AWS API Documentation
    #
    # @overload restore_server(params = {})
    # @param [Hash] params ({})
    def restore_server(params = {}, options = {})
      req = build_request(:restore_server, params)
      req.send_request(options)
    end

    # Manually starts server maintenance. This command can be useful if an
    # earlier maintenance attempt failed, and the underlying cause of
    # maintenance failure has been resolved. The server is in an
    # `UNDER_MAINTENANCE` state while maintenance is in progress.
    #
    # Maintenance can only be started on servers in `HEALTHY` and
    # `UNHEALTHY` states. Otherwise, an `InvalidStateException` is thrown. A
    # `ResourceNotFoundException` is thrown when the server does not exist.
    # A `ValidationException` is raised when parameters of the request are
    # not valid.
    #
    # @option params [required, String] :server_name
    #   The name of the server on which to run maintenance.
    #
    # @option params [Array<Types::EngineAttribute>] :engine_attributes
    #   Engine attributes that are specific to the server on which you want to
    #   run maintenance.
    #
    #   **Attributes accepted in a StartMaintenance request for Chef**
    #
    #   * `CHEF_MAJOR_UPGRADE`\: If a Chef Automate server is eligible for
    #     upgrade to Chef Automate 2, add this engine attribute to a
    #     `StartMaintenance` request and set the value to `true` to upgrade
    #     the server to Chef Automate 2. For more information, see [Upgrade an
    #     AWS OpsWorks for Chef Automate Server to Chef Automate 2][1].
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/opscm-a2upgrade.html
    #
    # @return [Types::StartMaintenanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMaintenanceResponse#server #server} => Types::Server
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_maintenance({
    #     server_name: "ServerName", # required
    #     engine_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.server.associate_public_ip_address #=> Boolean
    #   resp.server.backup_retention_count #=> Integer
    #   resp.server.server_name #=> String
    #   resp.server.created_at #=> Time
    #   resp.server.cloud_formation_stack_arn #=> String
    #   resp.server.custom_domain #=> String
    #   resp.server.disable_automated_backup #=> Boolean
    #   resp.server.endpoint #=> String
    #   resp.server.engine #=> String
    #   resp.server.engine_model #=> String
    #   resp.server.engine_attributes #=> Array
    #   resp.server.engine_attributes[0].name #=> String
    #   resp.server.engine_attributes[0].value #=> String
    #   resp.server.engine_version #=> String
    #   resp.server.instance_profile_arn #=> String
    #   resp.server.instance_type #=> String
    #   resp.server.key_pair #=> String
    #   resp.server.maintenance_status #=> String, one of "SUCCESS", "FAILED"
    #   resp.server.preferred_maintenance_window #=> String
    #   resp.server.preferred_backup_window #=> String
    #   resp.server.security_group_ids #=> Array
    #   resp.server.security_group_ids[0] #=> String
    #   resp.server.service_role_arn #=> String
    #   resp.server.status #=> String, one of "BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"
    #   resp.server.status_reason #=> String
    #   resp.server.subnet_ids #=> Array
    #   resp.server.subnet_ids[0] #=> String
    #   resp.server.server_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/StartMaintenance AWS API Documentation
    #
    # @overload start_maintenance(params = {})
    # @param [Hash] params ({})
    def start_maintenance(params = {}, options = {})
      req = build_request(:start_maintenance, params)
      req.send_request(options)
    end

    # Applies tags to an AWS OpsWorks for Chef Automate or AWS OpsWorks for
    # Puppet Enterprise server, or to server backups.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of a resource to which you want to
    #   apply tags. For example,
    #   `arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE`.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A map that contains tag keys and tag values to attach to AWS
    #   OpsWorks-CM servers or backups.
    #
    #   * The key cannot be empty.
    #
    #   * The key can be a maximum of 127 characters, and can contain only
    #     Unicode letters, numbers, or separators, or the following special
    #     characters: `+ - = . _ : /`
    #
    #   * The value can be a maximum 255 characters, and contain only Unicode
    #     letters, numbers, or separators, or the following special
    #     characters: `+ - = . _ : /`
    #
    #   * Leading and trailing white spaces are trimmed from both the key and
    #     value.
    #
    #   * A maximum of 50 user-applied tags is allowed for any AWS OpsWorks-CM
    #     server or backup.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AWSOpsWorksCMResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes specified tags from an AWS OpsWorks-CM server or backup.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of a resource from which you want to
    #   remove tags. For example,
    #   `arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE`.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of tags that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AWSOpsWorksCMResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates settings for a server.
    #
    # This operation is synchronous.
    #
    # @option params [Boolean] :disable_automated_backup
    #   Setting DisableAutomatedBackup to `true` disables automated or
    #   scheduled backups. Automated backups are enabled by default.
    #
    # @option params [Integer] :backup_retention_count
    #   Sets the number of automated backups that you want to keep.
    #
    # @option params [required, String] :server_name
    #   The name of the server to update.
    #
    # @option params [String] :preferred_maintenance_window
    #   `DDD:HH:MM` (weekly start time) or `HH:MM` (daily start time).
    #
    #   Time windows always use coordinated universal time (UTC). Valid
    #   strings for day of week (`DDD`) are: `Mon`, `Tue`, `Wed`, `Thr`,
    #   `Fri`, `Sat`, or `Sun`.
    #
    # @option params [String] :preferred_backup_window
    #   `DDD:HH:MM` (weekly start time) or `HH:MM` (daily start time).
    #
    #   Time windows always use coordinated universal time (UTC). Valid
    #   strings for day of week (`DDD`) are: `Mon`, `Tue`, `Wed`, `Thr`,
    #   `Fri`, `Sat`, or `Sun`.
    #
    # @return [Types::UpdateServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServerResponse#server #server} => Types::Server
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server({
    #     disable_automated_backup: false,
    #     backup_retention_count: 1,
    #     server_name: "ServerName", # required
    #     preferred_maintenance_window: "TimeWindowDefinition",
    #     preferred_backup_window: "TimeWindowDefinition",
    #   })
    #
    # @example Response structure
    #
    #   resp.server.associate_public_ip_address #=> Boolean
    #   resp.server.backup_retention_count #=> Integer
    #   resp.server.server_name #=> String
    #   resp.server.created_at #=> Time
    #   resp.server.cloud_formation_stack_arn #=> String
    #   resp.server.custom_domain #=> String
    #   resp.server.disable_automated_backup #=> Boolean
    #   resp.server.endpoint #=> String
    #   resp.server.engine #=> String
    #   resp.server.engine_model #=> String
    #   resp.server.engine_attributes #=> Array
    #   resp.server.engine_attributes[0].name #=> String
    #   resp.server.engine_attributes[0].value #=> String
    #   resp.server.engine_version #=> String
    #   resp.server.instance_profile_arn #=> String
    #   resp.server.instance_type #=> String
    #   resp.server.key_pair #=> String
    #   resp.server.maintenance_status #=> String, one of "SUCCESS", "FAILED"
    #   resp.server.preferred_maintenance_window #=> String
    #   resp.server.preferred_backup_window #=> String
    #   resp.server.security_group_ids #=> Array
    #   resp.server.security_group_ids[0] #=> String
    #   resp.server.service_role_arn #=> String
    #   resp.server.status #=> String, one of "BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"
    #   resp.server.status_reason #=> String
    #   resp.server.subnet_ids #=> Array
    #   resp.server.subnet_ids[0] #=> String
    #   resp.server.server_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UpdateServer AWS API Documentation
    #
    # @overload update_server(params = {})
    # @param [Hash] params ({})
    def update_server(params = {}, options = {})
      req = build_request(:update_server, params)
      req.send_request(options)
    end

    # Updates engine-specific attributes on a specified server. The server
    # enters the `MODIFYING` state when this operation is in progress. Only
    # one update can occur at a time. You can use this command to reset a
    # Chef server's public key (`CHEF_PIVOTAL_KEY`) or a Puppet server's
    # admin password (`PUPPET_ADMIN_PASSWORD`).
    #
    # This operation is asynchronous.
    #
    # This operation can only be called for servers in `HEALTHY` or
    # `UNHEALTHY` states. Otherwise, an `InvalidStateException` is raised. A
    # `ResourceNotFoundException` is thrown when the server does not exist.
    # A `ValidationException` is raised when parameters of the request are
    # not valid.
    #
    # @option params [required, String] :server_name
    #   The name of the server to update.
    #
    # @option params [required, String] :attribute_name
    #   The name of the engine attribute to update.
    #
    # @option params [String] :attribute_value
    #   The value to set for the attribute.
    #
    # @return [Types::UpdateServerEngineAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServerEngineAttributesResponse#server #server} => Types::Server
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server_engine_attributes({
    #     server_name: "ServerName", # required
    #     attribute_name: "AttributeName", # required
    #     attribute_value: "AttributeValue",
    #   })
    #
    # @example Response structure
    #
    #   resp.server.associate_public_ip_address #=> Boolean
    #   resp.server.backup_retention_count #=> Integer
    #   resp.server.server_name #=> String
    #   resp.server.created_at #=> Time
    #   resp.server.cloud_formation_stack_arn #=> String
    #   resp.server.custom_domain #=> String
    #   resp.server.disable_automated_backup #=> Boolean
    #   resp.server.endpoint #=> String
    #   resp.server.engine #=> String
    #   resp.server.engine_model #=> String
    #   resp.server.engine_attributes #=> Array
    #   resp.server.engine_attributes[0].name #=> String
    #   resp.server.engine_attributes[0].value #=> String
    #   resp.server.engine_version #=> String
    #   resp.server.instance_profile_arn #=> String
    #   resp.server.instance_type #=> String
    #   resp.server.key_pair #=> String
    #   resp.server.maintenance_status #=> String, one of "SUCCESS", "FAILED"
    #   resp.server.preferred_maintenance_window #=> String
    #   resp.server.preferred_backup_window #=> String
    #   resp.server.security_group_ids #=> Array
    #   resp.server.security_group_ids[0] #=> String
    #   resp.server.service_role_arn #=> String
    #   resp.server.status #=> String, one of "BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"
    #   resp.server.status_reason #=> String
    #   resp.server.subnet_ids #=> Array
    #   resp.server.subnet_ids[0] #=> String
    #   resp.server.server_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UpdateServerEngineAttributes AWS API Documentation
    #
    # @overload update_server_engine_attributes(params = {})
    # @param [Hash] params ({})
    def update_server_engine_attributes(params = {}, options = {})
      req = build_request(:update_server_engine_attributes, params)
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
      context[:gem_name] = 'aws-sdk-opsworkscm'
      context[:gem_version] = '1.40.0'
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
    # | waiter_name     | params                                    | :delay   | :max_attempts |
    # | --------------- | ----------------------------------------- | -------- | ------------- |
    # | node_associated | {Client#describe_node_association_status} | 15       | 15            |
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
        node_associated: Waiters::NodeAssociated
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
