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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:secretsmanager)

module Aws::SecretsManager
  # An API client for SecretsManager.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SecretsManager::Client.new(
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

    @identifier = :secretsmanager

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
    add_plugin(Aws::Plugins::DefaultsMode)
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

    # Turns off automatic rotation, and if a rotation is currently in
    # progress, cancels the rotation.
    #
    # To turn on automatic rotation again, call RotateSecret.
    #
    # <note markdown="1"> If you cancel a rotation in progress, it can leave the `VersionStage`
    # labels in an unexpected state. Depending on the step of the rotation
    # in progress, you might need to remove the staging label `AWSPENDING`
    # from the partially created version, specified by the `VersionId`
    # response value. We recommend you also evaluate the partially rotated
    # new version to see if it should be deleted. You can delete a version
    # by removing all staging labels from it.
    #
    #  </note>
    #
    # <b>Required permissions: </b> `secretsmanager:CancelRotateSecret`. For
    # more information, see [ IAM policy actions for Secrets Manager][1] and
    # [Authentication and access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @return [Types::CancelRotateSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelRotateSecretResponse#arn #arn} => String
    #   * {Types::CancelRotateSecretResponse#name #name} => String
    #   * {Types::CancelRotateSecretResponse#version_id #version_id} => String
    #
    #
    # @example Example: To cancel scheduled rotation for a secret
    #
    #   # The following example shows how to cancel rotation for a secret. The operation sets the RotationEnabled field to false
    #   # and cancels all scheduled rotations. To resume scheduled rotations, you must re-enable rotation by calling the
    #   # rotate-secret operation.
    #
    #   resp = client.cancel_rotate_secret({
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "Name", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_rotate_secret({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/CancelRotateSecret AWS API Documentation
    #
    # @overload cancel_rotate_secret(params = {})
    # @param [Hash] params ({})
    def cancel_rotate_secret(params = {}, options = {})
      req = build_request(:cancel_rotate_secret, params)
      req.send_request(options)
    end

    # Creates a new secret. A *secret* is a set of credentials, such as a
    # user name and password, that you store in an encrypted form in Secrets
    # Manager. The secret also includes the connection information to access
    # a database or other service, which Secrets Manager doesn't encrypt. A
    # secret in Secrets Manager consists of both the protected secret data
    # and the important information needed to manage the secret.
    #
    # For information about creating a secret in the console, see [Create a
    # secret][1].
    #
    # To create a secret, you can provide the secret value to be encrypted
    # in either the `SecretString` parameter or the `SecretBinary`
    # parameter, but not both. If you include `SecretString` or
    # `SecretBinary` then Secrets Manager creates an initial secret version
    # and automatically attaches the staging label `AWSCURRENT` to it.
    #
    # If you don't specify an KMS encryption key, Secrets Manager uses the
    # Amazon Web Services managed key `aws/secretsmanager`. If this key
    # doesn't already exist in your account, then Secrets Manager creates
    # it for you automatically. All users and roles in the Amazon Web
    # Services account automatically have access to use
    # `aws/secretsmanager`. Creating `aws/secretsmanager` can result in a
    # one-time significant delay in returning the result.
    #
    # If the secret is in a different Amazon Web Services account from the
    # credentials calling the API, then you can't use `aws/secretsmanager`
    # to encrypt the secret, and you must create and use a customer managed
    # KMS key.
    #
    # <b>Required permissions: </b> `secretsmanager:CreateSecret`. For more
    # information, see [ IAM policy actions for Secrets Manager][2] and
    # [Authentication and access control in Secrets Manager][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_create-basic-secret.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [3]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :name
    #   The name of the new secret.
    #
    #   The secret name can contain ASCII letters, numbers, and the following
    #   characters: /\_+=.@-
    #
    #   Do not end your secret name with a hyphen followed by six characters.
    #   If you do so, you risk confusion and unexpected results when searching
    #   for a secret by partial ARN. Secrets Manager automatically adds a
    #   hyphen and six random characters after the secret name at the end of
    #   the ARN.
    #
    # @option params [String] :client_request_token
    #   If you include `SecretString` or `SecretBinary`, then Secrets Manager
    #   creates an initial version for the secret, and this parameter
    #   specifies the unique identifier for the new version.
    #
    #   <note markdown="1"> If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDKs to call this operation, then you can leave this
    #   parameter empty. The CLI or SDK generates a random UUID for you and
    #   includes it as the value for this parameter in the request. If you
    #   don't use the SDK and instead generate a raw HTTP request to the
    #   Secrets Manager service endpoint, then you must generate a
    #   `ClientRequestToken` yourself for the new version and include the
    #   value in the request.
    #
    #    </note>
    #
    #   This value helps ensure idempotency. Secrets Manager uses this value
    #   to prevent the accidental creation of duplicate versions if there are
    #   failures and retries during a rotation. We recommend that you generate
    #   a [UUID-type][1] value to ensure uniqueness of your versions within
    #   the specified secret.
    #
    #   * If the `ClientRequestToken` value isn't already associated with a
    #     version of the secret then a new version of the secret is created.
    #
    #   * If a version with this value already exists and the version
    #     `SecretString` and `SecretBinary` values are the same as those in
    #     the request, then the request is ignored.
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` and `SecretBinary` values are different from those in
    #     the request, then the request fails because you cannot modify an
    #     existing version. Instead, use PutSecretValue to create a new
    #     version.
    #
    #   This value becomes the `VersionId` of the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [String] :description
    #   The description of the secret.
    #
    # @option params [String] :kms_key_id
    #   The ARN, key ID, or alias of the KMS key that Secrets Manager uses to
    #   encrypt the secret value in the secret.
    #
    #   To use a KMS key in a different account, use the key ARN or the alias
    #   ARN.
    #
    #   If you don't specify this value, then Secrets Manager uses the key
    #   `aws/secretsmanager`. If that key doesn't yet exist, then Secrets
    #   Manager creates it for you automatically the first time it encrypts
    #   the secret value.
    #
    #   If the secret is in a different Amazon Web Services account from the
    #   credentials calling the API, then you can't use `aws/secretsmanager`
    #   to encrypt the secret, and you must create and use a customer managed
    #   KMS key.
    #
    # @option params [String, StringIO, File] :secret_binary
    #   The binary data to encrypt and store in the new version of the secret.
    #   We recommend that you store your binary data in a file and then pass
    #   the contents of the file as a parameter.
    #
    #   Either `SecretString` or `SecretBinary` must have a value, but not
    #   both.
    #
    #   This parameter is not available in the Secrets Manager console.
    #
    # @option params [String] :secret_string
    #   The text data to encrypt and store in this new version of the secret.
    #   We recommend you use a JSON structure of key/value pairs for your
    #   secret value.
    #
    #   Either `SecretString` or `SecretBinary` must have a value, but not
    #   both.
    #
    #   If you create a secret by using the Secrets Manager console then
    #   Secrets Manager puts the protected secret text in only the
    #   `SecretString` parameter. The Secrets Manager console stores the
    #   information as a JSON structure of key/value pairs that a Lambda
    #   rotation function can parse.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to attach to the secret. Each tag is a key and value
    #   pair of strings in a JSON text string, for example:
    #
    #   `[\{"Key":"CostCenter","Value":"12345"\},\{"Key":"environment","Value":"production"\}]`
    #
    #   Secrets Manager tag key names are case sensitive. A tag with the key
    #   "ABC" is a different tag from one with key "abc".
    #
    #   If you check tags in permissions policies as part of your security
    #   strategy, then adding or removing a tag can change permissions. If the
    #   completion of this operation would result in you losing your
    #   permissions for this secret, then Secrets Manager blocks the operation
    #   and returns an `Access Denied` error. For more information, see
    #   [Control access to secrets using tags][1] and [Limit access to
    #   identities with tags that match secrets' tags][2].
    #
    #   For information about how to format a JSON parameter for the various
    #   command line tool environments, see [Using JSON for Parameters][3]. If
    #   your command-line tool or SDK requires quotation marks around the
    #   parameter, you should use single quotes to avoid confusion with the
    #   double quotes required in the JSON text.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of tags per secret: 50
    #
    #   * Maximum key length: 127 Unicode characters in UTF-8
    #
    #   * Maximum value length: 255 Unicode characters in UTF-8
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use the `aws:` prefix in your tag names or values because
    #     Amazon Web Services reserves it for Amazon Web Services use. You
    #     can't edit or delete tag names or values with this prefix. Tags
    #     with this prefix do not count against your tags per secret limit.
    #
    #   * If you use your tagging schema across multiple services and
    #     resources, other services might have restrictions on allowed
    #     characters. Generally allowed characters: letters, spaces, and
    #     numbers representable in UTF-8, plus the following special
    #     characters: + - = . \_ : / @.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac
    #   [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2
    #   [3]: https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #
    # @option params [Array<Types::ReplicaRegionType>] :add_replica_regions
    #   A list of Regions and KMS keys to replicate secrets.
    #
    # @option params [Boolean] :force_overwrite_replica_secret
    #   Specifies whether to overwrite a secret with the same name in the
    #   destination Region.
    #
    # @return [Types::CreateSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecretResponse#arn #arn} => String
    #   * {Types::CreateSecretResponse#name #name} => String
    #   * {Types::CreateSecretResponse#version_id #version_id} => String
    #   * {Types::CreateSecretResponse#replication_status #replication_status} => Array&lt;Types::ReplicationStatusType&gt;
    #
    #
    # @example Example: To create a basic secret
    #
    #   # The following example shows how to create a secret. The credentials stored in the encrypted secret value are retrieved
    #   # from a file on disk named mycreds.json.
    #
    #   resp = client.create_secret({
    #     client_request_token: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #     description: "My test database secret created with the CLI", 
    #     name: "MyTestDatabaseSecret", 
    #     secret_string: "{\"username\":\"david\",\"password\":\"BnQw!XDWgaEeT9XGTT29\"}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #     version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_secret({
    #     name: "NameType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     description: "DescriptionType",
    #     kms_key_id: "KmsKeyIdType",
    #     secret_binary: "data",
    #     secret_string: "SecretStringType",
    #     tags: [
    #       {
    #         key: "TagKeyType",
    #         value: "TagValueType",
    #       },
    #     ],
    #     add_replica_regions: [
    #       {
    #         region: "RegionType",
    #         kms_key_id: "KmsKeyIdType",
    #       },
    #     ],
    #     force_overwrite_replica_secret: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #   resp.replication_status #=> Array
    #   resp.replication_status[0].region #=> String
    #   resp.replication_status[0].kms_key_id #=> String
    #   resp.replication_status[0].status #=> String, one of "InSync", "Failed", "InProgress"
    #   resp.replication_status[0].status_message #=> String
    #   resp.replication_status[0].last_accessed_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/CreateSecret AWS API Documentation
    #
    # @overload create_secret(params = {})
    # @param [Hash] params ({})
    def create_secret(params = {}, options = {})
      req = build_request(:create_secret, params)
      req.send_request(options)
    end

    # Deletes the resource-based permission policy attached to the secret.
    # To attach a policy to a secret, use PutResourcePolicy.
    #
    # <b>Required permissions: </b> `secretsmanager:DeleteResourcePolicy`.
    # For more information, see [ IAM policy actions for Secrets Manager][1]
    # and [Authentication and access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret to delete the attached resource-based
    #   policy for.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @return [Types::DeleteResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourcePolicyResponse#arn #arn} => String
    #   * {Types::DeleteResourcePolicyResponse#name #name} => String
    #
    #
    # @example Example: To delete the resource-based policy attached to a secret
    #
    #   # The following example shows how to delete the resource-based policy that is attached to a secret.
    #
    #   resp = client.delete_resource_policy({
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseMasterSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a secret and all of its versions. You can specify a recovery
    # window during which you can restore the secret. The minimum recovery
    # window is 7 days. The default recovery window is 30 days. Secrets
    # Manager attaches a `DeletionDate` stamp to the secret that specifies
    # the end of the recovery window. At the end of the recovery window,
    # Secrets Manager deletes the secret permanently.
    #
    # For information about deleting a secret in the console, see
    # [https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage\_delete-secret.html][1].
    #
    # Secrets Manager performs the permanent secret deletion at the end of
    # the waiting period as a background task with low priority. There is no
    # guarantee of a specific time after the recovery window for the
    # permanent delete to occur.
    #
    # At any time before recovery window ends, you can use RestoreSecret to
    # remove the `DeletionDate` and cancel the deletion of the secret.
    #
    # In a secret scheduled for deletion, you cannot access the encrypted
    # secret value. To access that information, first cancel the deletion
    # with RestoreSecret and then retrieve the information.
    #
    # <b>Required permissions: </b> `secretsmanager:DeleteSecret`. For more
    # information, see [ IAM policy actions for Secrets Manager][2] and
    # [Authentication and access control in Secrets Manager][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_delete-secret.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [3]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret to delete.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @option params [Integer] :recovery_window_in_days
    #   The number of days from 7 to 30 that Secrets Manager waits before
    #   permanently deleting the secret. You can't use both this parameter
    #   and `ForceDeleteWithoutRecovery` in the same call. If you don't use
    #   either, then Secrets Manager defaults to a 30 day recovery window.
    #
    # @option params [Boolean] :force_delete_without_recovery
    #   Specifies whether to delete the secret without any recovery window.
    #   You can't use both this parameter and `RecoveryWindowInDays` in the
    #   same call. If you don't use either, then Secrets Manager defaults to
    #   a 30 day recovery window.
    #
    #   Secrets Manager performs the actual deletion with an asynchronous
    #   background process, so there might be a short delay before the secret
    #   is permanently deleted. If you delete a secret and then immediately
    #   create a secret with the same name, use appropriate back off and retry
    #   logic.
    #
    #   Use this parameter with caution. This parameter causes the operation
    #   to skip the normal recovery window before the permanent deletion that
    #   Secrets Manager would normally impose with the `RecoveryWindowInDays`
    #   parameter. If you delete a secret with the `ForceDeleteWithouRecovery`
    #   parameter, then you have no opportunity to recover the secret. You
    #   lose the secret permanently.
    #
    # @return [Types::DeleteSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSecretResponse#arn #arn} => String
    #   * {Types::DeleteSecretResponse#name #name} => String
    #   * {Types::DeleteSecretResponse#deletion_date #deletion_date} => Time
    #
    #
    # @example Example: To delete a secret
    #
    #   # The following example shows how to delete a secret. The secret stays in your account in a deprecated and inaccessible
    #   # state until the recovery window ends. After the date and time in the DeletionDate response field has passed, you can no
    #   # longer recover this secret with restore-secret.
    #
    #   resp = client.delete_secret({
    #     recovery_window_in_days: 7, 
    #     secret_id: "MyTestDatabaseSecret1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     deletion_date: Time.parse("1524085349.095"), 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_secret({
    #     secret_id: "SecretIdType", # required
    #     recovery_window_in_days: 1,
    #     force_delete_without_recovery: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.deletion_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DeleteSecret AWS API Documentation
    #
    # @overload delete_secret(params = {})
    # @param [Hash] params ({})
    def delete_secret(params = {}, options = {})
      req = build_request(:delete_secret, params)
      req.send_request(options)
    end

    # Retrieves the details of a secret. It does not include the encrypted
    # secret value. Secrets Manager only returns fields that have a value in
    # the response.
    #
    # <b>Required permissions: </b> `secretsmanager:DescribeSecret`. For
    # more information, see [ IAM policy actions for Secrets Manager][1] and
    # [Authentication and access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @return [Types::DescribeSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecretResponse#arn #arn} => String
    #   * {Types::DescribeSecretResponse#name #name} => String
    #   * {Types::DescribeSecretResponse#description #description} => String
    #   * {Types::DescribeSecretResponse#kms_key_id #kms_key_id} => String
    #   * {Types::DescribeSecretResponse#rotation_enabled #rotation_enabled} => Boolean
    #   * {Types::DescribeSecretResponse#rotation_lambda_arn #rotation_lambda_arn} => String
    #   * {Types::DescribeSecretResponse#rotation_rules #rotation_rules} => Types::RotationRulesType
    #   * {Types::DescribeSecretResponse#last_rotated_date #last_rotated_date} => Time
    #   * {Types::DescribeSecretResponse#last_changed_date #last_changed_date} => Time
    #   * {Types::DescribeSecretResponse#last_accessed_date #last_accessed_date} => Time
    #   * {Types::DescribeSecretResponse#deleted_date #deleted_date} => Time
    #   * {Types::DescribeSecretResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeSecretResponse#version_ids_to_stages #version_ids_to_stages} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::DescribeSecretResponse#owning_service #owning_service} => String
    #   * {Types::DescribeSecretResponse#created_date #created_date} => Time
    #   * {Types::DescribeSecretResponse#primary_region #primary_region} => String
    #   * {Types::DescribeSecretResponse#replication_status #replication_status} => Array&lt;Types::ReplicationStatusType&gt;
    #
    #
    # @example Example: To retrieve the details of a secret
    #
    #   # The following example shows how to get the details about a secret.
    #
    #   resp = client.describe_secret({
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     description: "My test database secret", 
    #     kms_key_id: "arn:aws:kms:us-west-2:123456789012:key/EXAMPLE1-90ab-cdef-fedc-ba987KMSKEY1", 
    #     last_accessed_date: Time.parse("1523923200"), 
    #     last_changed_date: Time.parse(1523477145.729), 
    #     last_rotated_date: Time.parse(1525747253.72), 
    #     name: "MyTestDatabaseSecret", 
    #     rotation_enabled: true, 
    #     rotation_lambda_arn: "arn:aws:lambda:us-west-2:123456789012:function:MyTestRotationLambda", 
    #     rotation_rules: {
    #       automatically_after_days: 30, 
    #     }, 
    #     tags: [
    #       {
    #         key: "SecondTag", 
    #         value: "AnotherValue", 
    #       }, 
    #       {
    #         key: "FirstTag", 
    #         value: "SomeValue", 
    #       }, 
    #     ], 
    #     version_ids_to_stages: {
    #       "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE" => [
    #         "AWSPREVIOUS", 
    #       ], 
    #       "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE" => [
    #         "AWSCURRENT", 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_secret({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.kms_key_id #=> String
    #   resp.rotation_enabled #=> Boolean
    #   resp.rotation_lambda_arn #=> String
    #   resp.rotation_rules.automatically_after_days #=> Integer
    #   resp.rotation_rules.duration #=> String
    #   resp.rotation_rules.schedule_expression #=> String
    #   resp.last_rotated_date #=> Time
    #   resp.last_changed_date #=> Time
    #   resp.last_accessed_date #=> Time
    #   resp.deleted_date #=> Time
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.version_ids_to_stages #=> Hash
    #   resp.version_ids_to_stages["SecretVersionIdType"] #=> Array
    #   resp.version_ids_to_stages["SecretVersionIdType"][0] #=> String
    #   resp.owning_service #=> String
    #   resp.created_date #=> Time
    #   resp.primary_region #=> String
    #   resp.replication_status #=> Array
    #   resp.replication_status[0].region #=> String
    #   resp.replication_status[0].kms_key_id #=> String
    #   resp.replication_status[0].status #=> String, one of "InSync", "Failed", "InProgress"
    #   resp.replication_status[0].status_message #=> String
    #   resp.replication_status[0].last_accessed_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DescribeSecret AWS API Documentation
    #
    # @overload describe_secret(params = {})
    # @param [Hash] params ({})
    def describe_secret(params = {}, options = {})
      req = build_request(:describe_secret, params)
      req.send_request(options)
    end

    # Generates a random password. We recommend that you specify the maximum
    # length and include every character type that the system you are
    # generating a password for can support.
    #
    # <b>Required permissions: </b> `secretsmanager:GetRandomPassword`. For
    # more information, see [ IAM policy actions for Secrets Manager][1] and
    # [Authentication and access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [Integer] :password_length
    #   The length of the password. If you don't include this parameter, the
    #   default length is 32 characters.
    #
    # @option params [String] :exclude_characters
    #   A string of the characters that you don't want in the password.
    #
    # @option params [Boolean] :exclude_numbers
    #   Specifies whether to exclude numbers from the password. If you don't
    #   include this switch, the password can contain numbers.
    #
    # @option params [Boolean] :exclude_punctuation
    #   Specifies whether to exclude the following punctuation characters from
    #   the password: `` ! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _
    #   ` \{ | \} ~ ``. If you don't include this switch, the password can
    #   contain punctuation.
    #
    # @option params [Boolean] :exclude_uppercase
    #   Specifies whether to exclude uppercase letters from the password. If
    #   you don't include this switch, the password can contain uppercase
    #   letters.
    #
    # @option params [Boolean] :exclude_lowercase
    #   Specifies whether to exclude lowercase letters from the password. If
    #   you don't include this switch, the password can contain lowercase
    #   letters.
    #
    # @option params [Boolean] :include_space
    #   Specifies whether to include the space character. If you include this
    #   switch, the password can contain space characters.
    #
    # @option params [Boolean] :require_each_included_type
    #   Specifies whether to include at least one upper and lowercase letter,
    #   one number, and one punctuation. If you don't include this switch,
    #   the password contains at least one of every character type.
    #
    # @return [Types::GetRandomPasswordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRandomPasswordResponse#random_password #random_password} => String
    #
    #
    # @example Example: To generate a random password
    #
    #   # The following example shows how to request a randomly generated password. This example includes the optional flags to
    #   # require spaces and at least one character of each included type. It specifies a length of 20 characters.
    #
    #   resp = client.get_random_password({
    #     include_space: true, 
    #     password_length: 20, 
    #     require_each_included_type: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     random_password: "N+Z43a,>vx7j O8^*<8i3", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_random_password({
    #     password_length: 1,
    #     exclude_characters: "ExcludeCharactersType",
    #     exclude_numbers: false,
    #     exclude_punctuation: false,
    #     exclude_uppercase: false,
    #     exclude_lowercase: false,
    #     include_space: false,
    #     require_each_included_type: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.random_password #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetRandomPassword AWS API Documentation
    #
    # @overload get_random_password(params = {})
    # @param [Hash] params ({})
    def get_random_password(params = {}, options = {})
      req = build_request(:get_random_password, params)
      req.send_request(options)
    end

    # Retrieves the JSON text of the resource-based policy document attached
    # to the secret. For more information about permissions policies
    # attached to a secret, see [Permissions policies attached to a
    # secret][1].
    #
    # <b>Required permissions: </b> `secretsmanager:GetResourcePolicy`. For
    # more information, see [ IAM policy actions for Secrets Manager][2] and
    # [Authentication and access control in Secrets Manager][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-policies.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [3]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret to retrieve the attached resource-based
    #   policy for.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#arn #arn} => String
    #   * {Types::GetResourcePolicyResponse#name #name} => String
    #   * {Types::GetResourcePolicyResponse#resource_policy #resource_policy} => String
    #
    #
    # @example Example: To retrieve the resource-based policy attached to a secret
    #
    #   # The following example shows how to retrieve the resource-based policy that is attached to a secret.
    #
    #   resp = client.get_resource_policy({
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #     resource_policy: "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"Allow\",\n\"Principal\":{\n\"AWS\":\"arn:aws:iam::123456789012:root\"\n},\n\"Action\":\"secretsmanager:GetSecretValue\",\n\"Resource\":\"*\"\n}]\n}", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.resource_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Retrieves the contents of the encrypted fields `SecretString` or
    # `SecretBinary` from the specified version of a secret, whichever
    # contains content.
    #
    # We recommend that you cache your secret values by using client-side
    # caching. Caching secrets improves speed and reduces your costs. For
    # more information, see [Cache secrets for your applications][1].
    #
    # <b>Required permissions: </b> `secretsmanager:GetSecretValue`. If the
    # secret is encrypted using a customer-managed key instead of the Amazon
    # Web Services managed key `aws/secretsmanager`, then you also need
    # `kms:Decrypt` permissions for that key. For more information, see [
    # IAM policy actions for Secrets Manager][2] and [Authentication and
    # access control in Secrets Manager][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieving-secrets.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [3]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret to retrieve.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @option params [String] :version_id
    #   The unique identifier of the version of the secret to retrieve. If you
    #   include both this parameter and `VersionStage`, the two parameters
    #   must refer to the same secret version. If you don't specify either a
    #   `VersionStage` or `VersionId`, then Secrets Manager returns the
    #   `AWSCURRENT` version.
    #
    #   This value is typically a [UUID-type][1] value with 32 hexadecimal
    #   digits.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [String] :version_stage
    #   The staging label of the version of the secret to retrieve.
    #
    #   Secrets Manager uses staging labels to keep track of different
    #   versions during the rotation process. If you include both this
    #   parameter and `VersionId`, the two parameters must refer to the same
    #   secret version. If you don't specify either a `VersionStage` or
    #   `VersionId`, Secrets Manager returns the `AWSCURRENT` version.
    #
    # @return [Types::GetSecretValueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecretValueResponse#arn #arn} => String
    #   * {Types::GetSecretValueResponse#name #name} => String
    #   * {Types::GetSecretValueResponse#version_id #version_id} => String
    #   * {Types::GetSecretValueResponse#secret_binary #secret_binary} => String
    #   * {Types::GetSecretValueResponse#secret_string #secret_string} => String
    #   * {Types::GetSecretValueResponse#version_stages #version_stages} => Array&lt;String&gt;
    #   * {Types::GetSecretValueResponse#created_date #created_date} => Time
    #
    #
    # @example Example: To retrieve the encrypted secret value of a secret
    #
    #   # The following example shows how to retrieve the secret string value from the version of the secret that has the
    #   # AWSPREVIOUS staging label attached. If you want to retrieve the AWSCURRENT version of the secret, then you can omit the
    #   # VersionStage parameter because it defaults to AWSCURRENT.
    #
    #   resp = client.get_secret_value({
    #     secret_id: "MyTestDatabaseSecret", 
    #     version_stage: "AWSPREVIOUS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     created_date: Time.parse(1523477145.713), 
    #     name: "MyTestDatabaseSecret", 
    #     secret_string: "{\n  \"username\":\"david\",\n  \"password\":\"BnQw&XDWgaEeT9XGTT29\"\n}\n", 
    #     version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #     version_stages: [
    #       "AWSPREVIOUS", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_secret_value({
    #     secret_id: "SecretIdType", # required
    #     version_id: "SecretVersionIdType",
    #     version_stage: "SecretVersionStageType",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #   resp.secret_binary #=> String
    #   resp.secret_string #=> String
    #   resp.version_stages #=> Array
    #   resp.version_stages[0] #=> String
    #   resp.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetSecretValue AWS API Documentation
    #
    # @overload get_secret_value(params = {})
    # @param [Hash] params ({})
    def get_secret_value(params = {}, options = {})
      req = build_request(:get_secret_value, params)
      req.send_request(options)
    end

    # Lists the versions for a secret.
    #
    # To list the secrets in the account, use ListSecrets.
    #
    # To get the secret value from `SecretString` or `SecretBinary`, call
    # GetSecretValue.
    #
    # <b>Required permissions: </b> `secretsmanager:ListSecretVersionIds`.
    # For more information, see [ IAM policy actions for Secrets Manager][1]
    # and [Authentication and access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret whose versions you want to list.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @option params [Integer] :max_results
    #   The number of results to include in the response.
    #
    #   If there are more results available, in the response, Secrets Manager
    #   includes `NextToken`. To get the next results, call
    #   `ListSecretVersionIds` again with the value from `NextToken`.
    #
    # @option params [String] :next_token
    #   A token that indicates where the output should continue from, if a
    #   previous call did not show all results. To get the next results, call
    #   `ListSecretVersionIds` again with this value.
    #
    # @option params [Boolean] :include_deprecated
    #   Specifies whether to include versions of secrets that don't have any
    #   staging labels attached to them. Versions without staging labels are
    #   considered deprecated and are subject to deletion by Secrets Manager.
    #
    # @return [Types::ListSecretVersionIdsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecretVersionIdsResponse#versions #versions} => Array&lt;Types::SecretVersionsListEntry&gt;
    #   * {Types::ListSecretVersionIdsResponse#next_token #next_token} => String
    #   * {Types::ListSecretVersionIdsResponse#arn #arn} => String
    #   * {Types::ListSecretVersionIdsResponse#name #name} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list all of the secret versions associated with a secret
    #
    #   # The following example shows how to retrieve a list of all of the versions of a secret, including those without any
    #   # staging labels.
    #
    #   resp = client.list_secret_version_ids({
    #     include_deprecated: true, 
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #     versions: [
    #       {
    #         created_date: Time.parse(1523477145.713), 
    #         version_id: "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE", 
    #         version_stages: [
    #           "AWSPREVIOUS", 
    #         ], 
    #       }, 
    #       {
    #         created_date: Time.parse(1523486221.391), 
    #         version_id: "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE", 
    #         version_stages: [
    #           "AWSCURRENT", 
    #         ], 
    #       }, 
    #       {
    #         created_date: Time.parse(1511974462.36), 
    #         version_id: "EXAMPLE3-90ab-cdef-fedc-ba987EXAMPLE;", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_secret_version_ids({
    #     secret_id: "SecretIdType", # required
    #     max_results: 1,
    #     next_token: "NextTokenType",
    #     include_deprecated: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.versions #=> Array
    #   resp.versions[0].version_id #=> String
    #   resp.versions[0].version_stages #=> Array
    #   resp.versions[0].version_stages[0] #=> String
    #   resp.versions[0].last_accessed_date #=> Time
    #   resp.versions[0].created_date #=> Time
    #   resp.versions[0].kms_key_ids #=> Array
    #   resp.versions[0].kms_key_ids[0] #=> String
    #   resp.next_token #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecretVersionIds AWS API Documentation
    #
    # @overload list_secret_version_ids(params = {})
    # @param [Hash] params ({})
    def list_secret_version_ids(params = {}, options = {})
      req = build_request(:list_secret_version_ids, params)
      req.send_request(options)
    end

    # Lists the secrets that are stored by Secrets Manager in the Amazon Web
    # Services account.
    #
    # To list the versions of a secret, use ListSecretVersionIds.
    #
    # To get the secret value from `SecretString` or `SecretBinary`, call
    # GetSecretValue.
    #
    # For information about finding secrets in the console, see [Enhanced
    # search capabilities for secrets in Secrets Manager][1].
    #
    # <b>Required permissions: </b> `secretsmanager:ListSecrets`. For more
    # information, see [ IAM policy actions for Secrets Manager][2] and
    # [Authentication and access control in Secrets Manager][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [3]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [Integer] :max_results
    #   The number of results to include in the response.
    #
    #   If there are more results available, in the response, Secrets Manager
    #   includes `NextToken`. To get the next results, call `ListSecrets`
    #   again with the value from `NextToken`.
    #
    # @option params [String] :next_token
    #   A token that indicates where the output should continue from, if a
    #   previous call did not show all results. To get the next results, call
    #   `ListSecrets` again with this value.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to apply to the list of secrets.
    #
    # @option params [String] :sort_order
    #   Lists secrets in the requested order.
    #
    # @return [Types::ListSecretsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecretsResponse#secret_list #secret_list} => Array&lt;Types::SecretListEntry&gt;
    #   * {Types::ListSecretsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the secrets in your account
    #
    #   # The following example shows how to list all of the secrets in your account.
    #
    #   resp = client.list_secrets({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     secret_list: [
    #       {
    #         arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #         description: "My test database secret", 
    #         last_changed_date: Time.parse(1523477145.729), 
    #         name: "MyTestDatabaseSecret", 
    #         secret_versions_to_stages: {
    #           "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE" => [
    #             "AWSCURRENT", 
    #           ], 
    #         }, 
    #       }, 
    #       {
    #         arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret1-d4e5f6", 
    #         description: "Another secret created for a different database", 
    #         last_changed_date: Time.parse(1523482025.685), 
    #         name: "MyTestDatabaseSecret1", 
    #         secret_versions_to_stages: {
    #           "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE" => [
    #             "AWSCURRENT", 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_secrets({
    #     max_results: 1,
    #     next_token: "NextTokenType",
    #     filters: [
    #       {
    #         key: "description", # accepts description, name, tag-key, tag-value, primary-region, all
    #         values: ["FilterValueStringType"],
    #       },
    #     ],
    #     sort_order: "asc", # accepts asc, desc
    #   })
    #
    # @example Response structure
    #
    #   resp.secret_list #=> Array
    #   resp.secret_list[0].arn #=> String
    #   resp.secret_list[0].name #=> String
    #   resp.secret_list[0].description #=> String
    #   resp.secret_list[0].kms_key_id #=> String
    #   resp.secret_list[0].rotation_enabled #=> Boolean
    #   resp.secret_list[0].rotation_lambda_arn #=> String
    #   resp.secret_list[0].rotation_rules.automatically_after_days #=> Integer
    #   resp.secret_list[0].rotation_rules.duration #=> String
    #   resp.secret_list[0].rotation_rules.schedule_expression #=> String
    #   resp.secret_list[0].last_rotated_date #=> Time
    #   resp.secret_list[0].last_changed_date #=> Time
    #   resp.secret_list[0].last_accessed_date #=> Time
    #   resp.secret_list[0].deleted_date #=> Time
    #   resp.secret_list[0].tags #=> Array
    #   resp.secret_list[0].tags[0].key #=> String
    #   resp.secret_list[0].tags[0].value #=> String
    #   resp.secret_list[0].secret_versions_to_stages #=> Hash
    #   resp.secret_list[0].secret_versions_to_stages["SecretVersionIdType"] #=> Array
    #   resp.secret_list[0].secret_versions_to_stages["SecretVersionIdType"][0] #=> String
    #   resp.secret_list[0].owning_service #=> String
    #   resp.secret_list[0].created_date #=> Time
    #   resp.secret_list[0].primary_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecrets AWS API Documentation
    #
    # @overload list_secrets(params = {})
    # @param [Hash] params ({})
    def list_secrets(params = {}, options = {})
      req = build_request(:list_secrets, params)
      req.send_request(options)
    end

    # Attaches a resource-based permission policy to a secret. A
    # resource-based policy is optional. For more information, see
    # [Authentication and access control for Secrets Manager][1]
    #
    # For information about attaching a policy in the console, see [Attach a
    # permissions policy to a secret][2].
    #
    # <b>Required permissions: </b> `secretsmanager:PutResourcePolicy`. For
    # more information, see [ IAM policy actions for Secrets Manager][3] and
    # [Authentication and access control in Secrets Manager][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html
    # [3]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret to attach the resource-based policy.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @option params [required, String] :resource_policy
    #   A JSON-formatted string for an Amazon Web Services resource-based
    #   policy. For example policies, see [Permissions policy examples][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html
    #
    # @option params [Boolean] :block_public_policy
    #   Specifies whether to block resource-based policies that allow broad
    #   access to the secret. By default, Secrets Manager blocks policies that
    #   allow broad access, for example those that use a wildcard for the
    #   principal.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#arn #arn} => String
    #   * {Types::PutResourcePolicyResponse#name #name} => String
    #
    #
    # @example Example: To add a resource-based policy to a secret
    #
    #   # The following example shows how to add a resource-based policy to a secret.
    #
    #   resp = client.put_resource_policy({
    #     resource_policy: "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"Allow\",\n\"Principal\":{\n\"AWS\":\"arn:aws:iam::123456789012:root\"\n},\n\"Action\":\"secretsmanager:GetSecretValue\",\n\"Resource\":\"*\"\n}]\n}", 
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     secret_id: "SecretIdType", # required
    #     resource_policy: "NonEmptyResourcePolicyType", # required
    #     block_public_policy: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Creates a new version with a new encrypted secret value and attaches
    # it to the secret. The version can contain a new `SecretString` value
    # or a new `SecretBinary` value.
    #
    # We recommend you avoid calling `PutSecretValue` at a sustained rate of
    # more than once every 10 minutes. When you update the secret value,
    # Secrets Manager creates a new version of the secret. Secrets Manager
    # removes outdated versions when there are more than 100, but it does
    # not remove versions created less than 24 hours ago. If you call
    # `PutSecretValue` more than once every 10 minutes, you create more
    # versions than Secrets Manager removes, and you will reach the quota
    # for secret versions.
    #
    # You can specify the staging labels to attach to the new version in
    # `VersionStages`. If you don't include `VersionStages`, then Secrets
    # Manager automatically moves the staging label `AWSCURRENT` to this
    # version. If this operation creates the first version for the secret,
    # then Secrets Manager automatically attaches the staging label
    # `AWSCURRENT` to it .
    #
    # If this operation moves the staging label `AWSCURRENT` from another
    # version to this version, then Secrets Manager also automatically moves
    # the staging label `AWSPREVIOUS` to the version that `AWSCURRENT` was
    # removed from.
    #
    # This operation is idempotent. If a version with a `VersionId` with the
    # same value as the `ClientRequestToken` parameter already exists, and
    # you specify the same secret data, the operation succeeds but does
    # nothing. However, if the secret data is different, then the operation
    # fails because you can't modify an existing version; you can only
    # create new ones.
    #
    # <b>Required permissions: </b> `secretsmanager:PutSecretValue`. For
    # more information, see [ IAM policy actions for Secrets Manager][1] and
    # [Authentication and access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret to add a new version to.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    #   If the secret doesn't already exist, use `CreateSecret` instead.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the new version of the secret.
    #
    #   <note markdown="1"> If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDKs to call this operation, then you can leave this
    #   parameter empty because they generate a random UUID for you. If you
    #   don't use the SDK and instead generate a raw HTTP request to the
    #   Secrets Manager service endpoint, then you must generate a
    #   `ClientRequestToken` yourself for new versions and include that value
    #   in the request.
    #
    #    </note>
    #
    #   This value helps ensure idempotency. Secrets Manager uses this value
    #   to prevent the accidental creation of duplicate versions if there are
    #   failures and retries during the Lambda rotation function processing.
    #   We recommend that you generate a [UUID-type][1] value to ensure
    #   uniqueness within the specified secret.
    #
    #   * If the `ClientRequestToken` value isn't already associated with a
    #     version of the secret then a new version of the secret is created.
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` or `SecretBinary` values are the same as those in the
    #     request then the request is ignored. The operation is idempotent.
    #
    #   * If a version with this value already exists and the version of the
    #     `SecretString` and `SecretBinary` values are different from those in
    #     the request, then the request fails because you can't modify a
    #     secret version. You can only create new versions to store new secret
    #     values.
    #
    #   This value becomes the `VersionId` of the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [String, StringIO, File] :secret_binary
    #   The binary data to encrypt and store in the new version of the secret.
    #   To use this parameter in the command-line tools, we recommend that you
    #   store your binary data in a file and then pass the contents of the
    #   file as a parameter.
    #
    #   You must include `SecretBinary` or `SecretString`, but not both.
    #
    #   You can't access this value from the Secrets Manager console.
    #
    # @option params [String] :secret_string
    #   The text to encrypt and store in the new version of the secret.
    #
    #   You must include `SecretBinary` or `SecretString`, but not both.
    #
    #   We recommend you create the secret string as JSON key/value pairs, as
    #   shown in the example.
    #
    # @option params [Array<String>] :version_stages
    #   A list of staging labels to attach to this version of the secret.
    #   Secrets Manager uses staging labels to track versions of a secret
    #   through the rotation process.
    #
    #   If you specify a staging label that's already associated with a
    #   different version of the same secret, then Secrets Manager removes the
    #   label from the other version and attaches it to this version. If you
    #   specify `AWSCURRENT`, and it is already attached to another version,
    #   then Secrets Manager also moves the staging label `AWSPREVIOUS` to the
    #   version that `AWSCURRENT` was removed from.
    #
    #   If you don't include `VersionStages`, then Secrets Manager
    #   automatically moves the staging label `AWSCURRENT` to this version.
    #
    # @return [Types::PutSecretValueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSecretValueResponse#arn #arn} => String
    #   * {Types::PutSecretValueResponse#name #name} => String
    #   * {Types::PutSecretValueResponse#version_id #version_id} => String
    #   * {Types::PutSecretValueResponse#version_stages #version_stages} => Array&lt;String&gt;
    #
    #
    # @example Example: To store a secret value in a new version of a secret
    #
    #   # The following example shows how to create a new version of the secret. Alternatively, you can use the update-secret
    #   # command.
    #
    #   resp = client.put_secret_value({
    #     client_request_token: "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE", 
    #     secret_id: "MyTestDatabaseSecret", 
    #     secret_string: "{\"username\":\"david\",\"password\":\"BnQw!XDWgaEeT9XGTT29\"}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #     version_id: "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE", 
    #     version_stages: [
    #       "AWSCURRENT", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_secret_value({
    #     secret_id: "SecretIdType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     secret_binary: "data",
    #     secret_string: "SecretStringType",
    #     version_stages: ["SecretVersionStageType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #   resp.version_stages #=> Array
    #   resp.version_stages[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PutSecretValue AWS API Documentation
    #
    # @overload put_secret_value(params = {})
    # @param [Hash] params ({})
    def put_secret_value(params = {}, options = {})
      req = build_request(:put_secret_value, params)
      req.send_request(options)
    end

    # For a secret that is replicated to other Regions, deletes the secret
    # replicas from the Regions you specify.
    #
    # <b>Required permissions: </b>
    # `secretsmanager:RemoveRegionsFromReplication`. For more information,
    # see [ IAM policy actions for Secrets Manager][1] and [Authentication
    # and access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret.
    #
    # @option params [required, Array<String>] :remove_replica_regions
    #   The Regions of the replicas to remove.
    #
    # @return [Types::RemoveRegionsFromReplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveRegionsFromReplicationResponse#arn #arn} => String
    #   * {Types::RemoveRegionsFromReplicationResponse#replication_status #replication_status} => Array&lt;Types::ReplicationStatusType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_regions_from_replication({
    #     secret_id: "SecretIdType", # required
    #     remove_replica_regions: ["RegionType"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.replication_status #=> Array
    #   resp.replication_status[0].region #=> String
    #   resp.replication_status[0].kms_key_id #=> String
    #   resp.replication_status[0].status #=> String, one of "InSync", "Failed", "InProgress"
    #   resp.replication_status[0].status_message #=> String
    #   resp.replication_status[0].last_accessed_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RemoveRegionsFromReplication AWS API Documentation
    #
    # @overload remove_regions_from_replication(params = {})
    # @param [Hash] params ({})
    def remove_regions_from_replication(params = {}, options = {})
      req = build_request(:remove_regions_from_replication, params)
      req.send_request(options)
    end

    # Replicates the secret to a new Regions. See [Multi-Region secrets][1].
    #
    # <b>Required permissions: </b>
    # `secretsmanager:ReplicateSecretToRegions`. For more information, see [
    # IAM policy actions for Secrets Manager][2] and [Authentication and
    # access control in Secrets Manager][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/create-manage-multi-region-secrets.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [3]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret to replicate.
    #
    # @option params [required, Array<Types::ReplicaRegionType>] :add_replica_regions
    #   A list of Regions in which to replicate the secret.
    #
    # @option params [Boolean] :force_overwrite_replica_secret
    #   Specifies whether to overwrite a secret with the same name in the
    #   destination Region.
    #
    # @return [Types::ReplicateSecretToRegionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicateSecretToRegionsResponse#arn #arn} => String
    #   * {Types::ReplicateSecretToRegionsResponse#replication_status #replication_status} => Array&lt;Types::ReplicationStatusType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replicate_secret_to_regions({
    #     secret_id: "SecretIdType", # required
    #     add_replica_regions: [ # required
    #       {
    #         region: "RegionType",
    #         kms_key_id: "KmsKeyIdType",
    #       },
    #     ],
    #     force_overwrite_replica_secret: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.replication_status #=> Array
    #   resp.replication_status[0].region #=> String
    #   resp.replication_status[0].kms_key_id #=> String
    #   resp.replication_status[0].status #=> String, one of "InSync", "Failed", "InProgress"
    #   resp.replication_status[0].status_message #=> String
    #   resp.replication_status[0].last_accessed_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ReplicateSecretToRegions AWS API Documentation
    #
    # @overload replicate_secret_to_regions(params = {})
    # @param [Hash] params ({})
    def replicate_secret_to_regions(params = {}, options = {})
      req = build_request(:replicate_secret_to_regions, params)
      req.send_request(options)
    end

    # Cancels the scheduled deletion of a secret by removing the
    # `DeletedDate` time stamp. You can access a secret again after it has
    # been restored.
    #
    # <b>Required permissions: </b> `secretsmanager:RestoreSecret`. For more
    # information, see [ IAM policy actions for Secrets Manager][1] and
    # [Authentication and access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret to restore.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @return [Types::RestoreSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreSecretResponse#arn #arn} => String
    #   * {Types::RestoreSecretResponse#name #name} => String
    #
    #
    # @example Example: To restore a previously deleted secret
    #
    #   # The following example shows how to restore a secret that you previously scheduled for deletion.
    #
    #   resp = client.restore_secret({
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_secret({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RestoreSecret AWS API Documentation
    #
    # @overload restore_secret(params = {})
    # @param [Hash] params ({})
    def restore_secret(params = {}, options = {})
      req = build_request(:restore_secret, params)
      req.send_request(options)
    end

    # Configures and starts the asynchronous process of rotating the secret.
    #
    # If you include the configuration parameters, the operation sets the
    # values for the secret and then immediately starts a rotation. If you
    # don't include the configuration parameters, the operation starts a
    # rotation with the values already stored in the secret. For more
    # information about rotation, see [Rotate secrets][1].
    #
    # To configure rotation, you include the ARN of an Amazon Web Services
    # Lambda function and the schedule for the rotation. The Lambda rotation
    # function creates a new version of the secret and creates or updates
    # the credentials on the database or service to match. After testing the
    # new credentials, the function marks the new secret version with the
    # staging label `AWSCURRENT`. Then anyone who retrieves the secret gets
    # the new version. For more information, see [How rotation works][2].
    #
    # When rotation is successful, the `AWSPENDING` staging label might be
    # attached to the same version as the `AWSCURRENT` version, or it might
    # not be attached to any version.
    #
    # If the `AWSPENDING` staging label is present but not attached to the
    # same version as `AWSCURRENT`, then any later invocation of
    # `RotateSecret` assumes that a previous rotation request is still in
    # progress and returns an error.
    #
    # <b>Required permissions: </b> `secretsmanager:RotateSecret`. For more
    # information, see [ IAM policy actions for Secrets Manager][3] and
    # [Authentication and access control in Secrets Manager][4]. You also
    # need `lambda:InvokeFunction` permissions on the rotation function. For
    # more information, see [ Permissions for rotation][5].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html
    # [3]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [4]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    # [5]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets-required-permissions-function.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret to rotate.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the new version of the secret that helps
    #   ensure idempotency. Secrets Manager uses this value to prevent the
    #   accidental creation of duplicate versions if there are failures and
    #   retries during rotation. This value becomes the `VersionId` of the new
    #   version.
    #
    #   If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDK to call this operation, then you can leave this parameter
    #   empty. The CLI or SDK generates a random UUID for you and includes
    #   that in the request for this parameter. If you don't use the SDK and
    #   instead generate a raw HTTP request to the Secrets Manager service
    #   endpoint, then you must generate a `ClientRequestToken` yourself for
    #   new versions and include that value in the request.
    #
    #   You only need to specify this value if you implement your own retry
    #   logic and you want to ensure that Secrets Manager doesn't attempt to
    #   create a secret version twice. We recommend that you generate a
    #   [UUID-type][1] value to ensure uniqueness within the specified secret.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [String] :rotation_lambda_arn
    #   The ARN of the Lambda rotation function that can rotate the secret.
    #
    # @option params [Types::RotationRulesType] :rotation_rules
    #   A structure that defines the rotation configuration for this secret.
    #
    # @option params [Boolean] :rotate_immediately
    #   Specifies whether to rotate the secret immediately or wait until the
    #   next scheduled rotation window. The rotation schedule is defined in
    #   RotateSecretRequest$RotationRules.
    #
    #   If you don't immediately rotate the secret, Secrets Manager tests the
    #   rotation configuration by running the [ `testSecret` step][1] of the
    #   Lambda rotation function. The test creates an `AWSPENDING` version of
    #   the secret and then removes it.
    #
    #   If you don't specify this value, then by default, Secrets Manager
    #   rotates the secret immediately.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html
    #
    # @return [Types::RotateSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RotateSecretResponse#arn #arn} => String
    #   * {Types::RotateSecretResponse#name #name} => String
    #   * {Types::RotateSecretResponse#version_id #version_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_secret({
    #     secret_id: "SecretIdType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     rotation_lambda_arn: "RotationLambdaARNType",
    #     rotation_rules: {
    #       automatically_after_days: 1,
    #       duration: "DurationType",
    #       schedule_expression: "ScheduleExpressionType",
    #     },
    #     rotate_immediately: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RotateSecret AWS API Documentation
    #
    # @overload rotate_secret(params = {})
    # @param [Hash] params ({})
    def rotate_secret(params = {}, options = {})
      req = build_request(:rotate_secret, params)
      req.send_request(options)
    end

    # Removes the link between the replica secret and the primary secret and
    # promotes the replica to a primary secret in the replica Region.
    #
    # You must call this operation from the Region in which you want to
    # promote the replica to a primary secret.
    #
    # <b>Required permissions: </b>
    # `secretsmanager:StopReplicationToReplica`. For more information, see [
    # IAM policy actions for Secrets Manager][1] and [Authentication and
    # access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN of the primary secret.
    #
    # @return [Types::StopReplicationToReplicaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopReplicationToReplicaResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_replication_to_replica({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/StopReplicationToReplica AWS API Documentation
    #
    # @overload stop_replication_to_replica(params = {})
    # @param [Hash] params ({})
    def stop_replication_to_replica(params = {}, options = {})
      req = build_request(:stop_replication_to_replica, params)
      req.send_request(options)
    end

    # Attaches tags to a secret. Tags consist of a key name and a value.
    # Tags are part of the secret's metadata. They are not associated with
    # specific versions of the secret. This operation appends tags to the
    # existing list of tags.
    #
    # The following restrictions apply to tags:
    #
    # * Maximum number of tags per secret: 50
    #
    # * Maximum key length: 127 Unicode characters in UTF-8
    #
    # * Maximum value length: 255 Unicode characters in UTF-8
    #
    # * Tag keys and values are case sensitive.
    #
    # * Do not use the `aws:` prefix in your tag names or values because
    #   Amazon Web Services reserves it for Amazon Web Services use. You
    #   can't edit or delete tag names or values with this prefix. Tags
    #   with this prefix do not count against your tags per secret limit.
    #
    # * If you use your tagging schema across multiple services and
    #   resources, other services might have restrictions on allowed
    #   characters. Generally allowed characters: letters, spaces, and
    #   numbers representable in UTF-8, plus the following special
    #   characters: + - = . \_ : / @.
    #
    # If you use tags as part of your security strategy, then adding or
    # removing a tag can change permissions. If successfully completing this
    # operation would result in you losing your permissions for this secret,
    # then the operation is blocked and returns an Access Denied error.
    #
    # <b>Required permissions: </b> `secretsmanager:TagResource`. For more
    # information, see [ IAM policy actions for Secrets Manager][1] and
    # [Authentication and access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The identifier for the secret to attach tags to. You can specify
    #   either the Amazon Resource Name (ARN) or the friendly name of the
    #   secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to attach to the secret as a JSON text string argument. Each
    #   element in the list consists of a `Key` and a `Value`.
    #
    #   For storing multiple values, we recommend that you use a JSON text
    #   string argument and specify key/value pairs. For more information, see
    #   [Specifying parameter values for the Amazon Web Services CLI][1] in
    #   the Amazon Web Services CLI User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add tags to a secret
    #
    #   # The following example shows how to attach two tags each with a Key and Value to a secret. There is no output from this
    #   # API. To see the result, use the DescribeSecret operation.
    #
    #   resp = client.tag_resource({
    #     secret_id: "MyExampleSecret", 
    #     tags: [
    #       {
    #         key: "FirstTag", 
    #         value: "SomeValue", 
    #       }, 
    #       {
    #         key: "SecondTag", 
    #         value: "AnotherValue", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     secret_id: "SecretIdType", # required
    #     tags: [ # required
    #       {
    #         key: "TagKeyType",
    #         value: "TagValueType",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes specific tags from a secret.
    #
    # This operation is idempotent. If a requested tag is not attached to
    # the secret, no error is returned and the secret metadata is unchanged.
    #
    # If you use tags as part of your security strategy, then removing a tag
    # can change permissions. If successfully completing this operation
    # would result in you losing your permissions for this secret, then the
    # operation is blocked and returns an Access Denied error.
    #
    # <b>Required permissions: </b> `secretsmanager:UntagResource`. For more
    # information, see [ IAM policy actions for Secrets Manager][1] and
    # [Authentication and access control in Secrets Manager][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag key names to remove from the secret. You don't specify
    #   the value. Both the key and its associated value are removed.
    #
    #   This parameter requires a JSON text string argument.
    #
    #   For storing multiple values, we recommend that you use a JSON text
    #   string argument and specify key/value pairs. For more information, see
    #   [Specifying parameter values for the Amazon Web Services CLI][1] in
    #   the Amazon Web Services CLI User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove tags from a secret
    #
    #   # The following example shows how to remove two tags from a secret's metadata. For each, both the tag and the associated
    #   # value are removed. There is no output from this API. To see the result, use the DescribeSecret operation.
    #
    #   resp = client.untag_resource({
    #     secret_id: "MyTestDatabaseSecret", 
    #     tag_keys: [
    #       "FirstTag", 
    #       "SecondTag", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     secret_id: "SecretIdType", # required
    #     tag_keys: ["TagKeyType"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies the details of a secret, including metadata and the secret
    # value. To change the secret value, you can also use PutSecretValue.
    #
    # To change the rotation configuration of a secret, use RotateSecret
    # instead.
    #
    # We recommend you avoid calling `UpdateSecret` at a sustained rate of
    # more than once every 10 minutes. When you call `UpdateSecret` to
    # update the secret value, Secrets Manager creates a new version of the
    # secret. Secrets Manager removes outdated versions when there are more
    # than 100, but it does not remove versions created less than 24 hours
    # ago. If you update the secret value more than once every 10 minutes,
    # you create more versions than Secrets Manager removes, and you will
    # reach the quota for secret versions.
    #
    # If you include `SecretString` or `SecretBinary` to create a new secret
    # version, Secrets Manager automatically attaches the staging label
    # `AWSCURRENT` to the new version.
    #
    # If you call this operation with a `VersionId` that matches an existing
    # version's `ClientRequestToken`, the operation results in an error.
    # You can't modify an existing version, you can only create a new
    # version. To remove a version, remove all staging labels from it. See
    # UpdateSecretVersionStage.
    #
    # If you don't specify an KMS encryption key, Secrets Manager uses the
    # Amazon Web Services managed key `aws/secretsmanager`. If this key
    # doesn't already exist in your account, then Secrets Manager creates
    # it for you automatically. All users and roles in the Amazon Web
    # Services account automatically have access to use
    # `aws/secretsmanager`. Creating `aws/secretsmanager` can result in a
    # one-time significant delay in returning the result.
    #
    # If the secret is in a different Amazon Web Services account from the
    # credentials calling the API, then you can't use `aws/secretsmanager`
    # to encrypt the secret, and you must create and use a customer managed
    # key.
    #
    # <b>Required permissions: </b> `secretsmanager:UpdateSecret`. For more
    # information, see [ IAM policy actions for Secrets Manager][1] and
    # [Authentication and access control in Secrets Manager][2]. If you use
    # a customer managed key, you must also have `kms:GenerateDataKey` and
    # `kms:Decrypt` permissions on the key. For more information, see [
    # Secret encryption and decryption][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    # [3]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/security-encryption.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or name of the secret.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @option params [String] :client_request_token
    #   If you include `SecretString` or `SecretBinary`, then Secrets Manager
    #   creates a new version for the secret, and this parameter specifies the
    #   unique identifier for the new version.
    #
    #   <note markdown="1"> If you use the Amazon Web Services CLI or one of the Amazon Web
    #   Services SDKs to call this operation, then you can leave this
    #   parameter empty. The CLI or SDK generates a random UUID for you and
    #   includes it as the value for this parameter in the request. If you
    #   don't use the SDK and instead generate a raw HTTP request to the
    #   Secrets Manager service endpoint, then you must generate a
    #   `ClientRequestToken` yourself for the new version and include the
    #   value in the request.
    #
    #    </note>
    #
    #   This value becomes the `VersionId` of the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of the secret.
    #
    # @option params [String] :kms_key_id
    #   The ARN, key ID, or alias of the KMS key that Secrets Manager uses to
    #   encrypt new secret versions as well as any existing versions the
    #   staging labels `AWSCURRENT`, `AWSPENDING`, or `AWSPREVIOUS`. For more
    #   information about versions and staging labels, see [Concepts:
    #   Version][1].
    #
    #   You can only use the Amazon Web Services managed key
    #   `aws/secretsmanager` if you call this operation using credentials from
    #   the same Amazon Web Services account that owns the secret. If the
    #   secret is in a different account, then you must use a customer managed
    #   key and provide the ARN of that KMS key in this field. The user making
    #   the call must have permissions to both the secret and the KMS key in
    #   their respective accounts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version
    #
    # @option params [String, StringIO, File] :secret_binary
    #   The binary data to encrypt and store in the new version of the secret.
    #   We recommend that you store your binary data in a file and then pass
    #   the contents of the file as a parameter.
    #
    #   Either `SecretBinary` or `SecretString` must have a value, but not
    #   both.
    #
    #   You can't access this parameter in the Secrets Manager console.
    #
    # @option params [String] :secret_string
    #   The text data to encrypt and store in the new version of the secret.
    #   We recommend you use a JSON structure of key/value pairs for your
    #   secret value.
    #
    #   Either `SecretBinary` or `SecretString` must have a value, but not
    #   both.
    #
    # @return [Types::UpdateSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSecretResponse#arn #arn} => String
    #   * {Types::UpdateSecretResponse#name #name} => String
    #   * {Types::UpdateSecretResponse#version_id #version_id} => String
    #
    #
    # @example Example: To update the description of a secret
    #
    #   # The following example shows how to modify the description of a secret.
    #
    #   resp = client.update_secret({
    #     client_request_token: "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE", 
    #     description: "This is a new description for the secret.", 
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Example: To update the KMS key associated with a secret
    #
    #   # This example shows how to update the KMS customer managed key (CMK) used to encrypt the secret value. The KMS CMK must
    #   # be in the same region as the secret.
    #
    #   resp = client.update_secret({
    #     kms_key_id: "arn:aws:kms:us-west-2:123456789012:key/EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE", 
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Example: To create a new version of the encrypted secret value
    #
    #   # The following example shows how to create a new version of the secret by updating the SecretString field. Alternatively,
    #   # you can use the put-secret-value operation.
    #
    #   resp = client.update_secret({
    #     secret_id: "MyTestDatabaseSecret", 
    #     secret_string: "{JSON STRING WITH CREDENTIALS}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "aws:arn:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #     version_id: "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_secret({
    #     secret_id: "SecretIdType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     description: "DescriptionType",
    #     kms_key_id: "KmsKeyIdType",
    #     secret_binary: "data",
    #     secret_string: "SecretStringType",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UpdateSecret AWS API Documentation
    #
    # @overload update_secret(params = {})
    # @param [Hash] params ({})
    def update_secret(params = {}, options = {})
      req = build_request(:update_secret, params)
      req.send_request(options)
    end

    # Modifies the staging labels attached to a version of a secret. Secrets
    # Manager uses staging labels to track a version as it progresses
    # through the secret rotation process. Each staging label can be
    # attached to only one version at a time. To add a staging label to a
    # version when it is already attached to another version, Secrets
    # Manager first removes it from the other version first and then
    # attaches it to this one. For more information about versions and
    # staging labels, see [Concepts: Version][1].
    #
    # The staging labels that you specify in the `VersionStage` parameter
    # are added to the existing list of staging labels for the version.
    #
    # You can move the `AWSCURRENT` staging label to this version by
    # including it in this call.
    #
    # <note markdown="1"> Whenever you move `AWSCURRENT`, Secrets Manager automatically moves
    # the label `AWSPREVIOUS` to the version that `AWSCURRENT` was removed
    # from.
    #
    #  </note>
    #
    # If this action results in the last label being removed from a version,
    # then the version is considered to be 'deprecated' and can be deleted
    # by Secrets Manager.
    #
    # <b>Required permissions: </b>
    # `secretsmanager:UpdateSecretVersionStage`. For more information, see [
    # IAM policy actions for Secrets Manager][2] and [Authentication and
    # access control in Secrets Manager][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [3]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [required, String] :secret_id
    #   The ARN or the name of the secret with the version and staging
    #   labelsto modify.
    #
    #   For an ARN, we recommend that you specify a complete ARN rather than a
    #   partial ARN.
    #
    # @option params [required, String] :version_stage
    #   The staging label to add to this version.
    #
    # @option params [String] :remove_from_version_id
    #   The ID of the version that the staging label is to be removed from. If
    #   the staging label you are trying to attach to one version is already
    #   attached to a different version, then you must include this parameter
    #   and specify the version that the label is to be removed from. If the
    #   label is attached and you either do not specify this parameter, or the
    #   version ID does not match, then the operation fails.
    #
    # @option params [String] :move_to_version_id
    #   The ID of the version to add the staging label to. To remove a label
    #   from a version, then do not specify this parameter.
    #
    #   If the staging label is already attached to a different version of the
    #   secret, then you must also specify the `RemoveFromVersionId`
    #   parameter.
    #
    # @return [Types::UpdateSecretVersionStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSecretVersionStageResponse#arn #arn} => String
    #   * {Types::UpdateSecretVersionStageResponse#name #name} => String
    #
    #
    # @example Example: To add a staging label attached to a version of a secret
    #
    #   # The following example shows you how to add a staging label to a version of a secret. You can review the results by
    #   # running the operation ListSecretVersionIds and viewing the VersionStages response field for the affected version.
    #
    #   resp = client.update_secret_version_stage({
    #     move_to_version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #     secret_id: "MyTestDatabaseSecret", 
    #     version_stage: "STAGINGLABEL1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Example: To delete a staging label attached to a version of a secret
    #
    #   # The following example shows you how to delete a staging label that is attached to a version of a secret. You can review
    #   # the results by running the operation ListSecretVersionIds and viewing the VersionStages response field for the affected
    #   # version.
    #
    #   resp = client.update_secret_version_stage({
    #     remove_from_version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #     secret_id: "MyTestDatabaseSecret", 
    #     version_stage: "STAGINGLABEL1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Example: To move a staging label from one version of a secret to another
    #
    #   # The following example shows you how to move a staging label that is attached to one version of a secret to a different
    #   # version. You can review the results by running the operation ListSecretVersionIds and viewing the VersionStages response
    #   # field for the affected version.
    #
    #   resp = client.update_secret_version_stage({
    #     move_to_version_id: "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2", 
    #     remove_from_version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #     secret_id: "MyTestDatabaseSecret", 
    #     version_stage: "AWSCURRENT", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_secret_version_stage({
    #     secret_id: "SecretIdType", # required
    #     version_stage: "SecretVersionStageType", # required
    #     remove_from_version_id: "SecretVersionIdType",
    #     move_to_version_id: "SecretVersionIdType",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UpdateSecretVersionStage AWS API Documentation
    #
    # @overload update_secret_version_stage(params = {})
    # @param [Hash] params ({})
    def update_secret_version_stage(params = {}, options = {})
      req = build_request(:update_secret_version_stage, params)
      req.send_request(options)
    end

    # Validates that a resource policy does not grant a wide range of
    # principals access to your secret. A resource-based policy is optional
    # for secrets.
    #
    # The API performs three checks when validating the policy:
    #
    # * Sends a call to [Zelkova][1], an automated reasoning engine, to
    #   ensure your resource policy does not allow broad access to your
    #   secret, for example policies that use a wildcard for the principal.
    #
    # * Checks for correct syntax in a policy.
    #
    # * Verifies the policy does not lock out a caller.
    #
    # <b>Required permissions: </b> `secretsmanager:ValidateResourcePolicy`.
    # For more information, see [ IAM policy actions for Secrets Manager][2]
    # and [Authentication and access control in Secrets Manager][3].
    #
    #
    #
    # [1]: https://aws.amazon.com/blogs/security/protect-sensitive-data-in-the-cloud-with-automated-reasoning-zelkova/
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions
    # [3]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
    #
    # @option params [String] :secret_id
    #   This field is reserved for internal use.
    #
    # @option params [required, String] :resource_policy
    #   A JSON-formatted string that contains an Amazon Web Services
    #   resource-based policy. The policy in the string identifies who can
    #   access or manage this secret and its versions. For example policies,
    #   see [Permissions policy examples][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html
    #
    # @return [Types::ValidateResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateResourcePolicyResponse#policy_validation_passed #policy_validation_passed} => Boolean
    #   * {Types::ValidateResourcePolicyResponse#validation_errors #validation_errors} => Array&lt;Types::ValidationErrorsEntry&gt;
    #
    #
    # @example Example: To validate a resource-based policy to a secret
    #
    #   # The following example shows how to validate a resource-based policy to a secret.
    #
    #   resp = client.validate_resource_policy({
    #     resource_policy: "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"Allow\",\n\"Principal\":{\n\"AWS\":\"arn:aws:iam::123456789012:root\"\n},\n\"Action\":\"secretsmanager:GetSecretValue\",\n\"Resource\":\"*\"\n}]\n}", 
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_validation_passed: true, 
    #     validation_errors: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_resource_policy({
    #     secret_id: "SecretIdType",
    #     resource_policy: "NonEmptyResourcePolicyType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_validation_passed #=> Boolean
    #   resp.validation_errors #=> Array
    #   resp.validation_errors[0].check_name #=> String
    #   resp.validation_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ValidateResourcePolicy AWS API Documentation
    #
    # @overload validate_resource_policy(params = {})
    # @param [Hash] params ({})
    def validate_resource_policy(params = {}, options = {})
      req = build_request(:validate_resource_policy, params)
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
      context[:gem_name] = 'aws-sdk-secretsmanager'
      context[:gem_version] = '1.56.0'
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
