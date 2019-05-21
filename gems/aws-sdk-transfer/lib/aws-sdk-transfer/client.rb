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

Aws::Plugins::GlobalConfiguration.add_identifier(:transfer)

module Aws::Transfer
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

    # Instantiates an autoscaling virtual server based on Secure File
    # Transfer Protocol (SFTP) in AWS. The call returns the `ServerId`
    # property assigned by the service to the newly created server.
    # Reference this `ServerId` property when you make updates to your
    # server, or work with users.
    #
    # The response returns the `ServerId` value for the newly created
    # server.
    #
    # @option params [Types::EndpointDetails] :endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that you want to
    #   configure for your SFTP server.
    #
    # @option params [String] :endpoint_type
    #   The type of VPC endpoint that you want your SFTP server connect to. If
    #   you connect to a VPC endpoint, your SFTP server isn't accessible over
    #   the public internet.
    #
    # @option params [String] :host_key
    #   The RSA private key as generated by `ssh-keygen -N "" -f
    #   my-new-server-key` command.
    #
    #   If you aren't planning to migrate existing users from an existing
    #   SFTP server to a new AWS SFTP server, don't update the host key.
    #   Accidentally changing a server's host key can be disruptive. For more
    #   information, see change-host-key in the *AWS SFTP User Guide.*
    #
    # @option params [Types::IdentityProviderDetails] :identity_provider_details
    #   An array containing all of the information required to call a
    #   customer-supplied authentication API. This parameter is not required
    #   when the `IdentityProviderType` value of server that is created uses
    #   the `SERVICE_MANAGED` authentication method.
    #
    # @option params [String] :identity_provider_type
    #   The mode of authentication enabled for this service. The default value
    #   is `SERVICE_MANAGED`, which allows you to store and access SFTP user
    #   credentials within the service. An `IdentityProviderType` value of
    #   `API_GATEWAY` indicates that user authentication requires a call to an
    #   API Gateway endpoint URL provided by you to integrate an identity
    #   provider of your choice.
    #
    # @option params [String] :logging_role
    #   A value that allows the service to write your SFTP users' activity to
    #   your Amazon CloudWatch logs for monitoring and auditing purposes.
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
    #     endpoint_details: {
    #       vpc_endpoint_id: "VpcEndpointId",
    #     },
    #     endpoint_type: "PUBLIC", # accepts PUBLIC, VPC_ENDPOINT
    #     host_key: "HostKey",
    #     identity_provider_details: {
    #       url: "Url",
    #       invocation_role: "Role",
    #     },
    #     identity_provider_type: "SERVICE_MANAGED", # accepts SERVICE_MANAGED, API_GATEWAY
    #     logging_role: "Role",
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

    # Adds a user and associate them with an existing Secure File Transfer
    # Protocol (SFTP) server. Using parameters for `CreateUser`, you can
    # specify the user name, set the home directory, store the user's
    # public key, and assign the user's AWS Identity and Access Management
    # (IAM) role. You can also optionally add a scope-down policy, and
    # assign metadata with tags that can be used to group and search for
    # users.
    #
    # The response returns the `UserName` and `ServerId` values of the new
    # user for that server.
    #
    # @option params [String] :home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using their SFTP client. An example is `/home/username `.
    #
    # @option params [String] :policy
    #   A scope-down policy for your user so you can use the same IAM role
    #   across multiple users. This policy scopes down user access to portions
    #   of their Amazon S3 bucket. Variables you can use inside this policy
    #   include `$\{Transfer:UserName\}`, `$\{Transfer:HomeDirectory\}`, and
    #   `$\{Transfer:HomeBucket\}`.
    #
    # @option params [required, String] :role
    #   The IAM role that controls your user's access to your Amazon S3
    #   bucket. The policies attached to this role will determine the level of
    #   access you want to provide your users when transferring files into and
    #   out of your Amazon S3 bucket or buckets. The IAM role should also
    #   contain a trust relationship that allows the SFTP server to access
    #   your resources when servicing your SFTP user's transfer requests.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for an SFTP server instance. This
    #   is the specific SFTP server that you added your user to.
    #
    # @option params [String] :ssh_public_key_body
    #   The public portion of the Secure Shall (SSH) key used to authenticate
    #   the user to the SFTP server.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that can be used to group and search for users. Tags
    #   are metadata attached to users for any purpose.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user and is associated with a server
    #   as specified by the `ServerId`. This user name must be a minimum of 3
    #   and a maximum of 32 characters long. The following are valid
    #   characters: a-z, A-Z, 0-9, underscore, and hyphen. The user name
    #   can't start with a hyphen.
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

    # Deletes the Secure File Transfer Protocol (SFTP) server that you
    # specify. If you used `SERVICE_MANAGED` as your `IdentityProviderType`,
    # you need to delete all users associated with this server before
    # deleting the server itself
    #
    # No response returns from this call.
    #
    # @option params [required, String] :server_id
    #   A unique system-assigned identifier for an SFTP server instance.
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
    # No response is returned from this call.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a Secure File Transfer
    #   Protocol (SFTP) server instance that has the user assigned to it.
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

    # Deletes the user belonging to the server you specify.
    #
    # No response returns from this call.
    #
    # <note markdown="1"> When you delete a user from a server, the user's information is lost.
    #
    #  </note>
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for an SFTP server instance that
    #   has the user assigned to it.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user that is being deleted from the
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

    # Describes the server that you specify by passing the `ServerId`
    # parameter.
    #
    # The response contains a description of the server's properties.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for an SFTP server.
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
    #   resp.server.endpoint_details.vpc_endpoint_id #=> String
    #   resp.server.endpoint_type #=> String, one of "PUBLIC", "VPC_ENDPOINT"
    #   resp.server.host_key_fingerprint #=> String
    #   resp.server.identity_provider_details.url #=> String
    #   resp.server.identity_provider_details.invocation_role #=> String
    #   resp.server.identity_provider_type #=> String, one of "SERVICE_MANAGED", "API_GATEWAY"
    #   resp.server.logging_role #=> String
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

    # Describes the user assigned to a specific server, as identified by its
    # `ServerId` property.
    #
    # The response from this call returns the properties of the user
    # associated with the `ServerId` value that was specified.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for an SFTP server that has this
    #   user assigned.
    #
    # @option params [required, String] :user_name
    #   The name of the user assigned to one or more servers. User names are
    #   part of the sign-in credentials to use the AWS Transfer service and
    #   perform file transfer tasks.
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
    # `UserName` value assigned to a specific server, identified by
    # `ServerId`.
    #
    # The response returns the `UserName` value, the `ServerId` value, and
    # the name of the `SshPublicKeyId`.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for an SFTP server.
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

    # Lists the Secure File Transfer Protocol (SFTP) servers that are
    # associated with your AWS account.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of servers to return as a response to the
    #   `ListServers` query.
    #
    # @option params [String] :next_token
    #   When additional results are obtained from the ListServers command, a
    #   `NextToken` parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional servers.
    #
    # @return [Types::ListServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServersResponse#next_token #next_token} => String
    #   * {Types::ListServersResponse#servers #servers} => Array&lt;Types::ListedServer&gt;
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
    #   resp.servers[0].endpoint_type #=> String, one of "PUBLIC", "VPC_ENDPOINT"
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
    #   call, a `NextToken` parameter is returned in the input. You can then
    #   pass in a subsequent command the `NextToken` parameter to continue
    #   listing additional tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#arn #arn} => String
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
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

    # Lists the users for the server that you specify by passing the
    # `ServerId` parameter.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of users to return as a response to the
    #   `ListUsers` request.
    #
    # @option params [String] :next_token
    #   When you can get additional results from the `ListUsers` call, a
    #   `NextToken` parameter is returned in the output. You can then pass in
    #   a subsequent command the `NextToken` parameter to continue listing
    #   additional users.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for a Secure File Transfer
    #   Protocol (SFTP) server that has users are assigned to it.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #   * {Types::ListUsersResponse#server_id #server_id} => String
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::ListedUser&gt;
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

    # Changes the state of a Secure File Transfer Protocol (SFTP) server
    # from `OFFLINE` to `ONLINE`. It has no impact on an SFTP server that is
    # already `ONLINE`. An `ONLINE` server can accept and process file
    # transfer jobs.
    #
    # The state of `STARTING` indicates that the server is in an
    # intermediate state, either not fully able to respond, or not fully
    # online. The values of `START_FAILED` can indicate an error condition.
    #
    # No response is returned from this call.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for an SFTP server that you start.
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

    # Changes the state of an SFTP server from `ONLINE` to `OFFLINE`. An
    # `OFFLINE` server cannot accept and process file transfer jobs.
    # Information tied to your server such as server and user properties are
    # not affected by stopping your server. Stopping a server will not
    # reduce or impact your Secure File Transfer Protocol (SFTP) endpoint
    # billing.
    #
    # The states of `STOPPING` indicates that the server is in an
    # intermediate state, either not fully able to respond, or not fully
    # offline. The values of `STOP_FAILED` can indicate an error condition.
    #
    # No response is returned from this call.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for an SFTP server that you
    #   stopped.
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

    # If the `IdentityProviderType` of the server is `API_Gateway`, tests
    # whether your API Gateway is set up successfully. We highly recommend
    # that you call this method to test your authentication method as soon
    # as you create your server. By doing so, you can troubleshoot issues
    # with the API Gateway integration to ensure that your users can
    # successfully use the service.
    #
    # @option params [required, String] :server_id
    #   A system assigned identifier for a specific server. That server's
    #   user authentication method is tested with a user name and password.
    #
    # @option params [required, String] :user_name
    #   This request parameter is name of the user account to be tested.
    #
    # @option params [String] :user_password
    #   The password of the user account to be tested.
    #
    # @return [Types::TestIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestIdentityProviderResponse#message #message} => String
    #   * {Types::TestIdentityProviderResponse#status_code #status_code} => Integer
    #   * {Types::TestIdentityProviderResponse#url #url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_identity_provider({
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #     user_password: "UserPassword",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.status_code #=> Integer
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
    #   This is the value of the resource that will have the tag removed. An
    #   Amazon Resource Name (ARN) is an identifier for a specific AWS
    #   resource, such as a server, user, or role.
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

    # Updates the server properties after that server has been created.
    #
    # The `UpdateServer` call returns the `ServerId` of the Secure File
    # Transfer Protocol (SFTP) server you updated.
    #
    # @option params [Types::EndpointDetails] :endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are configured
    #   for your SFTP server. With a VPC endpoint, your SFTP server isn't
    #   accessible over the public internet.
    #
    # @option params [String] :endpoint_type
    #   The type of endpoint that you want your SFTP server to connect to. You
    #   can choose to connect to the public internet or a virtual private
    #   cloud (VPC) endpoint. With a VPC endpoint, your SFTP server isn't
    #   accessible over the public internet.
    #
    # @option params [String] :host_key
    #   The RSA private key as generated by `ssh-keygen -N "" -f
    #   my-new-server-key`.
    #
    #   If you aren't planning to migrate existing users from an existing
    #   SFTP server to a new AWS SFTP server, don't update the host key.
    #   Accidentally changing a server's host key can be disruptive. For more
    #   information, see change-host-key in the *AWS SFTP User Guide.*
    #
    # @option params [Types::IdentityProviderDetails] :identity_provider_details
    #   This response parameter is an array containing all of the information
    #   required to call a customer's authentication API method.
    #
    # @option params [String] :logging_role
    #   A value that changes the AWS Identity and Access Management (IAM) role
    #   that allows Amazon S3 events to be logged in Amazon CloudWatch,
    #   turning logging on or off.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for an SFTP server instance that
    #   the user account is assigned to.
    #
    # @return [Types::UpdateServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServerResponse#server_id #server_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server({
    #     endpoint_details: {
    #       vpc_endpoint_id: "VpcEndpointId",
    #     },
    #     endpoint_type: "PUBLIC", # accepts PUBLIC, VPC_ENDPOINT
    #     host_key: "HostKey",
    #     identity_provider_details: {
    #       url: "Url",
    #       invocation_role: "Role",
    #     },
    #     logging_role: "NullableRole",
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
    #   The HomeDirectory parameter specifies the landing directory (folder)
    #   for a user when they log in to the server using their client. An
    #   example would be: `/home/username `.
    #
    # @option params [String] :policy
    #   Allows you to supply a scope-down policy for your user so you can use
    #   the same AWS Identity and Access Management (IAM) role across multiple
    #   users. The policy scopes down users access to portions of your Amazon
    #   S3 bucket. Variables you can use inside this policy include
    #   `$\{Transfer:UserName\}`, `$\{Transfer:HomeDirectory\}`, and
    #   `$\{Transfer:HomeBucket\}`.
    #
    # @option params [String] :role
    #   The IAM role that controls your user's access to your Amazon S3
    #   bucket. The policies attached to this role will determine the level of
    #   access you want to provide your users when transferring files into and
    #   out of your Amazon S3 bucket or buckets. The IAM role should also
    #   contain a trust relationship that allows the Secure File Transfer
    #   Protocol (SFTP) server to access your resources when servicing your
    #   SFTP user's transfer requests.
    #
    # @option params [required, String] :server_id
    #   A system-assigned unique identifier for an SFTP server instance that
    #   the user account is assigned to.
    #
    # @option params [required, String] :user_name
    #   A unique string that identifies a user and is associated with a server
    #   as specified by the ServerId. This is the string that will be used by
    #   your user when they log in to your SFTP server. This user name is a
    #   minimum of 3 and a maximum of 32 characters long. The following are
    #   valid characters: a-z, A-Z, 0-9, underscore, and hyphen. The user name
    #   can't start with a hyphen.
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
      context[:gem_version] = '1.9.0'
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
