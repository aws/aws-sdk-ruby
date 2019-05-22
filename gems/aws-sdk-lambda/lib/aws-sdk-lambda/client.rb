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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lambda)

module Aws::Lambda
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :lambda

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

    # Adds permissions to the resource-based policy of a version of an [AWS
    # Lambda layer][1]. Use this action to grant layer usage permission to
    # other accounts. You can grant permission to a single account, all AWS
    # accounts, or all accounts in an organization.
    #
    # To revoke permission, call RemoveLayerVersionPermission with the
    # statement ID that you specified when you added it.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [required, Integer] :version_number
    #   The version number.
    #
    # @option params [required, String] :statement_id
    #   An identifier that distinguishes the policy from others on the same
    #   layer version.
    #
    # @option params [required, String] :action
    #   The API action that grants access to the layer. For example,
    #   `lambda:GetLayerVersion`.
    #
    # @option params [required, String] :principal
    #   An account ID, or `*` to grant permission to all AWS accounts.
    #
    # @option params [String] :organization_id
    #   With the principal set to `*`, grant permission to all accounts in the
    #   specified organization.
    #
    # @option params [String] :revision_id
    #   Only update the policy if the revision ID matches the ID specified.
    #   Use this option to avoid modifying a policy that has changed since you
    #   last read it.
    #
    # @return [Types::AddLayerVersionPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddLayerVersionPermissionResponse#statement #statement} => String
    #   * {Types::AddLayerVersionPermissionResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_layer_version_permission({
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #     statement_id: "StatementId", # required
    #     action: "LayerPermissionAllowedAction", # required
    #     principal: "LayerPermissionAllowedPrincipal", # required
    #     organization_id: "OrganizationId",
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.statement #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddLayerVersionPermission AWS API Documentation
    #
    # @overload add_layer_version_permission(params = {})
    # @param [Hash] params ({})
    def add_layer_version_permission(params = {}, options = {})
      req = build_request(:add_layer_version_permission, params)
      req.send_request(options)
    end

    # Grants an AWS service or another account permission to use a function.
    # You can apply the policy at the function level, or specify a qualifier
    # to restrict access to a single version or alias. If you use a
    # qualifier, the invoker must use the full Amazon Resource Name (ARN) of
    # that version or alias to invoke the function.
    #
    # To grant permission to another account, specify the account ID as the
    # `Principal`. For AWS services, the principal is a domain-style
    # identifier defined by the service, like `s3.amazonaws.com` or
    # `sns.amazonaws.com`. For AWS services, you can also specify the ARN or
    # owning account of the associated resource as the `SourceArn` or
    # `SourceAccount`. If you grant permission to a service principal
    # without specifying the source, other accounts could potentially
    # configure resources in their account to invoke your Lambda function.
    #
    # This action adds a statement to a resource-based permission policy for
    # the function. For more information about function policies, see
    # [Lambda Function Policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :statement_id
    #   A statement identifier that differentiates the statement from others
    #   in the same policy.
    #
    # @option params [required, String] :action
    #   The action that the principal can use on the function. For example,
    #   `lambda:InvokeFunction` or `lambda:GetFunction`.
    #
    # @option params [required, String] :principal
    #   The AWS service or account that invokes the function. If you specify a
    #   service, use `SourceArn` or `SourceAccount` to limit who can invoke
    #   the function through that service.
    #
    # @option params [String] :source_arn
    #   For AWS services, the ARN of the AWS resource that invokes the
    #   function. For example, an Amazon S3 bucket or Amazon SNS topic.
    #
    # @option params [String] :source_account
    #   For AWS services, the ID of the account that owns the resource. Use
    #   this instead of `SourceArn` to grant permission to resources that are
    #   owned by another account (for example, all of an account's Amazon S3
    #   buckets). Or use it together with `SourceArn` to ensure that the
    #   resource is owned by the specified account. For example, an Amazon S3
    #   bucket could be deleted by its owner and recreated by another account.
    #
    # @option params [String] :event_source_token
    #   For Alexa Smart Home functions, a token that must be supplied by the
    #   invoker.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to add permissions to a published version
    #   of the function.
    #
    # @option params [String] :revision_id
    #   Only update the policy if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a policy that has
    #   changed since you last read it.
    #
    # @return [Types::AddPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddPermissionResponse#statement #statement} => String
    #
    #
    # @example Example: add-permission
    #
    #   # This example adds a permission for an S3 bucket to invoke a Lambda function.
    #
    #   resp = client.add_permission({
    #     action: "lambda:InvokeFunction", 
    #     function_name: "MyFunction", 
    #     principal: "s3.amazonaws.com", 
    #     source_account: "123456789012", 
    #     source_arn: "arn:aws:s3:::examplebucket/*", 
    #     statement_id: "ID-1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     statement: "ID-1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_permission({
    #     function_name: "FunctionName", # required
    #     statement_id: "StatementId", # required
    #     action: "Action", # required
    #     principal: "Principal", # required
    #     source_arn: "Arn",
    #     source_account: "SourceOwner",
    #     event_source_token: "EventSourceToken",
    #     qualifier: "Qualifier",
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.statement #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddPermission AWS API Documentation
    #
    # @overload add_permission(params = {})
    # @param [Hash] params ({})
    def add_permission(params = {}, options = {})
      req = build_request(:add_permission, params)
      req.send_request(options)
    end

    # Creates an [alias][1] for a Lambda function version. Use aliases to
    # provide clients with a function identifier that you can update to
    # invoke a different version.
    #
    # You can also map an alias to split invocation requests between two
    # versions. Use the `RoutingConfig` parameter to specify a second
    # version and the percentage of invocation requests that it receives.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :name
    #   The name of the alias.
    #
    # @option params [required, String] :function_version
    #   The function version that the alias invokes.
    #
    # @option params [String] :description
    #   A description of the alias.
    #
    # @option params [Types::AliasRoutingConfiguration] :routing_config
    #   The [routing configuration][1] of the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html
    #
    # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AliasConfiguration#alias_arn #alias_arn} => String
    #   * {Types::AliasConfiguration#name #name} => String
    #   * {Types::AliasConfiguration#function_version #function_version} => String
    #   * {Types::AliasConfiguration#description #description} => String
    #   * {Types::AliasConfiguration#routing_config #routing_config} => Types::AliasRoutingConfiguration
    #   * {Types::AliasConfiguration#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "Version", # required
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_arn #=> String
    #   resp.name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config.additional_version_weights #=> Hash
    #   resp.routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Creates a mapping between an event source and an AWS Lambda function.
    # Lambda reads items from the event source and triggers the function.
    #
    # For details about each event source type, see the following topics.
    #
    # * [Using AWS Lambda with Amazon Kinesis][1]
    #
    # * [Using AWS Lambda with Amazon SQS][2]
    #
    # * [Using AWS Lambda with Amazon DynamoDB][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html
    #
    # @option params [required, String] :event_source_arn
    #   The Amazon Resource Name (ARN) of the event source.
    #
    #   * **Amazon Kinesis** - The ARN of the data stream or a stream
    #     consumer.
    #
    #   * **Amazon DynamoDB Streams** - The ARN of the stream.
    #
    #   * **Amazon Simple Queue Service** - The ARN of the queue.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #
    # @option params [Boolean] :enabled
    #   Disables the event source mapping to pause polling and invocation.
    #
    # @option params [Integer] :batch_size
    #   The maximum number of items to retrieve in a single batch.
    #
    #   * **Amazon Kinesis** - Default 100. Max 10,000.
    #
    #   * **Amazon DynamoDB Streams** - Default 100. Max 1,000.
    #
    #   * **Amazon Simple Queue Service** - Default 10. Max 10.
    #
    # @option params [String] :starting_position
    #   The position in a stream from which to start reading. Required for
    #   Amazon Kinesis and Amazon DynamoDB Streams sources. `AT_TIMESTAMP` is
    #   only supported for Amazon Kinesis streams.
    #
    # @option params [Time,DateTime,Date,Integer,String] :starting_position_timestamp
    #   With `StartingPosition` set to `AT_TIMESTAMP`, the time from which to
    #   start reading.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_source_mapping({
    #     event_source_arn: "Arn", # required
    #     function_name: "FunctionName", # required
    #     enabled: false,
    #     batch_size: 1,
    #     starting_position: "TRIM_HORIZON", # accepts TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #     starting_position_timestamp: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.batch_size #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateEventSourceMapping AWS API Documentation
    #
    # @overload create_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def create_event_source_mapping(params = {}, options = {})
      req = build_request(:create_event_source_mapping, params)
      req.send_request(options)
    end

    # Creates a Lambda function. To create a function, you need a
    # [deployment package][1] and an [execution role][2]. The deployment
    # package contains your function code. The execution role grants the
    # function permission to use AWS services, such as Amazon CloudWatch
    # Logs for log streaming and AWS X-Ray for request tracing.
    #
    # A function has an unpublished version, and can have published versions
    # and aliases. The unpublished version changes when you update your
    # function's code and configuration. A published version is a snapshot
    # of your function code and configuration that can't be changed. An
    # alias is a named resource that maps to a version, and can be changed
    # to map to a different version. Use the `Publish` parameter to create
    # version `1` of your function from its initial configuration.
    #
    # The other parameters let you configure version-specific and
    # function-level settings. You can modify version-specific settings
    # later with UpdateFunctionConfiguration. Function-level settings apply
    # to both the unpublished and published versions of the function, and
    # include tags (TagResource) and per-function concurrency limits
    # (PutFunctionConcurrency).
    #
    # If another account or an AWS service invokes your function, use
    # AddPermission to grant permission by creating a resource-based IAM
    # policy. You can grant permissions at the function level, on a version,
    # or on an alias.
    #
    # To invoke your function directly, use Invoke. To invoke your function
    # in response to events in other AWS services, create an event source
    # mapping (CreateEventSourceMapping), or configure a function trigger in
    # the other service. For more information, see [Invoking Functions][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/deployment-package-v2.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-functions.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :runtime
    #   The identifier of the function's [runtime][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #
    # @option params [required, String] :role
    #   The Amazon Resource Name (ARN) of the function's execution role.
    #
    # @option params [required, String] :handler
    #   The name of the method within your code that Lambda calls to execute
    #   your function. The format includes the file name. It can also include
    #   namespaces and other qualifiers, depending on the runtime. For more
    #   information, see [Programming Model][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html
    #
    # @option params [required, Types::FunctionCode] :code
    #   The code for the function.
    #
    # @option params [String] :description
    #   A description of the function.
    #
    # @option params [Integer] :timeout
    #   The amount of time that Lambda allows a function to run before
    #   stopping it. The default is 3 seconds. The maximum allowed value is
    #   900 seconds.
    #
    # @option params [Integer] :memory_size
    #   The amount of memory that your function has access to. Increasing the
    #   function's memory also increases its CPU allocation. The default
    #   value is 128 MB. The value must be a multiple of 64 MB.
    #
    # @option params [Boolean] :publish
    #   Set to true to publish the first version of the function during
    #   creation.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   For network connectivity to AWS resources in a VPC, specify a list of
    #   security groups and subnets in the VPC. When you connect a function to
    #   a VPC, it can only access resources and the internet through that VPC.
    #   For more information, see [VPC Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/vpc.html
    #
    # @option params [Types::DeadLetterConfig] :dead_letter_config
    #   A dead letter queue configuration that specifies the queue or topic
    #   where Lambda sends asynchronous events when they fail processing. For
    #   more information, see [Dead Letter Queues][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/dlq.html
    #
    # @option params [Types::Environment] :environment
    #   Environment variables that are accessible from function code during
    #   execution.
    #
    # @option params [String] :kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) key that's used
    #   to encrypt your function's environment variables. If it's not
    #   provided, AWS Lambda uses a default service key.
    #
    # @option params [Types::TracingConfig] :tracing_config
    #   Set `Mode` to `Active` to sample and trace a subset of incoming
    #   requests with AWS X-Ray.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of [tags][1] to apply to the function.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [Array<String>] :layers
    #   A list of [function layers][1] to add to the function's execution
    #   environment. Specify each layer by its ARN, including the version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #   * {Types::FunctionConfiguration#layers #layers} => Array&lt;Types::Layer&gt;
    #
    #
    # @example Example: create-function
    #
    #   # This example creates a Lambda function.
    #
    #   resp = client.create_function({
    #     code: {
    #     }, 
    #     description: "", 
    #     function_name: "MyFunction", 
    #     handler: "souce_file.handler_name", # is of the form of the name of your source file and then name of your function handler
    #     memory_size: 128, 
    #     publish: true, 
    #     role: "arn:aws:iam::123456789012:role/service-role/role-name", # replace with the actual arn of the execution role you created
    #     runtime: "nodejs8.10", 
    #     timeout: 15, 
    #     vpc_config: {
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_sha_256: "", 
    #     code_size: 123, 
    #     description: "", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:MyFunction", 
    #     function_name: "MyFunction", 
    #     handler: "source_file.handler_name", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/service-role/role-name", 
    #     runtime: "nodejs8.10", 
    #     timeout: 123, 
    #     version: "1", 
    #     vpc_config: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function({
    #     function_name: "FunctionName", # required
    #     runtime: "nodejs", # required, accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, java8, python2.7, python3.6, python3.7, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x, ruby2.5, provided
    #     role: "RoleArn", # required
    #     handler: "Handler", # required
    #     code: { # required
    #       zip_file: "data",
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #     },
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     publish: false,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn",
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue",
    #       },
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active", # accepts Active, PassThrough
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     layers: ["LayerVersionArn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateFunction AWS API Documentation
    #
    # @overload create_function(params = {})
    # @param [Hash] params ({})
    def create_function(params = {}, options = {})
      req = build_request(:create_function, params)
      req.send_request(options)
    end

    # Deletes a Lambda function [alias][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :name
    #   The name of the alias.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a Lambda function alias
    #
    #   # This operation deletes a Lambda function alias
    #
    #   resp = client.delete_alias({
    #     function_name: "myFunction", 
    #     name: "alias", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteAlias AWS API Documentation
    #
    # @overload delete_alias(params = {})
    # @param [Hash] params ({})
    def delete_alias(params = {}, options = {})
      req = build_request(:delete_alias, params)
      req.send_request(options)
    end

    # Deletes an [event source mapping][1]. You can get the identifier of a
    # mapping from the output of ListEventSourceMappings.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html
    #
    # @option params [required, String] :uuid
    #   The identifier of the event source mapping.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #
    #
    # @example Example: To delete a Lambda function event source mapping
    #
    #   # This operation deletes a Lambda function event source mapping
    #
    #   resp = client.delete_event_source_mapping({
    #     uuid: "12345kxodurf3443", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     batch_size: 123, 
    #     event_source_arn: "arn:aws:s3:::examplebucket/*", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     last_processing_result: "", 
    #     state: "", 
    #     state_transition_reason: "", 
    #     uuid: "12345kxodurf3443", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_source_mapping({
    #     uuid: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.batch_size #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteEventSourceMapping AWS API Documentation
    #
    # @overload delete_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def delete_event_source_mapping(params = {}, options = {})
      req = build_request(:delete_event_source_mapping, params)
      req.send_request(options)
    end

    # Deletes a Lambda function. To delete a specific function version, use
    # the `Qualifier` parameter. Otherwise, all versions and aliases are
    # deleted.
    #
    # To delete Lambda event source mappings that invoke a function, use
    # DeleteEventSourceMapping. For AWS services and resources that invoke
    # your function directly, delete the trigger in the service where you
    # originally configured it.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function or version.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:1` (with
    #     version).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Specify a version to delete. You can't delete a version that's
    #   referenced by an alias.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a Lambda function
    #
    #   # This operation deletes a Lambda function
    #
    #   resp = client.delete_function({
    #     function_name: "myFunction", 
    #     qualifier: "1", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function({
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunction AWS API Documentation
    #
    # @overload delete_function(params = {})
    # @param [Hash] params ({})
    def delete_function(params = {}, options = {})
      req = build_request(:delete_function, params)
      req.send_request(options)
    end

    # Removes a concurrent execution limit from a function.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_concurrency({
    #     function_name: "FunctionName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionConcurrency AWS API Documentation
    #
    # @overload delete_function_concurrency(params = {})
    # @param [Hash] params ({})
    def delete_function_concurrency(params = {}, options = {})
      req = build_request(:delete_function_concurrency, params)
      req.send_request(options)
    end

    # Deletes a version of an [AWS Lambda layer][1]. Deleted versions can no
    # longer be viewed or added to functions. To avoid breaking functions, a
    # copy of the version remains in Lambda until no functions refer to it.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [required, Integer] :version_number
    #   The version number.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_layer_version({
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteLayerVersion AWS API Documentation
    #
    # @overload delete_layer_version(params = {})
    # @param [Hash] params ({})
    def delete_layer_version(params = {}, options = {})
      req = build_request(:delete_layer_version, params)
      req.send_request(options)
    end

    # Retrieves details about your account's [limits][1] and usage in an
    # AWS Region.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/limits.html
    #
    # @return [Types::GetAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsResponse#account_limit #account_limit} => Types::AccountLimit
    #   * {Types::GetAccountSettingsResponse#account_usage #account_usage} => Types::AccountUsage
    #
    #
    # @example Example: To retrieves a Lambda customer's account settings
    #
    #   # This operation retrieves a Lambda customer's account settings
    #
    #   resp = client.get_account_settings({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_limit: {
    #     }, 
    #     account_usage: {
    #     }, 
    #   }
    #
    # @example Response structure
    #
    #   resp.account_limit.total_code_size #=> Integer
    #   resp.account_limit.code_size_unzipped #=> Integer
    #   resp.account_limit.code_size_zipped #=> Integer
    #   resp.account_limit.concurrent_executions #=> Integer
    #   resp.account_limit.unreserved_concurrent_executions #=> Integer
    #   resp.account_usage.total_code_size #=> Integer
    #   resp.account_usage.function_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Returns details about a Lambda function [alias][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :name
    #   The name of the alias.
    #
    # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AliasConfiguration#alias_arn #alias_arn} => String
    #   * {Types::AliasConfiguration#name #name} => String
    #   * {Types::AliasConfiguration#function_version #function_version} => String
    #   * {Types::AliasConfiguration#description #description} => String
    #   * {Types::AliasConfiguration#routing_config #routing_config} => Types::AliasRoutingConfiguration
    #   * {Types::AliasConfiguration#revision_id #revision_id} => String
    #
    #
    # @example Example: To retrieve a Lambda function alias
    #
    #   # This operation retrieves a Lambda function alias
    #
    #   resp = client.get_alias({
    #     function_name: "myFunction", 
    #     name: "myFunctionAlias", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunctionAlias", 
    #     description: "", 
    #     function_version: "1", 
    #     name: "myFunctionAlias", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_arn #=> String
    #   resp.name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config.additional_version_weights #=> Hash
    #   resp.routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAlias AWS API Documentation
    #
    # @overload get_alias(params = {})
    # @param [Hash] params ({})
    def get_alias(params = {}, options = {})
      req = build_request(:get_alias, params)
      req.send_request(options)
    end

    # Returns details about an event source mapping. You can get the
    # identifier of a mapping from the output of ListEventSourceMappings.
    #
    # @option params [required, String] :uuid
    #   The identifier of the event source mapping.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #
    #
    # @example Example: To retrieve a Lambda function's event source mapping
    #
    #   # This operation retrieves a Lambda function's event source mapping
    #
    #   resp = client.get_event_source_mapping({
    #     uuid: "123489-xxxxx-kdla8d89d7", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     batch_size: 123, 
    #     event_source_arn: "arn:aws:iam::123456789012:eventsource", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     last_processing_result: "", 
    #     state: "", 
    #     state_transition_reason: "", 
    #     uuid: "123489-xxxxx-kdla8d89d7", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_source_mapping({
    #     uuid: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.batch_size #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetEventSourceMapping AWS API Documentation
    #
    # @overload get_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def get_event_source_mapping(params = {}, options = {})
      req = build_request(:get_event_source_mapping, params)
      req.send_request(options)
    end

    # Returns information about the function or function version, with a
    # link to download the deployment package that's valid for 10 minutes.
    # If you specify a function version, only details that are specific to
    # that version are returned.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to get details about a published version of
    #   the function.
    #
    # @return [Types::GetFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionResponse#configuration #configuration} => Types::FunctionConfiguration
    #   * {Types::GetFunctionResponse#code #code} => Types::FunctionCodeLocation
    #   * {Types::GetFunctionResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetFunctionResponse#concurrency #concurrency} => Types::Concurrency
    #
    #
    # @example Example: To retrieve a Lambda function's event source mapping
    #
    #   # This operation retrieves a Lambda function's event source mapping
    #
    #   resp = client.get_function({
    #     function_name: "myFunction", 
    #     qualifier: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code: {
    #       location: "somelocation", 
    #       repository_type: "S3", 
    #     }, 
    #     configuration: {
    #       code_sha_256: "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=", 
    #       code_size: 262, 
    #       description: "A starter AWS Lambda function.", 
    #       environment: {
    #         variables: {
    #           "S3_BUCKET" => "test", 
    #         }, 
    #       }, 
    #       function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #       function_name: "myFunction", 
    #       handler: "index.handler", 
    #       last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #       memory_size: 128, 
    #       role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #       runtime: "nodejs8.10", 
    #       timeout: 3, 
    #       version: "$LATEST", 
    #       vpc_config: {
    #         security_group_ids: [
    #         ], 
    #         subnet_ids: [
    #         ], 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function({
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.function_name #=> String
    #   resp.configuration.function_arn #=> String
    #   resp.configuration.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.configuration.role #=> String
    #   resp.configuration.handler #=> String
    #   resp.configuration.code_size #=> Integer
    #   resp.configuration.description #=> String
    #   resp.configuration.timeout #=> Integer
    #   resp.configuration.memory_size #=> Integer
    #   resp.configuration.last_modified #=> Time
    #   resp.configuration.code_sha_256 #=> String
    #   resp.configuration.version #=> String
    #   resp.configuration.vpc_config.subnet_ids #=> Array
    #   resp.configuration.vpc_config.subnet_ids[0] #=> String
    #   resp.configuration.vpc_config.security_group_ids #=> Array
    #   resp.configuration.vpc_config.security_group_ids[0] #=> String
    #   resp.configuration.vpc_config.vpc_id #=> String
    #   resp.configuration.dead_letter_config.target_arn #=> String
    #   resp.configuration.environment.variables #=> Hash
    #   resp.configuration.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.configuration.environment.error.error_code #=> String
    #   resp.configuration.environment.error.message #=> String
    #   resp.configuration.kms_key_arn #=> String
    #   resp.configuration.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.configuration.master_arn #=> String
    #   resp.configuration.revision_id #=> String
    #   resp.configuration.layers #=> Array
    #   resp.configuration.layers[0].arn #=> String
    #   resp.configuration.layers[0].code_size #=> Integer
    #   resp.code.repository_type #=> String
    #   resp.code.location #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.concurrency.reserved_concurrent_executions #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunction AWS API Documentation
    #
    # @overload get_function(params = {})
    # @param [Hash] params ({})
    def get_function(params = {}, options = {})
      req = build_request(:get_function, params)
      req.send_request(options)
    end

    # Returns the version-specific settings of a Lambda function or version.
    # The output includes only options that can vary between versions of a
    # function. To modify these settings, use UpdateFunctionConfiguration.
    #
    # To get all of a function's details, including function-level
    # settings, use GetFunction.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to get details about a published version of
    #   the function.
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #   * {Types::FunctionConfiguration#layers #layers} => Array&lt;Types::Layer&gt;
    #
    #
    # @example Example: To retrieve a Lambda function's event source mapping
    #
    #   # This operation retrieves a Lambda function's event source mapping
    #
    #   resp = client.get_function_configuration({
    #     function_name: "myFunction", 
    #     qualifier: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_sha_256: "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=", 
    #     code_size: 123, 
    #     dead_letter_config: {
    #     }, 
    #     description: "", 
    #     environment: {
    #     }, 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     function_name: "myFunction", 
    #     handler: "index.handler", 
    #     kms_key_arn: "", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #     runtime: "python2.7", 
    #     timeout: 123, 
    #     version: "1", 
    #     vpc_config: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_configuration({
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConfiguration AWS API Documentation
    #
    # @overload get_function_configuration(params = {})
    # @param [Hash] params ({})
    def get_function_configuration(params = {}, options = {})
      req = build_request(:get_function_configuration, params)
      req.send_request(options)
    end

    # Returns information about a version of an [AWS Lambda layer][1], with
    # a link to download the layer archive that's valid for 10 minutes.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [required, Integer] :version_number
    #   The version number.
    #
    # @return [Types::GetLayerVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLayerVersionResponse#content #content} => Types::LayerVersionContentOutput
    #   * {Types::GetLayerVersionResponse#layer_arn #layer_arn} => String
    #   * {Types::GetLayerVersionResponse#layer_version_arn #layer_version_arn} => String
    #   * {Types::GetLayerVersionResponse#description #description} => String
    #   * {Types::GetLayerVersionResponse#created_date #created_date} => Time
    #   * {Types::GetLayerVersionResponse#version #version} => Integer
    #   * {Types::GetLayerVersionResponse#compatible_runtimes #compatible_runtimes} => Array&lt;String&gt;
    #   * {Types::GetLayerVersionResponse#license_info #license_info} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layer_version({
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content.location #=> String
    #   resp.content.code_sha_256 #=> String
    #   resp.content.code_size #=> Integer
    #   resp.layer_arn #=> String
    #   resp.layer_version_arn #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> Integer
    #   resp.compatible_runtimes #=> Array
    #   resp.compatible_runtimes[0] #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.license_info #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersion AWS API Documentation
    #
    # @overload get_layer_version(params = {})
    # @param [Hash] params ({})
    def get_layer_version(params = {}, options = {})
      req = build_request(:get_layer_version, params)
      req.send_request(options)
    end

    # Returns information about a version of an [AWS Lambda layer][1], with
    # a link to download the layer archive that's valid for 10 minutes.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :arn
    #   The ARN of the layer version.
    #
    # @return [Types::GetLayerVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLayerVersionResponse#content #content} => Types::LayerVersionContentOutput
    #   * {Types::GetLayerVersionResponse#layer_arn #layer_arn} => String
    #   * {Types::GetLayerVersionResponse#layer_version_arn #layer_version_arn} => String
    #   * {Types::GetLayerVersionResponse#description #description} => String
    #   * {Types::GetLayerVersionResponse#created_date #created_date} => Time
    #   * {Types::GetLayerVersionResponse#version #version} => Integer
    #   * {Types::GetLayerVersionResponse#compatible_runtimes #compatible_runtimes} => Array&lt;String&gt;
    #   * {Types::GetLayerVersionResponse#license_info #license_info} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layer_version_by_arn({
    #     arn: "LayerVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content.location #=> String
    #   resp.content.code_sha_256 #=> String
    #   resp.content.code_size #=> Integer
    #   resp.layer_arn #=> String
    #   resp.layer_version_arn #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> Integer
    #   resp.compatible_runtimes #=> Array
    #   resp.compatible_runtimes[0] #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.license_info #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionByArn AWS API Documentation
    #
    # @overload get_layer_version_by_arn(params = {})
    # @param [Hash] params ({})
    def get_layer_version_by_arn(params = {}, options = {})
      req = build_request(:get_layer_version_by_arn, params)
      req.send_request(options)
    end

    # Returns the permission policy for a version of an [AWS Lambda
    # layer][1]. For more information, see AddLayerVersionPermission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [required, Integer] :version_number
    #   The version number.
    #
    # @return [Types::GetLayerVersionPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLayerVersionPolicyResponse#policy #policy} => String
    #   * {Types::GetLayerVersionPolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layer_version_policy({
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionPolicy AWS API Documentation
    #
    # @overload get_layer_version_policy(params = {})
    # @param [Hash] params ({})
    def get_layer_version_policy(params = {}, options = {})
      req = build_request(:get_layer_version_policy, params)
      req.send_request(options)
    end

    # Returns the [resource-based IAM policy][1] for a function, version, or
    # alias.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to get the policy for that resource.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy #policy} => String
    #   * {Types::GetPolicyResponse#revision_id #revision_id} => String
    #
    #
    # @example Example: To retrieve a Lambda function policy
    #
    #   # This operation retrieves a Lambda function policy
    #
    #   resp = client.get_policy({
    #     function_name: "myFunction", 
    #     qualifier: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Invokes a Lambda function. You can invoke a function synchronously
    # (and wait for the response), or asynchronously. To invoke a function
    # asynchronously, set `InvocationType` to `Event`.
    #
    # For synchronous invocation, details about the function response,
    # including errors, are included in the response body and headers. For
    # either invocation type, you can find more information in the
    # [execution log][1] and [trace][2]. To record function errors for
    # asynchronous invocations, configure your function with a [dead letter
    # queue][2].
    #
    # When an error occurs, your function may be invoked multiple times.
    # Retry behavior varies by error type, client, event source, and
    # invocation type. For example, if you invoke a function asynchronously
    # and it returns an error, Lambda executes the function up to two more
    # times. For more information, see [Retry Behavior][3].
    #
    # The status code in the API response doesn't reflect function errors.
    # Error codes are reserved for errors that prevent your function from
    # executing, such as permissions errors, [limit errors][4], or issues
    # with your function's code and configuration. For example, Lambda
    # returns `TooManyRequestsException` if executing the function would
    # cause you to exceed a concurrency limit at either the account level
    # (`ConcurrentInvocationLimitExceeded`) or function level
    # (`ReservedFunctionConcurrentInvocationLimitExceeded`).
    #
    # For functions with a long timeout, your client might be disconnected
    # during synchronous invocation while it waits for a response. Configure
    # your HTTP client, SDK, firewall, proxy, or operating system to allow
    # for long connections with timeout or keep-alive settings.
    #
    # This operation requires permission for the `lambda:InvokeFunction`
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/dlq.html
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/retries-on-errors.html
    # [4]: https://docs.aws.amazon.com/lambda/latest/dg/limits.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :invocation_type
    #   Choose from the following options.
    #
    #   * `RequestResponse` (default) - Invoke the function synchronously.
    #     Keep the connection open until the function returns a response or
    #     times out. The API response includes the function response and
    #     additional data.
    #
    #   * `Event` - Invoke the function asynchronously. Send events that fail
    #     multiple times to the function's dead-letter queue (if it's
    #     configured). The API response only includes a status code.
    #
    #   * `DryRun` - Validate parameter values and verify that the user or
    #     role has permission to invoke the function.
    #
    # @option params [String] :log_type
    #   Set to `Tail` to include the execution log in the response.
    #
    # @option params [String] :client_context
    #   Up to 3583 bytes of base64-encoded data about the invoking client to
    #   pass to the function in the context object.
    #
    # @option params [String, IO] :payload
    #   The JSON that you want to provide to your Lambda function as input.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to invoke a published version of the
    #   function.
    #
    # @return [Types::InvocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvocationResponse#status_code #status_code} => Integer
    #   * {Types::InvocationResponse#function_error #function_error} => String
    #   * {Types::InvocationResponse#log_result #log_result} => String
    #   * {Types::InvocationResponse#payload #payload} => String
    #   * {Types::InvocationResponse#executed_version #executed_version} => String
    #
    #
    # @example Example: To invoke a Lambda function
    #
    #   # This operation invokes a Lambda function
    #
    #   resp = client.invoke({
    #     client_context: "MyApp", 
    #     function_name: "MyFunction", 
    #     invocation_type: "Event", 
    #     log_type: "Tail", 
    #     payload: "fileb://file-path/input.json", 
    #     qualifier: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     function_error: "", 
    #     log_result: "", 
    #     payload: "?", 
    #     status_code: 123, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke({
    #     function_name: "NamespacedFunctionName", # required
    #     invocation_type: "Event", # accepts Event, RequestResponse, DryRun
    #     log_type: "None", # accepts None, Tail
    #     client_context: "String",
    #     payload: "data",
    #     qualifier: "Qualifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #   resp.function_error #=> String
    #   resp.log_result #=> String
    #   resp.payload #=> String
    #   resp.executed_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Invoke AWS API Documentation
    #
    # @overload invoke(params = {})
    # @param [Hash] params ({})
    def invoke(params = {}, options = {})
      req = build_request(:invoke, params)
      req.send_request(options)
    end

    # For asynchronous function invocation, use Invoke.
    #
    # Invokes a function asynchronously.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String, IO] :invoke_args
    #   The JSON that you want to provide to your Lambda function as input.
    #
    # @return [Types::InvokeAsyncResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeAsyncResponse#status #status} => Integer
    #
    #
    # @example Example: To invoke a Lambda function asynchronously
    #
    #   # This operation invokes a Lambda function asynchronously
    #
    #   resp = client.invoke_async({
    #     function_name: "myFunction", 
    #     invoke_args: "fileb://file-path/input.json", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     status: 123, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_async({
    #     function_name: "NamespacedFunctionName", # required
    #     invoke_args: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeAsync AWS API Documentation
    #
    # @overload invoke_async(params = {})
    # @param [Hash] params ({})
    def invoke_async(params = {}, options = {})
      req = build_request(:invoke_async, params)
      req.send_request(options)
    end

    # Returns a list of [aliases][1] for a Lambda function.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :function_version
    #   Specify a function version to only list aliases that invoke that
    #   version.
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   Limit the number of aliases returned.
    #
    # @return [Types::ListAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAliasesResponse#next_marker #next_marker} => String
    #   * {Types::ListAliasesResponse#aliases #aliases} => Array&lt;Types::AliasConfiguration&gt;
    #
    #
    # @example Example: To retrieve a Lambda function aliases
    #
    #   # This operation retrieves a Lambda function's aliases
    #
    #   resp = client.list_aliases({
    #     function_name: "myFunction", 
    #     function_version: "1", 
    #     marker: "", 
    #     max_items: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     aliases: [
    #     ], 
    #     next_marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases({
    #     function_name: "FunctionName", # required
    #     function_version: "Version",
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.aliases #=> Array
    #   resp.aliases[0].alias_arn #=> String
    #   resp.aliases[0].name #=> String
    #   resp.aliases[0].function_version #=> String
    #   resp.aliases[0].description #=> String
    #   resp.aliases[0].routing_config.additional_version_weights #=> Hash
    #   resp.aliases[0].routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.aliases[0].revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListAliases AWS API Documentation
    #
    # @overload list_aliases(params = {})
    # @param [Hash] params ({})
    def list_aliases(params = {}, options = {})
      req = build_request(:list_aliases, params)
      req.send_request(options)
    end

    # Lists event source mappings. Specify an `EventSourceArn` to only show
    # event source mappings for a single event source.
    #
    # @option params [String] :event_source_arn
    #   The Amazon Resource Name (ARN) of the event source.
    #
    #   * **Amazon Kinesis** - The ARN of the data stream or a stream
    #     consumer.
    #
    #   * **Amazon DynamoDB Streams** - The ARN of the stream.
    #
    #   * **Amazon Simple Queue Service** - The ARN of the queue.
    #
    # @option params [String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #
    # @option params [String] :marker
    #   A pagination token returned by a previous call.
    #
    # @option params [Integer] :max_items
    #   The maximum number of event source mappings to return.
    #
    # @return [Types::ListEventSourceMappingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventSourceMappingsResponse#next_marker #next_marker} => String
    #   * {Types::ListEventSourceMappingsResponse#event_source_mappings #event_source_mappings} => Array&lt;Types::EventSourceMappingConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_source_mappings({
    #     event_source_arn: "Arn",
    #     function_name: "FunctionName",
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.event_source_mappings #=> Array
    #   resp.event_source_mappings[0].uuid #=> String
    #   resp.event_source_mappings[0].batch_size #=> Integer
    #   resp.event_source_mappings[0].event_source_arn #=> String
    #   resp.event_source_mappings[0].function_arn #=> String
    #   resp.event_source_mappings[0].last_modified #=> Time
    #   resp.event_source_mappings[0].last_processing_result #=> String
    #   resp.event_source_mappings[0].state #=> String
    #   resp.event_source_mappings[0].state_transition_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListEventSourceMappings AWS API Documentation
    #
    # @overload list_event_source_mappings(params = {})
    # @param [Hash] params ({})
    def list_event_source_mappings(params = {}, options = {})
      req = build_request(:list_event_source_mappings, params)
      req.send_request(options)
    end

    # Returns a list of Lambda functions, with the version-specific
    # configuration of each.
    #
    # Set `FunctionVersion` to `ALL` to include all published versions of
    # each function in addition to the unpublished version. To get more
    # information about a function or version, use GetFunction.
    #
    # @option params [String] :master_region
    #   For Lambda@Edge functions, the AWS Region of the master function. For
    #   example, `us-east-2` or `ALL`. If specified, you must set
    #   `FunctionVersion` to `ALL`.
    #
    # @option params [String] :function_version
    #   Set to `ALL` to include entries for all published versions of each
    #   function.
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   Specify a value between 1 and 50 to limit the number of functions in
    #   the response.
    #
    # @return [Types::ListFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionsResponse#next_marker #next_marker} => String
    #   * {Types::ListFunctionsResponse#functions #functions} => Array&lt;Types::FunctionConfiguration&gt;
    #
    #
    # @example Example: To retrieve a list of Lambda functions
    #
    #   # This operation retrieves a Lambda functions
    #
    #   resp = client.list_functions({
    #     marker: "", 
    #     max_items: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     functions: [
    #     ], 
    #     next_marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions({
    #     master_region: "MasterRegion",
    #     function_version: "ALL", # accepts ALL
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.functions #=> Array
    #   resp.functions[0].function_name #=> String
    #   resp.functions[0].function_arn #=> String
    #   resp.functions[0].runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.functions[0].role #=> String
    #   resp.functions[0].handler #=> String
    #   resp.functions[0].code_size #=> Integer
    #   resp.functions[0].description #=> String
    #   resp.functions[0].timeout #=> Integer
    #   resp.functions[0].memory_size #=> Integer
    #   resp.functions[0].last_modified #=> Time
    #   resp.functions[0].code_sha_256 #=> String
    #   resp.functions[0].version #=> String
    #   resp.functions[0].vpc_config.subnet_ids #=> Array
    #   resp.functions[0].vpc_config.subnet_ids[0] #=> String
    #   resp.functions[0].vpc_config.security_group_ids #=> Array
    #   resp.functions[0].vpc_config.security_group_ids[0] #=> String
    #   resp.functions[0].vpc_config.vpc_id #=> String
    #   resp.functions[0].dead_letter_config.target_arn #=> String
    #   resp.functions[0].environment.variables #=> Hash
    #   resp.functions[0].environment.variables["EnvironmentVariableName"] #=> String
    #   resp.functions[0].environment.error.error_code #=> String
    #   resp.functions[0].environment.error.message #=> String
    #   resp.functions[0].kms_key_arn #=> String
    #   resp.functions[0].tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.functions[0].master_arn #=> String
    #   resp.functions[0].revision_id #=> String
    #   resp.functions[0].layers #=> Array
    #   resp.functions[0].layers[0].arn #=> String
    #   resp.functions[0].layers[0].code_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctions AWS API Documentation
    #
    # @overload list_functions(params = {})
    # @param [Hash] params ({})
    def list_functions(params = {}, options = {})
      req = build_request(:list_functions, params)
      req.send_request(options)
    end

    # Lists the versions of an [AWS Lambda layer][1]. Versions that have
    # been deleted aren't listed. Specify a [runtime identifier][2] to list
    # only versions that indicate that they're compatible with that
    # runtime.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #
    # @option params [String] :compatible_runtime
    #   A runtime identifier. For example, `go1.x`.
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [String] :marker
    #   A pagination token returned by a previous call.
    #
    # @option params [Integer] :max_items
    #   The maximum number of versions to return.
    #
    # @return [Types::ListLayerVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLayerVersionsResponse#next_marker #next_marker} => String
    #   * {Types::ListLayerVersionsResponse#layer_versions #layer_versions} => Array&lt;Types::LayerVersionsListItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_layer_versions({
    #     compatible_runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, java8, python2.7, python3.6, python3.7, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x, ruby2.5, provided
    #     layer_name: "LayerName", # required
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.layer_versions #=> Array
    #   resp.layer_versions[0].layer_version_arn #=> String
    #   resp.layer_versions[0].version #=> Integer
    #   resp.layer_versions[0].description #=> String
    #   resp.layer_versions[0].created_date #=> Time
    #   resp.layer_versions[0].compatible_runtimes #=> Array
    #   resp.layer_versions[0].compatible_runtimes[0] #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.layer_versions[0].license_info #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayerVersions AWS API Documentation
    #
    # @overload list_layer_versions(params = {})
    # @param [Hash] params ({})
    def list_layer_versions(params = {}, options = {})
      req = build_request(:list_layer_versions, params)
      req.send_request(options)
    end

    # Lists [AWS Lambda layers][1] and shows information about the latest
    # version of each. Specify a [runtime identifier][2] to list only layers
    # that indicate that they're compatible with that runtime.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    # [2]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #
    # @option params [String] :compatible_runtime
    #   A runtime identifier. For example, `go1.x`.
    #
    # @option params [String] :marker
    #   A pagination token returned by a previous call.
    #
    # @option params [Integer] :max_items
    #   The maximum number of layers to return.
    #
    # @return [Types::ListLayersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLayersResponse#next_marker #next_marker} => String
    #   * {Types::ListLayersResponse#layers #layers} => Array&lt;Types::LayersListItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_layers({
    #     compatible_runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, java8, python2.7, python3.6, python3.7, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x, ruby2.5, provided
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].layer_name #=> String
    #   resp.layers[0].layer_arn #=> String
    #   resp.layers[0].latest_matching_version.layer_version_arn #=> String
    #   resp.layers[0].latest_matching_version.version #=> Integer
    #   resp.layers[0].latest_matching_version.description #=> String
    #   resp.layers[0].latest_matching_version.created_date #=> Time
    #   resp.layers[0].latest_matching_version.compatible_runtimes #=> Array
    #   resp.layers[0].latest_matching_version.compatible_runtimes[0] #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.layers[0].latest_matching_version.license_info #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayers AWS API Documentation
    #
    # @overload list_layers(params = {})
    # @param [Hash] params ({})
    def list_layers(params = {}, options = {})
      req = build_request(:list_layers, params)
      req.send_request(options)
    end

    # Returns a function's [tags][1]. You can also view tags with
    # GetFunction.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, String] :resource
    #   The function's Amazon Resource Name (ARN).
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource: "FunctionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Returns a list of [versions][1], with the version-specific
    # configuration of each.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :marker
    #   Specify the pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #
    # @option params [Integer] :max_items
    #   Limit the number of versions that are returned.
    #
    # @return [Types::ListVersionsByFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVersionsByFunctionResponse#next_marker #next_marker} => String
    #   * {Types::ListVersionsByFunctionResponse#versions #versions} => Array&lt;Types::FunctionConfiguration&gt;
    #
    #
    # @example Example: To retrieve a list of Lambda function versions
    #
    #   # This operation retrieves a Lambda function versions
    #
    #   resp = client.list_versions_by_function({
    #     function_name: "myFunction", 
    #     marker: "", 
    #     max_items: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_marker: "", 
    #     versions: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_versions_by_function({
    #     function_name: "NamespacedFunctionName", # required
    #     marker: "String",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].function_name #=> String
    #   resp.versions[0].function_arn #=> String
    #   resp.versions[0].runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.versions[0].role #=> String
    #   resp.versions[0].handler #=> String
    #   resp.versions[0].code_size #=> Integer
    #   resp.versions[0].description #=> String
    #   resp.versions[0].timeout #=> Integer
    #   resp.versions[0].memory_size #=> Integer
    #   resp.versions[0].last_modified #=> Time
    #   resp.versions[0].code_sha_256 #=> String
    #   resp.versions[0].version #=> String
    #   resp.versions[0].vpc_config.subnet_ids #=> Array
    #   resp.versions[0].vpc_config.subnet_ids[0] #=> String
    #   resp.versions[0].vpc_config.security_group_ids #=> Array
    #   resp.versions[0].vpc_config.security_group_ids[0] #=> String
    #   resp.versions[0].vpc_config.vpc_id #=> String
    #   resp.versions[0].dead_letter_config.target_arn #=> String
    #   resp.versions[0].environment.variables #=> Hash
    #   resp.versions[0].environment.variables["EnvironmentVariableName"] #=> String
    #   resp.versions[0].environment.error.error_code #=> String
    #   resp.versions[0].environment.error.message #=> String
    #   resp.versions[0].kms_key_arn #=> String
    #   resp.versions[0].tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.versions[0].master_arn #=> String
    #   resp.versions[0].revision_id #=> String
    #   resp.versions[0].layers #=> Array
    #   resp.versions[0].layers[0].arn #=> String
    #   resp.versions[0].layers[0].code_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListVersionsByFunction AWS API Documentation
    #
    # @overload list_versions_by_function(params = {})
    # @param [Hash] params ({})
    def list_versions_by_function(params = {}, options = {})
      req = build_request(:list_versions_by_function, params)
      req.send_request(options)
    end

    # Creates an [AWS Lambda layer][1] from a ZIP archive. Each time you
    # call `PublishLayerVersion` with the same version name, a new version
    # is created.
    #
    # Add layers to your function with CreateFunction or
    # UpdateFunctionConfiguration.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [String] :description
    #   The description of the version.
    #
    # @option params [required, Types::LayerVersionContentInput] :content
    #   The function layer archive.
    #
    # @option params [Array<String>] :compatible_runtimes
    #   A list of compatible [function runtimes][1]. Used for filtering with
    #   ListLayers and ListLayerVersions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #
    # @option params [String] :license_info
    #   The layer's software license. It can be any of the following:
    #
    #   * An [SPDX license identifier][1]. For example, `MIT`.
    #
    #   * The URL of a license hosted on the internet. For example,
    #     `https://opensource.org/licenses/MIT`.
    #
    #   * The full text of the license.
    #
    #
    #
    #   [1]: https://spdx.org/licenses/
    #
    # @return [Types::PublishLayerVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PublishLayerVersionResponse#content #content} => Types::LayerVersionContentOutput
    #   * {Types::PublishLayerVersionResponse#layer_arn #layer_arn} => String
    #   * {Types::PublishLayerVersionResponse#layer_version_arn #layer_version_arn} => String
    #   * {Types::PublishLayerVersionResponse#description #description} => String
    #   * {Types::PublishLayerVersionResponse#created_date #created_date} => Time
    #   * {Types::PublishLayerVersionResponse#version #version} => Integer
    #   * {Types::PublishLayerVersionResponse#compatible_runtimes #compatible_runtimes} => Array&lt;String&gt;
    #   * {Types::PublishLayerVersionResponse#license_info #license_info} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_layer_version({
    #     layer_name: "LayerName", # required
    #     description: "Description",
    #     content: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #       zip_file: "data",
    #     },
    #     compatible_runtimes: ["nodejs"], # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, java8, python2.7, python3.6, python3.7, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x, ruby2.5, provided
    #     license_info: "LicenseInfo",
    #   })
    #
    # @example Response structure
    #
    #   resp.content.location #=> String
    #   resp.content.code_sha_256 #=> String
    #   resp.content.code_size #=> Integer
    #   resp.layer_arn #=> String
    #   resp.layer_version_arn #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> Integer
    #   resp.compatible_runtimes #=> Array
    #   resp.compatible_runtimes[0] #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.license_info #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishLayerVersion AWS API Documentation
    #
    # @overload publish_layer_version(params = {})
    # @param [Hash] params ({})
    def publish_layer_version(params = {}, options = {})
      req = build_request(:publish_layer_version, params)
      req.send_request(options)
    end

    # Creates a [version][1] from the current code and configuration of a
    # function. Use versions to create a snapshot of your function code and
    # configuration that doesn't change.
    #
    # AWS Lambda doesn't publish a version if the function's configuration
    # and code haven't changed since the last version. Use
    # UpdateFunctionCode or UpdateFunctionConfiguration to update the
    # function before publishing a version.
    #
    # Clients can invoke versions directly or with an alias. To create an
    # alias, use CreateAlias.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :code_sha_256
    #   Only publish a version if the hash value matches the value that's
    #   specified. Use this option to avoid publishing a version if the
    #   function code has changed since you last updated it. You can get the
    #   hash for the version that you uploaded from the output of
    #   UpdateFunctionCode.
    #
    # @option params [String] :description
    #   A description for the version to override the description in the
    #   function configuration.
    #
    # @option params [String] :revision_id
    #   Only update the function if the revision ID matches the ID that's
    #   specified. Use this option to avoid publishing a version if the
    #   function configuration has changed since you last updated it.
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #   * {Types::FunctionConfiguration#layers #layers} => Array&lt;Types::Layer&gt;
    #
    #
    # @example Example: To publish a version of a Lambda function
    #
    #   # This operation publishes a version of a Lambda function
    #
    #   resp = client.publish_version({
    #     code_sha_256: "", 
    #     description: "", 
    #     function_name: "myFunction", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_sha_256: "", 
    #     code_size: 123, 
    #     description: "", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     function_name: "myFunction", 
    #     handler: "index.handler", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #     runtime: "python2.7", 
    #     timeout: 123, 
    #     version: "1", 
    #     vpc_config: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_version({
    #     function_name: "FunctionName", # required
    #     code_sha_256: "String",
    #     description: "Description",
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishVersion AWS API Documentation
    #
    # @overload publish_version(params = {})
    # @param [Hash] params ({})
    def publish_version(params = {}, options = {})
      req = build_request(:publish_version, params)
      req.send_request(options)
    end

    # Sets the maximum number of simultaneous executions for a function, and
    # reserves capacity for that concurrency level.
    #
    # Concurrency settings apply to the function as a whole, including all
    # published versions and the unpublished version. Reserving concurrency
    # both ensures that your function has capacity to process the specified
    # number of events simultaneously, and prevents it from scaling beyond
    # that level. Use GetFunction to see the current setting for a function.
    #
    # Use GetAccountSettings to see your regional concurrency limit. You can
    # reserve concurrency for as many functions as you like, as long as you
    # leave at least 100 simultaneous executions unreserved for functions
    # that aren't configured with a per-function limit. For more
    # information, see [Managing Concurrency][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, Integer] :reserved_concurrent_executions
    #   The number of simultaneous executions to reserve for the function.
    #
    # @return [Types::Concurrency] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Concurrency#reserved_concurrent_executions #reserved_concurrent_executions} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_function_concurrency({
    #     function_name: "FunctionName", # required
    #     reserved_concurrent_executions: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_concurrent_executions #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionConcurrency AWS API Documentation
    #
    # @overload put_function_concurrency(params = {})
    # @param [Hash] params ({})
    def put_function_concurrency(params = {}, options = {})
      req = build_request(:put_function_concurrency, params)
      req.send_request(options)
    end

    # Removes a statement from the permissions policy for a version of an
    # [AWS Lambda layer][1]. For more information, see
    # AddLayerVersionPermission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @option params [required, String] :layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #
    # @option params [required, Integer] :version_number
    #   The version number.
    #
    # @option params [required, String] :statement_id
    #   The identifier that was specified when the statement was added.
    #
    # @option params [String] :revision_id
    #   Only update the policy if the revision ID matches the ID specified.
    #   Use this option to avoid modifying a policy that has changed since you
    #   last read it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_layer_version_permission({
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #     statement_id: "StatementId", # required
    #     revision_id: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemoveLayerVersionPermission AWS API Documentation
    #
    # @overload remove_layer_version_permission(params = {})
    # @param [Hash] params ({})
    def remove_layer_version_permission(params = {}, options = {})
      req = build_request(:remove_layer_version_permission, params)
      req.send_request(options)
    end

    # Revokes function-use permission from an AWS service or another
    # account. You can get the ID of the statement from the output of
    # GetPolicy.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :statement_id
    #   Statement ID of the permission to remove.
    #
    # @option params [String] :qualifier
    #   Specify a version or alias to remove permissions from a published
    #   version of the function.
    #
    # @option params [String] :revision_id
    #   Only update the policy if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a policy that has
    #   changed since you last read it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove a Lambda function's permissions
    #
    #   # This operation removes a Lambda function's permissions
    #
    #   resp = client.remove_permission({
    #     function_name: "myFunction", 
    #     qualifier: "1", 
    #     statement_id: "role-statement-id", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission({
    #     function_name: "FunctionName", # required
    #     statement_id: "NamespacedStatementId", # required
    #     qualifier: "Qualifier",
    #     revision_id: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemovePermission AWS API Documentation
    #
    # @overload remove_permission(params = {})
    # @param [Hash] params ({})
    def remove_permission(params = {}, options = {})
      req = build_request(:remove_permission, params)
      req.send_request(options)
    end

    # Adds [tags][1] to a function.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, String] :resource
    #   The function's Amazon Resource Name (ARN).
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tags to apply to the function.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource: "FunctionArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes [tags][1] from a function.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #
    # @option params [required, String] :resource
    #   The function's Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the function.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource: "FunctionArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of a Lambda function [alias][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [required, String] :name
    #   The name of the alias.
    #
    # @option params [String] :function_version
    #   The function version that the alias invokes.
    #
    # @option params [String] :description
    #   A description of the alias.
    #
    # @option params [Types::AliasRoutingConfiguration] :routing_config
    #   The [routing configuration][1] of the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html
    #
    # @option params [String] :revision_id
    #   Only update the alias if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying an alias that has
    #   changed since you last read it.
    #
    # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AliasConfiguration#alias_arn #alias_arn} => String
    #   * {Types::AliasConfiguration#name #name} => String
    #   * {Types::AliasConfiguration#function_version #function_version} => String
    #   * {Types::AliasConfiguration#description #description} => String
    #   * {Types::AliasConfiguration#routing_config #routing_config} => Types::AliasRoutingConfiguration
    #   * {Types::AliasConfiguration#revision_id #revision_id} => String
    #
    #
    # @example Example: To update a Lambda function alias
    #
    #   # This operation updates a Lambda function alias
    #
    #   resp = client.update_alias({
    #     description: "", 
    #     function_name: "myFunction", 
    #     function_version: "1", 
    #     name: "functionAlias", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:functionAlias", 
    #     description: "", 
    #     function_version: "1", 
    #     name: "functionAlias", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alias({
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "Version",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0,
    #       },
    #     },
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_arn #=> String
    #   resp.name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config.additional_version_weights #=> Hash
    #   resp.routing_config.additional_version_weights["AdditionalVersion"] #=> Float
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateAlias AWS API Documentation
    #
    # @overload update_alias(params = {})
    # @param [Hash] params ({})
    def update_alias(params = {}, options = {})
      req = build_request(:update_alias, params)
      req.send_request(options)
    end

    # Updates an event source mapping. You can change the function that AWS
    # Lambda invokes, or pause invocation and resume later from the same
    # location.
    #
    # @option params [required, String] :uuid
    #   The identifier of the event source mapping.
    #
    # @option params [String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #
    # @option params [Boolean] :enabled
    #   Disables the event source mapping to pause polling and invocation.
    #
    # @option params [Integer] :batch_size
    #   The maximum number of items to retrieve in a single batch.
    #
    #   * **Amazon Kinesis** - Default 100. Max 10,000.
    #
    #   * **Amazon DynamoDB Streams** - Default 100. Max 1,000.
    #
    #   * **Amazon Simple Queue Service** - Default 10. Max 10.
    #
    # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSourceMappingConfiguration#uuid #uuid} => String
    #   * {Types::EventSourceMappingConfiguration#batch_size #batch_size} => Integer
    #   * {Types::EventSourceMappingConfiguration#event_source_arn #event_source_arn} => String
    #   * {Types::EventSourceMappingConfiguration#function_arn #function_arn} => String
    #   * {Types::EventSourceMappingConfiguration#last_modified #last_modified} => Time
    #   * {Types::EventSourceMappingConfiguration#last_processing_result #last_processing_result} => String
    #   * {Types::EventSourceMappingConfiguration#state #state} => String
    #   * {Types::EventSourceMappingConfiguration#state_transition_reason #state_transition_reason} => String
    #
    #
    # @example Example: To update a Lambda function event source mapping
    #
    #   # This operation updates a Lambda function event source mapping
    #
    #   resp = client.update_event_source_mapping({
    #     batch_size: 123, 
    #     enabled: true, 
    #     function_name: "myFunction", 
    #     uuid: "1234xCy789012", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     batch_size: 123, 
    #     event_source_arn: "arn:aws:s3:::examplebucket/*", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     last_processing_result: "", 
    #     state: "", 
    #     state_transition_reason: "", 
    #     uuid: "1234xCy789012", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_source_mapping({
    #     uuid: "String", # required
    #     function_name: "FunctionName",
    #     enabled: false,
    #     batch_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.uuid #=> String
    #   resp.batch_size #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateEventSourceMapping AWS API Documentation
    #
    # @overload update_event_source_mapping(params = {})
    # @param [Hash] params ({})
    def update_event_source_mapping(params = {}, options = {})
      req = build_request(:update_event_source_mapping, params)
      req.send_request(options)
    end

    # Updates a Lambda function's code.
    #
    # The function's code is locked when you publish a version. You can't
    # modify the code of a published version, only the unpublished version.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String, IO] :zip_file
    #   The base64-encoded contents of the deployment package. AWS SDK and AWS
    #   CLI clients handle the encoding for you.
    #
    # @option params [String] :s3_bucket
    #   An Amazon S3 bucket in the same AWS Region as your function. The
    #   bucket can be in a different AWS account.
    #
    # @option params [String] :s3_key
    #   The Amazon S3 key of the deployment package.
    #
    # @option params [String] :s3_object_version
    #   For versioned objects, the version of the deployment package object to
    #   use.
    #
    # @option params [Boolean] :publish
    #   Set to true to publish a new version of the function after updating
    #   the code. This has the same effect as calling PublishVersion
    #   separately.
    #
    # @option params [Boolean] :dry_run
    #   Set to true to validate the request parameters and access permissions
    #   without modifying the function code.
    #
    # @option params [String] :revision_id
    #   Only update the function if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a function that has
    #   changed since you last read it.
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #   * {Types::FunctionConfiguration#layers #layers} => Array&lt;Types::Layer&gt;
    #
    #
    # @example Example: To update a Lambda function's code
    #
    #   # This operation updates a Lambda function's code
    #
    #   resp = client.update_function_code({
    #     function_name: "myFunction", 
    #     publish: true, 
    #     s3_bucket: "myBucket", 
    #     s3_key: "myKey", 
    #     s3_object_version: "1", 
    #     zip_file: "fileb://file-path/file.zip", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_sha_256: "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=", 
    #     code_size: 123, 
    #     description: "", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     function_name: "myFunction", 
    #     handler: "index.handler", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #     runtime: "python2.7", 
    #     timeout: 123, 
    #     version: "1", 
    #     vpc_config: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_code({
    #     function_name: "FunctionName", # required
    #     zip_file: "data",
    #     s3_bucket: "S3Bucket",
    #     s3_key: "S3Key",
    #     s3_object_version: "S3ObjectVersion",
    #     publish: false,
    #     dry_run: false,
    #     revision_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionCode AWS API Documentation
    #
    # @overload update_function_code(params = {})
    # @param [Hash] params ({})
    def update_function_code(params = {}, options = {})
      req = build_request(:update_function_code, params)
      req.send_request(options)
    end

    # Modify the version-specific settings of a Lambda function.
    #
    # These settings can vary between versions of a function and are locked
    # when you publish a version. You can't modify the configuration of a
    # published version, only the unpublished version.
    #
    # To configure function concurrency, use PutFunctionConcurrency. To
    # grant invoke permissions to an account or AWS service, use
    # AddPermission.
    #
    # @option params [required, String] :function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #
    # @option params [String] :role
    #   The Amazon Resource Name (ARN) of the function's execution role.
    #
    # @option params [String] :handler
    #   The name of the method within your code that Lambda calls to execute
    #   your function. The format includes the file name. It can also include
    #   namespaces and other qualifiers, depending on the runtime. For more
    #   information, see [Programming Model][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html
    #
    # @option params [String] :description
    #   A description of the function.
    #
    # @option params [Integer] :timeout
    #   The amount of time that Lambda allows a function to run before
    #   stopping it. The default is 3 seconds. The maximum allowed value is
    #   900 seconds.
    #
    # @option params [Integer] :memory_size
    #   The amount of memory that your function has access to. Increasing the
    #   function's memory also increases its CPU allocation. The default
    #   value is 128 MB. The value must be a multiple of 64 MB.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   For network connectivity to AWS resources in a VPC, specify a list of
    #   security groups and subnets in the VPC. When you connect a function to
    #   a VPC, it can only access resources and the internet through that VPC.
    #   For more information, see [VPC Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/vpc.html
    #
    # @option params [Types::Environment] :environment
    #   Environment variables that are accessible from function code during
    #   execution.
    #
    # @option params [String] :runtime
    #   The identifier of the function's [runtime][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #
    # @option params [Types::DeadLetterConfig] :dead_letter_config
    #   A dead letter queue configuration that specifies the queue or topic
    #   where Lambda sends asynchronous events when they fail processing. For
    #   more information, see [Dead Letter Queues][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/dlq.html
    #
    # @option params [String] :kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) key that's used
    #   to encrypt your function's environment variables. If it's not
    #   provided, AWS Lambda uses a default service key.
    #
    # @option params [Types::TracingConfig] :tracing_config
    #   Set `Mode` to `Active` to sample and trace a subset of incoming
    #   requests with AWS X-Ray.
    #
    # @option params [String] :revision_id
    #   Only update the function if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a function that has
    #   changed since you last read it.
    #
    # @option params [Array<String>] :layers
    #   A list of [function layers][1] to add to the function's execution
    #   environment. Specify each layer by its ARN, including the version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FunctionConfiguration#function_name #function_name} => String
    #   * {Types::FunctionConfiguration#function_arn #function_arn} => String
    #   * {Types::FunctionConfiguration#runtime #runtime} => String
    #   * {Types::FunctionConfiguration#role #role} => String
    #   * {Types::FunctionConfiguration#handler #handler} => String
    #   * {Types::FunctionConfiguration#code_size #code_size} => Integer
    #   * {Types::FunctionConfiguration#description #description} => String
    #   * {Types::FunctionConfiguration#timeout #timeout} => Integer
    #   * {Types::FunctionConfiguration#memory_size #memory_size} => Integer
    #   * {Types::FunctionConfiguration#last_modified #last_modified} => Time
    #   * {Types::FunctionConfiguration#code_sha_256 #code_sha_256} => String
    #   * {Types::FunctionConfiguration#version #version} => String
    #   * {Types::FunctionConfiguration#vpc_config #vpc_config} => Types::VpcConfigResponse
    #   * {Types::FunctionConfiguration#dead_letter_config #dead_letter_config} => Types::DeadLetterConfig
    #   * {Types::FunctionConfiguration#environment #environment} => Types::EnvironmentResponse
    #   * {Types::FunctionConfiguration#kms_key_arn #kms_key_arn} => String
    #   * {Types::FunctionConfiguration#tracing_config #tracing_config} => Types::TracingConfigResponse
    #   * {Types::FunctionConfiguration#master_arn #master_arn} => String
    #   * {Types::FunctionConfiguration#revision_id #revision_id} => String
    #   * {Types::FunctionConfiguration#layers #layers} => Array&lt;Types::Layer&gt;
    #
    #
    # @example Example: To update a Lambda function's configuration
    #
    #   # This operation updates a Lambda function's configuration
    #
    #   resp = client.update_function_configuration({
    #     description: "", 
    #     function_name: "myFunction", 
    #     handler: "index.handler", 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #     runtime: "python2.7", 
    #     timeout: 123, 
    #     vpc_config: {
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     code_sha_256: "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=", 
    #     code_size: 123, 
    #     description: "", 
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:myFunction", 
    #     function_name: "myFunction", 
    #     handler: "index.handler", 
    #     last_modified: Time.parse("2016-11-21T19:49:20.006+0000"), 
    #     memory_size: 128, 
    #     role: "arn:aws:iam::123456789012:role/lambda_basic_execution", 
    #     runtime: "python2.7", 
    #     timeout: 123, 
    #     version: "1", 
    #     vpc_config: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_configuration({
    #     function_name: "FunctionName", # required
    #     role: "RoleArn",
    #     handler: "Handler",
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue",
    #       },
    #     },
    #     runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, java8, python2.7, python3.6, python3.7, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x, ruby2.5, provided
    #     dead_letter_config: {
    #       target_arn: "ResourceArn",
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active", # accepts Active, PassThrough
    #     },
    #     revision_id: "String",
    #     layers: ["LayerVersionArn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "java8", "python2.7", "python3.6", "python3.7", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge", "go1.x", "ruby2.5", "provided"
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> Time
    #   resp.code_sha_256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment.variables #=> Hash
    #   resp.environment.variables["EnvironmentVariableName"] #=> String
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config.mode #=> String, one of "Active", "PassThrough"
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionConfiguration AWS API Documentation
    #
    # @overload update_function_configuration(params = {})
    # @param [Hash] params ({})
    def update_function_configuration(params = {}, options = {})
      req = build_request(:update_function_configuration, params)
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
      context[:gem_name] = 'aws-sdk-lambda'
      context[:gem_version] = '1.26.0'
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
    # | waiter_name     | params          | :delay   | :max_attempts |
    # | --------------- | --------------- | -------- | ------------- |
    # | function_exists | {#get_function} | 1        | 20            |
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
        function_exists: Waiters::FunctionExists
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
