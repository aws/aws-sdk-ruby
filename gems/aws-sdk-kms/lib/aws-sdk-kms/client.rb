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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:kms)

module Aws::KMS
  # An API client for KMS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::KMS::Client.new(
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

    @identifier = :kms

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

    # Cancels the deletion of a KMS key. When this operation succeeds, the
    # key state of the KMS key is `Disabled`. To enable the KMS key, use
    # EnableKey.
    #
    # For more information about scheduling and canceling deletion of a KMS
    # key, see [Deleting KMS keys][1] in the *Key Management Service
    # Developer Guide*.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][2] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:CancelKeyDeletion][3] (key policy)
    #
    # **Related operations**\: ScheduleKeyDeletion
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies the KMS key whose deletion is being canceled.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @return [Types::CancelKeyDeletionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelKeyDeletionResponse#key_id #key_id} => String
    #
    #
    # @example Example: To cancel deletion of a KMS key
    #
    #   # The following example cancels deletion of the specified KMS key.
    #
    #   resp = client.cancel_key_deletion({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose deletion you are canceling. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the KMS key whose deletion you canceled.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_key_deletion({
    #     key_id: "KeyIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CancelKeyDeletion AWS API Documentation
    #
    # @overload cancel_key_deletion(params = {})
    # @param [Hash] params ({})
    def cancel_key_deletion(params = {}, options = {})
      req = build_request(:cancel_key_deletion, params)
      req.send_request(options)
    end

    # Connects or reconnects a [custom key store][1] to its associated
    # CloudHSM cluster.
    #
    # The custom key store must be connected before you can create KMS keys
    # in the key store or use the KMS keys it contains. You can disconnect
    # and reconnect a custom key store at any time.
    #
    # To connect a custom key store, its associated CloudHSM cluster must
    # have at least one active HSM. To get the number of active HSMs in a
    # cluster, use the [DescribeClusters][2] operation. To add HSMs to the
    # cluster, use the [CreateHsm][3] operation. Also, the [ `kmsuser`
    # crypto user][4] (CU) must not be logged into the cluster. This
    # prevents KMS from using this account to log in.
    #
    # The connection process can take an extended amount of time to
    # complete; up to 20 minutes. This operation starts the connection
    # process, but it does not wait for it to complete. When it succeeds,
    # this operation quickly returns an HTTP 200 response and a JSON object
    # with no properties. However, this response does not indicate that the
    # custom key store is connected. To get the connection state of the
    # custom key store, use the DescribeCustomKeyStores operation.
    #
    # During the connection process, KMS finds the CloudHSM cluster that is
    # associated with the custom key store, creates the connection
    # infrastructure, connects to the cluster, logs into the CloudHSM client
    # as the `kmsuser` CU, and rotates its password.
    #
    # The `ConnectCustomKeyStore` operation might fail for various reasons.
    # To find the reason, use the DescribeCustomKeyStores operation and see
    # the `ConnectionErrorCode` in the response. For help interpreting the
    # `ConnectionErrorCode`, see CustomKeyStoresListEntry.
    #
    # To fix the failure, use the DisconnectCustomKeyStore operation to
    # disconnect the custom key store, correct the error, use the
    # UpdateCustomKeyStore operation if necessary, and then use
    # `ConnectCustomKeyStore` again.
    #
    # If you are having trouble connecting or disconnecting a custom key
    # store, see [Troubleshooting a Custom Key Store][5] in the *Key
    # Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a
    # custom key store in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:ConnectCustomKeyStore][6] (IAM policy)
    #
    # **Related operations**
    #
    # * CreateCustomKeyStore
    #
    # * DeleteCustomKeyStore
    #
    # * DescribeCustomKeyStores
    #
    # * DisconnectCustomKeyStore
    #
    # * UpdateCustomKeyStore
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html
    # [3]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :custom_key_store_id
    #   Enter the key store ID of the custom key store that you want to
    #   connect. To find the ID of a custom key store, use the
    #   DescribeCustomKeyStores operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To connect a custom key store to its CloudHSM cluster
    #
    #   # This example connects an AWS KMS custom key store to its AWS CloudHSM cluster. This operation does not return any data.
    #   # To verify that the custom key store is connected, use the <code>DescribeCustomKeyStores</code> operation.
    #
    #   resp = client.connect_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0", # The ID of the AWS KMS custom key store.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.connect_custom_key_store({
    #     custom_key_store_id: "CustomKeyStoreIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ConnectCustomKeyStore AWS API Documentation
    #
    # @overload connect_custom_key_store(params = {})
    # @param [Hash] params ({})
    def connect_custom_key_store(params = {}, options = {})
      req = build_request(:connect_custom_key_store, params)
      req.send_request(options)
    end

    # Creates a friendly name for a KMS key.
    #
    # <note markdown="1"> Adding, deleting, or updating an alias can allow or deny permission to
    # the KMS key. For details, see [Using ABAC in KMS][1] in the *Key
    # Management Service Developer Guide*.
    #
    #  </note>
    #
    # You can use an alias to identify a KMS key in the KMS console, in the
    # DescribeKey operation and in [cryptographic operations][2], such as
    # Encrypt and GenerateDataKey. You can also change the KMS key that's
    # associated with the alias (UpdateAlias) or delete the alias
    # (DeleteAlias) at any time. These operations don't affect the
    # underlying KMS key.
    #
    # You can associate the alias with any customer managed key in the same
    # Amazon Web Services Region. Each alias is associated with only one KMS
    # key at a time, but a KMS key can have multiple aliases. A valid KMS
    # key is required. You can't create an alias without a KMS key.
    #
    # The alias must be unique in the account and Region, but you can have
    # aliases with the same name in different Regions. For detailed
    # information about aliases, see [Using aliases][3] in the *Key
    # Management Service Developer Guide*.
    #
    # This operation does not return a response. To get the alias that you
    # created, use the ListAliases operation.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][4] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on an
    # alias in a different Amazon Web Services account.
    #
    # **Required permissions**
    #
    # * [kms:CreateAlias][5] on the alias (IAM policy).
    #
    # * [kms:CreateAlias][5] on the KMS key (key policy).
    #
    # For details, see [Controlling access to aliases][6] in the *Key
    # Management Service Developer Guide*.
    #
    # **Related operations:**
    #
    # * DeleteAlias
    #
    # * ListAliases
    #
    # * UpdateAlias
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access
    #
    # @option params [required, String] :alias_name
    #   Specifies the alias name. This value must begin with `alias/` followed
    #   by a name, such as `alias/ExampleAlias`.
    #
    #   The `AliasName` value must be string of 1-256 characters. It can
    #   contain only alphanumeric characters, forward slashes (/), underscores
    #   (\_), and dashes (-). The alias name cannot begin with `alias/aws/`.
    #   The `alias/aws/` prefix is reserved for [Amazon Web Services managed
    #   keys][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    #
    # @option params [required, String] :target_key_id
    #   Associates the alias with the specified [customer managed key][1]. The
    #   KMS key must be in the same Amazon Web Services Region.
    #
    #   A valid key ID is required. If you supply a null or empty string
    #   value, this operation returns an error.
    #
    #   For help finding the key ID and ARN, see [Finding the Key ID and
    #   ARN][2] in the <i> <i>Key Management Service Developer Guide</i> </i>.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create an alias
    #
    #   # The following example creates an alias for the specified KMS key.
    #
    #   resp = client.create_alias({
    #     alias_name: "alias/ExampleAlias", # The alias to create. Aliases must begin with 'alias/'. Do not use aliases that begin with 'alias/aws' because they are reserved for use by AWS.
    #     target_key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose alias you are creating. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     alias_name: "AliasNameType", # required
    #     target_key_id: "KeyIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Creates a [custom key store][1] that is associated with an [CloudHSM
    # cluster][2] that you own and manage.
    #
    # This operation is part of the [Custom Key Store feature][1] feature in
    # KMS, which combines the convenience and extensive integration of KMS
    # with the isolation and control of a single-tenant key store.
    #
    # Before you create the custom key store, you must assemble the required
    # elements, including an CloudHSM cluster that fulfills the requirements
    # for a custom key store. For details about the required elements, see
    # [Assemble the Prerequisites][3] in the *Key Management Service
    # Developer Guide*.
    #
    # When the operation completes successfully, it returns the ID of the
    # new custom key store. Before you can use your new custom key store,
    # you need to use the ConnectCustomKeyStore operation to connect the new
    # key store to its CloudHSM cluster. Even if you are not going to use
    # your custom key store immediately, you might want to connect it to
    # verify that all settings are correct and then disconnect it until you
    # are ready to use it.
    #
    # For help with failures, see [Troubleshooting a Custom Key Store][4] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a
    # custom key store in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:CreateCustomKeyStore][5] (IAM policy).
    #
    # **Related operations:**
    #
    # * ConnectCustomKeyStore
    #
    # * DeleteCustomKeyStore
    #
    # * DescribeCustomKeyStores
    #
    # * DisconnectCustomKeyStore
    #
    # * UpdateCustomKeyStore
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :custom_key_store_name
    #   Specifies a friendly name for the custom key store. The name must be
    #   unique in your Amazon Web Services account.
    #
    # @option params [required, String] :cloud_hsm_cluster_id
    #   Identifies the CloudHSM cluster for the custom key store. Enter the
    #   cluster ID of any active CloudHSM cluster that is not already
    #   associated with a custom key store. To find the cluster ID, use the
    #   [DescribeClusters][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html
    #
    # @option params [required, String] :trust_anchor_certificate
    #   Enter the content of the trust anchor certificate for the cluster.
    #   This is the content of the `customerCA.crt` file that you created when
    #   you [initialized the cluster][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html
    #
    # @option params [required, String] :key_store_password
    #   Enter the password of the [ `kmsuser` crypto user (CU) account][1] in
    #   the specified CloudHSM cluster. KMS logs into the cluster as this user
    #   to manage key material on your behalf.
    #
    #   The password must be a string of 7 to 32 characters. Its value is case
    #   sensitive.
    #
    #   This parameter tells KMS the `kmsuser` account password; it does not
    #   change the password in the CloudHSM cluster.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser
    #
    # @return [Types::CreateCustomKeyStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomKeyStoreResponse#custom_key_store_id #custom_key_store_id} => String
    #
    #
    # @example Example: To create an AWS CloudHSM custom key store
    #
    #   # This example creates a custom key store that is associated with an AWS CloudHSM cluster.
    #
    #   resp = client.create_custom_key_store({
    #     cloud_hsm_cluster_id: "cluster-1a23b4cdefg", # The ID of the CloudHSM cluster.
    #     custom_key_store_name: "ExampleKeyStore", # A friendly name for the custom key store.
    #     key_store_password: "kmsPswd", # The password for the kmsuser CU account in the specified cluster.
    #     trust_anchor_certificate: "<certificate-goes-here>", # The content of the customerCA.crt file that you created when you initialized the cluster.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     custom_key_store_id: "cks-1234567890abcdef0", # The ID of the new custom key store.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_key_store({
    #     custom_key_store_name: "CustomKeyStoreNameType", # required
    #     cloud_hsm_cluster_id: "CloudHsmClusterIdType", # required
    #     trust_anchor_certificate: "TrustAnchorCertificateType", # required
    #     key_store_password: "KeyStorePasswordType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_key_store_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateCustomKeyStore AWS API Documentation
    #
    # @overload create_custom_key_store(params = {})
    # @param [Hash] params ({})
    def create_custom_key_store(params = {}, options = {})
      req = build_request(:create_custom_key_store, params)
      req.send_request(options)
    end

    # Adds a grant to a KMS key.
    #
    # A *grant* is a policy instrument that allows Amazon Web Services
    # principals to use KMS keys in cryptographic operations. It also can
    # allow them to view a KMS key (DescribeKey) and create and manage
    # grants. When authorizing access to a KMS key, grants are considered
    # along with key policies and IAM policies. Grants are often used for
    # temporary permissions because you can create one, use its permissions,
    # and delete it without changing your key policies or IAM policies.
    #
    # For detailed information about grants, including grant terminology,
    # see [Using grants][1] in the <i> <i>Key Management Service Developer
    # Guide</i> </i>. For examples of working with grants in several
    # programming languages, see [Programming grants][2].
    #
    # The `CreateGrant` operation returns a `GrantToken` and a `GrantId`.
    #
    # * When you create, retire, or revoke a grant, there might be a brief
    #   delay, usually less than five minutes, until the grant is available
    #   throughout KMS. This state is known as *eventual consistency*. Once
    #   the grant has achieved eventual consistency, the grantee principal
    #   can use the permissions in the grant without identifying the grant.
    #
    #   However, to use the permissions in the grant immediately, use the
    #   `GrantToken` that `CreateGrant` returns. For details, see [Using a
    #   grant token][3] in the <i> <i>Key Management Service Developer
    #   Guide</i> </i>.
    #
    # * The `CreateGrant` operation also returns a `GrantId`. You can use
    #   the `GrantId` and a key identifier to identify the grant in the
    #   RetireGrant and RevokeGrant operations. To find the grant ID, use
    #   the ListGrants or ListRetirableGrants operations.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][4] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: Yes. To perform this operation on a KMS key in
    # a different Amazon Web Services account, specify the key ARN in the
    # value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:CreateGrant][5] (key policy)
    #
    # **Related operations:**
    #
    # * ListGrants
    #
    # * ListRetirableGrants
    #
    # * RetireGrant
    #
    # * RevokeGrant
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies the KMS key for the grant. The grant gives principals
    #   permission to use this KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key. To specify a KMS key in
    #   a different Amazon Web Services account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, String] :grantee_principal
    #   The identity that gets the permissions specified in the grant.
    #
    #   To specify the principal, use the [Amazon Resource Name (ARN)][1] of
    #   an Amazon Web Services principal. Valid Amazon Web Services principals
    #   include Amazon Web Services accounts (root), IAM users, IAM roles,
    #   federated users, and assumed role users. For examples of the ARN
    #   syntax to use for specifying a principal, see [Amazon Web Services
    #   Identity and Access Management (IAM)][2] in the Example ARNs section
    #   of the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #
    # @option params [String] :retiring_principal
    #   The principal that has permission to use the RetireGrant operation to
    #   retire the grant.
    #
    #   To specify the principal, use the [Amazon Resource Name (ARN)][1] of
    #   an Amazon Web Services principal. Valid Amazon Web Services principals
    #   include Amazon Web Services accounts (root), IAM users, federated
    #   users, and assumed role users. For examples of the ARN syntax to use
    #   for specifying a principal, see [Amazon Web Services Identity and
    #   Access Management (IAM)][2] in the Example ARNs section of the *Amazon
    #   Web Services General Reference*.
    #
    #   The grant determines the retiring principal. Other principals might
    #   have permission to retire the grant or revoke the grant. For details,
    #   see RevokeGrant and [Retiring and revoking grants][3] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete
    #
    # @option params [required, Array<String>] :operations
    #   A list of operations that the grant permits.
    #
    #   The operation must be supported on the KMS key. For example, you
    #   cannot create a grant for a symmetric KMS key that allows the Sign
    #   operation, or a grant for an asymmetric KMS key that allows the
    #   GenerateDataKey operation. If you try, KMS returns a `ValidationError`
    #   exception. For details, see [Grant operations][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-grant-operations
    #
    # @option params [Types::GrantConstraints] :constraints
    #   Specifies a grant constraint.
    #
    #   KMS supports the `EncryptionContextEquals` and
    #   `EncryptionContextSubset` grant constraints. Each constraint value can
    #   include up to 8 encryption context pairs. The encryption context value
    #   in each constraint cannot exceed 384 characters.
    #
    #   These grant constraints allow the permissions in the grant only when
    #   the encryption context in the request matches
    #   (`EncryptionContextEquals`) or includes (`EncryptionContextSubset`)
    #   the encryption context specified in this structure. For information
    #   about grant constraints, see [Using grant constraints][1] in the *Key
    #   Management Service Developer Guide*. For more information about
    #   encryption context, see [Encryption Context][2] in the <i> <i>Key
    #   Management Service Developer Guide</i> </i>.
    #
    #   The encryption context grant constraints are supported only on
    #   operations that include an encryption context. You cannot use an
    #   encryption context grant constraint for cryptographic operations with
    #   asymmetric KMS keys or for management operations, such as DescribeKey
    #   or RetireGrant.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-grant-overview.html#grant-constraints
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @option params [String] :name
    #   A friendly name for the grant. Use this value to prevent the
    #   unintended creation of duplicate grants when retrying this request.
    #
    #   When this value is absent, all `CreateGrant` requests result in a new
    #   grant with a unique `GrantId` even if all the supplied parameters are
    #   identical. This can result in unintended duplicates when you retry the
    #   `CreateGrant` request.
    #
    #   When this value is present, you can retry a `CreateGrant` request with
    #   identical parameters; if the grant already exists, the original
    #   `GrantId` is returned without creating a new grant. Note that the
    #   returned grant token is unique with every `CreateGrant` request, even
    #   when a duplicate `GrantId` is returned. All grant tokens for the same
    #   grant ID can be used interchangeably.
    #
    # @return [Types::CreateGrantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGrantResponse#grant_token #grant_token} => String
    #   * {Types::CreateGrantResponse#grant_id #grant_id} => String
    #
    #
    # @example Example: To create a grant
    #
    #   # The following example creates a grant that allows the specified IAM role to encrypt data with the specified KMS key.
    #
    #   resp = client.create_grant({
    #     grantee_principal: "arn:aws:iam::111122223333:role/ExampleRole", # The identity that is given permission to perform the operations specified in the grant.
    #     key_id: "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key to which the grant applies. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #     operations: [
    #       "Encrypt", 
    #       "Decrypt", 
    #     ], # A list of operations that the grant allows.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     grant_id: "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60", # The unique identifier of the grant.
    #     grant_token: "AQpAM2RhZTk1MGMyNTk2ZmZmMzEyYWVhOWViN2I1MWM4Mzc0MWFiYjc0ZDE1ODkyNGFlNTIzODZhMzgyZjBlNGY3NiKIAgEBAgB4Pa6VDCWW__MSrqnre1HIN0Grt00ViSSuUjhqOC8OT3YAAADfMIHcBgkqhkiG9w0BBwaggc4wgcsCAQAwgcUGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMmqLyBTAegIn9XlK5AgEQgIGXZQjkBcl1dykDdqZBUQ6L1OfUivQy7JVYO2-ZJP7m6f1g8GzV47HX5phdtONAP7K_HQIflcgpkoCqd_fUnE114mSmiagWkbQ5sqAVV3ov-VeqgrvMe5ZFEWLMSluvBAqdjHEdMIkHMlhlj4ENZbzBfo9Wxk8b8SnwP4kc4gGivedzFXo-dwN8fxjjq_ZZ9JFOj2ijIbj5FyogDCN0drOfi8RORSEuCEmPvjFRMFAwcmwFkN2NPp89amA", # The grant token.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_grant({
    #     key_id: "KeyIdType", # required
    #     grantee_principal: "PrincipalIdType", # required
    #     retiring_principal: "PrincipalIdType",
    #     operations: ["Decrypt"], # required, accepts Decrypt, Encrypt, GenerateDataKey, GenerateDataKeyWithoutPlaintext, ReEncryptFrom, ReEncryptTo, Sign, Verify, GetPublicKey, CreateGrant, RetireGrant, DescribeKey, GenerateDataKeyPair, GenerateDataKeyPairWithoutPlaintext
    #     constraints: {
    #       encryption_context_subset: {
    #         "EncryptionContextKey" => "EncryptionContextValue",
    #       },
    #       encryption_context_equals: {
    #         "EncryptionContextKey" => "EncryptionContextValue",
    #       },
    #     },
    #     grant_tokens: ["GrantTokenType"],
    #     name: "GrantNameType",
    #   })
    #
    # @example Response structure
    #
    #   resp.grant_token #=> String
    #   resp.grant_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateGrant AWS API Documentation
    #
    # @overload create_grant(params = {})
    # @param [Hash] params ({})
    def create_grant(params = {}, options = {})
      req = build_request(:create_grant, params)
      req.send_request(options)
    end

    # Creates a unique customer managed [KMS key][1] in your Amazon Web
    # Services account and Region.
    #
    # <note markdown="1"> KMS is replacing the term *customer master key (CMK)* with *KMS key*
    # and *KMS key*. The concept has not changed. To prevent breaking
    # changes, KMS is keeping some variations of this term.
    #
    #  </note>
    #
    # You can use the `CreateKey` operation to create symmetric or
    # asymmetric KMS keys.
    #
    # * **Symmetric KMS keys** contain a 256-bit symmetric key that never
    #   leaves KMS unencrypted. To use the KMS key, you must call KMS. You
    #   can use a symmetric KMS key to encrypt and decrypt small amounts of
    #   data, but they are typically used to generate [data keys][2] and
    #   [data keys pairs][3]. For details, see GenerateDataKey and
    #   GenerateDataKeyPair.
    #
    # * **Asymmetric KMS keys** can contain an RSA key pair or an Elliptic
    #   Curve (ECC) key pair. The private key in an asymmetric KMS key never
    #   leaves KMS unencrypted. However, you can use the GetPublicKey
    #   operation to download the public key so it can be used outside of
    #   KMS. KMS keys with RSA key pairs can be used to encrypt or decrypt
    #   data or sign and verify messages (but not both). KMS keys with ECC
    #   key pairs can be used only to sign and verify messages.
    #
    # For information about symmetric and asymmetric KMS keys, see [Using
    # Symmetric and Asymmetric KMS keys][4] in the *Key Management Service
    # Developer Guide*.
    #
    # To create different types of KMS keys, use the following guidance:
    #
    # Asymmetric KMS keys
    #
    # : To create an asymmetric KMS key, use the `KeySpec` parameter to
    #   specify the type of key material in the KMS key. Then, use the
    #   `KeyUsage` parameter to determine whether the KMS key will be used
    #   to encrypt and decrypt or sign and verify. You can't change these
    #   properties after the KMS key is created.
    #
    #
    #
    # Symmetric KMS keys
    #
    # : When creating a symmetric KMS key, you don't need to specify the
    #   `KeySpec` or `KeyUsage` parameters. The default value for `KeySpec`,
    #   `SYMMETRIC_DEFAULT`, and the default value for `KeyUsage`,
    #   `ENCRYPT_DECRYPT`, are the only valid values for symmetric KMS keys.
    #
    #
    #
    # Multi-Region primary keys
    # Imported key material
    #
    # : To create a multi-Region *primary key* in the local Amazon Web
    #   Services Region, use the `MultiRegion` parameter with a value of
    #   `True`. To create a multi-Region *replica key*, that is, a KMS key
    #   with the same key ID and key material as a primary key, but in a
    #   different Amazon Web Services Region, use the ReplicateKey
    #   operation. To change a replica key to a primary key, and its primary
    #   key to a replica key, use the UpdatePrimaryRegion operation.
    #
    #   This operation supports *multi-Region keys*, an KMS feature that
    #   lets you create multiple interoperable KMS keys in different Amazon
    #   Web Services Regions. Because these KMS keys have the same key ID,
    #   key material, and other metadata, you can use them interchangeably
    #   to encrypt data in one Amazon Web Services Region and decrypt it in
    #   a different Amazon Web Services Region without re-encrypting the
    #   data or making a cross-Region call. For more information about
    #   multi-Region keys, see [Using multi-Region keys][5] in the *Key
    #   Management Service Developer Guide*.
    #
    #   You can create symmetric and asymmetric multi-Region keys and
    #   multi-Region keys with imported key material. You cannot create
    #   multi-Region keys in a custom key store.
    #
    #
    #
    # : To import your own key material, begin by creating a symmetric KMS
    #   key with no key material. To do this, use the `Origin` parameter of
    #   `CreateKey` with a value of `EXTERNAL`. Next, use
    #   GetParametersForImport operation to get a public key and import
    #   token, and use the public key to encrypt your key material. Then,
    #   use ImportKeyMaterial with your import token to import the key
    #   material. For step-by-step instructions, see [Importing Key
    #   Material][6] in the <i> <i>Key Management Service Developer
    #   Guide</i> </i>. You cannot import the key material into an
    #   asymmetric KMS key.
    #
    #   To create a multi-Region primary key with imported key material, use
    #   the `Origin` parameter of `CreateKey` with a value of `EXTERNAL` and
    #   the `MultiRegion` parameter with a value of `True`. To create
    #   replicas of the multi-Region primary key, use the ReplicateKey
    #   operation. For more information about multi-Region keys, see [Using
    #   multi-Region keys][5] in the *Key Management Service Developer
    #   Guide*.
    #
    #
    #
    # Custom key store
    #
    # : To create a symmetric KMS key in a [custom key store][7], use the
    #   `CustomKeyStoreId` parameter to specify the custom key store. You
    #   must also use the `Origin` parameter with a value of `AWS_CLOUDHSM`.
    #   The CloudHSM cluster that is associated with the custom key store
    #   must have at least two active HSMs in different Availability Zones
    #   in the Amazon Web Services Region.
    #
    #   You cannot create an asymmetric KMS key in a custom key store. For
    #   information about custom key stores in KMS see [Using Custom Key
    #   Stores][7] in the <i> <i>Key Management Service Developer Guide</i>
    #   </i>.
    #
    # **Cross-account use**\: No. You cannot use this operation to create a
    # KMS key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:CreateKey][8] (IAM policy). To use the
    # `Tags` parameter, [kms:TagResource][8] (IAM policy). For examples and
    # information about related permissions, see [Allow a user to create KMS
    # keys][9] in the *Key Management Service Developer Guide*.
    #
    # **Related operations:**
    #
    # * DescribeKey
    #
    # * ListKeys
    #
    # * ScheduleKeyDeletion
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms-keys
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-key-pairs
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    # [7]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [8]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    # [9]: https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policy-example-create-key
    #
    # @option params [String] :policy
    #   The key policy to attach to the KMS key.
    #
    #   If you provide a key policy, it must meet the following criteria:
    #
    #   * If you don't set `BypassPolicyLockoutSafetyCheck` to true, the key
    #     policy must allow the principal that is making the `CreateKey`
    #     request to make a subsequent PutKeyPolicy request on the KMS key.
    #     This reduces the risk that the KMS key becomes unmanageable. For
    #     more information, refer to the scenario in the [Default Key
    #     Policy][1] section of the <i> <i>Key Management Service Developer
    #     Guide</i> </i>.
    #
    #   * Each statement in the key policy must contain one or more
    #     principals. The principals in the key policy must exist and be
    #     visible to KMS. When you create a new Amazon Web Services principal
    #     (for example, an IAM user or role), you might need to enforce a
    #     delay before including the new principal in a key policy because the
    #     new principal might not be immediately visible to KMS. For more
    #     information, see [Changes that I make are not always immediately
    #     visible][2] in the *Amazon Web Services Identity and Access
    #     Management User Guide*.
    #
    #   If you do not provide a key policy, KMS attaches a default key policy
    #   to the KMS key. For more information, see [Default Key Policy][3] in
    #   the *Key Management Service Developer Guide*.
    #
    #   The key policy size quota is 32 kilobytes (32768 bytes).
    #
    #   For help writing and formatting a JSON policy document, see the [IAM
    #   JSON Policy Reference][4] in the <i> <i>Identity and Access Management
    #   User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default
    #   [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html
    #
    # @option params [String] :description
    #   A description of the KMS key.
    #
    #   Use a description that helps you decide whether the KMS key is
    #   appropriate for a task. The default value is an empty string (no
    #   description).
    #
    #   To set or change the description after the key is created, use
    #   UpdateKeyDescription.
    #
    # @option params [String] :key_usage
    #   Determines the [cryptographic operations][1] for which you can use the
    #   KMS key. The default value is `ENCRYPT_DECRYPT`. This parameter is
    #   required only for asymmetric KMS keys. You can't change the
    #   `KeyUsage` value after the KMS key is created.
    #
    #   Select only one valid value.
    #
    #   * For symmetric KMS keys, omit the parameter or specify
    #     `ENCRYPT_DECRYPT`.
    #
    #   * For asymmetric KMS keys with RSA key material, specify
    #     `ENCRYPT_DECRYPT` or `SIGN_VERIFY`.
    #
    #   * For asymmetric KMS keys with ECC key material, specify
    #     `SIGN_VERIFY`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    #
    # @option params [String] :customer_master_key_spec
    #   Instead, use the `KeySpec` parameter.
    #
    #   The `KeySpec` and `CustomerMasterKeySpec` parameters work the same
    #   way. Only the names differ. We recommend that you use `KeySpec`
    #   parameter in your code. However, to avoid breaking changes, KMS will
    #   support both parameters.
    #
    # @option params [String] :key_spec
    #   Specifies the type of KMS key to create. The default value,
    #   `SYMMETRIC_DEFAULT`, creates a KMS key with a 256-bit symmetric key
    #   for encryption and decryption. For help choosing a key spec for your
    #   KMS key, see [How to Choose Your KMS key Configuration][1] in the <i>
    #   <i>Key Management Service Developer Guide</i> </i>.
    #
    #   The `KeySpec` determines whether the KMS key contains a symmetric key
    #   or an asymmetric key pair. It also determines the encryption
    #   algorithms or signing algorithms that the KMS key supports. You can't
    #   change the `KeySpec` after the KMS key is created. To further restrict
    #   the algorithms that can be used with the KMS key, use a condition key
    #   in its key policy or IAM policy. For more information, see
    #   [kms:EncryptionAlgorithm][2] or [kms:Signing Algorithm][3] in the <i>
    #   <i>Key Management Service Developer Guide</i> </i>.
    #
    #   [Amazon Web Services services that are integrated with KMS][4] use
    #   symmetric KMS keys to protect your data. These services do not support
    #   asymmetric KMS keys. For help determining whether a KMS key is
    #   symmetric or asymmetric, see [Identifying Symmetric and Asymmetric KMS
    #   keys][5] in the *Key Management Service Developer Guide*.
    #
    #   KMS supports the following key specs for KMS keys:
    #
    #   * Symmetric key (default)
    #
    #     * `SYMMETRIC_DEFAULT` (AES-256-GCM)
    #
    #     ^
    #
    #   * Asymmetric RSA key pairs
    #
    #     * `RSA_2048`
    #
    #     * `RSA_3072`
    #
    #     * `RSA_4096`
    #
    #   * Asymmetric NIST-recommended elliptic curve key pairs
    #
    #     * `ECC_NIST_P256` (secp256r1)
    #
    #     * `ECC_NIST_P384` (secp384r1)
    #
    #     * `ECC_NIST_P521` (secp521r1)
    #
    #   * Other asymmetric elliptic curve key pairs
    #
    #     * `ECC_SECG_P256K1` (secp256k1), commonly used for cryptocurrencies.
    #
    #     ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-algorithm
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-signing-algorithm
    #   [4]: http://aws.amazon.com/kms/features/#AWS_Service_Integration
    #   [5]: https://docs.aws.amazon.com/kms/latest/developerguide/find-symm-asymm.html
    #
    # @option params [String] :origin
    #   The source of the key material for the KMS key. You cannot change the
    #   origin after you create the KMS key. The default is `AWS_KMS`, which
    #   means that KMS creates the key material.
    #
    #   To create a KMS key with no key material (for imported key material),
    #   set the value to `EXTERNAL`. For more information about importing key
    #   material into KMS, see [Importing Key Material][1] in the *Key
    #   Management Service Developer Guide*. This value is valid only for
    #   symmetric KMS keys.
    #
    #   To create a KMS key in an KMS [custom key store][2] and create its key
    #   material in the associated CloudHSM cluster, set this value to
    #   `AWS_CLOUDHSM`. You must also use the `CustomKeyStoreId` parameter to
    #   identify the custom key store. This value is valid only for symmetric
    #   KMS keys.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #
    # @option params [String] :custom_key_store_id
    #   Creates the KMS key in the specified [custom key store][1] and the key
    #   material in its associated CloudHSM cluster. To create a KMS key in a
    #   custom key store, you must also specify the `Origin` parameter with a
    #   value of `AWS_CLOUDHSM`. The CloudHSM cluster that is associated with
    #   the custom key store must have at least two active HSMs, each in a
    #   different Availability Zone in the Region.
    #
    #   This parameter is valid only for symmetric KMS keys and regional KMS
    #   keys. You cannot create an asymmetric KMS key or a multi-Region key in
    #   a custom key store.
    #
    #   To find the ID of a custom key store, use the DescribeCustomKeyStores
    #   operation.
    #
    #   The response includes the custom key store ID and the ID of the
    #   CloudHSM cluster.
    #
    #   This operation is part of the [Custom Key Store feature][1] feature in
    #   KMS, which combines the convenience and extensive integration of KMS
    #   with the isolation and control of a single-tenant key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   A flag to indicate whether to bypass the key policy lockout safety
    #   check.
    #
    #   Setting this value to true increases the risk that the KMS key becomes
    #   unmanageable. Do not set this value to true indiscriminately.
    #
    #    For more information, refer to the scenario in the [Default Key
    #   Policy][1] section in the <i> <i>Key Management Service Developer
    #   Guide</i> </i>.
    #
    #   Use this parameter only when you include a policy in the request and
    #   you intend to prevent the principal that is making the request from
    #   making a subsequent PutKeyPolicy request on the KMS key.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #
    # @option params [Array<Types::Tag>] :tags
    #   Assigns one or more tags to the KMS key. Use this parameter to tag the
    #   KMS key when it is created. To tag an existing KMS key, use the
    #   TagResource operation.
    #
    #   <note markdown="1"> Tagging or untagging a KMS key can allow or deny permission to the KMS
    #   key. For details, see [Using ABAC in KMS][1] in the *Key Management
    #   Service Developer Guide*.
    #
    #    </note>
    #
    #   To use this parameter, you must have [kms:TagResource][2] permission
    #   in an IAM policy.
    #
    #   Each tag consists of a tag key and a tag value. Both the tag key and
    #   the tag value are required, but the tag value can be an empty (null)
    #   string. You cannot have more than one tag on a KMS key with the same
    #   tag key. If you specify an existing tag key with a different tag
    #   value, KMS replaces the current tag value with the specified one.
    #
    #   When you add tags to an Amazon Web Services resource, Amazon Web
    #   Services generates a cost allocation report with usage and costs
    #   aggregated by tags. Tags can also be used to control access to a KMS
    #   key. For details, see [Tagging Keys][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html
    #
    # @option params [Boolean] :multi_region
    #   Creates a multi-Region primary key that you can replicate into other
    #   Amazon Web Services Regions. You cannot change this value after you
    #   create the KMS key.
    #
    #   For a multi-Region key, set this parameter to `True`. For a
    #   single-Region KMS key, omit this parameter or set it to `False`. The
    #   default value is `False`.
    #
    #   This operation supports *multi-Region keys*, an KMS feature that lets
    #   you create multiple interoperable KMS keys in different Amazon Web
    #   Services Regions. Because these KMS keys have the same key ID, key
    #   material, and other metadata, you can use them interchangeably to
    #   encrypt data in one Amazon Web Services Region and decrypt it in a
    #   different Amazon Web Services Region without re-encrypting the data or
    #   making a cross-Region call. For more information about multi-Region
    #   keys, see [Using multi-Region keys][1] in the *Key Management Service
    #   Developer Guide*.
    #
    #   This value creates a *primary key*, not a replica. To create a
    #   *replica key*, use the ReplicateKey operation.
    #
    #   You can create a symmetric or asymmetric multi-Region key, and you can
    #   create a multi-Region key with imported key material. However, you
    #   cannot create a multi-Region key in a custom key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #
    # @return [Types::CreateKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyResponse#key_metadata #key_metadata} => Types::KeyMetadata
    #
    #
    # @example Example: To create a KMS key
    #
    #   # The following example creates a symmetric KMS key for encryption and decryption. No parameters are required for this
    #   # operation.
    #
    #   resp = client.create_key({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333", 
    #       arn: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       creation_date: Time.parse("2017-07-05T14:04:55-07:00"), 
    #       customer_master_key_spec: "SYMMETRIC_DEFAULT", 
    #       description: "", 
    #       enabled: true, 
    #       encryption_algorithms: [
    #         "SYMMETRIC_DEFAULT", 
    #       ], 
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       key_manager: "CUSTOMER", 
    #       key_spec: "SYMMETRIC_DEFAULT", 
    #       key_state: "Enabled", 
    #       key_usage: "ENCRYPT_DECRYPT", 
    #       multi_region: false, 
    #       origin: "AWS_KMS", 
    #     }, # Detailed information about the KMS key that this operation creates.
    #   }
    #
    # @example Example: To create an asymmetric RSA KMS key for encryption and decryption
    #
    #   # This example creates a KMS key that contains an asymmetric RSA key pair for encryption and decryption. The key spec and
    #   # key usage can't be changed after the key is created.
    #
    #   resp = client.create_key({
    #     key_spec: "RSA_4096", # Describes the type of key material in the KMS key.
    #     key_usage: "ENCRYPT_DECRYPT", # The cryptographic operations for which you can use the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333", 
    #       arn: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       creation_date: Time.parse("2021-04-05T14:04:55-07:00"), 
    #       customer_master_key_spec: "RSA_4096", 
    #       description: "", 
    #       enabled: true, 
    #       encryption_algorithms: [
    #         "RSAES_OAEP_SHA_1", 
    #         "RSAES_OAEP_SHA_256", 
    #       ], 
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       key_manager: "CUSTOMER", 
    #       key_spec: "RSA_4096", 
    #       key_state: "Enabled", 
    #       key_usage: "ENCRYPT_DECRYPT", 
    #       multi_region: false, 
    #       origin: "AWS_KMS", 
    #     }, # Detailed information about the KMS key that this operation creates.
    #   }
    #
    # @example Example: To create an asymmetric elliptic curve KMS key for signing and verification
    #
    #   # This example creates a KMS key that contains an asymmetric elliptic curve (ECC) key pair for signing and verification.
    #   # The key usage is required even though "SIGN_VERIFY" is the only valid value for ECC KMS keys. The key spec and key usage
    #   # can't be changed after the key is created.
    #
    #   resp = client.create_key({
    #     key_spec: "ECC_NIST_P521", # Describes the type of key material in the KMS key.
    #     key_usage: "SIGN_VERIFY", # The cryptographic operations for which you can use the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333", 
    #       arn: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       creation_date: Time.parse("2019-12-02T07:48:55-07:00"), 
    #       customer_master_key_spec: "ECC_NIST_P521", 
    #       description: "", 
    #       enabled: true, 
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       key_manager: "CUSTOMER", 
    #       key_spec: "ECC_NIST_P521", 
    #       key_state: "Enabled", 
    #       key_usage: "SIGN_VERIFY", 
    #       multi_region: false, 
    #       origin: "AWS_KMS", 
    #       signing_algorithms: [
    #         "ECDSA_SHA_512", 
    #       ], 
    #     }, # Detailed information about the KMS key that this operation creates.
    #   }
    #
    # @example Example: To create a multi-Region primary KMS key
    #
    #   # This example creates a multi-Region primary symmetric encryption key. Because the default values for all parameters
    #   # create a symmetric encryption key, only the MultiRegion parameter is required for this KMS key.
    #
    #   resp = client.create_key({
    #     multi_region: true, # Indicates whether the KMS key is a multi-Region (True) or regional (False) key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333", 
    #       arn: "arn:aws:kms:us-west-2:111122223333:key/mrk-1234abcd12ab34cd56ef12345678990ab", 
    #       creation_date: Time.parse("2021-09-02T016:15:21-09:00"), 
    #       customer_master_key_spec: "SYMMETRIC_DEFAULT", 
    #       description: "", 
    #       enabled: true, 
    #       encryption_algorithms: [
    #         "SYMMETRIC_DEFAULT", 
    #       ], 
    #       key_id: "mrk-1234abcd12ab34cd56ef12345678990ab", 
    #       key_manager: "CUSTOMER", 
    #       key_spec: "SYMMETRIC_DEFAULT", 
    #       key_state: "Enabled", 
    #       key_usage: "ENCRYPT_DECRYPT", 
    #       multi_region: true, 
    #       multi_region_configuration: {
    #         multi_region_key_type: "PRIMARY", 
    #         primary_key: {
    #           arn: "arn:aws:kms:us-west-2:111122223333:key/mrk-1234abcd12ab34cd56ef12345678990ab", 
    #           region: "us-west-2", 
    #         }, 
    #         replica_keys: [
    #         ], 
    #       }, 
    #       origin: "AWS_KMS", 
    #     }, # Detailed information about the KMS key that this operation creates.
    #   }
    #
    # @example Example: To create a KMS key for imported key material
    #
    #   # This example creates a KMS key with no key material. When the operation is complete, you can import your own key
    #   # material into the KMS key. To create this KMS key, set the Origin parameter to EXTERNAL. 
    #
    #   resp = client.create_key({
    #     origin: "EXTERNAL", # The source of the key material for the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333", 
    #       arn: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       creation_date: Time.parse("2019-12-02T07:48:55-07:00"), 
    #       customer_master_key_spec: "SYMMETRIC_DEFAULT", 
    #       description: "", 
    #       enabled: false, 
    #       encryption_algorithms: [
    #         "SYMMETRIC_DEFAULT", 
    #       ], 
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       key_manager: "CUSTOMER", 
    #       key_spec: "SYMMETRIC_DEFAULT", 
    #       key_state: "PendingImport", 
    #       key_usage: "ENCRYPT_DECRYPT", 
    #       multi_region: false, 
    #       origin: "EXTERNAL", 
    #     }, # Detailed information about the KMS key that this operation creates.
    #   }
    #
    # @example Example: To create a KMS key in a custom key store
    #
    #   # This example creates a KMS key in the specified custom key store. The operation creates the KMS key and its metadata in
    #   # AWS KMS and the key material in the AWS CloudHSM cluster associated with the custom key store. This example requires the
    #   # Origin and CustomKeyStoreId parameters.
    #
    #   resp = client.create_key({
    #     custom_key_store_id: "cks-1234567890abcdef0", # Identifies the custom key store that hosts the KMS key.
    #     origin: "AWS_CLOUDHSM", # Indicates the source of the key material for the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333", 
    #       arn: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       cloud_hsm_cluster_id: "cluster-1a23b4cdefg", 
    #       creation_date: Time.parse("2019-12-02T07:48:55-07:00"), 
    #       custom_key_store_id: "cks-1234567890abcdef0", 
    #       customer_master_key_spec: "SYMMETRIC_DEFAULT", 
    #       description: "", 
    #       enabled: true, 
    #       encryption_algorithms: [
    #         "SYMMETRIC_DEFAULT", 
    #       ], 
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       key_manager: "CUSTOMER", 
    #       key_spec: "SYMMETRIC_DEFAULT", 
    #       key_state: "Enabled", 
    #       key_usage: "ENCRYPT_DECRYPT", 
    #       multi_region: false, 
    #       origin: "AWS_CLOUDHSM", 
    #     }, # Detailed information about the KMS key that this operation creates.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key({
    #     policy: "PolicyType",
    #     description: "DescriptionType",
    #     key_usage: "SIGN_VERIFY", # accepts SIGN_VERIFY, ENCRYPT_DECRYPT
    #     customer_master_key_spec: "RSA_2048", # accepts RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, ECC_SECG_P256K1, SYMMETRIC_DEFAULT
    #     key_spec: "RSA_2048", # accepts RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, ECC_SECG_P256K1, SYMMETRIC_DEFAULT
    #     origin: "AWS_KMS", # accepts AWS_KMS, EXTERNAL, AWS_CLOUDHSM
    #     custom_key_store_id: "CustomKeyStoreIdType",
    #     bypass_policy_lockout_safety_check: false,
    #     tags: [
    #       {
    #         tag_key: "TagKeyType", # required
    #         tag_value: "TagValueType", # required
    #       },
    #     ],
    #     multi_region: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.key_metadata.aws_account_id #=> String
    #   resp.key_metadata.key_id #=> String
    #   resp.key_metadata.arn #=> String
    #   resp.key_metadata.creation_date #=> Time
    #   resp.key_metadata.enabled #=> Boolean
    #   resp.key_metadata.description #=> String
    #   resp.key_metadata.key_usage #=> String, one of "SIGN_VERIFY", "ENCRYPT_DECRYPT"
    #   resp.key_metadata.key_state #=> String, one of "Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"
    #   resp.key_metadata.deletion_date #=> Time
    #   resp.key_metadata.valid_to #=> Time
    #   resp.key_metadata.origin #=> String, one of "AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM"
    #   resp.key_metadata.custom_key_store_id #=> String
    #   resp.key_metadata.cloud_hsm_cluster_id #=> String
    #   resp.key_metadata.expiration_model #=> String, one of "KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"
    #   resp.key_metadata.key_manager #=> String, one of "AWS", "CUSTOMER"
    #   resp.key_metadata.customer_master_key_spec #=> String, one of "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT"
    #   resp.key_metadata.key_spec #=> String, one of "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT"
    #   resp.key_metadata.encryption_algorithms #=> Array
    #   resp.key_metadata.encryption_algorithms[0] #=> String, one of "SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256"
    #   resp.key_metadata.signing_algorithms #=> Array
    #   resp.key_metadata.signing_algorithms[0] #=> String, one of "RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512"
    #   resp.key_metadata.multi_region #=> Boolean
    #   resp.key_metadata.multi_region_configuration.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key_metadata.multi_region_configuration.primary_key.arn #=> String
    #   resp.key_metadata.multi_region_configuration.primary_key.region #=> String
    #   resp.key_metadata.multi_region_configuration.replica_keys #=> Array
    #   resp.key_metadata.multi_region_configuration.replica_keys[0].arn #=> String
    #   resp.key_metadata.multi_region_configuration.replica_keys[0].region #=> String
    #   resp.key_metadata.pending_deletion_window_in_days #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateKey AWS API Documentation
    #
    # @overload create_key(params = {})
    # @param [Hash] params ({})
    def create_key(params = {}, options = {})
      req = build_request(:create_key, params)
      req.send_request(options)
    end

    # Decrypts ciphertext that was encrypted by a KMS key using any of the
    # following operations:
    #
    # * Encrypt
    #
    # * GenerateDataKey
    #
    # * GenerateDataKeyPair
    #
    # * GenerateDataKeyWithoutPlaintext
    #
    # * GenerateDataKeyPairWithoutPlaintext
    #
    # You can use this operation to decrypt ciphertext that was encrypted
    # under a symmetric or asymmetric KMS key. When the KMS key is
    # asymmetric, you must specify the KMS key and the encryption algorithm
    # that was used to encrypt the ciphertext. For information about
    # symmetric and asymmetric KMS keys, see [Using Symmetric and Asymmetric
    # KMS keys][1] in the *Key Management Service Developer Guide*.
    #
    # The Decrypt operation also decrypts ciphertext that was encrypted
    # outside of KMS by the public key in an KMS asymmetric KMS key.
    # However, it cannot decrypt ciphertext produced by other libraries,
    # such as the [Amazon Web Services Encryption SDK][2] or [Amazon S3
    # client-side encryption][3]. These libraries return a ciphertext format
    # that is incompatible with KMS.
    #
    # If the ciphertext was encrypted under a symmetric KMS key, the `KeyId`
    # parameter is optional. KMS can get this information from metadata that
    # it adds to the symmetric ciphertext blob. This feature adds durability
    # to your implementation by ensuring that authorized users can decrypt
    # ciphertext decades after it was encrypted, even if they've lost track
    # of the key ID. However, specifying the KMS key is always recommended
    # as a best practice. When you use the `KeyId` parameter to specify a
    # KMS key, KMS only uses the KMS key you specify. If the ciphertext was
    # encrypted under a different KMS key, the `Decrypt` operation fails.
    # This practice ensures that you use the KMS key that you intend.
    #
    # Whenever possible, use key policies to give users permission to call
    # the `Decrypt` operation on a particular KMS key, instead of using IAM
    # policies. Otherwise, you might create an IAM user policy that gives
    # the user `Decrypt` permission on all KMS keys. This user could decrypt
    # ciphertext that was encrypted by KMS keys in other accounts if the key
    # policy for the cross-account KMS key permits it. If you must use an
    # IAM policy for `Decrypt` permissions, limit the user to particular KMS
    # keys or particular trusted accounts. For details, see [Best practices
    # for IAM policies][4] in the *Key Management Service Developer Guide*.
    #
    # Applications in Amazon Web Services Nitro Enclaves can call this
    # operation by using the [Amazon Web Services Nitro Enclaves Development
    # Kit][5]. For information about the supporting parameters, see [How
    # Amazon Web Services Nitro Enclaves use KMS][6] in the *Key Management
    # Service Developer Guide*.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][7] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: Yes. To perform this operation with a KMS key
    # in a different Amazon Web Services account, specify the key ARN or
    # alias ARN in the value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:Decrypt][8] (key policy)
    #
    # **Related operations:**
    #
    # * Encrypt
    #
    # * GenerateDataKey
    #
    # * GenerateDataKeyPair
    #
    # * ReEncrypt
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    # [2]: https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policies-best-practices
    # [5]: https://github.com/aws/aws-nitro-enclaves-sdk-c
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html
    # [7]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [8]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String, StringIO, File] :ciphertext_blob
    #   Ciphertext to be decrypted. The blob includes metadata.
    #
    # @option params [Hash<String,String>] :encryption_context
    #   Specifies the encryption context to use when decrypting the data. An
    #   encryption context is valid only for [cryptographic operations][1]
    #   with a symmetric KMS key. The standard asymmetric encryption
    #   algorithms that KMS uses do not support an encryption context.
    #
    #   An *encryption context* is a collection of non-secret key-value pairs
    #   that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data. An
    #   encryption context is optional when encrypting with a symmetric KMS
    #   key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][2] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @option params [String] :key_id
    #   Specifies the KMS key that KMS uses to decrypt the ciphertext. Enter a
    #   key ID of the KMS key that was used to encrypt the ciphertext.
    #
    #   This parameter is required only when the ciphertext was encrypted
    #   under an asymmetric KMS key. If you used a symmetric KMS key, KMS can
    #   get the KMS key from metadata that it adds to the symmetric ciphertext
    #   blob. However, it is always recommended as a best practice. This
    #   practice ensures that you use the KMS key that you intend.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [String] :encryption_algorithm
    #   Specifies the encryption algorithm that will be used to decrypt the
    #   ciphertext. Specify the same algorithm that was used to encrypt the
    #   data. If you specify a different algorithm, the `Decrypt` operation
    #   fails.
    #
    #   This parameter is required only when the ciphertext was encrypted
    #   under an asymmetric KMS key. The default value, `SYMMETRIC_DEFAULT`,
    #   represents the only supported algorithm that is valid for symmetric
    #   KMS keys.
    #
    # @return [Types::DecryptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DecryptResponse#key_id #key_id} => String
    #   * {Types::DecryptResponse#plaintext #plaintext} => String
    #   * {Types::DecryptResponse#encryption_algorithm #encryption_algorithm} => String
    #
    #
    # @example Example: To decrypt data
    #
    #   # The following example decrypts data that was encrypted with a KMS key.
    #
    #   resp = client.decrypt({
    #     ciphertext_blob: "<binary data>", # The encrypted data (ciphertext).
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # A key identifier for the KMS key to use to decrypt the data.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The Amazon Resource Name (ARN) of the KMS key that was used to decrypt the data.
    #     plaintext: "<binary data>", # The decrypted (plaintext) data.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decrypt({
    #     ciphertext_blob: "data", # required
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue",
    #     },
    #     grant_tokens: ["GrantTokenType"],
    #     key_id: "KeyIdType",
    #     encryption_algorithm: "SYMMETRIC_DEFAULT", # accepts SYMMETRIC_DEFAULT, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
    #   })
    #
    # @example Response structure
    #
    #   resp.key_id #=> String
    #   resp.plaintext #=> String
    #   resp.encryption_algorithm #=> String, one of "SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/Decrypt AWS API Documentation
    #
    # @overload decrypt(params = {})
    # @param [Hash] params ({})
    def decrypt(params = {}, options = {})
      req = build_request(:decrypt, params)
      req.send_request(options)
    end

    # Deletes the specified alias.
    #
    # <note markdown="1"> Adding, deleting, or updating an alias can allow or deny permission to
    # the KMS key. For details, see [Using ABAC in KMS][1] in the *Key
    # Management Service Developer Guide*.
    #
    #  </note>
    #
    # Because an alias is not a property of a KMS key, you can delete and
    # change the aliases of a KMS key without affecting the KMS key. Also,
    # aliases do not appear in the response from the DescribeKey operation.
    # To get the aliases of all KMS keys, use the ListAliases operation.
    #
    # Each KMS key can have multiple aliases. To change the alias of a KMS
    # key, use DeleteAlias to delete the current alias and CreateAlias to
    # create a new alias. To associate an existing alias with a different
    # KMS key, call UpdateAlias.
    #
    # **Cross-account use**\: No. You cannot perform this operation on an
    # alias in a different Amazon Web Services account.
    #
    # **Required permissions**
    #
    # * [kms:DeleteAlias][2] on the alias (IAM policy).
    #
    # * [kms:DeleteAlias][2] on the KMS key (key policy).
    #
    # For details, see [Controlling access to aliases][3] in the *Key
    # Management Service Developer Guide*.
    #
    # **Related operations:**
    #
    # * CreateAlias
    #
    # * ListAliases
    #
    # * UpdateAlias
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access
    #
    # @option params [required, String] :alias_name
    #   The alias to be deleted. The alias name must begin with `alias/`
    #   followed by the alias name, such as `alias/ExampleAlias`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an alias
    #
    #   # The following example deletes the specified alias.
    #
    #   resp = client.delete_alias({
    #     alias_name: "alias/ExampleAlias", # The alias to delete.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias({
    #     alias_name: "AliasNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DeleteAlias AWS API Documentation
    #
    # @overload delete_alias(params = {})
    # @param [Hash] params ({})
    def delete_alias(params = {}, options = {})
      req = build_request(:delete_alias, params)
      req.send_request(options)
    end

    # Deletes a [custom key store][1]. This operation does not delete the
    # CloudHSM cluster that is associated with the custom key store, or
    # affect any users or keys in the cluster.
    #
    # The custom key store that you delete cannot contain any KMS [KMS
    # keys][2]. Before deleting the key store, verify that you will never
    # need to use any of the KMS keys in the key store for any
    # [cryptographic operations][3]. Then, use ScheduleKeyDeletion to delete
    # the KMS keys from the key store. When the scheduled waiting period
    # expires, the `ScheduleKeyDeletion` operation deletes the KMS keys.
    # Then it makes a best effort to delete the key material from the
    # associated cluster. However, you might need to manually [delete the
    # orphaned key material][4] from the cluster and its backups.
    #
    # After all KMS keys are deleted from KMS, use DisconnectCustomKeyStore
    # to disconnect the key store from KMS. Then, you can delete the custom
    # key store.
    #
    # Instead of deleting the custom key store, consider using
    # DisconnectCustomKeyStore to disconnect it from KMS. While the key
    # store is disconnected, you cannot create or use the KMS keys in the
    # key store. But, you do not need to delete KMS keys and you can
    # reconnect a disconnected custom key store at any time.
    #
    # If the operation succeeds, it returns a JSON object with no
    # properties.
    #
    # This operation is part of the [Custom Key Store feature][1] feature in
    # KMS, which combines the convenience and extensive integration of KMS
    # with the isolation and control of a single-tenant key store.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a
    # custom key store in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:DeleteCustomKeyStore][5] (IAM policy)
    #
    # **Related operations:**
    #
    # * ConnectCustomKeyStore
    #
    # * CreateCustomKeyStore
    #
    # * DescribeCustomKeyStores
    #
    # * DisconnectCustomKeyStore
    #
    # * UpdateCustomKeyStore
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :custom_key_store_id
    #   Enter the ID of the custom key store you want to delete. To find the
    #   ID of a custom key store, use the DescribeCustomKeyStores operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a custom key store from AWS KMS
    #
    #   # This example deletes a custom key store from AWS KMS. This operation does not delete the AWS CloudHSM cluster that was
    #   # associated with the CloudHSM cluster. This operation doesn't return any data. To verify that the operation was
    #   # successful, use the DescribeCustomKeyStores operation.  
    #
    #   resp = client.delete_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0", # The ID of the custom key store to be deleted.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_key_store({
    #     custom_key_store_id: "CustomKeyStoreIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DeleteCustomKeyStore AWS API Documentation
    #
    # @overload delete_custom_key_store(params = {})
    # @param [Hash] params ({})
    def delete_custom_key_store(params = {}, options = {})
      req = build_request(:delete_custom_key_store, params)
      req.send_request(options)
    end

    # Deletes key material that you previously imported. This operation
    # makes the specified KMS key unusable. For more information about
    # importing key material into KMS, see [Importing Key Material][1] in
    # the *Key Management Service Developer Guide*.
    #
    # When the specified KMS key is in the `PendingDeletion` state, this
    # operation does not change the KMS key's state. Otherwise, it changes
    # the KMS key's state to `PendingImport`.
    #
    # After you delete key material, you can use ImportKeyMaterial to
    # reimport the same key material into the KMS key.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][2] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:DeleteImportedKeyMaterial][3] (key
    # policy)
    #
    # **Related operations:**
    #
    # * GetParametersForImport
    #
    # * ImportKeyMaterial
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies the KMS key from which you are deleting imported key
    #   material. The `Origin` of the KMS key must be `EXTERNAL`.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete imported key material
    #
    #   # The following example deletes the imported key material from the specified KMS key.
    #
    #   resp = client.delete_imported_key_material({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose imported key material you are deleting. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_imported_key_material({
    #     key_id: "KeyIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DeleteImportedKeyMaterial AWS API Documentation
    #
    # @overload delete_imported_key_material(params = {})
    # @param [Hash] params ({})
    def delete_imported_key_material(params = {}, options = {})
      req = build_request(:delete_imported_key_material, params)
      req.send_request(options)
    end

    # Gets information about [custom key stores][1] in the account and
    # Region.
    #
    # This operation is part of the [Custom Key Store feature][1] feature in
    # KMS, which combines the convenience and extensive integration of KMS
    # with the isolation and control of a single-tenant key store.
    #
    # By default, this operation returns information about all custom key
    # stores in the account and Region. To get only information about a
    # particular custom key store, use either the `CustomKeyStoreName` or
    # `CustomKeyStoreId` parameter (but not both).
    #
    # To determine whether the custom key store is connected to its CloudHSM
    # cluster, use the `ConnectionState` element in the response. If an
    # attempt to connect the custom key store failed, the `ConnectionState`
    # value is `FAILED` and the `ConnectionErrorCode` element in the
    # response indicates the cause of the failure. For help interpreting the
    # `ConnectionErrorCode`, see CustomKeyStoresListEntry.
    #
    # Custom key stores have a `DISCONNECTED` connection state if the key
    # store has never been connected or you use the DisconnectCustomKeyStore
    # operation to disconnect it. If your custom key store state is
    # `CONNECTED` but you are having trouble using it, make sure that its
    # associated CloudHSM cluster is active and contains the minimum number
    # of HSMs required for the operation, if any.
    #
    # For help repairing your custom key store, see the [Troubleshooting
    # Custom Key Stores][2] topic in the *Key Management Service Developer
    # Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a
    # custom key store in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:DescribeCustomKeyStores][3] (IAM
    # policy)
    #
    # **Related operations:**
    #
    # * ConnectCustomKeyStore
    #
    # * CreateCustomKeyStore
    #
    # * DeleteCustomKeyStore
    #
    # * DisconnectCustomKeyStore
    #
    # * UpdateCustomKeyStore
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [String] :custom_key_store_id
    #   Gets only information about the specified custom key store. Enter the
    #   key store ID.
    #
    #   By default, this operation gets information about all custom key
    #   stores in the account and Region. To limit the output to a particular
    #   custom key store, you can use either the `CustomKeyStoreId` or
    #   `CustomKeyStoreName` parameter, but not both.
    #
    # @option params [String] :custom_key_store_name
    #   Gets only information about the specified custom key store. Enter the
    #   friendly name of the custom key store.
    #
    #   By default, this operation gets information about all custom key
    #   stores in the account and Region. To limit the output to a particular
    #   custom key store, you can use either the `CustomKeyStoreId` or
    #   `CustomKeyStoreName` parameter, but not both.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    # @option params [String] :marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #
    # @return [Types::DescribeCustomKeyStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomKeyStoresResponse#custom_key_stores #custom_key_stores} => Array&lt;Types::CustomKeyStoresListEntry&gt;
    #   * {Types::DescribeCustomKeyStoresResponse#next_marker #next_marker} => String
    #   * {Types::DescribeCustomKeyStoresResponse#truncated #truncated} => Boolean
    #
    #
    # @example Example: To get detailed information about custom key stores in the account and Region
    #
    #   # This example gets detailed information about all AWS KMS custom key stores in an AWS account and Region. To get all key
    #   # stores, do not enter a custom key store name or ID.
    #
    #   resp = client.describe_custom_key_stores({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     custom_key_stores: [
    #     ], # Details about each custom key store in the account and Region.
    #   }
    #
    # @example Example: To get detailed information about a custom key store associated with a CloudHSM cluster.
    #
    #   # This example gets detailed information about a particular AWS KMS custom key store that is associate with an AWS
    #   # CloudHSM cluster. To limit the output to a particular custom key store, provide the custom key store name or ID. 
    #
    #   resp = client.describe_custom_key_stores({
    #     custom_key_store_name: "ExampleKeyStore", # The friendly name of the custom key store.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     custom_key_stores: [
    #       {
    #         cloud_hsm_cluster_id: "cluster-1a23b4cdefg", 
    #         connection_state: "CONNECTED", 
    #         creation_date: Time.parse("1.499288695918E9"), 
    #         custom_key_store_id: "cks-1234567890abcdef0", 
    #         custom_key_store_name: "ExampleKeyStore", 
    #         trust_anchor_certificate: "<certificate appears here>", 
    #       }, 
    #     ], # Detailed information about the specified custom key store.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_key_stores({
    #     custom_key_store_id: "CustomKeyStoreIdType",
    #     custom_key_store_name: "CustomKeyStoreNameType",
    #     limit: 1,
    #     marker: "MarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_key_stores #=> Array
    #   resp.custom_key_stores[0].custom_key_store_id #=> String
    #   resp.custom_key_stores[0].custom_key_store_name #=> String
    #   resp.custom_key_stores[0].cloud_hsm_cluster_id #=> String
    #   resp.custom_key_stores[0].trust_anchor_certificate #=> String
    #   resp.custom_key_stores[0].connection_state #=> String, one of "CONNECTED", "CONNECTING", "FAILED", "DISCONNECTED", "DISCONNECTING"
    #   resp.custom_key_stores[0].connection_error_code #=> String, one of "INVALID_CREDENTIALS", "CLUSTER_NOT_FOUND", "NETWORK_ERRORS", "INTERNAL_ERROR", "INSUFFICIENT_CLOUDHSM_HSMS", "USER_LOCKED_OUT", "USER_NOT_FOUND", "USER_LOGGED_IN", "SUBNET_NOT_FOUND"
    #   resp.custom_key_stores[0].creation_date #=> Time
    #   resp.next_marker #=> String
    #   resp.truncated #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DescribeCustomKeyStores AWS API Documentation
    #
    # @overload describe_custom_key_stores(params = {})
    # @param [Hash] params ({})
    def describe_custom_key_stores(params = {}, options = {})
      req = build_request(:describe_custom_key_stores, params)
      req.send_request(options)
    end

    # Provides detailed information about a KMS key. You can run
    # `DescribeKey` on a [customer managed key][1] or an [Amazon Web
    # Services managed key][2].
    #
    # This detailed information includes the key ARN, creation date (and
    # deletion date, if applicable), the key state, and the origin and
    # expiration date (if any) of the key material. It includes fields, like
    # `KeySpec`, that help you distinguish symmetric from asymmetric KMS
    # keys. It also provides information that is particularly important to
    # asymmetric keys, such as the key usage (encryption or signing) and the
    # encryption algorithms or signing algorithms that the KMS key supports.
    # For KMS keys in custom key stores, it includes information about the
    # custom key store, such as the key store ID and the CloudHSM cluster
    # ID. For multi-Region keys, it displays the primary key and all related
    # replica keys.
    #
    # `DescribeKey` does not return the following information:
    #
    # * Aliases associated with the KMS key. To get this information, use
    #   ListAliases.
    #
    # * Whether automatic key rotation is enabled on the KMS key. To get
    #   this information, use GetKeyRotationStatus. Also, some key states
    #   prevent a KMS key from being automatically rotated. For details, see
    #   [How Automatic Key Rotation Works][3] in *Key Management Service
    #   Developer Guide*.
    #
    # * Tags on the KMS key. To get this information, use ListResourceTags.
    #
    # * Key policies and grants on the KMS key. To get this information, use
    #   GetKeyPolicy and ListGrants.
    #
    # If you call the `DescribeKey` operation on a *predefined Amazon Web
    # Services alias*, that is, an Amazon Web Services alias with no key ID,
    # KMS creates an [Amazon Web Services managed key][2]. Then, it
    # associates the alias with the new KMS key, and returns the `KeyId` and
    # `Arn` of the new KMS key in the response.
    #
    # **Cross-account use**\: Yes. To perform this operation with a KMS key
    # in a different Amazon Web Services account, specify the key ARN or
    # alias ARN in the value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:DescribeKey][4] (key policy)
    #
    # **Related operations:**
    #
    # * GetKeyPolicy
    #
    # * GetKeyRotationStatus
    #
    # * ListAliases
    #
    # * ListGrants
    #
    # * ListKeys
    #
    # * ListResourceTags
    #
    # * ListRetirableGrants
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-how-it-works
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Describes the specified KMS key.
    #
    #   If you specify a predefined Amazon Web Services alias (an Amazon Web
    #   Services alias with no key ID), KMS associates the alias with an
    #   [Amazon Web Services managed key][1] and returns its `KeyId` and `Arn`
    #   in the response.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html##aws-managed-cmk
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @return [Types::DescribeKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKeyResponse#key_metadata #key_metadata} => Types::KeyMetadata
    #
    #
    # @example Example: To get details about a KMS key
    #
    #   # The following example gets metadata about a symmetric KMS key.
    #
    #   resp = client.describe_key({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key that you want information about. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333", 
    #       arn: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       creation_date: Time.parse("2017-07-05T14:04:55-07:00"), 
    #       customer_master_key_spec: "SYMMETRIC_DEFAULT", 
    #       description: "", 
    #       enabled: true, 
    #       encryption_algorithms: [
    #         "SYMMETRIC_DEFAULT", 
    #       ], 
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       key_manager: "CUSTOMER", 
    #       key_spec: "SYMMETRIC_DEFAULT", 
    #       key_state: "Enabled", 
    #       key_usage: "ENCRYPT_DECRYPT", 
    #       multi_region: false, 
    #       origin: "AWS_KMS", 
    #     }, # An object that contains information about the specified KMS key.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_key({
    #     key_id: "KeyIdType", # required
    #     grant_tokens: ["GrantTokenType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.key_metadata.aws_account_id #=> String
    #   resp.key_metadata.key_id #=> String
    #   resp.key_metadata.arn #=> String
    #   resp.key_metadata.creation_date #=> Time
    #   resp.key_metadata.enabled #=> Boolean
    #   resp.key_metadata.description #=> String
    #   resp.key_metadata.key_usage #=> String, one of "SIGN_VERIFY", "ENCRYPT_DECRYPT"
    #   resp.key_metadata.key_state #=> String, one of "Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"
    #   resp.key_metadata.deletion_date #=> Time
    #   resp.key_metadata.valid_to #=> Time
    #   resp.key_metadata.origin #=> String, one of "AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM"
    #   resp.key_metadata.custom_key_store_id #=> String
    #   resp.key_metadata.cloud_hsm_cluster_id #=> String
    #   resp.key_metadata.expiration_model #=> String, one of "KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"
    #   resp.key_metadata.key_manager #=> String, one of "AWS", "CUSTOMER"
    #   resp.key_metadata.customer_master_key_spec #=> String, one of "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT"
    #   resp.key_metadata.key_spec #=> String, one of "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT"
    #   resp.key_metadata.encryption_algorithms #=> Array
    #   resp.key_metadata.encryption_algorithms[0] #=> String, one of "SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256"
    #   resp.key_metadata.signing_algorithms #=> Array
    #   resp.key_metadata.signing_algorithms[0] #=> String, one of "RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512"
    #   resp.key_metadata.multi_region #=> Boolean
    #   resp.key_metadata.multi_region_configuration.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key_metadata.multi_region_configuration.primary_key.arn #=> String
    #   resp.key_metadata.multi_region_configuration.primary_key.region #=> String
    #   resp.key_metadata.multi_region_configuration.replica_keys #=> Array
    #   resp.key_metadata.multi_region_configuration.replica_keys[0].arn #=> String
    #   resp.key_metadata.multi_region_configuration.replica_keys[0].region #=> String
    #   resp.key_metadata.pending_deletion_window_in_days #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DescribeKey AWS API Documentation
    #
    # @overload describe_key(params = {})
    # @param [Hash] params ({})
    def describe_key(params = {}, options = {})
      req = build_request(:describe_key, params)
      req.send_request(options)
    end

    # Sets the state of a KMS key to disabled. This change temporarily
    # prevents use of the KMS key for [cryptographic operations][1].
    #
    # For more information about how key state affects the use of a KMS key,
    # see [Key state: Effect on your KMS key][2] in the <i> <i>Key
    # Management Service Developer Guide</i> </i>.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][2] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:DisableKey][3] (key policy)
    #
    # **Related operations**\: EnableKey
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies the KMS key to disable.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disable a KMS key
    #
    #   # The following example disables the specified KMS key.
    #
    #   resp = client.disable_key({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key to disable. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_key({
    #     key_id: "KeyIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisableKey AWS API Documentation
    #
    # @overload disable_key(params = {})
    # @param [Hash] params ({})
    def disable_key(params = {}, options = {})
      req = build_request(:disable_key, params)
      req.send_request(options)
    end

    # Disables [automatic rotation of the key material][1] for the specified
    # symmetric KMS key.
    #
    # You cannot enable automatic rotation of [asymmetric KMS keys][2], KMS
    # keys with [imported key material][3], or KMS keys in a [custom key
    # store][4]. To enable or disable automatic rotation of a set of related
    # [multi-Region keys][5], set the property on the primary key.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][6] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:DisableKeyRotation][7] (key policy)
    #
    # **Related operations:**
    #
    # * EnableKeyRotation
    #
    # * GetKeyRotationStatus
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-replica-key
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [7]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies a symmetric KMS key. You cannot enable or disable automatic
    #   rotation of [asymmetric KMS keys][1], KMS keys with [imported key
    #   material][2], or KMS keys in a [custom key store][3].
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html#asymmetric-cmks
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disable automatic rotation of key material
    #
    #   # The following example disables automatic annual rotation of the key material for the specified KMS key.
    #
    #   resp = client.disable_key_rotation({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose key material will no longer be rotated. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_key_rotation({
    #     key_id: "KeyIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisableKeyRotation AWS API Documentation
    #
    # @overload disable_key_rotation(params = {})
    # @param [Hash] params ({})
    def disable_key_rotation(params = {}, options = {})
      req = build_request(:disable_key_rotation, params)
      req.send_request(options)
    end

    # Disconnects the [custom key store][1] from its associated CloudHSM
    # cluster. While a custom key store is disconnected, you can manage the
    # custom key store and its KMS keys, but you cannot create or use KMS
    # keys in the custom key store. You can reconnect the custom key store
    # at any time.
    #
    # <note markdown="1"> While a custom key store is disconnected, all attempts to create KMS
    # keys in the custom key store or to use existing KMS keys in
    # [cryptographic operations][2] will fail. This action can prevent users
    # from storing and accessing sensitive data.
    #
    #  </note>
    #
    #
    #
    # To find the connection state of a custom key store, use the
    # DescribeCustomKeyStores operation. To reconnect a custom key store,
    # use the ConnectCustomKeyStore operation.
    #
    # If the operation succeeds, it returns a JSON object with no
    # properties.
    #
    # This operation is part of the [Custom Key Store feature][1] feature in
    # KMS, which combines the convenience and extensive integration of KMS
    # with the isolation and control of a single-tenant key store.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a
    # custom key store in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:DisconnectCustomKeyStore][3] (IAM
    # policy)
    #
    # **Related operations:**
    #
    # * ConnectCustomKeyStore
    #
    # * CreateCustomKeyStore
    #
    # * DeleteCustomKeyStore
    #
    # * DescribeCustomKeyStores
    #
    # * UpdateCustomKeyStore
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :custom_key_store_id
    #   Enter the ID of the custom key store you want to disconnect. To find
    #   the ID of a custom key store, use the DescribeCustomKeyStores
    #   operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disconnect a custom key store from its CloudHSM cluster
    #
    #   # This example disconnects an AWS KMS custom key store from its AWS CloudHSM cluster. This operation doesn't return any
    #   # data. To verify that the custom key store is disconnected, use the <code>DescribeCustomKeyStores</code> operation.
    #
    #   resp = client.disconnect_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0", # The ID of the custom key store.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_custom_key_store({
    #     custom_key_store_id: "CustomKeyStoreIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisconnectCustomKeyStore AWS API Documentation
    #
    # @overload disconnect_custom_key_store(params = {})
    # @param [Hash] params ({})
    def disconnect_custom_key_store(params = {}, options = {})
      req = build_request(:disconnect_custom_key_store, params)
      req.send_request(options)
    end

    # Sets the key state of a KMS key to enabled. This allows you to use the
    # KMS key for [cryptographic operations][1].
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][2] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:EnableKey][3] (key policy)
    #
    # **Related operations**\: DisableKey
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies the KMS key to enable.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To enable a KMS key
    #
    #   # The following example enables the specified KMS key.
    #
    #   resp = client.enable_key({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key to enable. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_key({
    #     key_id: "KeyIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EnableKey AWS API Documentation
    #
    # @overload enable_key(params = {})
    # @param [Hash] params ({})
    def enable_key(params = {}, options = {})
      req = build_request(:enable_key, params)
      req.send_request(options)
    end

    # Enables [automatic rotation of the key material][1] for the specified
    # symmetric KMS key.
    #
    # You cannot enable automatic rotation of [asymmetric KMS keys][2], KMS
    # keys with [imported key material][3], or KMS keys in a [custom key
    # store][4]. To enable or disable automatic rotation of a set of related
    # [multi-Region keys][5], set the property on the primary key.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][6] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:EnableKeyRotation][7] (key policy)
    #
    # **Related operations:**
    #
    # * DisableKeyRotation
    #
    # * GetKeyRotationStatus
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-replica-key
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [7]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies a symmetric KMS key. You cannot enable automatic rotation
    #   of [asymmetric KMS keys][1], KMS keys with [imported key material][2],
    #   or KMS keys in a [custom key store][3]. To enable or disable automatic
    #   rotation of a set of related [multi-Region keys][4], set the property
    #   on the primary key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #   [4]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-replica-key
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To enable automatic rotation of key material
    #
    #   # The following example enables automatic annual rotation of the key material for the specified KMS key.
    #
    #   resp = client.enable_key_rotation({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose key material will be rotated annually. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_key_rotation({
    #     key_id: "KeyIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EnableKeyRotation AWS API Documentation
    #
    # @overload enable_key_rotation(params = {})
    # @param [Hash] params ({})
    def enable_key_rotation(params = {}, options = {})
      req = build_request(:enable_key_rotation, params)
      req.send_request(options)
    end

    # Encrypts plaintext into ciphertext by using a KMS key. The `Encrypt`
    # operation has two primary use cases:
    #
    # * You can encrypt small amounts of arbitrary data, such as a personal
    #   identifier or database password, or other sensitive information.
    #
    # * You can use the `Encrypt` operation to move encrypted data from one
    #   Amazon Web Services Region to another. For example, in Region A,
    #   generate a data key and use the plaintext key to encrypt your data.
    #   Then, in Region A, use the `Encrypt` operation to encrypt the
    #   plaintext data key under a KMS key in Region B. Now, you can move
    #   the encrypted data and the encrypted data key to Region B. When
    #   necessary, you can decrypt the encrypted data key and the encrypted
    #   data entirely within in Region B.
    #
    # You don't need to use the `Encrypt` operation to encrypt a data key.
    # The GenerateDataKey and GenerateDataKeyPair operations return a
    # plaintext data key and an encrypted copy of that data key.
    #
    # When you encrypt data, you must specify a symmetric or asymmetric KMS
    # key to use in the encryption operation. The KMS key must have a
    # `KeyUsage` value of `ENCRYPT_DECRYPT.` To find the `KeyUsage` of a KMS
    # key, use the DescribeKey operation.
    #
    # If you use a symmetric KMS key, you can use an encryption context to
    # add additional security to your encryption operation. If you specify
    # an `EncryptionContext` when encrypting data, you must specify the same
    # encryption context (a case-sensitive exact match) when decrypting the
    # data. Otherwise, the request to decrypt fails with an
    # `InvalidCiphertextException`. For more information, see [Encryption
    # Context][1] in the *Key Management Service Developer Guide*.
    #
    # If you specify an asymmetric KMS key, you must also specify the
    # encryption algorithm. The algorithm must be compatible with the KMS
    # key type.
    #
    # When you use an asymmetric KMS key to encrypt or reencrypt data, be
    # sure to record the KMS key and encryption algorithm that you choose.
    # You will be required to provide the same KMS key and encryption
    # algorithm when you decrypt the data. If the KMS key and algorithm do
    # not match the values used to encrypt the data, the decrypt operation
    # fails.
    #
    #  You are not required to supply the key ID and encryption algorithm
    # when you decrypt with symmetric KMS keys because KMS stores this
    # information in the ciphertext blob. KMS cannot store metadata in
    # ciphertext generated with asymmetric keys. The standard format for
    # asymmetric key ciphertext does not include configurable fields.
    #
    # The maximum size of the data that you can encrypt varies with the type
    # of KMS key and the encryption algorithm that you choose.
    #
    # * Symmetric KMS keys
    #
    #   * `SYMMETRIC_DEFAULT`\: 4096 bytes
    #
    #   ^
    #
    # * `RSA_2048`
    #
    #   * `RSAES_OAEP_SHA_1`\: 214 bytes
    #
    #   * `RSAES_OAEP_SHA_256`\: 190 bytes
    #
    # * `RSA_3072`
    #
    #   * `RSAES_OAEP_SHA_1`\: 342 bytes
    #
    #   * `RSAES_OAEP_SHA_256`\: 318 bytes
    #
    # * `RSA_4096`
    #
    #   * `RSAES_OAEP_SHA_1`\: 470 bytes
    #
    #   * `RSAES_OAEP_SHA_256`\: 446 bytes
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][2] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: Yes. To perform this operation with a KMS key
    # in a different Amazon Web Services account, specify the key ARN or
    # alias ARN in the value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:Encrypt][3] (key policy)
    #
    # **Related operations:**
    #
    # * Decrypt
    #
    # * GenerateDataKey
    #
    # * GenerateDataKeyPair
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies the KMS key to use in the encryption operation.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [required, String, StringIO, File] :plaintext
    #   Data to be encrypted.
    #
    # @option params [Hash<String,String>] :encryption_context
    #   Specifies the encryption context that will be used to encrypt the
    #   data. An encryption context is valid only for [cryptographic
    #   operations][1] with a symmetric KMS key. The standard asymmetric
    #   encryption algorithms that KMS uses do not support an encryption
    #   context.
    #
    #   An *encryption context* is a collection of non-secret key-value pairs
    #   that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data. An
    #   encryption context is optional when encrypting with a symmetric KMS
    #   key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][2] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @option params [String] :encryption_algorithm
    #   Specifies the encryption algorithm that KMS will use to encrypt the
    #   plaintext message. The algorithm must be compatible with the KMS key
    #   that you specify.
    #
    #   This parameter is required only for asymmetric KMS keys. The default
    #   value, `SYMMETRIC_DEFAULT`, is the algorithm used for symmetric KMS
    #   keys. If you are using an asymmetric KMS key, we recommend
    #   RSAES\_OAEP\_SHA\_256.
    #
    # @return [Types::EncryptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EncryptResponse#ciphertext_blob #ciphertext_blob} => String
    #   * {Types::EncryptResponse#key_id #key_id} => String
    #   * {Types::EncryptResponse#encryption_algorithm #encryption_algorithm} => String
    #
    #
    # @example Example: To encrypt data
    #
    #   # The following example encrypts data with the specified KMS key.
    #
    #   resp = client.encrypt({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key to use for encryption. You can use the key ID or Amazon Resource Name (ARN) of the KMS key, or the name or ARN of an alias that refers to the KMS key.
    #     plaintext: "<binary data>", # The data to encrypt.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: "<binary data>", # The encrypted data (ciphertext).
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the KMS key that was used to encrypt the data.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.encrypt({
    #     key_id: "KeyIdType", # required
    #     plaintext: "data", # required
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue",
    #     },
    #     grant_tokens: ["GrantTokenType"],
    #     encryption_algorithm: "SYMMETRIC_DEFAULT", # accepts SYMMETRIC_DEFAULT, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
    #   })
    #
    # @example Response structure
    #
    #   resp.ciphertext_blob #=> String
    #   resp.key_id #=> String
    #   resp.encryption_algorithm #=> String, one of "SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/Encrypt AWS API Documentation
    #
    # @overload encrypt(params = {})
    # @param [Hash] params ({})
    def encrypt(params = {}, options = {})
      req = build_request(:encrypt, params)
      req.send_request(options)
    end

    # Generates a unique symmetric data key for client-side encryption. This
    # operation returns a plaintext copy of the data key and a copy that is
    # encrypted under a KMS key that you specify. You can use the plaintext
    # key to encrypt your data outside of KMS and store the encrypted data
    # key with the encrypted data.
    #
    # `GenerateDataKey` returns a unique data key for each request. The
    # bytes in the plaintext key are not related to the caller or the KMS
    # key.
    #
    # To generate a data key, specify the symmetric KMS key that will be
    # used to encrypt the data key. You cannot use an asymmetric KMS key to
    # generate data keys. To get the type of your KMS key, use the
    # DescribeKey operation. You must also specify the length of the data
    # key. Use either the `KeySpec` or `NumberOfBytes` parameters (but not
    # both). For 128-bit and 256-bit data keys, use the `KeySpec` parameter.
    #
    # To get only an encrypted copy of the data key, use
    # GenerateDataKeyWithoutPlaintext. To generate an asymmetric data key
    # pair, use the GenerateDataKeyPair or
    # GenerateDataKeyPairWithoutPlaintext operation. To get a
    # cryptographically secure random byte string, use GenerateRandom.
    #
    # You can use the optional encryption context to add additional security
    # to the encryption operation. If you specify an `EncryptionContext`,
    # you must specify the same encryption context (a case-sensitive exact
    # match) when decrypting the encrypted data key. Otherwise, the request
    # to decrypt fails with an `InvalidCiphertextException`. For more
    # information, see [Encryption Context][1] in the *Key Management
    # Service Developer Guide*.
    #
    # Applications in Amazon Web Services Nitro Enclaves can call this
    # operation by using the [Amazon Web Services Nitro Enclaves Development
    # Kit][2]. For information about the supporting parameters, see [How
    # Amazon Web Services Nitro Enclaves use KMS][3] in the *Key Management
    # Service Developer Guide*.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][4] in
    # the *Key Management Service Developer Guide*.
    #
    # **How to use your data key**
    #
    # We recommend that you use the following pattern to encrypt data
    # locally in your application. You can write your own code or use a
    # client-side encryption library, such as the [Amazon Web Services
    # Encryption SDK][5], the [Amazon DynamoDB Encryption Client][6], or
    # [Amazon S3 client-side encryption][7] to do these tasks for you.
    #
    # To encrypt data outside of KMS:
    #
    # 1.  Use the `GenerateDataKey` operation to get a data key.
    #
    # 2.  Use the plaintext data key (in the `Plaintext` field of the
    #     response) to encrypt your data outside of KMS. Then erase the
    #     plaintext data key from memory.
    #
    # 3.  Store the encrypted data key (in the `CiphertextBlob` field of the
    #     response) with the encrypted data.
    #
    # To decrypt data outside of KMS:
    #
    # 1.  Use the Decrypt operation to decrypt the encrypted data key. The
    #     operation returns a plaintext copy of the data key.
    #
    # 2.  Use the plaintext data key to decrypt data outside of KMS, then
    #     erase the plaintext data key from memory.
    #
    # **Cross-account use**\: Yes. To perform this operation with a KMS key
    # in a different Amazon Web Services account, specify the key ARN or
    # alias ARN in the value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:GenerateDataKey][8] (key policy)
    #
    # **Related operations:**
    #
    # * Decrypt
    #
    # * Encrypt
    #
    # * GenerateDataKeyPair
    #
    # * GenerateDataKeyPairWithoutPlaintext
    #
    # * GenerateDataKeyWithoutPlaintext
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    # [2]: https://github.com/aws/aws-nitro-enclaves-sdk-c
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [5]: https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/
    # [6]: https://docs.aws.amazon.com/dynamodb-encryption-client/latest/devguide/
    # [7]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html
    # [8]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies the symmetric KMS key that encrypts the data key.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [Hash<String,String>] :encryption_context
    #   Specifies the encryption context that will be used when encrypting the
    #   data key.
    #
    #   An *encryption context* is a collection of non-secret key-value pairs
    #   that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data. An
    #   encryption context is optional when encrypting with a symmetric KMS
    #   key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [Integer] :number_of_bytes
    #   Specifies the length of the data key in bytes. For example, use the
    #   value 64 to generate a 512-bit data key (64 bytes is 512 bits). For
    #   128-bit (16-byte) and 256-bit (32-byte) data keys, use the `KeySpec`
    #   parameter.
    #
    #   You must specify either the `KeySpec` or the `NumberOfBytes` parameter
    #   (but not both) in every `GenerateDataKey` request.
    #
    # @option params [String] :key_spec
    #   Specifies the length of the data key. Use `AES_128` to generate a
    #   128-bit symmetric key, or `AES_256` to generate a 256-bit symmetric
    #   key.
    #
    #   You must specify either the `KeySpec` or the `NumberOfBytes` parameter
    #   (but not both) in every `GenerateDataKey` request.
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @return [Types::GenerateDataKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateDataKeyResponse#ciphertext_blob #ciphertext_blob} => String
    #   * {Types::GenerateDataKeyResponse#plaintext #plaintext} => String
    #   * {Types::GenerateDataKeyResponse#key_id #key_id} => String
    #
    #
    # @example Example: To generate a data key
    #
    #   # The following example generates a 256-bit symmetric data encryption key (data key) in two formats. One is the
    #   # unencrypted (plainext) data key, and the other is the data key encrypted with the specified KMS key.
    #
    #   resp = client.generate_data_key({
    #     key_id: "alias/ExampleAlias", # The identifier of the KMS key to use to encrypt the data key. You can use the key ID or Amazon Resource Name (ARN) of the KMS key, or the name or ARN of an alias that refers to the KMS key.
    #     key_spec: "AES_256", # Specifies the type of data key to return.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: "<binary data>", # The encrypted data key.
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the KMS key that was used to encrypt the data key.
    #     plaintext: "<binary data>", # The unencrypted (plaintext) data key.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_data_key({
    #     key_id: "KeyIdType", # required
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue",
    #     },
    #     number_of_bytes: 1,
    #     key_spec: "AES_256", # accepts AES_256, AES_128
    #     grant_tokens: ["GrantTokenType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.ciphertext_blob #=> String
    #   resp.plaintext #=> String
    #   resp.key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKey AWS API Documentation
    #
    # @overload generate_data_key(params = {})
    # @param [Hash] params ({})
    def generate_data_key(params = {}, options = {})
      req = build_request(:generate_data_key, params)
      req.send_request(options)
    end

    # Generates a unique asymmetric data key pair. The `GenerateDataKeyPair`
    # operation returns a plaintext public key, a plaintext private key, and
    # a copy of the private key that is encrypted under the symmetric KMS
    # key you specify. You can use the data key pair to perform asymmetric
    # cryptography and implement digital signatures outside of KMS.
    #
    # You can use the public key that `GenerateDataKeyPair` returns to
    # encrypt data or verify a signature outside of KMS. Then, store the
    # encrypted private key with the data. When you are ready to decrypt
    # data or sign a message, you can use the Decrypt operation to decrypt
    # the encrypted private key.
    #
    # To generate a data key pair, you must specify a symmetric KMS key to
    # encrypt the private key in a data key pair. You cannot use an
    # asymmetric KMS key or a KMS key in a custom key store. To get the type
    # and origin of your KMS key, use the DescribeKey operation.
    #
    # Use the `KeyPairSpec` parameter to choose an RSA or Elliptic Curve
    # (ECC) data key pair. KMS recommends that your use ECC key pairs for
    # signing, and use RSA key pairs for either encryption or signing, but
    # not both. However, KMS cannot enforce any restrictions on the use of
    # data key pairs outside of KMS.
    #
    # If you are using the data key pair to encrypt data, or for any
    # operation where you don't immediately need a private key, consider
    # using the GenerateDataKeyPairWithoutPlaintext operation.
    # `GenerateDataKeyPairWithoutPlaintext` returns a plaintext public key
    # and an encrypted private key, but omits the plaintext private key that
    # you need only to decrypt ciphertext or sign a message. Later, when you
    # need to decrypt the data or sign a message, use the Decrypt operation
    # to decrypt the encrypted private key in the data key pair.
    #
    # `GenerateDataKeyPair` returns a unique data key pair for each request.
    # The bytes in the keys are not related to the caller or the KMS key
    # that is used to encrypt the private key. The public key is a
    # DER-encoded X.509 SubjectPublicKeyInfo, as specified in [RFC 5280][1].
    # The private key is a DER-encoded PKCS8 PrivateKeyInfo, as specified in
    # [RFC 5958][2].
    #
    # You can use the optional encryption context to add additional security
    # to the encryption operation. If you specify an `EncryptionContext`,
    # you must specify the same encryption context (a case-sensitive exact
    # match) when decrypting the encrypted data key. Otherwise, the request
    # to decrypt fails with an `InvalidCiphertextException`. For more
    # information, see [Encryption Context][3] in the *Key Management
    # Service Developer Guide*.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][4] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: Yes. To perform this operation with a KMS key
    # in a different Amazon Web Services account, specify the key ARN or
    # alias ARN in the value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:GenerateDataKeyPair][5] (key policy)
    #
    # **Related operations:**
    #
    # * Decrypt
    #
    # * Encrypt
    #
    # * GenerateDataKey
    #
    # * GenerateDataKeyPairWithoutPlaintext
    #
    # * GenerateDataKeyWithoutPlaintext
    #
    #
    #
    # [1]: https://tools.ietf.org/html/rfc5280
    # [2]: https://tools.ietf.org/html/rfc5958
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [Hash<String,String>] :encryption_context
    #   Specifies the encryption context that will be used when encrypting the
    #   private key in the data key pair.
    #
    #   An *encryption context* is a collection of non-secret key-value pairs
    #   that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data. An
    #   encryption context is optional when encrypting with a symmetric KMS
    #   key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [required, String] :key_id
    #   Specifies the symmetric KMS key that encrypts the private key in the
    #   data key pair. You cannot specify an asymmetric KMS key or a KMS key
    #   in a custom key store. To get the type and origin of your KMS key, use
    #   the DescribeKey operation.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [required, String] :key_pair_spec
    #   Determines the type of data key pair that is generated.
    #
    #   The KMS rule that restricts the use of asymmetric RSA KMS keys to
    #   encrypt and decrypt or to sign and verify (but not both), and the rule
    #   that permits you to use ECC KMS keys only to sign and verify, are not
    #   effective on data key pairs, which are used outside of KMS.
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @return [Types::GenerateDataKeyPairResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateDataKeyPairResponse#private_key_ciphertext_blob #private_key_ciphertext_blob} => String
    #   * {Types::GenerateDataKeyPairResponse#private_key_plaintext #private_key_plaintext} => String
    #   * {Types::GenerateDataKeyPairResponse#public_key #public_key} => String
    #   * {Types::GenerateDataKeyPairResponse#key_id #key_id} => String
    #   * {Types::GenerateDataKeyPairResponse#key_pair_spec #key_pair_spec} => String
    #
    #
    # @example Example: To generate an RSA key pair for encryption and decryption
    #
    #   # This example generates an RSA data key pair for encryption and decryption. The operation returns a plaintext public key
    #   # and private key, and a copy of the private key that is encrypted under a symmetric KMS key that you specify.
    #
    #   resp = client.generate_data_key_pair({
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The key ID of the symmetric KMS key that encrypts the private RSA key in the data key pair.
    #     key_pair_spec: "RSA_3072", # The requested key spec of the RSA data key pair.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The key ARN of the symmetric KMS key that was used to encrypt the private key.
    #     key_pair_spec: "RSA_3072", # The actual key spec of the RSA data key pair.
    #     private_key_ciphertext_blob: "<binary data>", # The encrypted private key of the RSA data key pair.
    #     private_key_plaintext: "<binary data>", # The plaintext private key of the RSA data key pair.
    #     public_key: "<binary data>", # The public key (plaintext) of the RSA data key pair.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_data_key_pair({
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue",
    #     },
    #     key_id: "KeyIdType", # required
    #     key_pair_spec: "RSA_2048", # required, accepts RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, ECC_SECG_P256K1
    #     grant_tokens: ["GrantTokenType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.private_key_ciphertext_blob #=> String
    #   resp.private_key_plaintext #=> String
    #   resp.public_key #=> String
    #   resp.key_id #=> String
    #   resp.key_pair_spec #=> String, one of "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyPair AWS API Documentation
    #
    # @overload generate_data_key_pair(params = {})
    # @param [Hash] params ({})
    def generate_data_key_pair(params = {}, options = {})
      req = build_request(:generate_data_key_pair, params)
      req.send_request(options)
    end

    # Generates a unique asymmetric data key pair. The
    # `GenerateDataKeyPairWithoutPlaintext` operation returns a plaintext
    # public key and a copy of the private key that is encrypted under the
    # symmetric KMS key you specify. Unlike GenerateDataKeyPair, this
    # operation does not return a plaintext private key.
    #
    # You can use the public key that `GenerateDataKeyPairWithoutPlaintext`
    # returns to encrypt data or verify a signature outside of KMS. Then,
    # store the encrypted private key with the data. When you are ready to
    # decrypt data or sign a message, you can use the Decrypt operation to
    # decrypt the encrypted private key.
    #
    # To generate a data key pair, you must specify a symmetric KMS key to
    # encrypt the private key in a data key pair. You cannot use an
    # asymmetric KMS key or a KMS key in a custom key store. To get the type
    # and origin of your KMS key, use the DescribeKey operation.
    #
    # Use the `KeyPairSpec` parameter to choose an RSA or Elliptic Curve
    # (ECC) data key pair. KMS recommends that your use ECC key pairs for
    # signing, and use RSA key pairs for either encryption or signing, but
    # not both. However, KMS cannot enforce any restrictions on the use of
    # data key pairs outside of KMS.
    #
    # `GenerateDataKeyPairWithoutPlaintext` returns a unique data key pair
    # for each request. The bytes in the key are not related to the caller
    # or KMS key that is used to encrypt the private key. The public key is
    # a DER-encoded X.509 SubjectPublicKeyInfo, as specified in [RFC
    # 5280][1].
    #
    # You can use the optional encryption context to add additional security
    # to the encryption operation. If you specify an `EncryptionContext`,
    # you must specify the same encryption context (a case-sensitive exact
    # match) when decrypting the encrypted data key. Otherwise, the request
    # to decrypt fails with an `InvalidCiphertextException`. For more
    # information, see [Encryption Context][2] in the *Key Management
    # Service Developer Guide*.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][3] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: Yes. To perform this operation with a KMS key
    # in a different Amazon Web Services account, specify the key ARN or
    # alias ARN in the value of the `KeyId` parameter.
    #
    # **Required permissions**\:
    # [kms:GenerateDataKeyPairWithoutPlaintext][4] (key policy)
    #
    # **Related operations:**
    #
    # * Decrypt
    #
    # * Encrypt
    #
    # * GenerateDataKey
    #
    # * GenerateDataKeyPair
    #
    # * GenerateDataKeyWithoutPlaintext
    #
    #
    #
    # [1]: https://tools.ietf.org/html/rfc5280
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [Hash<String,String>] :encryption_context
    #   Specifies the encryption context that will be used when encrypting the
    #   private key in the data key pair.
    #
    #   An *encryption context* is a collection of non-secret key-value pairs
    #   that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data. An
    #   encryption context is optional when encrypting with a symmetric KMS
    #   key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [required, String] :key_id
    #   Specifies the KMS key that encrypts the private key in the data key
    #   pair. You must specify a symmetric KMS key. You cannot use an
    #   asymmetric KMS key or a KMS key in a custom key store. To get the type
    #   and origin of your KMS key, use the DescribeKey operation.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [required, String] :key_pair_spec
    #   Determines the type of data key pair that is generated.
    #
    #   The KMS rule that restricts the use of asymmetric RSA KMS keys to
    #   encrypt and decrypt or to sign and verify (but not both), and the rule
    #   that permits you to use ECC KMS keys only to sign and verify, are not
    #   effective on data key pairs, which are used outside of KMS.
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @return [Types::GenerateDataKeyPairWithoutPlaintextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateDataKeyPairWithoutPlaintextResponse#private_key_ciphertext_blob #private_key_ciphertext_blob} => String
    #   * {Types::GenerateDataKeyPairWithoutPlaintextResponse#public_key #public_key} => String
    #   * {Types::GenerateDataKeyPairWithoutPlaintextResponse#key_id #key_id} => String
    #   * {Types::GenerateDataKeyPairWithoutPlaintextResponse#key_pair_spec #key_pair_spec} => String
    #
    #
    # @example Example: To generate an asymmetric data key pair without a plaintext key
    #
    #   # This example returns an asymmetric elliptic curve (ECC) data key pair. The private key is encrypted under the symmetric
    #   # KMS key that you specify. This operation doesn't return a plaintext (unencrypted) private key.
    #
    #   resp = client.generate_data_key_pair_without_plaintext({
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The symmetric KMS key that encrypts the private key of the ECC data key pair.
    #     key_pair_spec: "ECC_NIST_P521", # The requested key spec of the ECC asymmetric data key pair.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The key ARN of the symmetric KMS key that encrypted the private key in the ECC asymmetric data key pair.
    #     key_pair_spec: "ECC_NIST_P521", # The actual key spec of the ECC asymmetric data key pair.
    #     private_key_ciphertext_blob: "<binary data>", # The encrypted private key of the asymmetric ECC data key pair.
    #     public_key: "<binary data>", # The public key (plaintext).
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_data_key_pair_without_plaintext({
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue",
    #     },
    #     key_id: "KeyIdType", # required
    #     key_pair_spec: "RSA_2048", # required, accepts RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, ECC_SECG_P256K1
    #     grant_tokens: ["GrantTokenType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.private_key_ciphertext_blob #=> String
    #   resp.public_key #=> String
    #   resp.key_id #=> String
    #   resp.key_pair_spec #=> String, one of "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyPairWithoutPlaintext AWS API Documentation
    #
    # @overload generate_data_key_pair_without_plaintext(params = {})
    # @param [Hash] params ({})
    def generate_data_key_pair_without_plaintext(params = {}, options = {})
      req = build_request(:generate_data_key_pair_without_plaintext, params)
      req.send_request(options)
    end

    # Generates a unique symmetric data key. This operation returns a data
    # key that is encrypted under a KMS key that you specify. To request an
    # asymmetric data key pair, use the GenerateDataKeyPair or
    # GenerateDataKeyPairWithoutPlaintext operations.
    #
    # `GenerateDataKeyWithoutPlaintext` is identical to the GenerateDataKey
    # operation except that returns only the encrypted copy of the data key.
    # This operation is useful for systems that need to encrypt data at some
    # point, but not immediately. When you need to encrypt the data, you
    # call the Decrypt operation on the encrypted copy of the key.
    #
    # It's also useful in distributed systems with different levels of
    # trust. For example, you might store encrypted data in containers. One
    # component of your system creates new containers and stores an
    # encrypted data key with each container. Then, a different component
    # puts the data into the containers. That component first decrypts the
    # data key, uses the plaintext data key to encrypt data, puts the
    # encrypted data into the container, and then destroys the plaintext
    # data key. In this system, the component that creates the containers
    # never sees the plaintext data key.
    #
    # `GenerateDataKeyWithoutPlaintext` returns a unique data key for each
    # request. The bytes in the keys are not related to the caller or KMS
    # key that is used to encrypt the private key.
    #
    # To generate a data key, you must specify the symmetric KMS key that is
    # used to encrypt the data key. You cannot use an asymmetric KMS key to
    # generate a data key. To get the type of your KMS key, use the
    # DescribeKey operation.
    #
    # If the operation succeeds, you will find the encrypted copy of the
    # data key in the `CiphertextBlob` field.
    #
    # You can use the optional encryption context to add additional security
    # to the encryption operation. If you specify an `EncryptionContext`,
    # you must specify the same encryption context (a case-sensitive exact
    # match) when decrypting the encrypted data key. Otherwise, the request
    # to decrypt fails with an `InvalidCiphertextException`. For more
    # information, see [Encryption Context][1] in the *Key Management
    # Service Developer Guide*.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][2] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: Yes. To perform this operation with a KMS key
    # in a different Amazon Web Services account, specify the key ARN or
    # alias ARN in the value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:GenerateDataKeyWithoutPlaintext][3]
    # (key policy)
    #
    # **Related operations:**
    #
    # * Decrypt
    #
    # * Encrypt
    #
    # * GenerateDataKey
    #
    # * GenerateDataKeyPair
    #
    # * GenerateDataKeyPairWithoutPlaintext
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   The identifier of the symmetric KMS key that encrypts the data key.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [Hash<String,String>] :encryption_context
    #   Specifies the encryption context that will be used when encrypting the
    #   data key.
    #
    #   An *encryption context* is a collection of non-secret key-value pairs
    #   that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data. An
    #   encryption context is optional when encrypting with a symmetric KMS
    #   key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [String] :key_spec
    #   The length of the data key. Use `AES_128` to generate a 128-bit
    #   symmetric key, or `AES_256` to generate a 256-bit symmetric key.
    #
    # @option params [Integer] :number_of_bytes
    #   The length of the data key in bytes. For example, use the value 64 to
    #   generate a 512-bit data key (64 bytes is 512 bits). For common key
    #   lengths (128-bit and 256-bit symmetric keys), we recommend that you
    #   use the `KeySpec` field instead of this one.
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @return [Types::GenerateDataKeyWithoutPlaintextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateDataKeyWithoutPlaintextResponse#ciphertext_blob #ciphertext_blob} => String
    #   * {Types::GenerateDataKeyWithoutPlaintextResponse#key_id #key_id} => String
    #
    #
    # @example Example: To generate an encrypted data key
    #
    #   # The following example generates an encrypted copy of a 256-bit symmetric data encryption key (data key). The data key is
    #   # encrypted with the specified KMS key.
    #
    #   resp = client.generate_data_key_without_plaintext({
    #     key_id: "alias/ExampleAlias", # The identifier of the KMS key to use to encrypt the data key. You can use the key ID or Amazon Resource Name (ARN) of the KMS key, or the name or ARN of an alias that refers to the KMS key.
    #     key_spec: "AES_256", # Specifies the type of data key to return.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: "<binary data>", # The encrypted data key.
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the KMS key that was used to encrypt the data key.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_data_key_without_plaintext({
    #     key_id: "KeyIdType", # required
    #     encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue",
    #     },
    #     key_spec: "AES_256", # accepts AES_256, AES_128
    #     number_of_bytes: 1,
    #     grant_tokens: ["GrantTokenType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.ciphertext_blob #=> String
    #   resp.key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyWithoutPlaintext AWS API Documentation
    #
    # @overload generate_data_key_without_plaintext(params = {})
    # @param [Hash] params ({})
    def generate_data_key_without_plaintext(params = {}, options = {})
      req = build_request(:generate_data_key_without_plaintext, params)
      req.send_request(options)
    end

    # Returns a random byte string that is cryptographically secure.
    #
    # By default, the random byte string is generated in KMS. To generate
    # the byte string in the CloudHSM cluster that is associated with a
    # [custom key store][1], specify the custom key store ID.
    #
    # Applications in Amazon Web Services Nitro Enclaves can call this
    # operation by using the [Amazon Web Services Nitro Enclaves Development
    # Kit][2]. For information about the supporting parameters, see [How
    # Amazon Web Services Nitro Enclaves use KMS][3] in the *Key Management
    # Service Developer Guide*.
    #
    # For more information about entropy and random number generation, see
    # [Key Management Service Cryptographic Details][4].
    #
    # **Required permissions**\: [kms:GenerateRandom][5] (IAM policy)
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://github.com/aws/aws-nitro-enclaves-sdk-c
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html
    # [4]: https://docs.aws.amazon.com/kms/latest/cryptographic-details/
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [Integer] :number_of_bytes
    #   The length of the byte string.
    #
    # @option params [String] :custom_key_store_id
    #   Generates the random byte string in the CloudHSM cluster that is
    #   associated with the specified [custom key store][1]. To find the ID of
    #   a custom key store, use the DescribeCustomKeyStores operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #
    # @return [Types::GenerateRandomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateRandomResponse#plaintext #plaintext} => String
    #
    #
    # @example Example: To generate random data
    #
    #   # The following example generates 32 bytes of random data.
    #
    #   resp = client.generate_random({
    #     number_of_bytes: 32, # The length of the random data, specified in number of bytes.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     plaintext: "<binary data>", # The random data.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_random({
    #     number_of_bytes: 1,
    #     custom_key_store_id: "CustomKeyStoreIdType",
    #   })
    #
    # @example Response structure
    #
    #   resp.plaintext #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateRandom AWS API Documentation
    #
    # @overload generate_random(params = {})
    # @param [Hash] params ({})
    def generate_random(params = {}, options = {})
      req = build_request(:generate_random, params)
      req.send_request(options)
    end

    # Gets a key policy attached to the specified KMS key.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:GetKeyPolicy][1] (key policy)
    #
    # **Related operations**\: PutKeyPolicy
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Gets the key policy for the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, String] :policy_name
    #   Specifies the name of the key policy. The only valid name is
    #   `default`. To get the names of key policies, use ListKeyPolicies.
    #
    # @return [Types::GetKeyPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyPolicyResponse#policy #policy} => String
    #
    #
    # @example Example: To retrieve a key policy
    #
    #   # The following example retrieves the key policy for the specified KMS key.
    #
    #   resp = client.get_key_policy({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose key policy you want to retrieve. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #     policy_name: "default", # The name of the key policy to retrieve.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: "{\n  \"Version\" : \"2012-10-17\",\n  \"Id\" : \"key-default-1\",\n  \"Statement\" : [ {\n    \"Sid\" : \"Enable IAM User Permissions\",\n    \"Effect\" : \"Allow\",\n    \"Principal\" : {\n      \"AWS\" : \"arn:aws:iam::111122223333:root\"\n    },\n    \"Action\" : \"kms:*\",\n    \"Resource\" : \"*\"\n  } ]\n}", # The key policy document.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key_policy({
    #     key_id: "KeyIdType", # required
    #     policy_name: "PolicyNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetKeyPolicy AWS API Documentation
    #
    # @overload get_key_policy(params = {})
    # @param [Hash] params ({})
    def get_key_policy(params = {}, options = {})
      req = build_request(:get_key_policy, params)
      req.send_request(options)
    end

    # Gets a Boolean value that indicates whether [automatic rotation of the
    # key material][1] is enabled for the specified KMS key.
    #
    # You cannot enable automatic rotation of [asymmetric KMS keys][2], KMS
    # keys with [imported key material][3], or KMS keys in a [custom key
    # store][4]. To enable or disable automatic rotation of a set of related
    # [multi-Region keys][5], set the property on the primary key. The key
    # rotation status for these KMS keys is always `false`.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][6] in
    # the *Key Management Service Developer Guide*.
    #
    # * Disabled: The key rotation status does not change when you disable a
    #   KMS key. However, while the KMS key is disabled, KMS does not rotate
    #   the key material.
    #
    # * Pending deletion: While a KMS key is pending deletion, its key
    #   rotation status is `false` and KMS does not rotate the key material.
    #   If you cancel the deletion, the original key rotation status is
    #   restored.
    #
    # **Cross-account use**\: Yes. To perform this operation on a KMS key in
    # a different Amazon Web Services account, specify the key ARN in the
    # value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:GetKeyRotationStatus][7] (key policy)
    #
    # **Related operations:**
    #
    # * DisableKeyRotation
    #
    # * EnableKeyRotation
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-replica-key
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [7]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Gets the rotation status for the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key. To specify a KMS key in
    #   a different Amazon Web Services account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @return [Types::GetKeyRotationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyRotationStatusResponse#key_rotation_enabled #key_rotation_enabled} => Boolean
    #
    #
    # @example Example: To retrieve the rotation status for a KMS key
    #
    #   # The following example retrieves the status of automatic annual rotation of the key material for the specified KMS key.
    #
    #   resp = client.get_key_rotation_status({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose key material rotation status you want to retrieve. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_rotation_enabled: true, # A boolean that indicates the key material rotation status. Returns true when automatic annual rotation of the key material is enabled, or false when it is not.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key_rotation_status({
    #     key_id: "KeyIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_rotation_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetKeyRotationStatus AWS API Documentation
    #
    # @overload get_key_rotation_status(params = {})
    # @param [Hash] params ({})
    def get_key_rotation_status(params = {}, options = {})
      req = build_request(:get_key_rotation_status, params)
      req.send_request(options)
    end

    # Returns the items you need to import key material into a symmetric,
    # customer managed KMS key. For more information about importing key
    # material into KMS, see [Importing Key Material][1] in the *Key
    # Management Service Developer Guide*.
    #
    # This operation returns a public key and an import token. Use the
    # public key to encrypt the symmetric key material. Store the import
    # token to send with a subsequent ImportKeyMaterial request.
    #
    # You must specify the key ID of the symmetric KMS key into which you
    # will import key material. This KMS key's `Origin` must be `EXTERNAL`.
    # You must also specify the wrapping algorithm and type of wrapping key
    # (public key) that you will use to encrypt the key material. You cannot
    # perform this operation on an asymmetric KMS key or on any KMS key in a
    # different Amazon Web Services account.
    #
    # To import key material, you must use the public key and import token
    # from the same response. These items are valid for 24 hours. The
    # expiration date and time appear in the `GetParametersForImport`
    # response. You cannot use an expired token in an ImportKeyMaterial
    # request. If your key and token expire, send another
    # `GetParametersForImport` request.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][2] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:GetParametersForImport][3] (key
    # policy)
    #
    # **Related operations:**
    #
    # * ImportKeyMaterial
    #
    # * DeleteImportedKeyMaterial
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   The identifier of the symmetric KMS key into which you will import key
    #   material. The `Origin` of the KMS key must be `EXTERNAL`.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, String] :wrapping_algorithm
    #   The algorithm you will use to encrypt the key material before
    #   importing it with ImportKeyMaterial. For more information, see
    #   [Encrypt the Key Material][1] in the *Key Management Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-encrypt-key-material.html
    #
    # @option params [required, String] :wrapping_key_spec
    #   The type of wrapping key (public key) to return in the response. Only
    #   2048-bit RSA public keys are supported.
    #
    # @return [Types::GetParametersForImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParametersForImportResponse#key_id #key_id} => String
    #   * {Types::GetParametersForImportResponse#import_token #import_token} => String
    #   * {Types::GetParametersForImportResponse#public_key #public_key} => String
    #   * {Types::GetParametersForImportResponse#parameters_valid_to #parameters_valid_to} => Time
    #
    #
    # @example Example: To retrieve the public key and import token for a KMS key
    #
    #   # The following example retrieves the public key and import token for the specified KMS key.
    #
    #   resp = client.get_parameters_for_import({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key for which to retrieve the public key and import token. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #     wrapping_algorithm: "RSAES_OAEP_SHA_1", # The algorithm that you will use to encrypt the key material before importing it.
    #     wrapping_key_spec: "RSA_2048", # The type of wrapping key (public key) to return in the response.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     import_token: "<binary data>", # The import token to send with a subsequent ImportKeyMaterial request.
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the KMS key for which you are retrieving the public key and import token. This is the same KMS key specified in the request.
    #     parameters_valid_to: Time.parse("2016-12-01T14:52:17-08:00"), # The time at which the import token and public key are no longer valid.
    #     public_key: "<binary data>", # The public key to use to encrypt the key material before importing it.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters_for_import({
    #     key_id: "KeyIdType", # required
    #     wrapping_algorithm: "RSAES_PKCS1_V1_5", # required, accepts RSAES_PKCS1_V1_5, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
    #     wrapping_key_spec: "RSA_2048", # required, accepts RSA_2048
    #   })
    #
    # @example Response structure
    #
    #   resp.key_id #=> String
    #   resp.import_token #=> String
    #   resp.public_key #=> String
    #   resp.parameters_valid_to #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetParametersForImport AWS API Documentation
    #
    # @overload get_parameters_for_import(params = {})
    # @param [Hash] params ({})
    def get_parameters_for_import(params = {}, options = {})
      req = build_request(:get_parameters_for_import, params)
      req.send_request(options)
    end

    # Returns the public key of an asymmetric KMS key. Unlike the private
    # key of a asymmetric KMS key, which never leaves KMS unencrypted,
    # callers with `kms:GetPublicKey` permission can download the public key
    # of an asymmetric KMS key. You can share the public key to allow others
    # to encrypt messages and verify signatures outside of KMS. For
    # information about symmetric and asymmetric KMS keys, see [Using
    # Symmetric and Asymmetric KMS keys][1] in the *Key Management Service
    # Developer Guide*.
    #
    # You do not need to download the public key. Instead, you can use the
    # public key within KMS by calling the Encrypt, ReEncrypt, or Verify
    # operations with the identifier of an asymmetric KMS key. When you use
    # the public key within KMS, you benefit from the authentication,
    # authorization, and logging that are part of every KMS operation. You
    # also reduce of risk of encrypting data that cannot be decrypted. These
    # features are not effective outside of KMS. For details, see [Special
    # Considerations for Downloading Public Keys][2].
    #
    # To help you use the public key safely outside of KMS, `GetPublicKey`
    # returns important information about the public key in the response,
    # including:
    #
    # * [KeySpec][3]\: The type of key material in the public key, such as
    #   `RSA_4096` or `ECC_NIST_P521`.
    #
    # * [KeyUsage][4]\: Whether the key is used for encryption or signing.
    #
    # * [EncryptionAlgorithms][5] or [SigningAlgorithms][6]\: A list of the
    #   encryption algorithms or the signing algorithms for the key.
    #
    # Although KMS cannot enforce these restrictions on external operations,
    # it is crucial that you use this information to prevent the public key
    # from being used improperly. For example, you can prevent a public
    # signing key from being used encrypt data, or prevent a public key from
    # being used with an encryption algorithm that is not supported by KMS.
    # You can also avoid errors, such as using the wrong signing algorithm
    # in a verification operation.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][7] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: Yes. To perform this operation with a KMS key
    # in a different Amazon Web Services account, specify the key ARN or
    # alias ARN in the value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:GetPublicKey][8] (key policy)
    #
    # **Related operations**\: CreateKey
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/download-public-key.html#download-public-key-considerations
    # [3]: https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeySpec
    # [4]: https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeyUsage
    # [5]: https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-EncryptionAlgorithms
    # [6]: https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-SigningAlgorithms
    # [7]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [8]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies the asymmetric KMS key that includes the public key.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @return [Types::GetPublicKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPublicKeyResponse#key_id #key_id} => String
    #   * {Types::GetPublicKeyResponse#public_key #public_key} => String
    #   * {Types::GetPublicKeyResponse#customer_master_key_spec #customer_master_key_spec} => String
    #   * {Types::GetPublicKeyResponse#key_spec #key_spec} => String
    #   * {Types::GetPublicKeyResponse#key_usage #key_usage} => String
    #   * {Types::GetPublicKeyResponse#encryption_algorithms #encryption_algorithms} => Array&lt;String&gt;
    #   * {Types::GetPublicKeyResponse#signing_algorithms #signing_algorithms} => Array&lt;String&gt;
    #
    #
    # @example Example: To download the public key of an asymmetric KMS key
    #
    #   # This example gets the public key of an asymmetric RSA KMS key used for encryption and decryption. The operation returns
    #   # the key spec, key usage, and encryption or signing algorithms to help you use the public key correctly outside of AWS
    #   # KMS.
    #
    #   resp = client.get_public_key({
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321", # The key ARN of the asymmetric KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     customer_master_key_spec: "RSA_4096", # The key spec of the asymmetric KMS key from which the public key was downloaded.
    #     encryption_algorithms: [
    #       "RSAES_OAEP_SHA_1", 
    #       "RSAES_OAEP_SHA_256", 
    #     ], # The encryption algorithms supported by the asymmetric KMS key that was downloaded.
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321", # The key ARN of the asymmetric KMS key from which the public key was downloaded.
    #     key_usage: "ENCRYPT_DECRYPT", # The key usage of the asymmetric KMS key from which the public key was downloaded.
    #     public_key: "<binary data>", # The public key (plaintext) of the asymmetric KMS key.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_key({
    #     key_id: "KeyIdType", # required
    #     grant_tokens: ["GrantTokenType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.key_id #=> String
    #   resp.public_key #=> String
    #   resp.customer_master_key_spec #=> String, one of "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT"
    #   resp.key_spec #=> String, one of "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT"
    #   resp.key_usage #=> String, one of "SIGN_VERIFY", "ENCRYPT_DECRYPT"
    #   resp.encryption_algorithms #=> Array
    #   resp.encryption_algorithms[0] #=> String, one of "SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256"
    #   resp.signing_algorithms #=> Array
    #   resp.signing_algorithms[0] #=> String, one of "RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetPublicKey AWS API Documentation
    #
    # @overload get_public_key(params = {})
    # @param [Hash] params ({})
    def get_public_key(params = {}, options = {})
      req = build_request(:get_public_key, params)
      req.send_request(options)
    end

    # Imports key material into an existing symmetric KMS KMS key that was
    # created without key material. After you successfully import key
    # material into a KMS key, you can [reimport the same key material][1]
    # into that KMS key, but you cannot import different key material.
    #
    # You cannot perform this operation on an asymmetric KMS key or on any
    # KMS key in a different Amazon Web Services account. For more
    # information about creating KMS keys with no key material and then
    # importing key material, see [Importing Key Material][2] in the *Key
    # Management Service Developer Guide*.
    #
    # Before using this operation, call GetParametersForImport. Its response
    # includes a public key and an import token. Use the public key to
    # encrypt the key material. Then, submit the import token from the same
    # `GetParametersForImport` response.
    #
    # When calling this operation, you must specify the following values:
    #
    # * The key ID or key ARN of a KMS key with no key material. Its
    #   `Origin` must be `EXTERNAL`.
    #
    #   To create a KMS key with no key material, call CreateKey and set the
    #   value of its `Origin` parameter to `EXTERNAL`. To get the `Origin`
    #   of a KMS key, call DescribeKey.)
    #
    # * The encrypted key material. To get the public key to encrypt the key
    #   material, call GetParametersForImport.
    #
    # * The import token that GetParametersForImport returned. You must use
    #   a public key and token from the same `GetParametersForImport`
    #   response.
    #
    # * Whether the key material expires and if so, when. If you set an
    #   expiration date, KMS deletes the key material from the KMS key on
    #   the specified date, and the KMS key becomes unusable. To use the KMS
    #   key again, you must reimport the same key material. The only way to
    #   change an expiration date is by reimporting the same key material
    #   and specifying a new expiration date.
    #
    # When this operation is successful, the key state of the KMS key
    # changes from `PendingImport` to `Enabled`, and you can use the KMS
    # key.
    #
    # If this operation fails, use the exception to help determine the
    # problem. If the error is related to the key material, the import
    # token, or wrapping key, use GetParametersForImport to get a new public
    # key and import token for the KMS key and repeat the import procedure.
    # For help, see [How To Import Key Material][3] in the *Key Management
    # Service Developer Guide*.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][4] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:ImportKeyMaterial][5] (key policy)
    #
    # **Related operations:**
    #
    # * DeleteImportedKeyMaterial
    #
    # * GetParametersForImport
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#importing-keys-overview
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   The identifier of the symmetric KMS key that receives the imported key
    #   material. The KMS key's `Origin` must be `EXTERNAL`. This must be the
    #   same KMS key specified in the `KeyID` parameter of the corresponding
    #   GetParametersForImport request.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, String, StringIO, File] :import_token
    #   The import token that you received in the response to a previous
    #   GetParametersForImport request. It must be from the same response that
    #   contained the public key that you used to encrypt the key material.
    #
    # @option params [required, String, StringIO, File] :encrypted_key_material
    #   The encrypted key material to import. The key material must be
    #   encrypted with the public wrapping key that GetParametersForImport
    #   returned, using the wrapping algorithm that you specified in the same
    #   `GetParametersForImport` request.
    #
    # @option params [Time,DateTime,Date,Integer,String] :valid_to
    #   The time at which the imported key material expires. When the key
    #   material expires, KMS deletes the key material and the KMS key becomes
    #   unusable. You must omit this parameter when the `ExpirationModel`
    #   parameter is set to `KEY_MATERIAL_DOES_NOT_EXPIRE`. Otherwise it is
    #   required.
    #
    # @option params [String] :expiration_model
    #   Specifies whether the key material expires. The default is
    #   `KEY_MATERIAL_EXPIRES`, in which case you must include the `ValidTo`
    #   parameter. When this parameter is set to
    #   `KEY_MATERIAL_DOES_NOT_EXPIRE`, you must omit the `ValidTo` parameter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To import key material into a KMS key
    #
    #   # The following example imports key material into the specified KMS key.
    #
    #   resp = client.import_key_material({
    #     encrypted_key_material: "<binary data>", # The encrypted key material to import.
    #     expiration_model: "KEY_MATERIAL_DOES_NOT_EXPIRE", # A value that specifies whether the key material expires.
    #     import_token: "<binary data>", # The import token that you received in the response to a previous GetParametersForImport request.
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key to import the key material into. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_key_material({
    #     key_id: "KeyIdType", # required
    #     import_token: "data", # required
    #     encrypted_key_material: "data", # required
    #     valid_to: Time.now,
    #     expiration_model: "KEY_MATERIAL_EXPIRES", # accepts KEY_MATERIAL_EXPIRES, KEY_MATERIAL_DOES_NOT_EXPIRE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ImportKeyMaterial AWS API Documentation
    #
    # @overload import_key_material(params = {})
    # @param [Hash] params ({})
    def import_key_material(params = {}, options = {})
      req = build_request(:import_key_material, params)
      req.send_request(options)
    end

    # Gets a list of aliases in the caller's Amazon Web Services account
    # and region. For more information about aliases, see CreateAlias.
    #
    # By default, the `ListAliases` operation returns all aliases in the
    # account and region. To get only the aliases associated with a
    # particular KMS key, use the `KeyId` parameter.
    #
    # The `ListAliases` response can include aliases that you created and
    # associated with your customer managed keys, and aliases that Amazon
    # Web Services created and associated with Amazon Web Services managed
    # keys in your account. You can recognize Amazon Web Services aliases
    # because their names have the format `aws/<service-name>`, such as
    # `aws/dynamodb`.
    #
    # The response might also include aliases that have no `TargetKeyId`
    # field. These are predefined aliases that Amazon Web Services has
    # created but has not yet associated with a KMS key. Aliases that Amazon
    # Web Services creates in your account, including predefined aliases, do
    # not count against your [KMS aliases quota][1].
    #
    # **Cross-account use**\: No. `ListAliases` does not return aliases in
    # other Amazon Web Services accounts.
    #
    # **Required permissions**\: [kms:ListAliases][2] (IAM policy)
    #
    # For details, see [Controlling access to aliases][3] in the *Key
    # Management Service Developer Guide*.
    #
    # **Related operations:**
    #
    # * CreateAlias
    #
    # * DeleteAlias
    #
    # * UpdateAlias
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access
    #
    # @option params [String] :key_id
    #   Lists only aliases that are associated with the specified KMS key.
    #   Enter a KMS key in your Amazon Web Services account.
    #
    #   This parameter is optional. If you omit it, `ListAliases` returns all
    #   aliases in the account and Region.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to 50.
    #
    # @option params [String] :marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #
    # @return [Types::ListAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAliasesResponse#aliases #aliases} => Array&lt;Types::AliasListEntry&gt;
    #   * {Types::ListAliasesResponse#next_marker #next_marker} => String
    #   * {Types::ListAliasesResponse#truncated #truncated} => Boolean
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list aliases
    #
    #   # The following example lists aliases.
    #
    #   resp = client.list_aliases({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     aliases: [
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/acm", 
    #         alias_name: "alias/aws/acm", 
    #         target_key_id: "da03f6f7-d279-427a-9cae-de48d07e5b66", 
    #       }, 
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/ebs", 
    #         alias_name: "alias/aws/ebs", 
    #         target_key_id: "25a217e7-7170-4b8c-8bf6-045ea5f70e5b", 
    #       }, 
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/rds", 
    #         alias_name: "alias/aws/rds", 
    #         target_key_id: "7ec3104e-c3f2-4b5c-bf42-bfc4772c6685", 
    #       }, 
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/redshift", 
    #         alias_name: "alias/aws/redshift", 
    #         target_key_id: "08f7a25a-69e2-4fb5-8f10-393db27326fa", 
    #       }, 
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/s3", 
    #         alias_name: "alias/aws/s3", 
    #         target_key_id: "d2b0f1a3-580d-4f79-b836-bc983be8cfa5", 
    #       }, 
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/example1", 
    #         alias_name: "alias/example1", 
    #         target_key_id: "4da1e216-62d0-46c5-a7c0-5f3a3d2f8046", 
    #       }, 
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/example2", 
    #         alias_name: "alias/example2", 
    #         target_key_id: "f32fef59-2cc2-445b-8573-2d73328acbee", 
    #       }, 
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/example3", 
    #         alias_name: "alias/example3", 
    #         target_key_id: "1374ef38-d34e-4d5f-b2c9-4e0daee38855", 
    #       }, 
    #     ], # A list of aliases, including the key ID of the KMS key that each alias refers to.
    #     truncated: false, # A boolean that indicates whether there are more items in the list. Returns true when there are more items, or false when there are not.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases({
    #     key_id: "KeyIdType",
    #     limit: 1,
    #     marker: "MarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.aliases #=> Array
    #   resp.aliases[0].alias_name #=> String
    #   resp.aliases[0].alias_arn #=> String
    #   resp.aliases[0].target_key_id #=> String
    #   resp.aliases[0].creation_date #=> Time
    #   resp.aliases[0].last_updated_date #=> Time
    #   resp.next_marker #=> String
    #   resp.truncated #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListAliases AWS API Documentation
    #
    # @overload list_aliases(params = {})
    # @param [Hash] params ({})
    def list_aliases(params = {}, options = {})
      req = build_request(:list_aliases, params)
      req.send_request(options)
    end

    # Gets a list of all grants for the specified KMS key.
    #
    # You must specify the KMS key in all requests. You can filter the grant
    # list by grant ID or grantee principal.
    #
    # For detailed information about grants, including grant terminology,
    # see [Using grants][1] in the <i> <i>Key Management Service Developer
    # Guide</i> </i>. For examples of working with grants in several
    # programming languages, see [Programming grants][2].
    #
    # <note markdown="1"> The `GranteePrincipal` field in the `ListGrants` response usually
    # contains the user or role designated as the grantee principal in the
    # grant. However, when the grantee principal in the grant is an Amazon
    # Web Services service, the `GranteePrincipal` field contains the
    # [service principal][3], which might represent several different
    # grantee principals.
    #
    #  </note>
    #
    # **Cross-account use**\: Yes. To perform this operation on a KMS key in
    # a different Amazon Web Services account, specify the key ARN in the
    # value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:ListGrants][4] (key policy)
    #
    # **Related operations:**
    #
    # * CreateGrant
    #
    # * ListRetirableGrants
    #
    # * RetireGrant
    #
    # * RevokeGrant
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to 50.
    #
    # @option params [String] :marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #
    # @option params [required, String] :key_id
    #   Returns only grants for the specified KMS key. This parameter is
    #   required.
    #
    #   Specify the key ID or key ARN of the KMS key. To specify a KMS key in
    #   a different Amazon Web Services account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [String] :grant_id
    #   Returns only the grant with the specified grant ID. The grant ID
    #   uniquely identifies the grant.
    #
    # @option params [String] :grantee_principal
    #   Returns only grants where the specified principal is the grantee
    #   principal for the grant.
    #
    # @return [Types::ListGrantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGrantsResponse#grants #grants} => Array&lt;Types::GrantListEntry&gt;
    #   * {Types::ListGrantsResponse#next_marker #next_marker} => String
    #   * {Types::ListGrantsResponse#truncated #truncated} => Boolean
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list grants for a KMS key
    #
    #   # The following example lists grants for the specified KMS key.
    #
    #   resp = client.list_grants({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose grants you want to list. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     grants: [
    #       {
    #         creation_date: Time.parse("2016-10-25T14:37:41-07:00"), 
    #         grant_id: "91ad875e49b04a9d1f3bdeb84d821f9db6ea95e1098813f6d47f0c65fbe2a172", 
    #         grantee_principal: "acm.us-east-2.amazonaws.com", 
    #         issuing_account: "arn:aws:iam::111122223333:root", 
    #         key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #         operations: [
    #           "Encrypt", 
    #           "ReEncryptFrom", 
    #           "ReEncryptTo", 
    #         ], 
    #         retiring_principal: "acm.us-east-2.amazonaws.com", 
    #       }, 
    #       {
    #         creation_date: Time.parse("2016-10-25T14:37:41-07:00"), 
    #         grant_id: "a5d67d3e207a8fc1f4928749ee3e52eb0440493a8b9cf05bbfad91655b056200", 
    #         grantee_principal: "acm.us-east-2.amazonaws.com", 
    #         issuing_account: "arn:aws:iam::111122223333:root", 
    #         key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #         operations: [
    #           "ReEncryptFrom", 
    #           "ReEncryptTo", 
    #         ], 
    #         retiring_principal: "acm.us-east-2.amazonaws.com", 
    #       }, 
    #       {
    #         creation_date: Time.parse("2016-10-25T14:37:41-07:00"), 
    #         grant_id: "c541aaf05d90cb78846a73b346fc43e65be28b7163129488c738e0c9e0628f4f", 
    #         grantee_principal: "acm.us-east-2.amazonaws.com", 
    #         issuing_account: "arn:aws:iam::111122223333:root", 
    #         key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #         operations: [
    #           "Encrypt", 
    #           "ReEncryptFrom", 
    #           "ReEncryptTo", 
    #         ], 
    #         retiring_principal: "acm.us-east-2.amazonaws.com", 
    #       }, 
    #       {
    #         creation_date: Time.parse("2016-10-25T14:37:41-07:00"), 
    #         grant_id: "dd2052c67b4c76ee45caf1dc6a1e2d24e8dc744a51b36ae2f067dc540ce0105c", 
    #         grantee_principal: "acm.us-east-2.amazonaws.com", 
    #         issuing_account: "arn:aws:iam::111122223333:root", 
    #         key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #         operations: [
    #           "Encrypt", 
    #           "ReEncryptFrom", 
    #           "ReEncryptTo", 
    #         ], 
    #         retiring_principal: "acm.us-east-2.amazonaws.com", 
    #       }, 
    #     ], # A list of grants.
    #     truncated: true, # A boolean that indicates whether there are more items in the list. Returns true when there are more items, or false when there are not.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_grants({
    #     limit: 1,
    #     marker: "MarkerType",
    #     key_id: "KeyIdType", # required
    #     grant_id: "GrantIdType",
    #     grantee_principal: "PrincipalIdType",
    #   })
    #
    # @example Response structure
    #
    #   resp.grants #=> Array
    #   resp.grants[0].key_id #=> String
    #   resp.grants[0].grant_id #=> String
    #   resp.grants[0].name #=> String
    #   resp.grants[0].creation_date #=> Time
    #   resp.grants[0].grantee_principal #=> String
    #   resp.grants[0].retiring_principal #=> String
    #   resp.grants[0].issuing_account #=> String
    #   resp.grants[0].operations #=> Array
    #   resp.grants[0].operations[0] #=> String, one of "Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "Sign", "Verify", "GetPublicKey", "CreateGrant", "RetireGrant", "DescribeKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext"
    #   resp.grants[0].constraints.encryption_context_subset #=> Hash
    #   resp.grants[0].constraints.encryption_context_subset["EncryptionContextKey"] #=> String
    #   resp.grants[0].constraints.encryption_context_equals #=> Hash
    #   resp.grants[0].constraints.encryption_context_equals["EncryptionContextKey"] #=> String
    #   resp.next_marker #=> String
    #   resp.truncated #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListGrants AWS API Documentation
    #
    # @overload list_grants(params = {})
    # @param [Hash] params ({})
    def list_grants(params = {}, options = {})
      req = build_request(:list_grants, params)
      req.send_request(options)
    end

    # Gets the names of the key policies that are attached to a KMS key.
    # This operation is designed to get policy names that you can use in a
    # GetKeyPolicy operation. However, the only valid policy name is
    # `default`.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:ListKeyPolicies][1] (key policy)
    #
    # **Related operations:**
    #
    # * GetKeyPolicy
    #
    # * PutKeyPolicy
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Gets the names of key policies for the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 1000, inclusive. If you do not include a value, it defaults to
    #   100.
    #
    #   Only one policy can be attached to a key.
    #
    # @option params [String] :marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #
    # @return [Types::ListKeyPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeyPoliciesResponse#policy_names #policy_names} => Array&lt;String&gt;
    #   * {Types::ListKeyPoliciesResponse#next_marker #next_marker} => String
    #   * {Types::ListKeyPoliciesResponse#truncated #truncated} => Boolean
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list key policies for a KMS key
    #
    #   # The following example lists key policies for the specified KMS key.
    #
    #   resp = client.list_key_policies({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose key policies you want to list. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_names: [
    #       "default", 
    #     ], # A list of key policy names.
    #     truncated: false, # A boolean that indicates whether there are more items in the list. Returns true when there are more items, or false when there are not.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_key_policies({
    #     key_id: "KeyIdType", # required
    #     limit: 1,
    #     marker: "MarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_names #=> Array
    #   resp.policy_names[0] #=> String
    #   resp.next_marker #=> String
    #   resp.truncated #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListKeyPolicies AWS API Documentation
    #
    # @overload list_key_policies(params = {})
    # @param [Hash] params ({})
    def list_key_policies(params = {}, options = {})
      req = build_request(:list_key_policies, params)
      req.send_request(options)
    end

    # Gets a list of all KMS keys in the caller's Amazon Web Services
    # account and Region.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:ListKeys][1] (IAM policy)
    #
    # **Related operations:**
    #
    # * CreateKey
    #
    # * DescribeKey
    #
    # * ListAliases
    #
    # * ListResourceTags
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 1000, inclusive. If you do not include a value, it defaults to
    #   100.
    #
    # @option params [String] :marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #
    # @return [Types::ListKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeysResponse#keys #keys} => Array&lt;Types::KeyListEntry&gt;
    #   * {Types::ListKeysResponse#next_marker #next_marker} => String
    #   * {Types::ListKeysResponse#truncated #truncated} => Boolean
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list KMS keys
    #
    #   # The following example lists KMS keys.
    #
    #   resp = client.list_keys({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     keys: [
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/0d990263-018e-4e65-a703-eff731de951e", 
    #         key_id: "0d990263-018e-4e65-a703-eff731de951e", 
    #       }, 
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/144be297-0ae1-44ac-9c8f-93cd8c82f841", 
    #         key_id: "144be297-0ae1-44ac-9c8f-93cd8c82f841", 
    #       }, 
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/21184251-b765-428e-b852-2c7353e72571", 
    #         key_id: "21184251-b765-428e-b852-2c7353e72571", 
    #       }, 
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/214fe92f-5b03-4ae1-b350-db2a45dbe10c", 
    #         key_id: "214fe92f-5b03-4ae1-b350-db2a45dbe10c", 
    #       }, 
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/339963f2-e523-49d3-af24-a0fe752aa458", 
    #         key_id: "339963f2-e523-49d3-af24-a0fe752aa458", 
    #       }, 
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/b776a44b-df37-4438-9be4-a27494e4271a", 
    #         key_id: "b776a44b-df37-4438-9be4-a27494e4271a", 
    #       }, 
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/deaf6c9e-cf2c-46a6-bf6d-0b6d487cffbb", 
    #         key_id: "deaf6c9e-cf2c-46a6-bf6d-0b6d487cffbb", 
    #       }, 
    #     ], # A list of KMS keys, including the key ID and Amazon Resource Name (ARN) of each one.
    #     truncated: false, # A boolean that indicates whether there are more items in the list. Returns true when there are more items, or false when there are not.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_keys({
    #     limit: 1,
    #     marker: "MarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.keys #=> Array
    #   resp.keys[0].key_id #=> String
    #   resp.keys[0].key_arn #=> String
    #   resp.next_marker #=> String
    #   resp.truncated #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListKeys AWS API Documentation
    #
    # @overload list_keys(params = {})
    # @param [Hash] params ({})
    def list_keys(params = {}, options = {})
      req = build_request(:list_keys, params)
      req.send_request(options)
    end

    # Returns all tags on the specified KMS key.
    #
    # For general information about tags, including the format and syntax,
    # see [Tagging Amazon Web Services resources][1] in the *Amazon Web
    # Services General Reference*. For information about using tags in KMS,
    # see [Tagging keys][2].
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:ListResourceTags][3] (key policy)
    #
    # **Related operations:**
    #
    # * CreateKey
    #
    # * ReplicateKey
    #
    # * TagResource
    #
    # * UntagResource
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Gets tags on the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 50, inclusive. If you do not include a value, it defaults to 50.
    #
    # @option params [String] :marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #
    #   Do not attempt to construct this value. Use only the value of
    #   `NextMarker` from the truncated response you just received.
    #
    # @return [Types::ListResourceTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceTagsResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListResourceTagsResponse#next_marker #next_marker} => String
    #   * {Types::ListResourceTagsResponse#truncated #truncated} => Boolean
    #
    #
    # @example Example: To list tags for a KMS key
    #
    #   # The following example lists tags for a KMS key.
    #
    #   resp = client.list_resource_tags({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose tags you are listing. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         tag_key: "CostCenter", 
    #         tag_value: "87654", 
    #       }, 
    #       {
    #         tag_key: "CreatedBy", 
    #         tag_value: "ExampleUser", 
    #       }, 
    #       {
    #         tag_key: "Purpose", 
    #         tag_value: "Test", 
    #       }, 
    #     ], # A list of tags.
    #     truncated: false, # A boolean that indicates whether there are more items in the list. Returns true when there are more items, or false when there are not.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_tags({
    #     key_id: "KeyIdType", # required
    #     limit: 1,
    #     marker: "MarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].tag_key #=> String
    #   resp.tags[0].tag_value #=> String
    #   resp.next_marker #=> String
    #   resp.truncated #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListResourceTags AWS API Documentation
    #
    # @overload list_resource_tags(params = {})
    # @param [Hash] params ({})
    def list_resource_tags(params = {}, options = {})
      req = build_request(:list_resource_tags, params)
      req.send_request(options)
    end

    # Returns information about all grants in the Amazon Web Services
    # account and Region that have the specified retiring principal.
    #
    # You can specify any principal in your Amazon Web Services account. The
    # grants that are returned include grants for KMS keys in your Amazon
    # Web Services account and other Amazon Web Services accounts. You might
    # use this operation to determine which grants you may retire. To retire
    # a grant, use the RetireGrant operation.
    #
    # For detailed information about grants, including grant terminology,
    # see [Using grants][1] in the <i> <i>Key Management Service Developer
    # Guide</i> </i>. For examples of working with grants in several
    # programming languages, see [Programming grants][2].
    #
    # **Cross-account use**\: You must specify a principal in your Amazon
    # Web Services account. However, this operation can return grants in any
    # Amazon Web Services account. You do not need `kms:ListRetirableGrants`
    # permission (or any other additional permission) in any Amazon Web
    # Services account other than your own.
    #
    # **Required permissions**\: [kms:ListRetirableGrants][3] (IAM policy)
    # in your Amazon Web Services account.
    #
    # **Related operations:**
    #
    # * CreateGrant
    #
    # * ListGrants
    #
    # * RetireGrant
    #
    # * RevokeGrant
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, KMS does not return more than the
    #   specified number of items, but it might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to 50.
    #
    # @option params [String] :marker
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextMarker`
    #   from the truncated response you just received.
    #
    # @option params [required, String] :retiring_principal
    #   The retiring principal for which to list grants. Enter a principal in
    #   your Amazon Web Services account.
    #
    #   To specify the retiring principal, use the [Amazon Resource Name
    #   (ARN)][1] of an Amazon Web Services principal. Valid Amazon Web
    #   Services principals include Amazon Web Services accounts (root), IAM
    #   users, federated users, and assumed role users. For examples of the
    #   ARN syntax for specifying a principal, see [Amazon Web Services
    #   Identity and Access Management (IAM)][2] in the Example ARNs section
    #   of the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #
    # @return [Types::ListGrantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGrantsResponse#grants #grants} => Array&lt;Types::GrantListEntry&gt;
    #   * {Types::ListGrantsResponse#next_marker #next_marker} => String
    #   * {Types::ListGrantsResponse#truncated #truncated} => Boolean
    #
    #
    # @example Example: To list grants that the specified principal can retire
    #
    #   # The following example lists the grants that the specified principal (identity) can retire.
    #
    #   resp = client.list_retirable_grants({
    #     retiring_principal: "arn:aws:iam::111122223333:role/ExampleRole", # The retiring principal whose grants you want to list. Use the Amazon Resource Name (ARN) of a principal such as an AWS account (root), IAM user, federated user, or assumed role user.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     grants: [
    #       {
    #         creation_date: Time.parse("2016-12-07T11:09:35-08:00"), 
    #         grant_id: "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60", 
    #         grantee_principal: "arn:aws:iam::111122223333:role/ExampleRole", 
    #         issuing_account: "arn:aws:iam::444455556666:root", 
    #         key_id: "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #         operations: [
    #           "Decrypt", 
    #           "Encrypt", 
    #         ], 
    #         retiring_principal: "arn:aws:iam::111122223333:role/ExampleRole", 
    #       }, 
    #     ], # A list of grants that the specified principal can retire.
    #     truncated: false, # A boolean that indicates whether there are more items in the list. Returns true when there are more items, or false when there are not.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_retirable_grants({
    #     limit: 1,
    #     marker: "MarkerType",
    #     retiring_principal: "PrincipalIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.grants #=> Array
    #   resp.grants[0].key_id #=> String
    #   resp.grants[0].grant_id #=> String
    #   resp.grants[0].name #=> String
    #   resp.grants[0].creation_date #=> Time
    #   resp.grants[0].grantee_principal #=> String
    #   resp.grants[0].retiring_principal #=> String
    #   resp.grants[0].issuing_account #=> String
    #   resp.grants[0].operations #=> Array
    #   resp.grants[0].operations[0] #=> String, one of "Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "Sign", "Verify", "GetPublicKey", "CreateGrant", "RetireGrant", "DescribeKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext"
    #   resp.grants[0].constraints.encryption_context_subset #=> Hash
    #   resp.grants[0].constraints.encryption_context_subset["EncryptionContextKey"] #=> String
    #   resp.grants[0].constraints.encryption_context_equals #=> Hash
    #   resp.grants[0].constraints.encryption_context_equals["EncryptionContextKey"] #=> String
    #   resp.next_marker #=> String
    #   resp.truncated #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListRetirableGrants AWS API Documentation
    #
    # @overload list_retirable_grants(params = {})
    # @param [Hash] params ({})
    def list_retirable_grants(params = {}, options = {})
      req = build_request(:list_retirable_grants, params)
      req.send_request(options)
    end

    # Attaches a key policy to the specified KMS key.
    #
    # For more information about key policies, see [Key Policies][1] in the
    # *Key Management Service Developer Guide*. For help writing and
    # formatting a JSON policy document, see the [IAM JSON Policy
    # Reference][2] in the <i> <i>Identity and Access Management User
    # Guide</i> </i>. For examples of adding a key policy in multiple
    # programming languages, see [Setting a key policy][3] in the *Key
    # Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:PutKeyPolicy][4] (key policy)
    #
    # **Related operations**\: GetKeyPolicy
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/programming-key-policies.html#put-policy
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Sets the key policy on the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, String] :policy_name
    #   The name of the key policy. The only valid value is `default`.
    #
    # @option params [required, String] :policy
    #   The key policy to attach to the KMS key.
    #
    #   The key policy must meet the following criteria:
    #
    #   * If you don't set `BypassPolicyLockoutSafetyCheck` to true, the key
    #     policy must allow the principal that is making the `PutKeyPolicy`
    #     request to make a subsequent `PutKeyPolicy` request on the KMS key.
    #     This reduces the risk that the KMS key becomes unmanageable. For
    #     more information, refer to the scenario in the [Default Key
    #     Policy][1] section of the *Key Management Service Developer Guide*.
    #
    #   * Each statement in the key policy must contain one or more
    #     principals. The principals in the key policy must exist and be
    #     visible to KMS. When you create a new Amazon Web Services principal
    #     (for example, an IAM user or role), you might need to enforce a
    #     delay before including the new principal in a key policy because the
    #     new principal might not be immediately visible to KMS. For more
    #     information, see [Changes that I make are not always immediately
    #     visible][2] in the *Amazon Web Services Identity and Access
    #     Management User Guide*.
    #
    #   The key policy cannot exceed 32 kilobytes (32768 bytes). For more
    #   information, see [Resource Quotas][3] in the *Key Management Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/resource-limits.html
    #
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   A flag to indicate whether to bypass the key policy lockout safety
    #   check.
    #
    #   Setting this value to true increases the risk that the KMS key becomes
    #   unmanageable. Do not set this value to true indiscriminately.
    #
    #    For more information, refer to the scenario in the [Default Key
    #   Policy][1] section in the *Key Management Service Developer Guide*.
    #
    #   Use this parameter only when you intend to prevent the principal that
    #   is making the request from making a subsequent `PutKeyPolicy` request
    #   on the KMS key.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To attach a key policy to a KMS key
    #
    #   # The following example attaches a key policy to the specified KMS key.
    #
    #   resp = client.put_key_policy({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key to attach the key policy to. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #     policy: "{\"Version\":\"2012-10-17\",\"Id\":\"custom-policy-2016-12-07\",\"Statement\":[{\"Sid\":\"EnableIAMUserPermissions\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::111122223333:root\"},\"Action\":\"kms:*\",\"Resource\":\"*\"},{\"Sid\":\"AllowaccessforKeyAdministrators\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":[\"arn:aws:iam::111122223333:user/ExampleAdminUser\",\"arn:aws:iam::111122223333:role/ExampleAdminRole\"]},\"Action\":[\"kms:Create*\",\"kms:Describe*\",\"kms:Enable*\",\"kms:List*\",\"kms:Put*\",\"kms:Update*\",\"kms:Revoke*\",\"kms:Disable*\",\"kms:Get*\",\"kms:Delete*\",\"kms:ScheduleKeyDeletion\",\"kms:CancelKeyDeletion\"],\"Resource\":\"*\"},{\"Sid\":\"Allowuseofthekey\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::111122223333:role/ExamplePowerUserRole\"},\"Action\":[\"kms:Encrypt\",\"kms:Decrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\",\"kms:DescribeKey\"],\"Resource\":\"*\"},{\"Sid\":\"Allowattachmentofpersistentresources\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::111122223333:role/ExamplePowerUserRole\"},\"Action\":[\"kms:CreateGrant\",\"kms:ListGrants\",\"kms:RevokeGrant\"],\"Resource\":\"*\",\"Condition\":{\"Bool\":{\"kms:GrantIsForAWSResource\":\"true\"}}}]}", # The key policy document.
    #     policy_name: "default", # The name of the key policy.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_key_policy({
    #     key_id: "KeyIdType", # required
    #     policy_name: "PolicyNameType", # required
    #     policy: "PolicyType", # required
    #     bypass_policy_lockout_safety_check: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/PutKeyPolicy AWS API Documentation
    #
    # @overload put_key_policy(params = {})
    # @param [Hash] params ({})
    def put_key_policy(params = {}, options = {})
      req = build_request(:put_key_policy, params)
      req.send_request(options)
    end

    # Decrypts ciphertext and then reencrypts it entirely within KMS. You
    # can use this operation to change the KMS key under which data is
    # encrypted, such as when you [manually rotate][1] a KMS key or change
    # the KMS key that protects a ciphertext. You can also use it to
    # reencrypt ciphertext under the same KMS key, such as to change the
    # [encryption context][2] of a ciphertext.
    #
    # The `ReEncrypt` operation can decrypt ciphertext that was encrypted by
    # using an KMS KMS key in an KMS operation, such as Encrypt or
    # GenerateDataKey. It can also decrypt ciphertext that was encrypted by
    # using the public key of an [asymmetric KMS key][3] outside of KMS.
    # However, it cannot decrypt ciphertext produced by other libraries,
    # such as the [Amazon Web Services Encryption SDK][4] or [Amazon S3
    # client-side encryption][5]. These libraries return a ciphertext format
    # that is incompatible with KMS.
    #
    # When you use the `ReEncrypt` operation, you need to provide
    # information for the decrypt operation and the subsequent encrypt
    # operation.
    #
    # * If your ciphertext was encrypted under an asymmetric KMS key, you
    #   must use the `SourceKeyId` parameter to identify the KMS key that
    #   encrypted the ciphertext. You must also supply the encryption
    #   algorithm that was used. This information is required to decrypt the
    #   data.
    #
    # * If your ciphertext was encrypted under a symmetric KMS key, the
    #   `SourceKeyId` parameter is optional. KMS can get this information
    #   from metadata that it adds to the symmetric ciphertext blob. This
    #   feature adds durability to your implementation by ensuring that
    #   authorized users can decrypt ciphertext decades after it was
    #   encrypted, even if they've lost track of the key ID. However,
    #   specifying the source KMS key is always recommended as a best
    #   practice. When you use the `SourceKeyId` parameter to specify a KMS
    #   key, KMS uses only the KMS key you specify. If the ciphertext was
    #   encrypted under a different KMS key, the `ReEncrypt` operation
    #   fails. This practice ensures that you use the KMS key that you
    #   intend.
    #
    # * To reencrypt the data, you must use the `DestinationKeyId` parameter
    #   specify the KMS key that re-encrypts the data after it is decrypted.
    #   You can select a symmetric or asymmetric KMS key. If the destination
    #   KMS key is an asymmetric KMS key, you must also provide the
    #   encryption algorithm. The algorithm that you choose must be
    #   compatible with the KMS key.
    #
    #   When you use an asymmetric KMS key to encrypt or reencrypt data, be
    #   sure to record the KMS key and encryption algorithm that you choose.
    #   You will be required to provide the same KMS key and encryption
    #   algorithm when you decrypt the data. If the KMS key and algorithm do
    #   not match the values used to encrypt the data, the decrypt operation
    #   fails.
    #
    #    You are not required to supply the key ID and encryption algorithm
    #   when you decrypt with symmetric KMS keys because KMS stores this
    #   information in the ciphertext blob. KMS cannot store metadata in
    #   ciphertext generated with asymmetric keys. The standard format for
    #   asymmetric key ciphertext does not include configurable fields.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][6] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: Yes. The source KMS key and destination KMS
    # key can be in different Amazon Web Services accounts. Either or both
    # KMS keys can be in a different account than the caller. To specify a
    # KMS key in a different account, you must use its key ARN or alias ARN.
    #
    # **Required permissions**\:
    #
    # * [kms:ReEncryptFrom][7] permission on the source KMS key (key policy)
    #
    # * [kms:ReEncryptTo][7] permission on the destination KMS key (key
    #   policy)
    #
    # To permit reencryption from or to a KMS key, include the
    # `"kms:ReEncrypt*"` permission in your [key policy][8]. This permission
    # is automatically included in the key policy when you use the console
    # to create a KMS key. But you must include it manually when you create
    # a KMS key programmatically or when you use the PutKeyPolicy operation
    # to set a key policy.
    #
    # **Related operations:**
    #
    # * Decrypt
    #
    # * Encrypt
    #
    # * GenerateDataKey
    #
    # * GenerateDataKeyPair
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-manually
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks
    # [4]: https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [7]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    # [8]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
    #
    # @option params [required, String, StringIO, File] :ciphertext_blob
    #   Ciphertext of the data to reencrypt.
    #
    # @option params [Hash<String,String>] :source_encryption_context
    #   Specifies the encryption context to use to decrypt the ciphertext.
    #   Enter the same encryption context that was used to encrypt the
    #   ciphertext.
    #
    #   An *encryption context* is a collection of non-secret key-value pairs
    #   that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data. An
    #   encryption context is optional when encrypting with a symmetric KMS
    #   key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [String] :source_key_id
    #   Specifies the KMS key that KMS will use to decrypt the ciphertext
    #   before it is re-encrypted. Enter a key ID of the KMS key that was used
    #   to encrypt the ciphertext.
    #
    #   This parameter is required only when the ciphertext was encrypted
    #   under an asymmetric KMS key. If you used a symmetric KMS key, KMS can
    #   get the KMS key from metadata that it adds to the symmetric ciphertext
    #   blob. However, it is always recommended as a best practice. This
    #   practice ensures that you use the KMS key that you intend.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [required, String] :destination_key_id
    #   A unique identifier for the KMS key that is used to reencrypt the
    #   data. Specify a symmetric or asymmetric KMS key with a `KeyUsage`
    #   value of `ENCRYPT_DECRYPT`. To find the `KeyUsage` value of a KMS key,
    #   use the DescribeKey operation.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [Hash<String,String>] :destination_encryption_context
    #   Specifies that encryption context to use when the reencrypting the
    #   data.
    #
    #   A destination encryption context is valid only when the destination
    #   KMS key is a symmetric KMS key. The standard ciphertext format for
    #   asymmetric KMS keys does not include fields for metadata.
    #
    #   An *encryption context* is a collection of non-secret key-value pairs
    #   that represents additional authenticated data. When you use an
    #   encryption context to encrypt data, you must specify the same (an
    #   exact case-sensitive match) encryption context to decrypt the data. An
    #   encryption context is optional when encrypting with a symmetric KMS
    #   key, but it is highly recommended.
    #
    #   For more information, see [Encryption Context][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [String] :source_encryption_algorithm
    #   Specifies the encryption algorithm that KMS will use to decrypt the
    #   ciphertext before it is reencrypted. The default value,
    #   `SYMMETRIC_DEFAULT`, represents the algorithm used for symmetric KMS
    #   keys.
    #
    #   Specify the same algorithm that was used to encrypt the ciphertext. If
    #   you specify a different algorithm, the decrypt attempt fails.
    #
    #   This parameter is required only when the ciphertext was encrypted
    #   under an asymmetric KMS key.
    #
    # @option params [String] :destination_encryption_algorithm
    #   Specifies the encryption algorithm that KMS will use to reecrypt the
    #   data after it has decrypted it. The default value,
    #   `SYMMETRIC_DEFAULT`, represents the encryption algorithm used for
    #   symmetric KMS keys.
    #
    #   This parameter is required only when the destination KMS key is an
    #   asymmetric KMS key.
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @return [Types::ReEncryptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReEncryptResponse#ciphertext_blob #ciphertext_blob} => String
    #   * {Types::ReEncryptResponse#source_key_id #source_key_id} => String
    #   * {Types::ReEncryptResponse#key_id #key_id} => String
    #   * {Types::ReEncryptResponse#source_encryption_algorithm #source_encryption_algorithm} => String
    #   * {Types::ReEncryptResponse#destination_encryption_algorithm #destination_encryption_algorithm} => String
    #
    #
    # @example Example: To reencrypt data
    #
    #   # The following example reencrypts data with the specified KMS key.
    #
    #   resp = client.re_encrypt({
    #     ciphertext_blob: "<binary data>", # The data to reencrypt.
    #     destination_key_id: "0987dcba-09fe-87dc-65ba-ab0987654321", # The identifier of the KMS key to use to reencrypt the data. You can use any valid key identifier.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: "<binary data>", # The reencrypted data.
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321", # The ARN of the KMS key that was used to reencrypt the data.
    #     source_key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the KMS key that was originally used to encrypt the data.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.re_encrypt({
    #     ciphertext_blob: "data", # required
    #     source_encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue",
    #     },
    #     source_key_id: "KeyIdType",
    #     destination_key_id: "KeyIdType", # required
    #     destination_encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue",
    #     },
    #     source_encryption_algorithm: "SYMMETRIC_DEFAULT", # accepts SYMMETRIC_DEFAULT, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
    #     destination_encryption_algorithm: "SYMMETRIC_DEFAULT", # accepts SYMMETRIC_DEFAULT, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
    #     grant_tokens: ["GrantTokenType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.ciphertext_blob #=> String
    #   resp.source_key_id #=> String
    #   resp.key_id #=> String
    #   resp.source_encryption_algorithm #=> String, one of "SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256"
    #   resp.destination_encryption_algorithm #=> String, one of "SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ReEncrypt AWS API Documentation
    #
    # @overload re_encrypt(params = {})
    # @param [Hash] params ({})
    def re_encrypt(params = {}, options = {})
      req = build_request(:re_encrypt, params)
      req.send_request(options)
    end

    # Replicates a multi-Region key into the specified Region. This
    # operation creates a multi-Region replica key based on a multi-Region
    # primary key in a different Region of the same Amazon Web Services
    # partition. You can create multiple replicas of a primary key, but each
    # must be in a different Region. To create a multi-Region primary key,
    # use the CreateKey operation.
    #
    # This operation supports *multi-Region keys*, an KMS feature that lets
    # you create multiple interoperable KMS keys in different Amazon Web
    # Services Regions. Because these KMS keys have the same key ID, key
    # material, and other metadata, you can use them interchangeably to
    # encrypt data in one Amazon Web Services Region and decrypt it in a
    # different Amazon Web Services Region without re-encrypting the data or
    # making a cross-Region call. For more information about multi-Region
    # keys, see [Using multi-Region keys][1] in the *Key Management Service
    # Developer Guide*.
    #
    # A *replica key* is a fully-functional KMS key that can be used
    # independently of its primary and peer replica keys. A primary key and
    # its replica keys share properties that make them interoperable. They
    # have the same [key ID][2] and key material. They also have the same
    # [key spec][3], [key usage][4], [key material origin][5], and
    # [automatic key rotation status][6]. KMS automatically synchronizes
    # these shared properties among related multi-Region keys. All other
    # properties of a replica key can differ, including its [key policy][7],
    # [tags][8], [aliases][9], and [key state][10]. KMS pricing and quotas
    # for KMS keys apply to each primary key and replica key.
    #
    # When this operation completes, the new replica key has a transient key
    # state of `Creating`. This key state changes to `Enabled` (or
    # `PendingImport`) after a few seconds when the process of creating the
    # new replica key is complete. While the key state is `Creating`, you
    # can manage key, but you cannot yet use it in cryptographic operations.
    # If you are creating and using the replica key programmatically, retry
    # on `KMSInvalidStateException` or call `DescribeKey` to check its
    # `KeyState` value before using it. For details about the `Creating` key
    # state, see [Key state: Effect on your KMS
    # key](kms/latest/developerguide/key-state.html) in the *Key Management
    # Service Developer Guide*.
    #
    # The CloudTrail log of a `ReplicateKey` operation records a
    # `ReplicateKey` operation in the primary key's Region and a CreateKey
    # operation in the replica key's Region.
    #
    # If you replicate a multi-Region primary key with imported key
    # material, the replica key is created with no key material. You must
    # import the same key material that you imported into the primary key.
    # For details, see [Importing key material into multi-Region
    # keys](kms/latest/developerguide/multi-region-keys-import.html) in the
    # *Key Management Service Developer Guide*.
    #
    # To convert a replica key to a primary key, use the UpdatePrimaryRegion
    # operation.
    #
    # <note markdown="1"> `ReplicateKey` uses different default values for the `KeyPolicy` and
    # `Tags` parameters than those used in the KMS console. For details, see
    # the parameter descriptions.
    #
    #  </note>
    #
    # **Cross-account use**\: No. You cannot use this operation to create a
    # replica key in a different Amazon Web Services account.
    #
    # **Required permissions**\:
    #
    # * `kms:ReplicateKey` on the primary key (in the primary key's
    #   Region). Include this permission in the primary key's key policy.
    #
    # * `kms:CreateKey` in an IAM policy in the replica Region.
    #
    # * To use the `Tags` parameter, `kms:TagResource` in an IAM policy in
    #   the replica Region.
    #
    # **Related operations**
    #
    # * CreateKey
    #
    # * UpdatePrimaryRegion
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html
    # [7]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
    # [8]: https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html
    # [9]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html
    # [10]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   Identifies the multi-Region primary key that is being replicated. To
    #   determine whether a KMS key is a multi-Region primary key, use the
    #   DescribeKey operation to check the value of the `MultiRegionKeyType`
    #   property.
    #
    #   Specify the key ID or key ARN of a multi-Region primary key.
    #
    #   For example:
    #
    #   * Key ID: `mrk-1234abcd12ab34cd56ef1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, String] :replica_region
    #   The Region ID of the Amazon Web Services Region for this replica key.
    #
    #   Enter the Region ID, such as `us-east-1` or `ap-southeast-2`. For a
    #   list of Amazon Web Services Regions in which KMS is supported, see
    #   [KMS service endpoints][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #   The replica must be in a different Amazon Web Services Region than its
    #   primary key and other replicas of that primary key, but in the same
    #   Amazon Web Services partition. KMS must be available in the replica
    #   Region. If the Region is not enabled by default, the Amazon Web
    #   Services account must be enabled in the Region.
    #
    #   For information about Amazon Web Services partitions, see [Amazon
    #   Resource Names (ARNs) in the *Amazon Web Services General
    #   Reference*.][2] For information about enabling and disabling Regions,
    #   see [Enabling a Region][3] and [Disabling a Region][4] in the *Amazon
    #   Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [3]: https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable
    #   [4]: https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-disable
    #
    # @option params [String] :policy
    #   The key policy to attach to the KMS key. This parameter is optional.
    #   If you do not provide a key policy, KMS attaches the [default key
    #   policy][1] to the KMS key.
    #
    #   The key policy is not a shared property of multi-Region keys. You can
    #   specify the same key policy or a different key policy for each key in
    #   a set of related multi-Region keys. KMS does not synchronize this
    #   property.
    #
    #   If you provide a key policy, it must meet the following criteria:
    #
    #   * If you don't set `BypassPolicyLockoutSafetyCheck` to true, the key
    #     policy must give the caller `kms:PutKeyPolicy` permission on the
    #     replica key. This reduces the risk that the KMS key becomes
    #     unmanageable. For more information, refer to the scenario in the
    #     [Default Key Policy][2] section of the <i> <i>Key Management Service
    #     Developer Guide</i> </i>.
    #
    #   * Each statement in the key policy must contain one or more
    #     principals. The principals in the key policy must exist and be
    #     visible to KMS. When you create a new Amazon Web Services principal
    #     (for example, an IAM user or role), you might need to enforce a
    #     delay before including the new principal in a key policy because the
    #     new principal might not be immediately visible to KMS. For more
    #     information, see [Changes that I make are not always immediately
    #     visible][3] in the <i> <i>Identity and Access Management User
    #     Guide</i> </i>.
    #
    #   * The key policy size quota is 32 kilobytes (32768 bytes).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
    #
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   A flag to indicate whether to bypass the key policy lockout safety
    #   check.
    #
    #   Setting this value to true increases the risk that the KMS key becomes
    #   unmanageable. Do not set this value to true indiscriminately.
    #
    #    For more information, refer to the scenario in the [Default Key
    #   Policy][1] section in the *Key Management Service Developer Guide*.
    #
    #   Use this parameter only when you intend to prevent the principal that
    #   is making the request from making a subsequent `PutKeyPolicy` request
    #   on the KMS key.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #
    # @option params [String] :description
    #   A description of the KMS key. The default value is an empty string (no
    #   description).
    #
    #   The description is not a shared property of multi-Region keys. You can
    #   specify the same description or a different description for each key
    #   in a set of related multi-Region keys. KMS does not synchronize this
    #   property.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Assigns one or more tags to the replica key. Use this parameter to tag
    #   the KMS key when it is created. To tag an existing KMS key, use the
    #   TagResource operation.
    #
    #   <note markdown="1"> Tagging or untagging a KMS key can allow or deny permission to the KMS
    #   key. For details, see [Using ABAC in KMS][1] in the *Key Management
    #   Service Developer Guide*.
    #
    #    </note>
    #
    #   To use this parameter, you must have [kms:TagResource][2] permission
    #   in an IAM policy.
    #
    #   Tags are not a shared property of multi-Region keys. You can specify
    #   the same tags or different tags for each key in a set of related
    #   multi-Region keys. KMS does not synchronize this property.
    #
    #   Each tag consists of a tag key and a tag value. Both the tag key and
    #   the tag value are required, but the tag value can be an empty (null)
    #   string. You cannot have more than one tag on a KMS key with the same
    #   tag key. If you specify an existing tag key with a different tag
    #   value, KMS replaces the current tag value with the specified one.
    #
    #   When you add tags to an Amazon Web Services resource, Amazon Web
    #   Services generates a cost allocation report with usage and costs
    #   aggregated by tags. Tags can also be used to control access to a KMS
    #   key. For details, see [Tagging Keys][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html
    #
    # @return [Types::ReplicateKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicateKeyResponse#replica_key_metadata #replica_key_metadata} => Types::KeyMetadata
    #   * {Types::ReplicateKeyResponse#replica_policy #replica_policy} => String
    #   * {Types::ReplicateKeyResponse#replica_tags #replica_tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: To replicate a multi-Region key in a different AWS Region
    #
    #   # This example creates a multi-Region replica key in us-west-2 of a multi-Region primary key in us-east-1. 
    #
    #   resp = client.replicate_key({
    #     key_id: "arn:aws:kms:us-east-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab", # The key ID or key ARN of the multi-Region primary key
    #     replica_region: "us-west-2", # The Region of the new replica.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replica_key_metadata: {
    #       aws_account_id: "111122223333", 
    #       arn: "arn:aws:kms:us-west-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab", 
    #       creation_date: Time.parse(1607472987.918), 
    #       customer_master_key_spec: "SYMMETRIC_DEFAULT", 
    #       description: "", 
    #       enabled: true, 
    #       encryption_algorithms: [
    #         "SYMMETRIC_DEFAULT", 
    #       ], 
    #       key_id: "mrk-1234abcd12ab34cd56ef1234567890ab", 
    #       key_manager: "CUSTOMER", 
    #       key_state: "Enabled", 
    #       key_usage: "ENCRYPT_DECRYPT", 
    #       multi_region: true, 
    #       multi_region_configuration: {
    #         multi_region_key_type: "REPLICA", 
    #         primary_key: {
    #           arn: "arn:aws:kms:us-east-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab", 
    #           region: "us-east-1", 
    #         }, 
    #         replica_keys: [
    #           {
    #             arn: "arn:aws:kms:us-west-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab", 
    #             region: "us-west-2", 
    #           }, 
    #         ], 
    #       }, 
    #       origin: "AWS_KMS", 
    #     }, # An object that displays detailed information about the replica key.
    #     replica_policy: "{\n  \"Version\" : \"2012-10-17\",\n  \"Id\" : \"key-default-1\",...}", # The key policy of the replica key. If you don't specify a key policy, the replica key gets the default key policy for a KMS key.
    #     replica_tags: [
    #     ], # The tags on the replica key, if any.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replicate_key({
    #     key_id: "KeyIdType", # required
    #     replica_region: "RegionType", # required
    #     policy: "PolicyType",
    #     bypass_policy_lockout_safety_check: false,
    #     description: "DescriptionType",
    #     tags: [
    #       {
    #         tag_key: "TagKeyType", # required
    #         tag_value: "TagValueType", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.replica_key_metadata.aws_account_id #=> String
    #   resp.replica_key_metadata.key_id #=> String
    #   resp.replica_key_metadata.arn #=> String
    #   resp.replica_key_metadata.creation_date #=> Time
    #   resp.replica_key_metadata.enabled #=> Boolean
    #   resp.replica_key_metadata.description #=> String
    #   resp.replica_key_metadata.key_usage #=> String, one of "SIGN_VERIFY", "ENCRYPT_DECRYPT"
    #   resp.replica_key_metadata.key_state #=> String, one of "Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"
    #   resp.replica_key_metadata.deletion_date #=> Time
    #   resp.replica_key_metadata.valid_to #=> Time
    #   resp.replica_key_metadata.origin #=> String, one of "AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM"
    #   resp.replica_key_metadata.custom_key_store_id #=> String
    #   resp.replica_key_metadata.cloud_hsm_cluster_id #=> String
    #   resp.replica_key_metadata.expiration_model #=> String, one of "KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"
    #   resp.replica_key_metadata.key_manager #=> String, one of "AWS", "CUSTOMER"
    #   resp.replica_key_metadata.customer_master_key_spec #=> String, one of "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT"
    #   resp.replica_key_metadata.key_spec #=> String, one of "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT"
    #   resp.replica_key_metadata.encryption_algorithms #=> Array
    #   resp.replica_key_metadata.encryption_algorithms[0] #=> String, one of "SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256"
    #   resp.replica_key_metadata.signing_algorithms #=> Array
    #   resp.replica_key_metadata.signing_algorithms[0] #=> String, one of "RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512"
    #   resp.replica_key_metadata.multi_region #=> Boolean
    #   resp.replica_key_metadata.multi_region_configuration.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.replica_key_metadata.multi_region_configuration.primary_key.arn #=> String
    #   resp.replica_key_metadata.multi_region_configuration.primary_key.region #=> String
    #   resp.replica_key_metadata.multi_region_configuration.replica_keys #=> Array
    #   resp.replica_key_metadata.multi_region_configuration.replica_keys[0].arn #=> String
    #   resp.replica_key_metadata.multi_region_configuration.replica_keys[0].region #=> String
    #   resp.replica_key_metadata.pending_deletion_window_in_days #=> Integer
    #   resp.replica_policy #=> String
    #   resp.replica_tags #=> Array
    #   resp.replica_tags[0].tag_key #=> String
    #   resp.replica_tags[0].tag_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ReplicateKey AWS API Documentation
    #
    # @overload replicate_key(params = {})
    # @param [Hash] params ({})
    def replicate_key(params = {}, options = {})
      req = build_request(:replicate_key, params)
      req.send_request(options)
    end

    # Deletes a grant. Typically, you retire a grant when you no longer need
    # its permissions. To identify the grant to retire, use a [grant
    # token][1], or both the grant ID and a key identifier (key ID or key
    # ARN) of the KMS key. The CreateGrant operation returns both values.
    #
    # This operation can be called by the *retiring principal* for a grant,
    # by the *grantee principal* if the grant allows the `RetireGrant`
    # operation, and by the Amazon Web Services account (root user) in which
    # the grant is created. It can also be called by principals to whom
    # permission for retiring a grant is delegated. For details, see
    # [Retiring and revoking grants][2] in the *Key Management Service
    # Developer Guide*.
    #
    # For detailed information about grants, including grant terminology,
    # see [Using grants][3] in the <i> <i>Key Management Service Developer
    # Guide</i> </i>. For examples of working with grants in several
    # programming languages, see [Programming grants][4].
    #
    # **Cross-account use**\: Yes. You can retire a grant on a KMS key in a
    # different Amazon Web Services account.
    #
    # **Required permissions:**\:Permission to retire a grant is determined
    # primarily by the grant. For details, see [Retiring and revoking
    # grants][2] in the *Key Management Service Developer Guide*.
    #
    # **Related operations:**
    #
    # * CreateGrant
    #
    # * ListGrants
    #
    # * ListRetirableGrants
    #
    # * RevokeGrant
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html
    #
    # @option params [String] :grant_token
    #   Identifies the grant to be retired. You can use a grant token to
    #   identify a new grant even before it has achieved eventual consistency.
    #
    #   Only the CreateGrant operation returns a grant token. For details, see
    #   [Grant token][1] and [Eventual consistency][2] in the *Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency
    #
    # @option params [String] :key_id
    #   The key ARN KMS key associated with the grant. To find the key ARN,
    #   use the ListKeys operation.
    #
    #   For example:
    #   `arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    # @option params [String] :grant_id
    #   Identifies the grant to retire. To get the grant ID, use CreateGrant,
    #   ListGrants, or ListRetirableGrants.
    #
    #   * Grant ID Example -
    #     0123456789012345678901234567890123456789012345678901234567890123
    #
    #   ^
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To retire a grant
    #
    #   # The following example retires a grant.
    #
    #   resp = client.retire_grant({
    #     grant_id: "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60", # The identifier of the grant to retire.
    #     key_id: "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The Amazon Resource Name (ARN) of the KMS key associated with the grant.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retire_grant({
    #     grant_token: "GrantTokenType",
    #     key_id: "KeyIdType",
    #     grant_id: "GrantIdType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/RetireGrant AWS API Documentation
    #
    # @overload retire_grant(params = {})
    # @param [Hash] params ({})
    def retire_grant(params = {}, options = {})
      req = build_request(:retire_grant, params)
      req.send_request(options)
    end

    # Deletes the specified grant. You revoke a grant to terminate the
    # permissions that the grant allows. For more information, see [Retiring
    # and revoking grants][1] in the <i> <i>Key Management Service Developer
    # Guide</i> </i>.
    #
    # When you create, retire, or revoke a grant, there might be a brief
    # delay, usually less than five minutes, until the grant is available
    # throughout KMS. This state is known as *eventual consistency*. For
    # details, see [Eventual consistency][2] in the <i> <i>Key Management
    # Service Developer Guide</i> </i>.
    #
    # For detailed information about grants, including grant terminology,
    # see [Using grants][3] in the <i> <i>Key Management Service Developer
    # Guide</i> </i>. For examples of working with grants in several
    # programming languages, see [Programming grants][4].
    #
    # **Cross-account use**\: Yes. To perform this operation on a KMS key in
    # a different Amazon Web Services account, specify the key ARN in the
    # value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:RevokeGrant][5] (key policy).
    #
    # **Related operations:**
    #
    # * CreateGrant
    #
    # * ListGrants
    #
    # * ListRetirableGrants
    #
    # * RetireGrant
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/managing-grants.html#grant-delete
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the KMS key associated with the grant. To get
    #   the key ID and key ARN for a KMS key, use ListKeys or DescribeKey.
    #
    #   Specify the key ID or key ARN of the KMS key. To specify a KMS key in
    #   a different Amazon Web Services account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, String] :grant_id
    #   Identifies the grant to revoke. To get the grant ID, use CreateGrant,
    #   ListGrants, or ListRetirableGrants.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To revoke a grant
    #
    #   # The following example revokes a grant.
    #
    #   resp = client.revoke_grant({
    #     grant_id: "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60", # The identifier of the grant to revoke.
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key associated with the grant. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_grant({
    #     key_id: "KeyIdType", # required
    #     grant_id: "GrantIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/RevokeGrant AWS API Documentation
    #
    # @overload revoke_grant(params = {})
    # @param [Hash] params ({})
    def revoke_grant(params = {}, options = {})
      req = build_request(:revoke_grant, params)
      req.send_request(options)
    end

    # Schedules the deletion of a KMS key. By default, KMS applies a waiting
    # period of 30 days, but you can specify a waiting period of 7-30 days.
    # When this operation is successful, the key state of the KMS key
    # changes to `PendingDeletion` and the key can't be used in any
    # cryptographic operations. It remains in this state for the duration of
    # the waiting period. Before the waiting period ends, you can use
    # CancelKeyDeletion to cancel the deletion of the KMS key. After the
    # waiting period ends, KMS deletes the KMS key, its key material, and
    # all KMS data associated with it, including all aliases that refer to
    # it.
    #
    # Deleting a KMS key is a destructive and potentially dangerous
    # operation. When a KMS key is deleted, all data that was encrypted
    # under the KMS key is unrecoverable. (The only exception is a
    # multi-Region replica key.) To prevent the use of a KMS key without
    # deleting it, use DisableKey.
    #
    # If you schedule deletion of a KMS key from a [custom key store][1],
    # when the waiting period expires, `ScheduleKeyDeletion` deletes the KMS
    # key from KMS. Then KMS makes a best effort to delete the key material
    # from the associated CloudHSM cluster. However, you might need to
    # manually [delete the orphaned key material][2] from the cluster and
    # its backups.
    #
    # You can schedule the deletion of a multi-Region primary key and its
    # replica keys at any time. However, KMS will not delete a multi-Region
    # primary key with existing replica keys. If you schedule the deletion
    # of a primary key with replicas, its key state changes to
    # `PendingReplicaDeletion` and it cannot be replicated or used in
    # cryptographic operations. This status can continue indefinitely. When
    # the last of its replicas keys is deleted (not just scheduled), the key
    # state of the primary key changes to `PendingDeletion` and its waiting
    # period (`PendingWindowInDays`) begins. For details, see [Deleting
    # multi-Region keys][3] in the *Key Management Service Developer Guide*.
    #
    # For more information about scheduling a KMS key for deletion, see
    # [Deleting KMS keys][4] in the *Key Management Service Developer
    # Guide*.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][5] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: kms:ScheduleKeyDeletion (key policy)
    #
    # **Related operations**
    #
    # * CancelKeyDeletion
    #
    # * DisableKey
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   The unique identifier of the KMS key to delete.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [Integer] :pending_window_in_days
    #   The waiting period, specified in number of days. After the waiting
    #   period ends, KMS deletes the KMS key.
    #
    #   If the KMS key is a multi-Region primary key with replicas, the
    #   waiting period begins when the last of its replica keys is deleted.
    #   Otherwise, the waiting period begins immediately.
    #
    #   This value is optional. If you include a value, it must be between 7
    #   and 30, inclusive. If you do not include a value, it defaults to 30.
    #
    # @return [Types::ScheduleKeyDeletionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScheduleKeyDeletionResponse#key_id #key_id} => String
    #   * {Types::ScheduleKeyDeletionResponse#deletion_date #deletion_date} => Time
    #   * {Types::ScheduleKeyDeletionResponse#key_state #key_state} => String
    #   * {Types::ScheduleKeyDeletionResponse#pending_window_in_days #pending_window_in_days} => Integer
    #
    #
    # @example Example: To schedule a KMS key for deletion
    #
    #   # The following example schedules the specified KMS key for deletion.
    #
    #   resp = client.schedule_key_deletion({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key to schedule for deletion. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #     pending_window_in_days: 7, # The waiting period, specified in number of days. After the waiting period ends, KMS deletes the KMS key.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     deletion_date: Time.parse("2016-12-17T16:00:00-08:00"), # The date and time after which KMS deletes the KMS key.
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the KMS key that is scheduled for deletion.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.schedule_key_deletion({
    #     key_id: "KeyIdType", # required
    #     pending_window_in_days: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.key_id #=> String
    #   resp.deletion_date #=> Time
    #   resp.key_state #=> String, one of "Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"
    #   resp.pending_window_in_days #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ScheduleKeyDeletion AWS API Documentation
    #
    # @overload schedule_key_deletion(params = {})
    # @param [Hash] params ({})
    def schedule_key_deletion(params = {}, options = {})
      req = build_request(:schedule_key_deletion, params)
      req.send_request(options)
    end

    # Creates a [digital signature][1] for a message or message digest by
    # using the private key in an asymmetric KMS key. To verify the
    # signature, use the Verify operation, or use the public key in the same
    # asymmetric KMS key outside of KMS. For information about symmetric and
    # asymmetric KMS keys, see [Using Symmetric and Asymmetric KMS keys][2]
    # in the *Key Management Service Developer Guide*.
    #
    # Digital signatures are generated and verified by using asymmetric key
    # pair, such as an RSA or ECC pair that is represented by an asymmetric
    # KMS key. The key owner (or an authorized user) uses their private key
    # to sign a message. Anyone with the public key can verify that the
    # message was signed with that particular private key and that the
    # message hasn't changed since it was signed.
    #
    # To use the `Sign` operation, provide the following information:
    #
    # * Use the `KeyId` parameter to identify an asymmetric KMS key with a
    #   `KeyUsage` value of `SIGN_VERIFY`. To get the `KeyUsage` value of a
    #   KMS key, use the DescribeKey operation. The caller must have
    #   `kms:Sign` permission on the KMS key.
    #
    # * Use the `Message` parameter to specify the message or message digest
    #   to sign. You can submit messages of up to 4096 bytes. To sign a
    #   larger message, generate a hash digest of the message, and then
    #   provide the hash digest in the `Message` parameter. To indicate
    #   whether the message is a full message or a digest, use the
    #   `MessageType` parameter.
    #
    # * Choose a signing algorithm that is compatible with the KMS key.
    #
    # When signing a message, be sure to record the KMS key and the signing
    # algorithm. This information is required to verify the signature.
    #
    # To verify the signature that this operation generates, use the Verify
    # operation. Or use the GetPublicKey operation to download the public
    # key and then use the public key to verify the signature outside of
    # KMS.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][3] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: Yes. To perform this operation with a KMS key
    # in a different Amazon Web Services account, specify the key ARN or
    # alias ARN in the value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:Sign][4] (key policy)
    #
    # **Related operations**\: Verify
    #
    #
    #
    # [1]: https://en.wikipedia.org/wiki/Digital_signature
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies an asymmetric KMS key. KMS uses the private key in the
    #   asymmetric KMS key to sign the message. The `KeyUsage` type of the KMS
    #   key must be `SIGN_VERIFY`. To find the `KeyUsage` of a KMS key, use
    #   the DescribeKey operation.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [required, String, StringIO, File] :message
    #   Specifies the message or message digest to sign. Messages can be
    #   0-4096 bytes. To sign a larger message, provide the message digest.
    #
    #   If you provide a message, KMS generates a hash digest of the message
    #   and then signs it.
    #
    # @option params [String] :message_type
    #   Tells KMS whether the value of the `Message` parameter is a message or
    #   message digest. The default value, RAW, indicates a message. To
    #   indicate a message digest, enter `DIGEST`.
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @option params [required, String] :signing_algorithm
    #   Specifies the signing algorithm to use when signing the message.
    #
    #   Choose an algorithm that is compatible with the type and size of the
    #   specified asymmetric KMS key.
    #
    # @return [Types::SignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SignResponse#key_id #key_id} => String
    #   * {Types::SignResponse#signature #signature} => String
    #   * {Types::SignResponse#signing_algorithm #signing_algorithm} => String
    #
    #
    # @example Example: To digitally sign a message with an asymmetric KMS key.
    #
    #   # This operation uses the private key in an asymmetric elliptic curve (ECC) KMS key to generate a digital signature for a
    #   # given message.
    #
    #   resp = client.sign({
    #     key_id: "alias/ECC_signing_key", # The asymmetric KMS key to be used to generate the digital signature. This example uses an alias of the KMS key.
    #     message: "<message to be signed>", # Message to be signed. Use Base-64 for the CLI.
    #     message_type: "RAW", # Indicates whether the message is RAW or a DIGEST.
    #     signing_algorithm: "ECDSA_SHA_384", # The requested signing algorithm. This must be an algorithm that the KMS key supports.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The key ARN of the asymmetric KMS key that was used to sign the message.
    #     signature: "<binary data>", # The digital signature of the message.
    #     signing_algorithm: "ECDSA_SHA_384", # The actual signing algorithm that was used to generate the signature.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sign({
    #     key_id: "KeyIdType", # required
    #     message: "data", # required
    #     message_type: "RAW", # accepts RAW, DIGEST
    #     grant_tokens: ["GrantTokenType"],
    #     signing_algorithm: "RSASSA_PSS_SHA_256", # required, accepts RSASSA_PSS_SHA_256, RSASSA_PSS_SHA_384, RSASSA_PSS_SHA_512, RSASSA_PKCS1_V1_5_SHA_256, RSASSA_PKCS1_V1_5_SHA_384, RSASSA_PKCS1_V1_5_SHA_512, ECDSA_SHA_256, ECDSA_SHA_384, ECDSA_SHA_512
    #   })
    #
    # @example Response structure
    #
    #   resp.key_id #=> String
    #   resp.signature #=> String
    #   resp.signing_algorithm #=> String, one of "RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/Sign AWS API Documentation
    #
    # @overload sign(params = {})
    # @param [Hash] params ({})
    def sign(params = {}, options = {})
      req = build_request(:sign, params)
      req.send_request(options)
    end

    # Adds or edits tags on a [customer managed key][1].
    #
    # <note markdown="1"> Tagging or untagging a KMS key can allow or deny permission to the KMS
    # key. For details, see [Using ABAC in KMS][2] in the *Key Management
    # Service Developer Guide*.
    #
    #  </note>
    #
    # Each tag consists of a tag key and a tag value, both of which are
    # case-sensitive strings. The tag value can be an empty (null) string.
    # To add a tag, specify a new tag key and a tag value. To edit a tag,
    # specify an existing tag key and a new tag value.
    #
    # You can use this operation to tag a [customer managed key][1], but you
    # cannot tag an [Amazon Web Services managed key][3], an [Amazon Web
    # Services owned key][4], a [custom key store][5], or an [alias][6].
    #
    # You can also add tags to a KMS key while creating it (CreateKey) or
    # replicating it (ReplicateKey).
    #
    # For information about using tags in KMS, see [Tagging keys][7]. For
    # general information about tags, including the format and syntax, see
    # [Tagging Amazon Web Services resources][8] in the *Amazon Web Services
    # General Reference*.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][9] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:TagResource][10] (key policy)
    #
    # **Related operations**
    #
    # * CreateKey
    #
    # * ListResourceTags
    #
    # * ReplicateKey
    #
    # * UntagResource
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#keystore-concept
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#alias-concept
    # [7]: https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html
    # [8]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [9]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [10]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies a customer managed key in the account and Region.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags.
    #
    #   Each tag consists of a tag key and a tag value. The tag value can be
    #   an empty (null) string.
    #
    #   You cannot have more than one tag on a KMS key with the same tag key.
    #   If you specify an existing tag key with a different tag value, KMS
    #   replaces the current tag value with the specified one.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To tag a KMS key
    #
    #   # The following example tags a KMS key.
    #
    #   resp = client.tag_resource({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key you are tagging. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #     tags: [
    #       {
    #         tag_key: "Purpose", 
    #         tag_value: "Test", 
    #       }, 
    #     ], # A list of tags.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     key_id: "KeyIdType", # required
    #     tags: [ # required
    #       {
    #         tag_key: "TagKeyType", # required
    #         tag_value: "TagValueType", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes tags from a [customer managed key][1]. To delete a tag,
    # specify the tag key and the KMS key.
    #
    # <note markdown="1"> Tagging or untagging a KMS key can allow or deny permission to the KMS
    # key. For details, see [Using ABAC in KMS][2] in the *Key Management
    # Service Developer Guide*.
    #
    #  </note>
    #
    # When it succeeds, the `UntagResource` operation doesn't return any
    # output. Also, if the specified tag key isn't found on the KMS key, it
    # doesn't throw an exception or return a response. To confirm that the
    # operation worked, use the ListResourceTags operation.
    #
    # For information about using tags in KMS, see [Tagging keys][3]. For
    # general information about tags, including the format and syntax, see
    # [Tagging Amazon Web Services resources][4] in the *Amazon Web Services
    # General Reference*.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][5] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:UntagResource][6] (key policy)
    #
    # **Related operations**
    #
    # * CreateKey
    #
    # * ListResourceTags
    #
    # * ReplicateKey
    #
    # * TagResource
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html
    # [4]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies the KMS key from which you are removing tags.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, Array<String>] :tag_keys
    #   One or more tag keys. Specify only the tag keys, not the tag values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove tags from a KMS key
    #
    #   # The following example removes tags from a KMS key.
    #
    #   resp = client.untag_resource({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose tags you are removing.
    #     tag_keys: [
    #       "Purpose", 
    #       "CostCenter", 
    #     ], # A list of tag keys. Provide only the tag keys, not the tag values.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     key_id: "KeyIdType", # required
    #     tag_keys: ["TagKeyType"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Associates an existing KMS alias with a different KMS key. Each alias
    # is associated with only one KMS key at a time, although a KMS key can
    # have multiple aliases. The alias and the KMS key must be in the same
    # Amazon Web Services account and Region.
    #
    # <note markdown="1"> Adding, deleting, or updating an alias can allow or deny permission to
    # the KMS key. For details, see [Using ABAC in KMS][1] in the *Key
    # Management Service Developer Guide*.
    #
    #  </note>
    #
    # The current and new KMS key must be the same type (both symmetric or
    # both asymmetric), and they must have the same key usage
    # (`ENCRYPT_DECRYPT` or `SIGN_VERIFY`). This restriction prevents errors
    # in code that uses aliases. If you must assign an alias to a different
    # type of KMS key, use DeleteAlias to delete the old alias and
    # CreateAlias to create a new alias.
    #
    # You cannot use `UpdateAlias` to change an alias name. To change an
    # alias name, use DeleteAlias to delete the old alias and CreateAlias to
    # create a new alias.
    #
    # Because an alias is not a property of a KMS key, you can create,
    # update, and delete the aliases of a KMS key without affecting the KMS
    # key. Also, aliases do not appear in the response from the DescribeKey
    # operation. To get the aliases of all KMS keys in the account, use the
    # ListAliases operation.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][2] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**
    #
    # * [kms:UpdateAlias][3] on the alias (IAM policy).
    #
    # * [kms:UpdateAlias][3] on the current KMS key (key policy).
    #
    # * [kms:UpdateAlias][3] on the new KMS key (key policy).
    #
    # For details, see [Controlling access to aliases][4] in the *Key
    # Management Service Developer Guide*.
    #
    # **Related operations:**
    #
    # * CreateAlias
    #
    # * DeleteAlias
    #
    # * ListAliases
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access
    #
    # @option params [required, String] :alias_name
    #   Identifies the alias that is changing its KMS key. This value must
    #   begin with `alias/` followed by the alias name, such as
    #   `alias/ExampleAlias`. You cannot use UpdateAlias to change the alias
    #   name.
    #
    # @option params [required, String] :target_key_id
    #   Identifies the [customer managed key][1] to associate with the alias.
    #   You don't have permission to associate an alias with an [Amazon Web
    #   Services managed key][2].
    #
    #   The KMS key must be in the same Amazon Web Services account and Region
    #   as the alias. Also, the new target KMS key must be the same type as
    #   the current target KMS key (both symmetric or both asymmetric) and
    #   they must have the same key usage.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    #   To verify that the alias is mapped to the correct KMS key, use
    #   ListAliases.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update an alias
    #
    #   # The following example updates the specified alias to refer to the specified KMS key.
    #
    #   resp = client.update_alias({
    #     alias_name: "alias/ExampleAlias", # The alias to update.
    #     target_key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key that the alias will refer to after this operation succeeds. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alias({
    #     alias_name: "AliasNameType", # required
    #     target_key_id: "KeyIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateAlias AWS API Documentation
    #
    # @overload update_alias(params = {})
    # @param [Hash] params ({})
    def update_alias(params = {}, options = {})
      req = build_request(:update_alias, params)
      req.send_request(options)
    end

    # Changes the properties of a custom key store. Use the
    # `CustomKeyStoreId` parameter to identify the custom key store you want
    # to edit. Use the remaining parameters to change the properties of the
    # custom key store.
    #
    # You can only update a custom key store that is disconnected. To
    # disconnect the custom key store, use DisconnectCustomKeyStore. To
    # reconnect the custom key store after the update completes, use
    # ConnectCustomKeyStore. To find the connection state of a custom key
    # store, use the DescribeCustomKeyStores operation.
    #
    # The `CustomKeyStoreId` parameter is required in all commands. Use the
    # other parameters of `UpdateCustomKeyStore` to edit your key store
    # settings.
    #
    # * Use the `NewCustomKeyStoreName` parameter to change the friendly
    #   name of the custom key store to the value that you specify.
    #
    #
    #
    # * Use the `KeyStorePassword` parameter tell KMS the current password
    #   of the [ `kmsuser` crypto user (CU)][1] in the associated CloudHSM
    #   cluster. You can use this parameter to [fix connection failures][2]
    #   that occur when KMS cannot log into the associated cluster because
    #   the `kmsuser` password has changed. This value does not change the
    #   password in the CloudHSM cluster.
    #
    #
    #
    # * Use the `CloudHsmClusterId` parameter to associate the custom key
    #   store with a different, but related, CloudHSM cluster. You can use
    #   this parameter to repair a custom key store if its CloudHSM cluster
    #   becomes corrupted or is deleted, or when you need to create or
    #   restore a cluster from a backup.
    #
    # If the operation succeeds, it returns a JSON object with no
    # properties.
    #
    # This operation is part of the [Custom Key Store feature][3] feature in
    # KMS, which combines the convenience and extensive integration of KMS
    # with the isolation and control of a single-tenant key store.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a
    # custom key store in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:UpdateCustomKeyStore][4] (IAM policy)
    #
    # **Related operations:**
    #
    # * ConnectCustomKeyStore
    #
    # * CreateCustomKeyStore
    #
    # * DeleteCustomKeyStore
    #
    # * DescribeCustomKeyStores
    #
    # * DisconnectCustomKeyStore
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-password
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :custom_key_store_id
    #   Identifies the custom key store that you want to update. Enter the ID
    #   of the custom key store. To find the ID of a custom key store, use the
    #   DescribeCustomKeyStores operation.
    #
    # @option params [String] :new_custom_key_store_name
    #   Changes the friendly name of the custom key store to the value that
    #   you specify. The custom key store name must be unique in the Amazon
    #   Web Services account.
    #
    # @option params [String] :key_store_password
    #   Enter the current password of the `kmsuser` crypto user (CU) in the
    #   CloudHSM cluster that is associated with the custom key store.
    #
    #   This parameter tells KMS the current password of the `kmsuser` crypto
    #   user (CU). It does not set or change the password of any users in the
    #   CloudHSM cluster.
    #
    # @option params [String] :cloud_hsm_cluster_id
    #   Associates the custom key store with a related CloudHSM cluster.
    #
    #   Enter the cluster ID of the cluster that you used to create the custom
    #   key store or a cluster that shares a backup history and has the same
    #   cluster certificate as the original cluster. You cannot use this
    #   parameter to associate a custom key store with an unrelated cluster.
    #   In addition, the replacement cluster must [fulfill the
    #   requirements][1] for a cluster associated with a custom key store. To
    #   view the cluster certificate of a cluster, use the
    #   [DescribeClusters][2] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore
    #   [2]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To edit the password of a custom key store
    #
    #   # This example tells KMS the password for the kmsuser crypto user in the AWS CloudHSM cluster that is associated with the
    #   # AWS KMS custom key store. (It does not change the password in the CloudHSM cluster.) This operation does not return any
    #   # data.
    #
    #   resp = client.update_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0", # The ID of the custom key store that you are updating.
    #     key_store_password: "ExamplePassword", # The password for the kmsuser crypto user in the CloudHSM cluster.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Example: To edit the friendly name of a custom key store
    #
    #   # This example changes the friendly name of the AWS KMS custom key store to the name that you specify. This operation does
    #   # not return any data. To verify that the operation worked, use the DescribeCustomKeyStores operation.
    #
    #   resp = client.update_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0", # The ID of the custom key store that you are updating.
    #     new_custom_key_store_name: "DevelopmentKeys", # A new friendly name for the custom key store.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Example: To associate the custom key store with a different, but related, AWS CloudHSM cluster.
    #
    #   # This example changes the cluster that is associated with a custom key store to a related cluster, such as a different
    #   # backup of the same cluster. This operation does not return any data. To verify that the operation worked, use the
    #   # DescribeCustomKeyStores operation.
    #
    #   resp = client.update_custom_key_store({
    #     cloud_hsm_cluster_id: "cluster-1a23b4cdefg", # The ID of the AWS CloudHSM cluster that you want to associate with the custom key store. This cluster must be related to the original CloudHSM cluster for this key store.
    #     custom_key_store_id: "cks-1234567890abcdef0", # The ID of the custom key store that you are updating.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_key_store({
    #     custom_key_store_id: "CustomKeyStoreIdType", # required
    #     new_custom_key_store_name: "CustomKeyStoreNameType",
    #     key_store_password: "KeyStorePasswordType",
    #     cloud_hsm_cluster_id: "CloudHsmClusterIdType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateCustomKeyStore AWS API Documentation
    #
    # @overload update_custom_key_store(params = {})
    # @param [Hash] params ({})
    def update_custom_key_store(params = {}, options = {})
      req = build_request(:update_custom_key_store, params)
      req.send_request(options)
    end

    # Updates the description of a KMS key. To see the description of a KMS
    # key, use DescribeKey.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][1] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: No. You cannot perform this operation on a KMS
    # key in a different Amazon Web Services account.
    #
    # **Required permissions**\: [kms:UpdateKeyDescription][2] (key policy)
    #
    # **Related operations**
    #
    # * CreateKey
    #
    # * DescribeKey
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Updates the description of the specified KMS key.
    #
    #   Specify the key ID or key ARN of the KMS key.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, String] :description
    #   New description for the KMS key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update the description of a KMS key
    #
    #   # The following example updates the description of the specified KMS key.
    #
    #   resp = client.update_key_description({
    #     description: "Example description that indicates the intended use of this KMS key.", # The updated description.
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the KMS key whose description you are updating. You can use the key ID or the Amazon Resource Name (ARN) of the KMS key.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_key_description({
    #     key_id: "KeyIdType", # required
    #     description: "DescriptionType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateKeyDescription AWS API Documentation
    #
    # @overload update_key_description(params = {})
    # @param [Hash] params ({})
    def update_key_description(params = {}, options = {})
      req = build_request(:update_key_description, params)
      req.send_request(options)
    end

    # Changes the primary key of a multi-Region key.
    #
    # This operation changes the replica key in the specified Region to a
    # primary key and changes the former primary key to a replica key. For
    # example, suppose you have a primary key in `us-east-1` and a replica
    # key in `eu-west-2`. If you run `UpdatePrimaryRegion` with a
    # `PrimaryRegion` value of `eu-west-2`, the primary key is now the key
    # in `eu-west-2`, and the key in `us-east-1` becomes a replica key. For
    # details, see [Updating the primary Region][1] in the *Key Management
    # Service Developer Guide*.
    #
    # This operation supports *multi-Region keys*, an KMS feature that lets
    # you create multiple interoperable KMS keys in different Amazon Web
    # Services Regions. Because these KMS keys have the same key ID, key
    # material, and other metadata, you can use them interchangeably to
    # encrypt data in one Amazon Web Services Region and decrypt it in a
    # different Amazon Web Services Region without re-encrypting the data or
    # making a cross-Region call. For more information about multi-Region
    # keys, see [Using multi-Region keys][2] in the *Key Management Service
    # Developer Guide*.
    #
    # The *primary key* of a multi-Region key is the source for properties
    # that are always shared by primary and replica keys, including the key
    # material, [key ID][3], [key spec][4], [key usage][5], [key material
    # origin][6], and [automatic key rotation][7]. It's the only key that
    # can be replicated. You cannot [delete the primary key][8] until all
    # replica keys are deleted.
    #
    # The key ID and primary Region that you specify uniquely identify the
    # replica key that will become the primary key. The primary Region must
    # already have a replica key. This operation does not create a KMS key
    # in the specified Region. To find the replica keys, use the DescribeKey
    # operation on the primary key or any replica key. To create a replica
    # key, use the ReplicateKey operation.
    #
    # You can run this operation while using the affected multi-Region keys
    # in cryptographic operations. This operation should not delay,
    # interrupt, or cause failures in cryptographic operations.
    #
    # Even after this operation completes, the process of updating the
    # primary Region might still be in progress for a few more seconds.
    # Operations such as `DescribeKey` might display both the old and new
    # primary keys as replicas. The old and new primary keys have a
    # transient key state of `Updating`. The original key state is restored
    # when the update is complete. While the key state is `Updating`, you
    # can use the keys in cryptographic operations, but you cannot replicate
    # the new primary key or perform certain management operations, such as
    # enabling or disabling these keys. For details about the `Updating` key
    # state, see [Key state: Effect on your KMS
    # key](kms/latest/developerguide/key-state.html) in the *Key Management
    # Service Developer Guide*.
    #
    # This operation does not return any output. To verify that primary key
    # is changed, use the DescribeKey operation.
    #
    # **Cross-account use**\: No. You cannot use this operation in a
    # different Amazon Web Services account.
    #
    # **Required permissions**\:
    #
    # * `kms:UpdatePrimaryRegion` on the current primary key (in the primary
    #   key's Region). Include this permission primary key's key policy.
    #
    # * `kms:UpdatePrimaryRegion` on the current replica key (in the replica
    #   key's Region). Include this permission in the replica key's key
    #   policy.
    #
    # **Related operations**
    #
    # * CreateKey
    #
    # * ReplicateKey
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-update
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage
    # [6]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin
    # [7]: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html
    # [8]: https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html
    #
    # @option params [required, String] :key_id
    #   Identifies the current primary key. When the operation completes, this
    #   KMS key will be a replica key.
    #
    #   Specify the key ID or key ARN of a multi-Region primary key.
    #
    #   For example:
    #
    #   * Key ID: `mrk-1234abcd12ab34cd56ef1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey.
    #
    # @option params [required, String] :primary_region
    #   The Amazon Web Services Region of the new primary key. Enter the
    #   Region ID, such as `us-east-1` or `ap-southeast-2`. There must be an
    #   existing replica key in this Region.
    #
    #   When the operation completes, the multi-Region key in this Region will
    #   be the primary key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_primary_region({
    #     key_id: "KeyIdType", # required
    #     primary_region: "RegionType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdatePrimaryRegion AWS API Documentation
    #
    # @overload update_primary_region(params = {})
    # @param [Hash] params ({})
    def update_primary_region(params = {}, options = {})
      req = build_request(:update_primary_region, params)
      req.send_request(options)
    end

    # Verifies a digital signature that was generated by the Sign operation.
    #
    #
    #
    # Verification confirms that an authorized user signed the message with
    # the specified KMS key and signing algorithm, and the message hasn't
    # changed since it was signed. If the signature is verified, the value
    # of the `SignatureValid` field in the response is `True`. If the
    # signature verification fails, the `Verify` operation fails with an
    # `KMSInvalidSignatureException` exception.
    #
    # A digital signature is generated by using the private key in an
    # asymmetric KMS key. The signature is verified by using the public key
    # in the same asymmetric KMS key. For information about symmetric and
    # asymmetric KMS keys, see [Using Symmetric and Asymmetric KMS keys][1]
    # in the *Key Management Service Developer Guide*.
    #
    # To verify a digital signature, you can use the `Verify` operation.
    # Specify the same asymmetric KMS key, message, and signing algorithm
    # that were used to produce the signature.
    #
    # You can also verify the digital signature by using the public key of
    # the KMS key outside of KMS. Use the GetPublicKey operation to download
    # the public key in the asymmetric KMS key and then use the public key
    # to verify the signature outside of KMS. The advantage of using the
    # `Verify` operation is that it is performed within KMS. As a result,
    # it's easy to call, the operation is performed within the FIPS
    # boundary, it is logged in CloudTrail, and you can use key policy and
    # IAM policy to determine who is authorized to use the KMS key to verify
    # signatures.
    #
    # The KMS key that you use for this operation must be in a compatible
    # key state. For details, see [Key state: Effect on your KMS key][2] in
    # the *Key Management Service Developer Guide*.
    #
    # **Cross-account use**\: Yes. To perform this operation with a KMS key
    # in a different Amazon Web Services account, specify the key ARN or
    # alias ARN in the value of the `KeyId` parameter.
    #
    # **Required permissions**\: [kms:Verify][3] (key policy)
    #
    # **Related operations**\: Sign
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #
    # @option params [required, String] :key_id
    #   Identifies the asymmetric KMS key that will be used to verify the
    #   signature. This must be the same KMS key that was used to generate the
    #   signature. If you specify a different KMS key, the signature
    #   verification fails.
    #
    #   To specify a KMS key, use its key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix it with `"alias/"`. To specify a
    #   KMS key in a different Amazon Web Services account, you must use the
    #   key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   To get the key ID and key ARN for a KMS key, use ListKeys or
    #   DescribeKey. To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [required, String, StringIO, File] :message
    #   Specifies the message that was signed. You can submit a raw message of
    #   up to 4096 bytes, or a hash digest of the message. If you submit a
    #   digest, use the `MessageType` parameter with a value of `DIGEST`.
    #
    #   If the message specified here is different from the message that was
    #   signed, the signature verification fails. A message and its hash
    #   digest are considered to be the same message.
    #
    # @option params [String] :message_type
    #   Tells KMS whether the value of the `Message` parameter is a message or
    #   message digest. The default value, RAW, indicates a message. To
    #   indicate a message digest, enter `DIGEST`.
    #
    #   Use the `DIGEST` value only when the value of the `Message` parameter
    #   is a message digest. If you use the `DIGEST` value with a raw message,
    #   the security of the verification operation can be compromised.
    #
    # @option params [required, String, StringIO, File] :signature
    #   The signature that the `Sign` operation generated.
    #
    # @option params [required, String] :signing_algorithm
    #   The signing algorithm that was used to sign the message. If you submit
    #   a different algorithm, the signature verification fails.
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   Use a grant token when your permission to call this operation comes
    #   from a new grant that has not yet achieved *eventual consistency*. For
    #   more information, see [Grant token][1] and [Using a grant token][2] in
    #   the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token
    #
    # @return [Types::VerifyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyResponse#key_id #key_id} => String
    #   * {Types::VerifyResponse#signature_valid #signature_valid} => Boolean
    #   * {Types::VerifyResponse#signing_algorithm #signing_algorithm} => String
    #
    #
    # @example Example: To use an asymmetric KMS key to verify a digital signature
    #
    #   # This operation uses the public key in an elliptic curve (ECC) asymmetric key to verify a digital signature within AWS
    #   # KMS. 
    #
    #   resp = client.verify({
    #     key_id: "alias/ECC_signing_key", # The asymmetric KMS key to be used to verify the digital signature. This example uses an alias to identify the KMS key.
    #     message: "<message to be verified>", # The message that was signed.
    #     message_type: "RAW", # Indicates whether the message is RAW or a DIGEST.
    #     signature: "<binary data>", # The signature to be verified.
    #     signing_algorithm: "ECDSA_SHA_384", # The signing algorithm to be used to verify the signature.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The key ARN of the asymmetric KMS key that was used to verify the digital signature.
    #     signature_valid: true, # Indicates whether the signature was verified (true) or failed verification (false).
    #     signing_algorithm: "ECDSA_SHA_384", # The signing algorithm that was used to verify the signature.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify({
    #     key_id: "KeyIdType", # required
    #     message: "data", # required
    #     message_type: "RAW", # accepts RAW, DIGEST
    #     signature: "data", # required
    #     signing_algorithm: "RSASSA_PSS_SHA_256", # required, accepts RSASSA_PSS_SHA_256, RSASSA_PSS_SHA_384, RSASSA_PSS_SHA_512, RSASSA_PKCS1_V1_5_SHA_256, RSASSA_PKCS1_V1_5_SHA_384, RSASSA_PKCS1_V1_5_SHA_512, ECDSA_SHA_256, ECDSA_SHA_384, ECDSA_SHA_512
    #     grant_tokens: ["GrantTokenType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.key_id #=> String
    #   resp.signature_valid #=> Boolean
    #   resp.signing_algorithm #=> String, one of "RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/Verify AWS API Documentation
    #
    # @overload verify(params = {})
    # @param [Hash] params ({})
    def verify(params = {}, options = {})
      req = build_request(:verify, params)
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
      context[:gem_name] = 'aws-sdk-kms'
      context[:gem_version] = '1.49.0'
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
