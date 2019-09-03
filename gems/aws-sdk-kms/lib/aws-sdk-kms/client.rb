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

Aws::Plugins::GlobalConfiguration.add_identifier(:kms)

module Aws::KMS
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

    # Cancels the deletion of a customer master key (CMK). When this
    # operation is successful, the CMK is set to the `Disabled` state. To
    # enable a CMK, use EnableKey. You cannot perform this operation on a
    # CMK in a different AWS account.
    #
    # For more information about scheduling and canceling deletion of a CMK,
    # see [Deleting Customer Master Keys][1] in the *AWS Key Management
    # Service Developer Guide*.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   The unique identifier for the customer master key (CMK) for which to
    #   cancel deletion.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @return [Types::CancelKeyDeletionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelKeyDeletionResponse#key_id #key_id} => String
    #
    #
    # @example Example: To cancel deletion of a customer master key (CMK)
    #
    #   # The following example cancels deletion of the specified CMK.
    #
    #   resp = client.cancel_key_deletion({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose deletion you are canceling. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the CMK whose deletion you canceled.
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

    # Connects or reconnects a [custom key store][1] to its associated AWS
    # CloudHSM cluster.
    #
    # The custom key store must be connected before you can create customer
    # master keys (CMKs) in the key store or use the CMKs it contains. You
    # can disconnect and reconnect a custom key store at any time.
    #
    # To connect a custom key store, its associated AWS CloudHSM cluster
    # must have at least one active HSM. To get the number of active HSMs in
    # a cluster, use the [DescribeClusters][2] operation. To add HSMs to the
    # cluster, use the [CreateHsm][3] operation.
    #
    # The connection process can take an extended amount of time to
    # complete; up to 20 minutes. This operation starts the connection
    # process, but it does not wait for it to complete. When it succeeds,
    # this operation quickly returns an HTTP 200 response and a JSON object
    # with no properties. However, this response does not indicate that the
    # custom key store is connected. To get the connection state of the
    # custom key store, use the DescribeCustomKeyStores operation.
    #
    # During the connection process, AWS KMS finds the AWS CloudHSM cluster
    # that is associated with the custom key store, creates the connection
    # infrastructure, connects to the cluster, logs into the AWS CloudHSM
    # client as the [ `kmsuser` crypto user][4] (CU), and rotates its
    # password.
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
    # store, see [Troubleshooting a Custom Key Store][5] in the *AWS Key
    # Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html
    # [3]: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser
    # [5]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html
    #
    # @option params [required, String] :custom_key_store_id
    #   Enter the key store ID of the custom key store that you want to
    #   connect. To find the ID of a custom key store, use the
    #   DescribeCustomKeyStores operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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

    # Creates a display name for a customer managed customer master key
    # (CMK). You can use an alias to identify a CMK in selected operations,
    # such as Encrypt and GenerateDataKey.
    #
    # Each CMK can have multiple aliases, but each alias points to only one
    # CMK. The alias name must be unique in the AWS account and region. To
    # simplify code that runs in multiple regions, use the same alias name,
    # but point it to a different CMK in each region.
    #
    # Because an alias is not a property of a CMK, you can delete and change
    # the aliases of a CMK without affecting the CMK. Also, aliases do not
    # appear in the response from the DescribeKey operation. To get the
    # aliases of all CMKs, use the ListAliases operation.
    #
    # The alias name must begin with `alias/` followed by a name, such as
    # `alias/ExampleAlias`. It can contain only alphanumeric characters,
    # forward slashes (/), underscores (\_), and dashes (-). The alias name
    # cannot begin with `alias/aws/`. The `alias/aws/` prefix is reserved
    # for [AWS managed CMKs][1].
    #
    # The alias and the CMK it is mapped to must be in the same AWS account
    # and the same region. You cannot perform this operation on an alias in
    # a different AWS account.
    #
    # To map an existing alias to a different CMK, call UpdateAlias.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :alias_name
    #   Specifies the alias name. This value must begin with `alias/` followed
    #   by a name, such as `alias/ExampleAlias`. The alias name cannot begin
    #   with `alias/aws/`. The `alias/aws/` prefix is reserved for AWS managed
    #   CMKs.
    #
    # @option params [required, String] :target_key_id
    #   Identifies the CMK to which the alias refers. Specify the key ID or
    #   the Amazon Resource Name (ARN) of the CMK. You cannot specify another
    #   alias. For help finding the key ID and ARN, see [Finding the Key ID
    #   and ARN][1] in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create an alias
    #
    #   # The following example creates an alias for the specified customer master key (CMK).
    #
    #   resp = client.create_alias({
    #     alias_name: "alias/ExampleAlias", # The alias to create. Aliases must begin with 'alias/'. Do not use aliases that begin with 'alias/aws' because they are reserved for use by AWS.
    #     target_key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose alias you are creating. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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

    # Creates a [custom key store][1] that is associated with an [AWS
    # CloudHSM cluster][2] that you own and manage.
    #
    # This operation is part of the [Custom Key Store feature][1] feature in
    # AWS KMS, which combines the convenience and extensive integration of
    # AWS KMS with the isolation and control of a single-tenant key store.
    #
    # Before you create the custom key store, you must assemble the required
    # elements, including an AWS CloudHSM cluster that fulfills the
    # requirements for a custom key store. For details about the required
    # elements, see [Assemble the Prerequisites][3] in the *AWS Key
    # Management Service Developer Guide*.
    #
    # When the operation completes successfully, it returns the ID of the
    # new custom key store. Before you can use your new custom key store,
    # you need to use the ConnectCustomKeyStore operation to connect the new
    # key store to its AWS CloudHSM cluster. Even if you are not going to
    # use your custom key store immediately, you might want to connect it to
    # verify that all settings are correct and then disconnect it until you
    # are ready to use it.
    #
    # For help with failures, see [Troubleshooting a Custom Key Store][4] in
    # the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html
    #
    # @option params [required, String] :custom_key_store_name
    #   Specifies a friendly name for the custom key store. The name must be
    #   unique in your AWS account.
    #
    # @option params [required, String] :cloud_hsm_cluster_id
    #   Identifies the AWS CloudHSM cluster for the custom key store. Enter
    #   the cluster ID of any active AWS CloudHSM cluster that is not already
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
    #   the specified AWS CloudHSM cluster. AWS KMS logs into the cluster as
    #   this user to manage key material on your behalf.
    #
    #   This parameter tells AWS KMS the `kmsuser` account password; it does
    #   not change the password in the AWS CloudHSM cluster.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser
    #
    # @return [Types::CreateCustomKeyStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomKeyStoreResponse#custom_key_store_id #custom_key_store_id} => String
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

    # Adds a grant to a customer master key (CMK). The grant allows the
    # grantee principal to use the CMK when the conditions specified in the
    # grant are met. When setting permissions, grants are an alternative to
    # key policies.
    #
    # To create a grant that allows a cryptographic operation only when the
    # encryption context in the operation request matches or includes a
    # specified encryption context, use the `Constraints` parameter. For
    # details, see GrantConstraints.
    #
    # To perform this operation on a CMK in a different AWS account, specify
    # the key ARN in the value of the `KeyId` parameter. For more
    # information about grants, see [Grants][1] in the <i> <i>AWS Key
    # Management Service Developer Guide</i> </i>.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/grants.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   The unique identifier for the customer master key (CMK) that the grant
    #   applies to.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To
    #   specify a CMK in a different AWS account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [required, String] :grantee_principal
    #   The principal that is given permission to perform the operations that
    #   the grant permits.
    #
    #   To specify the principal, use the [Amazon Resource Name (ARN)][1] of
    #   an AWS principal. Valid AWS principals include AWS accounts (root),
    #   IAM users, IAM roles, federated users, and assumed role users. For
    #   examples of the ARN syntax to use for specifying a principal, see [AWS
    #   Identity and Access Management (IAM)][2] in the Example ARNs section
    #   of the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #
    # @option params [String] :retiring_principal
    #   The principal that is given permission to retire the grant by using
    #   RetireGrant operation.
    #
    #   To specify the principal, use the [Amazon Resource Name (ARN)][1] of
    #   an AWS principal. Valid AWS principals include AWS accounts (root),
    #   IAM users, federated users, and assumed role users. For examples of
    #   the ARN syntax to use for specifying a principal, see [AWS Identity
    #   and Access Management (IAM)][2] in the Example ARNs section of the
    #   *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #
    # @option params [required, Array<String>] :operations
    #   A list of operations that the grant permits.
    #
    # @option params [Types::GrantConstraints] :constraints
    #   Allows a cryptographic operation only when the encryption context
    #   matches or includes the encryption context specified in this
    #   structure. For more information about encryption context, see
    #   [Encryption Context][1] in the <i> <i>AWS Key Management Service
    #   Developer Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #
    # @option params [String] :name
    #   A friendly name for identifying the grant. Use this value to prevent
    #   the unintended creation of duplicate grants when retrying this
    #   request.
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
    #   when a duplicate `GrantId` is returned. All grant tokens obtained in
    #   this way can be used interchangeably.
    #
    # @return [Types::CreateGrantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGrantResponse#grant_token #grant_token} => String
    #   * {Types::CreateGrantResponse#grant_id #grant_id} => String
    #
    #
    # @example Example: To create a grant
    #
    #   # The following example creates a grant that allows the specified IAM role to encrypt data with the specified customer
    #   # master key (CMK).
    #
    #   resp = client.create_grant({
    #     grantee_principal: "arn:aws:iam::111122223333:role/ExampleRole", # The identity that is given permission to perform the operations specified in the grant.
    #     key_id: "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK to which the grant applies. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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
    #     operations: ["Decrypt"], # required, accepts Decrypt, Encrypt, GenerateDataKey, GenerateDataKeyWithoutPlaintext, ReEncryptFrom, ReEncryptTo, CreateGrant, RetireGrant, DescribeKey
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

    # Creates a customer managed [customer master key][1] (CMK) in your AWS
    # account.
    #
    # You can use a CMK to encrypt small amounts of data (up to 4096 bytes)
    # directly. But CMKs are more commonly used to encrypt the [data
    # keys][2] that are used to encrypt data.
    #
    # To create a CMK for imported key material, use the `Origin` parameter
    # with a value of `EXTERNAL`.
    #
    # To create a CMK in a [custom key store][3], use the `CustomKeyStoreId`
    # parameter to specify the custom key store. You must also use the
    # `Origin` parameter with a value of `AWS_CLOUDHSM`. The AWS CloudHSM
    # cluster that is associated with the custom key store must have at
    # least two active HSMs in different Availability Zones in the AWS
    # Region.
    #
    # You cannot use this operation to create a CMK in a different AWS
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #
    # @option params [String] :policy
    #   The key policy to attach to the CMK.
    #
    #   If you provide a key policy, it must meet the following criteria:
    #
    #   * If you don't set `BypassPolicyLockoutSafetyCheck` to true, the key
    #     policy must allow the principal that is making the `CreateKey`
    #     request to make a subsequent PutKeyPolicy request on the CMK. This
    #     reduces the risk that the CMK becomes unmanageable. For more
    #     information, refer to the scenario in the [Default Key Policy][1]
    #     section of the <i> <i>AWS Key Management Service Developer Guide</i>
    #     </i>.
    #
    #   * Each statement in the key policy must contain one or more
    #     principals. The principals in the key policy must exist and be
    #     visible to AWS KMS. When you create a new AWS principal (for
    #     example, an IAM user or role), you might need to enforce a delay
    #     before including the new principal in a key policy because the new
    #     principal might not be immediately visible to AWS KMS. For more
    #     information, see [Changes that I make are not always immediately
    #     visible][2] in the *AWS Identity and Access Management User Guide*.
    #
    #   If you do not provide a key policy, AWS KMS attaches a default key
    #   policy to the CMK. For more information, see [Default Key Policy][3]
    #   in the *AWS Key Management Service Developer Guide*.
    #
    #   The key policy size limit is 32 kilobytes (32768 bytes).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default
    #
    # @option params [String] :description
    #   A description of the CMK.
    #
    #   Use a description that helps you decide whether the CMK is appropriate
    #   for a task.
    #
    # @option params [String] :key_usage
    #   The cryptographic operations for which you can use the CMK. The only
    #   valid value is `ENCRYPT_DECRYPT`, which means you can use the CMK to
    #   encrypt and decrypt data.
    #
    # @option params [String] :origin
    #   The source of the key material for the CMK. You cannot change the
    #   origin after you create the CMK.
    #
    #   The default is `AWS_KMS`, which means AWS KMS creates the key material
    #   in its own key store.
    #
    #   When the parameter value is `EXTERNAL`, AWS KMS creates a CMK without
    #   key material so that you can import key material from your existing
    #   key management infrastructure. For more information about importing
    #   key material into AWS KMS, see [Importing Key Material][1] in the *AWS
    #   Key Management Service Developer Guide*.
    #
    #   When the parameter value is `AWS_CLOUDHSM`, AWS KMS creates the CMK in
    #   an AWS KMS [custom key store][2] and creates its key material in the
    #   associated AWS CloudHSM cluster. You must also use the
    #   `CustomKeyStoreId` parameter to identify the custom key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #
    # @option params [String] :custom_key_store_id
    #   Creates the CMK in the specified [custom key store][1] and the key
    #   material in its associated AWS CloudHSM cluster. To create a CMK in a
    #   custom key store, you must also specify the `Origin` parameter with a
    #   value of `AWS_CLOUDHSM`. The AWS CloudHSM cluster that is associated
    #   with the custom key store must have at least two active HSMs, each in
    #   a different Availability Zone in the Region.
    #
    #   To find the ID of a custom key store, use the DescribeCustomKeyStores
    #   operation.
    #
    #   The response includes the custom key store ID and the ID of the AWS
    #   CloudHSM cluster.
    #
    #   This operation is part of the [Custom Key Store feature][1] feature in
    #   AWS KMS, which combines the convenience and extensive integration of
    #   AWS KMS with the isolation and control of a single-tenant key store.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   A flag to indicate whether to bypass the key policy lockout safety
    #   check.
    #
    #   Setting this value to true increases the risk that the CMK becomes
    #   unmanageable. Do not set this value to true indiscriminately.
    #
    #    For more information, refer to the scenario in the [Default Key
    #   Policy][1] section in the <i> <i>AWS Key Management Service Developer
    #   Guide</i> </i>.
    #
    #   Use this parameter only when you include a policy in the request and
    #   you intend to prevent the principal that is making the request from
    #   making a subsequent PutKeyPolicy request on the CMK.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags. Each tag consists of a tag key and a tag value. Tag
    #   keys and tag values are both required, but tag values can be empty
    #   (null) strings.
    #
    #   Use this parameter to tag the CMK when it is created. Alternately, you
    #   can omit this parameter and instead tag the CMK after it is created
    #   using TagResource.
    #
    # @return [Types::CreateKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyResponse#key_metadata #key_metadata} => Types::KeyMetadata
    #
    #
    # @example Example: To create a customer master key (CMK)
    #
    #   # The following example creates a CMK.
    #
    #   resp = client.create_key({
    #     tags: [
    #       {
    #         tag_key: "CreatedBy", 
    #         tag_value: "ExampleUser", 
    #       }, 
    #     ], # One or more tags. Each tag consists of a tag key and a tag value.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333", 
    #       arn: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       creation_date: Time.parse("2017-07-05T14:04:55-07:00"), 
    #       description: "", 
    #       enabled: true, 
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       key_manager: "CUSTOMER", 
    #       key_state: "Enabled", 
    #       key_usage: "ENCRYPT_DECRYPT", 
    #       origin: "AWS_KMS", 
    #     }, # An object that contains information about the CMK created by this operation.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key({
    #     policy: "PolicyType",
    #     description: "DescriptionType",
    #     key_usage: "ENCRYPT_DECRYPT", # accepts ENCRYPT_DECRYPT
    #     origin: "AWS_KMS", # accepts AWS_KMS, EXTERNAL, AWS_CLOUDHSM
    #     custom_key_store_id: "CustomKeyStoreIdType",
    #     bypass_policy_lockout_safety_check: false,
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
    #   resp.key_metadata.aws_account_id #=> String
    #   resp.key_metadata.key_id #=> String
    #   resp.key_metadata.arn #=> String
    #   resp.key_metadata.creation_date #=> Time
    #   resp.key_metadata.enabled #=> Boolean
    #   resp.key_metadata.description #=> String
    #   resp.key_metadata.key_usage #=> String, one of "ENCRYPT_DECRYPT"
    #   resp.key_metadata.key_state #=> String, one of "Enabled", "Disabled", "PendingDeletion", "PendingImport", "Unavailable"
    #   resp.key_metadata.deletion_date #=> Time
    #   resp.key_metadata.valid_to #=> Time
    #   resp.key_metadata.origin #=> String, one of "AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM"
    #   resp.key_metadata.custom_key_store_id #=> String
    #   resp.key_metadata.cloud_hsm_cluster_id #=> String
    #   resp.key_metadata.expiration_model #=> String, one of "KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"
    #   resp.key_metadata.key_manager #=> String, one of "AWS", "CUSTOMER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateKey AWS API Documentation
    #
    # @overload create_key(params = {})
    # @param [Hash] params ({})
    def create_key(params = {}, options = {})
      req = build_request(:create_key, params)
      req.send_request(options)
    end

    # Decrypts ciphertext. Ciphertext is plaintext that has been previously
    # encrypted by using any of the following operations:
    #
    # * GenerateDataKey
    #
    # * GenerateDataKeyWithoutPlaintext
    #
    # * Encrypt
    #
    # Whenever possible, use key policies to give users permission to call
    # the Decrypt operation on the CMK, instead of IAM policies. Otherwise,
    # you might create an IAM user policy that gives the user Decrypt
    # permission on all CMKs. This user could decrypt ciphertext that was
    # encrypted by CMKs in other accounts if the key policy for the
    # cross-account CMK permits it. If you must use an IAM policy for
    # `Decrypt` permissions, limit the user to particular CMKs or particular
    # trusted accounts.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][1]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String, IO] :ciphertext_blob
    #   Ciphertext to be decrypted. The blob includes metadata.
    #
    # @option params [Hash<String,String>] :encryption_context
    #   The encryption context. If this was specified in the Encrypt function,
    #   it must be specified here or the decryption operation will fail. For
    #   more information, see [Encryption Context][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #
    # @return [Types::DecryptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DecryptResponse#key_id #key_id} => String
    #   * {Types::DecryptResponse#plaintext #plaintext} => String
    #
    #
    # @example Example: To decrypt data
    #
    #   # The following example decrypts data that was encrypted with a customer master key (CMK) in AWS KMS.
    #
    #   resp = client.decrypt({
    #     ciphertext_blob: "<binary data>", # The encrypted data (ciphertext).
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The Amazon Resource Name (ARN) of the CMK that was used to decrypt the data.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.key_id #=> String
    #   resp.plaintext #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/Decrypt AWS API Documentation
    #
    # @overload decrypt(params = {})
    # @param [Hash] params ({})
    def decrypt(params = {}, options = {})
      req = build_request(:decrypt, params)
      req.send_request(options)
    end

    # Deletes the specified alias. You cannot perform this operation on an
    # alias in a different AWS account.
    #
    # Because an alias is not a property of a CMK, you can delete and change
    # the aliases of a CMK without affecting the CMK. Also, aliases do not
    # appear in the response from the DescribeKey operation. To get the
    # aliases of all CMKs, use the ListAliases operation.
    #
    # Each CMK can have multiple aliases. To change the alias of a CMK, use
    # DeleteAlias to delete the current alias and CreateAlias to create a
    # new alias. To associate an existing alias with a different customer
    # master key (CMK), call UpdateAlias.
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
    # AWS CloudHSM cluster that is associated with the custom key store, or
    # affect any users or keys in the cluster.
    #
    # The custom key store that you delete cannot contain any AWS KMS
    # [customer master keys (CMKs)][2]. Before deleting the key store,
    # verify that you will never need to use any of the CMKs in the key
    # store for any cryptographic operations. Then, use ScheduleKeyDeletion
    # to delete the AWS KMS customer master keys (CMKs) from the key store.
    # When the scheduled waiting period expires, the `ScheduleKeyDeletion`
    # operation deletes the CMKs. Then it makes a best effort to delete the
    # key material from the associated cluster. However, you might need to
    # manually [delete the orphaned key material][3] from the cluster and
    # its backups.
    #
    # After all CMKs are deleted from AWS KMS, use DisconnectCustomKeyStore
    # to disconnect the key store from AWS KMS. Then, you can delete the
    # custom key store.
    #
    # Instead of deleting the custom key store, consider using
    # DisconnectCustomKeyStore to disconnect it from AWS KMS. While the key
    # store is disconnected, you cannot create or use the CMKs in the key
    # store. But, you do not need to delete CMKs and you can reconnect a
    # disconnected custom key store at any time.
    #
    # If the operation succeeds, it returns a JSON object with no
    # properties.
    #
    # This operation is part of the [Custom Key Store feature][1] feature in
    # AWS KMS, which combines the convenience and extensive integration of
    # AWS KMS with the isolation and control of a single-tenant key store.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key
    #
    # @option params [required, String] :custom_key_store_id
    #   Enter the ID of the custom key store you want to delete. To find the
    #   ID of a custom key store, use the DescribeCustomKeyStores operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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
    # makes the specified customer master key (CMK) unusable. For more
    # information about importing key material into AWS KMS, see [Importing
    # Key Material][1] in the *AWS Key Management Service Developer Guide*.
    # You cannot perform this operation on a CMK in a different AWS account.
    #
    # When the specified CMK is in the `PendingDeletion` state, this
    # operation does not change the CMK's state. Otherwise, it changes the
    # CMK's state to `PendingImport`.
    #
    # After you delete key material, you can use ImportKeyMaterial to
    # reimport the same key material into the CMK.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   Identifies the CMK from which you are deleting imported key material.
    #   The `Origin` of the CMK must be `EXTERNAL`.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete imported key material
    #
    #   # The following example deletes the imported key material from the specified customer master key (CMK).
    #
    #   resp = client.delete_imported_key_material({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose imported key material you are deleting. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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
    # region.
    #
    # This operation is part of the [Custom Key Store feature][1] feature in
    # AWS KMS, which combines the convenience and extensive integration of
    # AWS KMS with the isolation and control of a single-tenant key store.
    #
    # By default, this operation returns information about all custom key
    # stores in the account and region. To get only information about a
    # particular custom key store, use either the `CustomKeyStoreName` or
    # `CustomKeyStoreId` parameter (but not both).
    #
    # To determine whether the custom key store is connected to its AWS
    # CloudHSM cluster, use the `ConnectionState` element in the response.
    # If an attempt to connect the custom key store failed, the
    # `ConnectionState` value is `FAILED` and the `ConnectionErrorCode`
    # element in the response indicates the cause of the failure. For help
    # interpreting the `ConnectionErrorCode`, see CustomKeyStoresListEntry.
    #
    # Custom key stores have a `DISCONNECTED` connection state if the key
    # store has never been connected or you use the DisconnectCustomKeyStore
    # operation to disconnect it. If your custom key store state is
    # `CONNECTED` but you are having trouble using it, make sure that its
    # associated AWS CloudHSM cluster is active and contains the minimum
    # number of HSMs required for the operation, if any.
    #
    # For help repairing your custom key store, see the [Troubleshooting
    # Custom Key Stores][2] topic in the *AWS Key Management Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html
    #
    # @option params [String] :custom_key_store_id
    #   Gets only information about the specified custom key store. Enter the
    #   key store ID.
    #
    #   By default, this operation gets information about all custom key
    #   stores in the account and region. To limit the output to a particular
    #   custom key store, you can use either the `CustomKeyStoreId` or
    #   `CustomKeyStoreName` parameter, but not both.
    #
    # @option params [String] :custom_key_store_name
    #   Gets only information about the specified custom key store. Enter the
    #   friendly name of the custom key store.
    #
    #   By default, this operation gets information about all custom key
    #   stores in the account and region. To limit the output to a particular
    #   custom key store, you can use either the `CustomKeyStoreId` or
    #   `CustomKeyStoreName` parameter, but not both.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
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
    #   resp.custom_key_stores[0].connection_error_code #=> String, one of "INVALID_CREDENTIALS", "CLUSTER_NOT_FOUND", "NETWORK_ERRORS", "INTERNAL_ERROR", "INSUFFICIENT_CLOUDHSM_HSMS", "USER_LOCKED_OUT"
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

    # Provides detailed information about the specified customer master key
    # (CMK).
    #
    # You can use `DescribeKey` on a predefined AWS alias, that is, an AWS
    # alias with no key ID. When you do, AWS KMS associates the alias with
    # an [AWS managed CMK][1] and returns its `KeyId` and `Arn` in the
    # response.
    #
    # To perform this operation on a CMK in a different AWS account, specify
    # the key ARN or alias ARN in the value of the KeyId parameter.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
    #
    # @option params [required, String] :key_id
    #   Describes the specified customer master key (CMK).
    #
    #   If you specify a predefined AWS alias (an AWS alias with no key ID),
    #   KMS associates the alias with an [AWS managed CMK][1] and returns its
    #   `KeyId` and `Arn` in the response.
    #
    #   To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
    #   name, or alias ARN. When using an alias name, prefix it with
    #   `"alias/"`. To specify a CMK in a different AWS account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #   To get the alias name and alias ARN, use ListAliases.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #
    # @return [Types::DescribeKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKeyResponse#key_metadata #key_metadata} => Types::KeyMetadata
    #
    #
    # @example Example: To obtain information about a customer master key (CMK)
    #
    #   # The following example returns information (metadata) about the specified CMK.
    #
    #   resp = client.describe_key({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK that you want information about. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333", 
    #       arn: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       creation_date: Time.parse("2017-07-05T14:04:55-07:00"), 
    #       description: "", 
    #       enabled: true, 
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", 
    #       key_manager: "CUSTOMER", 
    #       key_state: "Enabled", 
    #       key_usage: "ENCRYPT_DECRYPT", 
    #       origin: "AWS_KMS", 
    #     }, # An object that contains information about the specified CMK.
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
    #   resp.key_metadata.key_usage #=> String, one of "ENCRYPT_DECRYPT"
    #   resp.key_metadata.key_state #=> String, one of "Enabled", "Disabled", "PendingDeletion", "PendingImport", "Unavailable"
    #   resp.key_metadata.deletion_date #=> Time
    #   resp.key_metadata.valid_to #=> Time
    #   resp.key_metadata.origin #=> String, one of "AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM"
    #   resp.key_metadata.custom_key_store_id #=> String
    #   resp.key_metadata.cloud_hsm_cluster_id #=> String
    #   resp.key_metadata.expiration_model #=> String, one of "KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"
    #   resp.key_metadata.key_manager #=> String, one of "AWS", "CUSTOMER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DescribeKey AWS API Documentation
    #
    # @overload describe_key(params = {})
    # @param [Hash] params ({})
    def describe_key(params = {}, options = {})
      req = build_request(:describe_key, params)
      req.send_request(options)
    end

    # Sets the state of a customer master key (CMK) to disabled, thereby
    # preventing its use for cryptographic operations. You cannot perform
    # this operation on a CMK in a different AWS account.
    #
    # For more information about how key state affects the use of a CMK, see
    # [How Key State Affects the Use of a Customer Master Key][1] in the <i>
    # <i>AWS Key Management Service Developer Guide</i> </i>.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][1]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disable a customer master key (CMK)
    #
    #   # The following example disables the specified CMK.
    #
    #   resp = client.disable_key({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK to disable. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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
    # customer master key (CMK). You cannot perform this operation on a CMK
    # in a different AWS account.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disable automatic rotation of key material
    #
    #   # The following example disables automatic annual rotation of the key material for the specified CMK.
    #
    #   resp = client.disable_key_rotation({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose key material will no longer be rotated. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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

    # Disconnects the [custom key store][1] from its associated AWS CloudHSM
    # cluster. While a custom key store is disconnected, you can manage the
    # custom key store and its customer master keys (CMKs), but you cannot
    # create or use CMKs in the custom key store. You can reconnect the
    # custom key store at any time.
    #
    # <note markdown="1"> While a custom key store is disconnected, all attempts to create
    # customer master keys (CMKs) in the custom key store or to use existing
    # CMKs in cryptographic operations will fail. This action can prevent
    # users from storing and accessing sensitive data.
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
    # AWS KMS, which combines the convenience and extensive integration of
    # AWS KMS with the isolation and control of a single-tenant key store.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #
    # @option params [required, String] :custom_key_store_id
    #   Enter the ID of the custom key store you want to disconnect. To find
    #   the ID of a custom key store, use the DescribeCustomKeyStores
    #   operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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

    # Sets the key state of a customer master key (CMK) to enabled. This
    # allows you to use the CMK for cryptographic operations. You cannot
    # perform this operation on a CMK in a different AWS account.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][1]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To enable a customer master key (CMK)
    #
    #   # The following example enables the specified CMK.
    #
    #   resp = client.enable_key({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK to enable. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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
    # customer master key (CMK). You cannot perform this operation on a CMK
    # in a different AWS account.
    #
    # You cannot enable automatic rotation of CMKs with imported key
    # material or CMKs in a [custom key store][2].
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][3]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To enable automatic rotation of key material
    #
    #   # The following example enables automatic annual rotation of the key material for the specified CMK.
    #
    #   resp = client.enable_key_rotation({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose key material will be rotated annually. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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

    # Encrypts plaintext into ciphertext by using a customer master key
    # (CMK). The `Encrypt` operation has two primary use cases:
    #
    # * You can encrypt up to 4 kilobytes (4096 bytes) of arbitrary data
    #   such as an RSA key, a database password, or other sensitive
    #   information.
    #
    # * You can use the `Encrypt` operation to move encrypted data from one
    #   AWS region to another. In the first region, generate a data key and
    #   use the plaintext key to encrypt the data. Then, in the new region,
    #   call the `Encrypt` method on same plaintext data key. Now, you can
    #   safely move the encrypted data and encrypted data key to the new
    #   region, and decrypt in the new region when necessary.
    #
    # You don't need use this operation to encrypt a data key within a
    # region. The GenerateDataKey and GenerateDataKeyWithoutPlaintext
    # operations return an encrypted data key.
    #
    # Also, you don't need to use this operation to encrypt data in your
    # application. You can use the plaintext and encrypted data keys that
    # the `GenerateDataKey` operation returns.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][1]
    # in the *AWS Key Management Service Developer Guide*.
    #
    # To perform this operation on a CMK in a different AWS account, specify
    # the key ARN or alias ARN in the value of the KeyId parameter.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
    #   name, or alias ARN. When using an alias name, prefix it with
    #   `"alias/"`. To specify a CMK in a different AWS account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #   To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [required, String, IO] :plaintext
    #   Data to be encrypted.
    #
    # @option params [Hash<String,String>] :encryption_context
    #   Name-value pair that specifies the encryption context to be used for
    #   authenticated encryption. If used here, the same value must be
    #   supplied to the `Decrypt` API or decryption will fail. For more
    #   information, see [Encryption Context][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #
    # @return [Types::EncryptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EncryptResponse#ciphertext_blob #ciphertext_blob} => String
    #   * {Types::EncryptResponse#key_id #key_id} => String
    #
    #
    # @example Example: To encrypt data
    #
    #   # The following example encrypts data with the specified customer master key (CMK).
    #
    #   resp = client.encrypt({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK to use for encryption. You can use the key ID or Amazon Resource Name (ARN) of the CMK, or the name or ARN of an alias that refers to the CMK.
    #     plaintext: "<binary data>", # The data to encrypt.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: "<binary data>", # The encrypted data (ciphertext).
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the CMK that was used to encrypt the data.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.ciphertext_blob #=> String
    #   resp.key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/Encrypt AWS API Documentation
    #
    # @overload encrypt(params = {})
    # @param [Hash] params ({})
    def encrypt(params = {}, options = {})
      req = build_request(:encrypt, params)
      req.send_request(options)
    end

    # Generates a unique data key. This operation returns a plaintext copy
    # of the data key and a copy that is encrypted under a customer master
    # key (CMK) that you specify. You can use the plaintext key to encrypt
    # your data outside of KMS and store the encrypted data key with the
    # encrypted data.
    #
    # `GenerateDataKey` returns a unique data key for each request. The
    # bytes in the key are not related to the caller or CMK that is used to
    # encrypt the data key.
    #
    # To generate a data key, you need to specify the customer master key
    # (CMK) that will be used to encrypt the data key. You must also specify
    # the length of the data key using either the `KeySpec` or
    # `NumberOfBytes` field (but not both). For common key lengths (128-bit
    # and 256-bit symmetric keys), we recommend that you use `KeySpec`. To
    # perform this operation on a CMK in a different AWS account, specify
    # the key ARN or alias ARN in the value of the KeyId parameter.
    #
    # You will find the plaintext copy of the data key in the `Plaintext`
    # field of the response, and the encrypted copy of the data key in the
    # `CiphertextBlob` field.
    #
    # We recommend that you use the following pattern to encrypt data
    # locally in your application:
    #
    # 1.  Use the `GenerateDataKey` operation to get a data encryption key.
    #
    # 2.  Use the plaintext data key (returned in the `Plaintext` field of
    #     the response) to encrypt data locally, then erase the plaintext
    #     data key from memory.
    #
    # 3.  Store the encrypted data key (returned in the `CiphertextBlob`
    #     field of the response) alongside the locally encrypted data.
    #
    # To decrypt data locally:
    #
    # 1.  Use the Decrypt operation to decrypt the encrypted data key. The
    #     operation returns a plaintext copy of the data key.
    #
    # 2.  Use the plaintext data key to decrypt data locally, then erase the
    #     plaintext data key from memory.
    #
    # To get only an encrypted copy of the data key, use
    # GenerateDataKeyWithoutPlaintext. To get a cryptographically secure
    # random byte string, use GenerateRandom.
    #
    # You can use the optional encryption context to add additional security
    # to your encryption operation. When you specify an `EncryptionContext`
    # in the `GenerateDataKey` operation, you must specify the same
    # encryption context (a case-sensitive exact match) in your request to
    # Decrypt the data key. Otherwise, the request to decrypt fails with an
    # `InvalidCiphertextException`. For more information, see [Encryption
    # Context][1] in the <i> <i>AWS Key Management Service Developer
    # Guide</i> </i>.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   An identifier for the CMK that encrypts the data key.
    #
    #   To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
    #   name, or alias ARN. When using an alias name, prefix it with
    #   `"alias/"`. To specify a CMK in a different AWS account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #   To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [Hash<String,String>] :encryption_context
    #   A set of key-value pairs that represents additional authenticated
    #   data.
    #
    #   For more information, see [Encryption Context][1] in the *AWS Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context
    #
    # @option params [Integer] :number_of_bytes
    #   The length of the data key in bytes. For example, use the value 64 to
    #   generate a 512-bit data key (64 bytes is 512 bits). For common key
    #   lengths (128-bit and 256-bit symmetric keys), we recommend that you
    #   use the `KeySpec` field instead of this one.
    #
    # @option params [String] :key_spec
    #   The length of the data key. Use `AES_128` to generate a 128-bit
    #   symmetric key, or `AES_256` to generate a 256-bit symmetric key.
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
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
    #   # unencrypted (plainext) data key, and the other is the data key encrypted with the specified customer master key (CMK).
    #
    #   resp = client.generate_data_key({
    #     key_id: "alias/ExampleAlias", # The identifier of the CMK to use to encrypt the data key. You can use the key ID or Amazon Resource Name (ARN) of the CMK, or the name or ARN of an alias that refers to the CMK.
    #     key_spec: "AES_256", # Specifies the type of data key to return.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: "<binary data>", # The encrypted data key.
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the CMK that was used to encrypt the data key.
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

    # Generates a unique data key. This operation returns a data key that is
    # encrypted under a customer master key (CMK) that you specify.
    # `GenerateDataKeyWithoutPlaintext` is identical to GenerateDataKey
    # except that returns only the encrypted copy of the data key.
    #
    # Like `GenerateDataKey`, `GenerateDataKeyWithoutPlaintext` returns a
    # unique data key for each request. The bytes in the key are not related
    # to the caller or CMK that is used to encrypt the data key.
    #
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
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][1]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   The identifier of the customer master key (CMK) that encrypts the data
    #   key.
    #
    #   To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
    #   name, or alias ARN. When using an alias name, prefix it with
    #   `"alias/"`. To specify a CMK in a different AWS account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #   To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [Hash<String,String>] :encryption_context
    #   A set of key-value pairs that represents additional authenticated
    #   data.
    #
    #   For more information, see [Encryption Context][1] in the *AWS Key
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
    #   For more information, see [Grant Tokens][1] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
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
    #   # encrypted with the specified customer master key (CMK).
    #
    #   resp = client.generate_data_key_without_plaintext({
    #     key_id: "alias/ExampleAlias", # The identifier of the CMK to use to encrypt the data key. You can use the key ID or Amazon Resource Name (ARN) of the CMK, or the name or ARN of an alias that refers to the CMK.
    #     key_spec: "AES_256", # Specifies the type of data key to return.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: "<binary data>", # The encrypted data key.
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the CMK that was used to encrypt the data key.
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
    # By default, the random byte string is generated in AWS KMS. To
    # generate the byte string in the AWS CloudHSM cluster that is
    # associated with a [custom key store][1], specify the custom key store
    # ID.
    #
    # For more information about entropy and random number generation, see
    # the [AWS Key Management Service Cryptographic Details][2] whitepaper.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf
    #
    # @option params [Integer] :number_of_bytes
    #   The length of the byte string.
    #
    # @option params [String] :custom_key_store_id
    #   Generates the random byte string in the AWS CloudHSM cluster that is
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
    #   # The following example uses AWS KMS to generate 32 bytes of random data.
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

    # Gets a key policy attached to the specified customer master key (CMK).
    # You cannot perform this operation on a CMK in a different AWS account.
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
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
    #   # The following example retrieves the key policy for the specified customer master key (CMK).
    #
    #   resp = client.get_key_policy({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose key policy you want to retrieve. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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
    # key material][1] is enabled for the specified customer master key
    # (CMK).
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    # * Disabled: The key rotation status does not change when you disable a
    #   CMK. However, while the CMK is disabled, AWS KMS does not rotate the
    #   backing key.
    #
    # * Pending deletion: While a CMK is pending deletion, its key rotation
    #   status is `false` and AWS KMS does not rotate the backing key. If
    #   you cancel the deletion, the original key rotation status is
    #   restored.
    #
    # To perform this operation on a CMK in a different AWS account, specify
    # the key ARN in the value of the `KeyId` parameter.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To
    #   specify a CMK in a different AWS account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @return [Types::GetKeyRotationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyRotationStatusResponse#key_rotation_enabled #key_rotation_enabled} => Boolean
    #
    #
    # @example Example: To retrieve the rotation status for a customer master key (CMK)
    #
    #   # The following example retrieves the status of automatic annual rotation of the key material for the specified CMK.
    #
    #   resp = client.get_key_rotation_status({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose key material rotation status you want to retrieve. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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

    # Returns the items you need in order to import key material into AWS
    # KMS from your existing key management infrastructure. For more
    # information about importing key material into AWS KMS, see [Importing
    # Key Material][1] in the *AWS Key Management Service Developer Guide*.
    #
    # You must specify the key ID of the customer master key (CMK) into
    # which you will import key material. This CMK's `Origin` must be
    # `EXTERNAL`. You must also specify the wrapping algorithm and type of
    # wrapping key (public key) that you will use to encrypt the key
    # material. You cannot perform this operation on a CMK in a different
    # AWS account.
    #
    # This operation returns a public key and an import token. Use the
    # public key to encrypt the key material. Store the import token to send
    # with a subsequent ImportKeyMaterial request. The public key and import
    # token from the same response must be used together. These items are
    # valid for 24 hours. When they expire, they cannot be used for a
    # subsequent ImportKeyMaterial request. To get new ones, send another
    # `GetParametersForImport` request.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   The identifier of the CMK into which you will import key material. The
    #   CMK's `Origin` must be `EXTERNAL`.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [required, String] :wrapping_algorithm
    #   The algorithm you will use to encrypt the key material before
    #   importing it with ImportKeyMaterial. For more information, see
    #   [Encrypt the Key Material][1] in the *AWS Key Management Service
    #   Developer Guide*.
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
    # @example Example: To retrieve the public key and import token for a customer master key (CMK)
    #
    #   # The following example retrieves the public key and import token for the specified CMK.
    #
    #   resp = client.get_parameters_for_import({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK for which to retrieve the public key and import token. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
    #     wrapping_algorithm: "RSAES_OAEP_SHA_1", # The algorithm that you will use to encrypt the key material before importing it.
    #     wrapping_key_spec: "RSA_2048", # The type of wrapping key (public key) to return in the response.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     import_token: "<binary data>", # The import token to send with a subsequent ImportKeyMaterial request.
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the CMK for which you are retrieving the public key and import token. This is the same CMK specified in the request.
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

    # Imports key material into an existing AWS KMS customer master key
    # (CMK) that was created without key material. You cannot perform this
    # operation on a CMK in a different AWS account. For more information
    # about creating CMKs with no key material and then importing key
    # material, see [Importing Key Material][1] in the *AWS Key Management
    # Service Developer Guide*.
    #
    # Before using this operation, call GetParametersForImport. Its response
    # includes a public key and an import token. Use the public key to
    # encrypt the key material. Then, submit the import token from the same
    # `GetParametersForImport` response.
    #
    # When calling this operation, you must specify the following values:
    #
    # * The key ID or key ARN of a CMK with no key material. Its `Origin`
    #   must be `EXTERNAL`.
    #
    #   To create a CMK with no key material, call CreateKey and set the
    #   value of its `Origin` parameter to `EXTERNAL`. To get the `Origin`
    #   of a CMK, call DescribeKey.)
    #
    # * The encrypted key material. To get the public key to encrypt the key
    #   material, call GetParametersForImport.
    #
    # * The import token that GetParametersForImport returned. This token
    #   and the public key used to encrypt the key material must have come
    #   from the same response.
    #
    # * Whether the key material expires and if so, when. If you set an
    #   expiration date, you can change it only by reimporting the same key
    #   material and specifying a new expiration date. If the key material
    #   expires, AWS KMS deletes the key material and the CMK becomes
    #   unusable. To use the CMK again, you must reimport the same key
    #   material.
    #
    # When this operation is successful, the key state of the CMK changes
    # from `PendingImport` to `Enabled`, and you can use the CMK. After you
    # successfully import key material into a CMK, you can reimport the same
    # key material into that CMK, but you cannot import different key
    # material.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   The identifier of the CMK to import the key material into. The CMK's
    #   `Origin` must be `EXTERNAL`.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [required, String, IO] :import_token
    #   The import token that you received in the response to a previous
    #   GetParametersForImport request. It must be from the same response that
    #   contained the public key that you used to encrypt the key material.
    #
    # @option params [required, String, IO] :encrypted_key_material
    #   The encrypted key material to import. It must be encrypted with the
    #   public key that you received in the response to a previous
    #   GetParametersForImport request, using the wrapping algorithm that you
    #   specified in that request.
    #
    # @option params [Time,DateTime,Date,Integer,String] :valid_to
    #   The time at which the imported key material expires. When the key
    #   material expires, AWS KMS deletes the key material and the CMK becomes
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
    # @example Example: To import key material into a customer master key (CMK)
    #
    #   # The following example imports key material into the specified CMK.
    #
    #   resp = client.import_key_material({
    #     encrypted_key_material: "<binary data>", # The encrypted key material to import.
    #     expiration_model: "KEY_MATERIAL_DOES_NOT_EXPIRE", # A value that specifies whether the key material expires.
    #     import_token: "<binary data>", # The import token that you received in the response to a previous GetParametersForImport request.
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK to import the key material into. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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

    # Gets a list of aliases in the caller's AWS account and region. You
    # cannot list aliases in other accounts. For more information about
    # aliases, see CreateAlias.
    #
    # By default, the ListAliases command returns all aliases in the account
    # and region. To get only the aliases that point to a particular
    # customer master key (CMK), use the `KeyId` parameter.
    #
    # The `ListAliases` response can include aliases that you created and
    # associated with your customer managed CMKs, and aliases that AWS
    # created and associated with AWS managed CMKs in your account. You can
    # recognize AWS aliases because their names have the format
    # `aws/<service-name>`, such as `aws/dynamodb`.
    #
    # The response might also include aliases that have no `TargetKeyId`
    # field. These are predefined aliases that AWS has created but has not
    # yet associated with a CMK. Aliases that AWS creates in your account,
    # including predefined aliases, do not count against your [AWS KMS
    # aliases limit][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit
    #
    # @option params [String] :key_id
    #   Lists only aliases that refer to the specified CMK. The value of this
    #   parameter can be the ID or Amazon Resource Name (ARN) of a CMK in the
    #   caller's account and region. You cannot use an alias name or alias
    #   ARN in this value.
    #
    #   This parameter is optional. If you omit it, `ListAliases` returns all
    #   aliases in the account and region.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
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
    #     ], # A list of aliases, including the key ID of the customer master key (CMK) that each alias refers to.
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

    # Gets a list of all grants for the specified customer master key (CMK).
    #
    # To perform this operation on a CMK in a different AWS account, specify
    # the key ARN in the value of the `KeyId` parameter.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
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
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To
    #   specify a CMK in a different AWS account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @return [Types::ListGrantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGrantsResponse#grants #grants} => Array&lt;Types::GrantListEntry&gt;
    #   * {Types::ListGrantsResponse#next_marker #next_marker} => String
    #   * {Types::ListGrantsResponse#truncated #truncated} => Boolean
    #
    #
    # @example Example: To list grants for a customer master key (CMK)
    #
    #   # The following example lists grants for the specified CMK.
    #
    #   resp = client.list_grants({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose grants you want to list. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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
    #   resp.grants[0].operations[0] #=> String, one of "Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "CreateGrant", "RetireGrant", "DescribeKey"
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

    # Gets the names of the key policies that are attached to a customer
    # master key (CMK). This operation is designed to get policy names that
    # you can use in a GetKeyPolicy operation. However, the only valid
    # policy name is `default`. You cannot perform this operation on a CMK
    # in a different AWS account.
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
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
    #
    # @example Example: To list key policies for a customer master key (CMK)
    #
    #   # The following example lists key policies for the specified CMK.
    #
    #   resp = client.list_key_policies({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose key policies you want to list. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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

    # Gets a list of all customer master keys (CMKs) in the caller's AWS
    # account and region.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
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
    #
    # @example Example: To list customer master keys (CMKs)
    #
    #   # The following example lists CMKs.
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
    #     ], # A list of CMKs, including the key ID and Amazon Resource Name (ARN) of each one.
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

    # Returns a list of all tags for the specified customer master key
    # (CMK).
    #
    # You cannot perform this operation on a CMK in a different AWS account.
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
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
    # @example Example: To list tags for a customer master key (CMK)
    #
    #   # The following example lists tags for a CMK.
    #
    #   resp = client.list_resource_tags({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose tags you are listing. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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

    # Returns a list of all grants for which the grant's
    # `RetiringPrincipal` matches the one specified.
    #
    # A typical use is to list all grants that you are able to retire. To
    # retire a grant, use RetireGrant.
    #
    # @option params [Integer] :limit
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, AWS KMS does not return more than the
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
    #   The retiring principal for which to list grants.
    #
    #   To specify the retiring principal, use the [Amazon Resource Name
    #   (ARN)][1] of an AWS principal. Valid AWS principals include AWS
    #   accounts (root), IAM users, federated users, and assumed role users.
    #   For examples of the ARN syntax for specifying a principal, see [AWS
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
    #     retiring_principal: "arn:aws:iam::111122223333:role/ExampleRole", # The retiring principal whose grants you want to list. Use the Amazon Resource Name (ARN) of an AWS principal such as an AWS account (root), IAM user, federated user, or assumed role user.
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
    #   resp.grants[0].operations[0] #=> String, one of "Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "CreateGrant", "RetireGrant", "DescribeKey"
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

    # Attaches a key policy to the specified customer master key (CMK). You
    # cannot perform this operation on a CMK in a different AWS account.
    #
    # For more information about key policies, see [Key Policies][1] in the
    # *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [required, String] :policy_name
    #   The name of the key policy. The only valid value is `default`.
    #
    # @option params [required, String] :policy
    #   The key policy to attach to the CMK.
    #
    #   The key policy must meet the following criteria:
    #
    #   * If you don't set `BypassPolicyLockoutSafetyCheck` to true, the key
    #     policy must allow the principal that is making the `PutKeyPolicy`
    #     request to make a subsequent `PutKeyPolicy` request on the CMK. This
    #     reduces the risk that the CMK becomes unmanageable. For more
    #     information, refer to the scenario in the [Default Key Policy][1]
    #     section of the *AWS Key Management Service Developer Guide*.
    #
    #   * Each statement in the key policy must contain one or more
    #     principals. The principals in the key policy must exist and be
    #     visible to AWS KMS. When you create a new AWS principal (for
    #     example, an IAM user or role), you might need to enforce a delay
    #     before including the new principal in a key policy because the new
    #     principal might not be immediately visible to AWS KMS. For more
    #     information, see [Changes that I make are not always immediately
    #     visible][2] in the *AWS Identity and Access Management User Guide*.
    #
    #   The key policy size limit is 32 kilobytes (32768 bytes).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
    #
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   A flag to indicate whether to bypass the key policy lockout safety
    #   check.
    #
    #   Setting this value to true increases the risk that the CMK becomes
    #   unmanageable. Do not set this value to true indiscriminately.
    #
    #    For more information, refer to the scenario in the [Default Key
    #   Policy][1] section in the *AWS Key Management Service Developer
    #   Guide*.
    #
    #   Use this parameter only when you intend to prevent the principal that
    #   is making the request from making a subsequent `PutKeyPolicy` request
    #   on the CMK.
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
    # @example Example: To attach a key policy to a customer master key (CMK)
    #
    #   # The following example attaches a key policy to the specified CMK.
    #
    #   resp = client.put_key_policy({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK to attach the key policy to. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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

    # Encrypts data on the server side with a new customer master key (CMK)
    # without exposing the plaintext of the data on the client side. The
    # data is first decrypted and then reencrypted. You can also use this
    # operation to change the encryption context of a ciphertext.
    #
    # You can reencrypt data using CMKs in different AWS accounts.
    #
    # Unlike other operations, `ReEncrypt` is authorized twice, once as
    # `ReEncryptFrom` on the source CMK and once as `ReEncryptTo` on the
    # destination CMK. We recommend that you include the `"kms:ReEncrypt*"`
    # permission in your [key policies][1] to permit reencryption from or to
    # the CMK. This permission is automatically included in the key policy
    # when you create a CMK through the console. But you must include it
    # manually when you create a CMK programmatically or when you set a key
    # policy with the PutKeyPolicy operation.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String, IO] :ciphertext_blob
    #   Ciphertext of the data to reencrypt.
    #
    # @option params [Hash<String,String>] :source_encryption_context
    #   Encryption context used to encrypt and decrypt the data specified in
    #   the `CiphertextBlob` parameter.
    #
    # @option params [required, String] :destination_key_id
    #   A unique identifier for the CMK that is used to reencrypt the data.
    #
    #   To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
    #   name, or alias ARN. When using an alias name, prefix it with
    #   `"alias/"`. To specify a CMK in a different AWS account, you must use
    #   the key ARN or alias ARN.
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
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #   To get the alias name and alias ARN, use ListAliases.
    #
    # @option params [Hash<String,String>] :destination_encryption_context
    #   Encryption context to use when the data is reencrypted.
    #
    # @option params [Array<String>] :grant_tokens
    #   A list of grant tokens.
    #
    #   For more information, see [Grant Tokens][1] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
    #
    # @return [Types::ReEncryptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReEncryptResponse#ciphertext_blob #ciphertext_blob} => String
    #   * {Types::ReEncryptResponse#source_key_id #source_key_id} => String
    #   * {Types::ReEncryptResponse#key_id #key_id} => String
    #
    #
    # @example Example: To reencrypt data
    #
    #   # The following example reencrypts data with the specified CMK.
    #
    #   resp = client.re_encrypt({
    #     ciphertext_blob: "<binary data>", # The data to reencrypt.
    #     destination_key_id: "0987dcba-09fe-87dc-65ba-ab0987654321", # The identifier of the CMK to use to reencrypt the data. You can use the key ID or Amazon Resource Name (ARN) of the CMK, or the name or ARN of an alias that refers to the CMK.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: "<binary data>", # The reencrypted data.
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321", # The ARN of the CMK that was used to reencrypt the data.
    #     source_key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the CMK that was used to originally encrypt the data.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.re_encrypt({
    #     ciphertext_blob: "data", # required
    #     source_encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue",
    #     },
    #     destination_key_id: "KeyIdType", # required
    #     destination_encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue",
    #     },
    #     grant_tokens: ["GrantTokenType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.ciphertext_blob #=> String
    #   resp.source_key_id #=> String
    #   resp.key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ReEncrypt AWS API Documentation
    #
    # @overload re_encrypt(params = {})
    # @param [Hash] params ({})
    def re_encrypt(params = {}, options = {})
      req = build_request(:re_encrypt, params)
      req.send_request(options)
    end

    # Retires a grant. To clean up, you can retire a grant when you're done
    # using it. You should revoke a grant when you intend to actively deny
    # operations that depend on it. The following are permitted to call this
    # API:
    #
    # * The AWS account (root user) under which the grant was created
    #
    # * The `RetiringPrincipal`, if present in the grant
    #
    # * The `GranteePrincipal`, if `RetireGrant` is an operation specified
    #   in the grant
    #
    # You must identify the grant to retire by its grant token or by a
    # combination of the grant ID and the Amazon Resource Name (ARN) of the
    # customer master key (CMK). A grant token is a unique variable-length
    # base64-encoded string. A grant ID is a 64 character unique identifier
    # of a grant. The CreateGrant operation returns both.
    #
    # @option params [String] :grant_token
    #   Token that identifies the grant to be retired.
    #
    # @option params [String] :key_id
    #   The Amazon Resource Name (ARN) of the CMK associated with the grant.
    #
    #   For example:
    #   `arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    # @option params [String] :grant_id
    #   Unique identifier of the grant to retire. The grant ID is returned in
    #   the response to a `CreateGrant` operation.
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
    #     key_id: "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The Amazon Resource Name (ARN) of the customer master key (CMK) associated with the grant.
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

    # Revokes the specified grant for the specified customer master key
    # (CMK). You can revoke a grant to actively deny operations that depend
    # on it.
    #
    # To perform this operation on a CMK in a different AWS account, specify
    # the key ARN in the value of the `KeyId` parameter.
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key associated with the
    #   grant.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To
    #   specify a CMK in a different AWS account, you must use the key ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [required, String] :grant_id
    #   Identifier of the grant to be revoked.
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
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the customer master key (CMK) associated with the grant. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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

    # Schedules the deletion of a customer master key (CMK). You may provide
    # a waiting period, specified in days, before deletion occurs. If you do
    # not provide a waiting period, the default period of 30 days is used.
    # When this operation is successful, the key state of the CMK changes to
    # `PendingDeletion`. Before the waiting period ends, you can use
    # CancelKeyDeletion to cancel the deletion of the CMK. After the waiting
    # period ends, AWS KMS deletes the CMK and all AWS KMS data associated
    # with it, including all aliases that refer to it.
    #
    # Deleting a CMK is a destructive and potentially dangerous operation.
    # When a CMK is deleted, all data that was encrypted under the CMK is
    # unrecoverable. To prevent the use of a CMK without deleting it, use
    # DisableKey.
    #
    # If you schedule deletion of a CMK from a [custom key store][1], when
    # the waiting period expires, `ScheduleKeyDeletion` deletes the CMK from
    # AWS KMS. Then AWS KMS makes a best effort to delete the key material
    # from the associated AWS CloudHSM cluster. However, you might need to
    # manually [delete the orphaned key material][2] from the cluster and
    # its backups.
    #
    # You cannot perform this operation on a CMK in a different AWS account.
    #
    # For more information about scheduling a CMK for deletion, see
    # [Deleting Customer Master Keys][3] in the *AWS Key Management Service
    # Developer Guide*.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][4]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html
    # [4]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   The unique identifier of the customer master key (CMK) to delete.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [Integer] :pending_window_in_days
    #   The waiting period, specified in number of days. After the waiting
    #   period ends, AWS KMS deletes the customer master key (CMK).
    #
    #   This value is optional. If you include a value, it must be between 7
    #   and 30, inclusive. If you do not include a value, it defaults to 30.
    #
    # @return [Types::ScheduleKeyDeletionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScheduleKeyDeletionResponse#key_id #key_id} => String
    #   * {Types::ScheduleKeyDeletionResponse#deletion_date #deletion_date} => Time
    #
    #
    # @example Example: To schedule a customer master key (CMK) for deletion
    #
    #   # The following example schedules the specified CMK for deletion.
    #
    #   resp = client.schedule_key_deletion({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK to schedule for deletion. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
    #     pending_window_in_days: 7, # The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the CMK.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     deletion_date: Time.parse("2016-12-17T16:00:00-08:00"), # The date and time after which AWS KMS deletes the CMK.
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", # The ARN of the CMK that is scheduled for deletion.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ScheduleKeyDeletion AWS API Documentation
    #
    # @overload schedule_key_deletion(params = {})
    # @param [Hash] params ({})
    def schedule_key_deletion(params = {}, options = {})
      req = build_request(:schedule_key_deletion, params)
      req.send_request(options)
    end

    # Adds or edits tags for a customer master key (CMK). You cannot perform
    # this operation on a CMK in a different AWS account.
    #
    # Each tag consists of a tag key and a tag value. Tag keys and tag
    # values are both required, but tag values can be empty (null) strings.
    #
    # You can only use a tag key once for each CMK. If you use the tag key
    # again, AWS KMS replaces the current tag value with the specified
    # value.
    #
    # For information about the rules that apply to tag keys and tag values,
    # see [User-Defined Tag Restrictions][1] in the *AWS Billing and Cost
    # Management User Guide*.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the CMK you are tagging.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags. Each tag consists of a tag key and a tag value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To tag a customer master key (CMK)
    #
    #   # The following example tags a CMK.
    #
    #   resp = client.tag_resource({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK you are tagging. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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

    # Removes the specified tags from the specified customer master key
    # (CMK). You cannot perform this operation on a CMK in a different AWS
    # account.
    #
    # To remove a tag, specify the tag key. To change the tag value of an
    # existing tag key, use TagResource.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][1]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the CMK from which you are removing tags.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [required, Array<String>] :tag_keys
    #   One or more tag keys. Specify only the tag keys, not the tag values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove tags from a customer master key (CMK)
    #
    #   # The following example removes tags from a CMK.
    #
    #   resp = client.untag_resource({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose tags you are removing.
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

    # Associates an existing alias with a different customer master key
    # (CMK). Each CMK can have multiple aliases, but the aliases must be
    # unique within the account and region. You cannot perform this
    # operation on an alias in a different AWS account.
    #
    # This operation works only on existing aliases. To change the alias of
    # a CMK to a new value, use CreateAlias to create a new alias and
    # DeleteAlias to delete the old alias.
    #
    # Because an alias is not a property of a CMK, you can create, update,
    # and delete the aliases of a CMK without affecting the CMK. Also,
    # aliases do not appear in the response from the DescribeKey operation.
    # To get the aliases of all CMKs in the account, use the ListAliases
    # operation.
    #
    # The alias name must begin with `alias/` followed by a name, such as
    # `alias/ExampleAlias`. It can contain only alphanumeric characters,
    # forward slashes (/), underscores (\_), and dashes (-). The alias name
    # cannot begin with `alias/aws/`. The `alias/aws/` prefix is reserved
    # for [AWS managed CMKs][1].
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][2]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :alias_name
    #   Specifies the name of the alias to change. This value must begin with
    #   `alias/` followed by the alias name, such as `alias/ExampleAlias`.
    #
    # @option params [required, String] :target_key_id
    #   Unique identifier of the customer master key (CMK) to be mapped to the
    #   alias. When the update operation completes, the alias will point to
    #   this CMK.
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    #   To verify that the alias is mapped to the correct CMK, use
    #   ListAliases.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update an alias
    #
    #   # The following example updates the specified alias to refer to the specified customer master key (CMK).
    #
    #   resp = client.update_alias({
    #     alias_name: "alias/ExampleAlias", # The alias to update.
    #     target_key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK that the alias will refer to after this operation succeeds. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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
    # Use the parameters of `UpdateCustomKeyStore` to edit your keystore
    # settings.
    #
    # * Use the **NewCustomKeyStoreName** parameter to change the friendly
    #   name of the custom key store to the value that you specify.
    #
    #
    #
    # * Use the **KeyStorePassword** parameter tell AWS KMS the current
    #   password of the [ `kmsuser` crypto user (CU)][1] in the associated
    #   AWS CloudHSM cluster. You can use this parameter to [fix connection
    #   failures][2] that occur when AWS KMS cannot log into the associated
    #   cluster because the `kmsuser` password has changed. This value does
    #   not change the password in the AWS CloudHSM cluster.
    #
    #
    #
    # * Use the **CloudHsmClusterId** parameter to associate the custom key
    #   store with a different, but related, AWS CloudHSM cluster. You can
    #   use this parameter to repair a custom key store if its AWS CloudHSM
    #   cluster becomes corrupted or is deleted, or when you need to create
    #   or restore a cluster from a backup.
    #
    # If the operation succeeds, it returns a JSON object with no
    # properties.
    #
    # This operation is part of the [Custom Key Store feature][3] feature in
    # AWS KMS, which combines the convenience and extensive integration of
    # AWS KMS with the isolation and control of a single-tenant key store.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser
    # [2]: https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-password
    # [3]: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html
    #
    # @option params [required, String] :custom_key_store_id
    #   Identifies the custom key store that you want to update. Enter the ID
    #   of the custom key store. To find the ID of a custom key store, use the
    #   DescribeCustomKeyStores operation.
    #
    # @option params [String] :new_custom_key_store_name
    #   Changes the friendly name of the custom key store to the value that
    #   you specify. The custom key store name must be unique in the AWS
    #   account.
    #
    # @option params [String] :key_store_password
    #   Enter the current password of the `kmsuser` crypto user (CU) in the
    #   AWS CloudHSM cluster that is associated with the custom key store.
    #
    #   This parameter tells AWS KMS the current password of the `kmsuser`
    #   crypto user (CU). It does not set or change the password of any users
    #   in the AWS CloudHSM cluster.
    #
    # @option params [String] :cloud_hsm_cluster_id
    #   Associates the custom key store with a related AWS CloudHSM cluster.
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

    # Updates the description of a customer master key (CMK). To see the
    # description of a CMK, use DescribeKey.
    #
    # You cannot perform this operation on a CMK in a different AWS account.
    #
    # The result of this operation varies with the key state of the CMK. For
    # details, see [How Key State Affects Use of a Customer Master Key][1]
    # in the *AWS Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @option params [required, String] :key_id
    #   A unique identifier for the customer master key (CMK).
    #
    #   Specify the key ID or the Amazon Resource Name (ARN) of the CMK.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.
    #
    # @option params [required, String] :description
    #   New description for the CMK.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update the description of a customer master key (CMK)
    #
    #   # The following example updates the description of the specified CMK.
    #
    #   resp = client.update_key_description({
    #     description: "Example description that indicates the intended use of this CMK.", # The updated description.
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab", # The identifier of the CMK whose description you are updating. You can use the key ID or the Amazon Resource Name (ARN) of the CMK.
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
      context[:gem_version] = '1.24.0'
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
